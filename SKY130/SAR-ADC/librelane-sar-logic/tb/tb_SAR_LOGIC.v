// Testbench for SAR_LOGIC
`timescale 1ns/1ps
module tb_SAR_LOGIC;
    reg CLK = 0;
    reg XRST = 0;
    reg COMP_OUT = 0; // drive comparator output

    wire COMP_CLK;
    wire SC;
    wire EOC;
    wire [5:0] DIGITAL_OUT;
    wire [6:0] SDAC;

    // Instantiate DUT
    SAR_LOGIC dut (
        .COMP_OUT(COMP_OUT),
        .CLK(CLK),
        .XRST(XRST),
        .COMP_CLK(COMP_CLK),
        .SC(SC),
        .EOC(EOC),
        .DIGITAL_OUT(DIGITAL_OUT),
        .SDAC(SDAC)
    );

    // 10 ns clock period
    always #5 CLK = ~CLK;

    // stimulus: a predetermined comparator bit sequence for 6-bit SAR
    reg [5:0] bits = 6'b101101; // MSB first per testbench plan
    integer bit_idx = 0;
    reg [2:0] sim_state = 0;    // Track DUT state to sync COMP_OUT
    
    // Mirror DUT state machine (0-6 cycle) and track ADCount progression
    always @(posedge CLK) begin
        if (XRST == 0) begin
            sim_state <= 0;
        end else if (sim_state == 3'd6) begin
            sim_state <= 1;
        end else begin
            sim_state <= sim_state + 1;
        end
    end

    // Reset bit_idx at the start of a new conversion cycle (when ADCount becomes 0)
    // In DUT: ADCount resets to 0 at state 6 when current ADCount == BIT_ADC-1
    // Monitor EOC to detect end of conversion and reset bit_idx
    always @(posedge EOC) begin
        bit_idx = 0;  // Reset for next conversion
    end

    // Advance bit index after state 6 (ADCount advances in DUT)
    always @(posedge CLK) begin
        if (XRST == 1 && sim_state == 3'd6 && bit_idx < 6) begin
            bit_idx = bit_idx + 1;
        end
    end

    // Set COMP_OUT between state 4 and 5 (posedge just before sampling)
    // negedge CLK ensures COMP_OUT is stable when DUT's posedge CLK state 5 samples it
    always @(negedge CLK) begin
        if (XRST == 1 && bit_idx < 6) begin
            if (sim_state == 3'd4) begin
                // Set bit for the upcoming state 5 sampling
                COMP_OUT <= bits[5 - bit_idx];
            end
        end
    end

    // Monitor EOC rising edge and final DIGITAL_OUT, plus timing debug
    reg prev_eoc = 0;
    integer eoc_count = 0;
    always @(posedge CLK) begin
        if (EOC && !prev_eoc) begin
            eoc_count = eoc_count + 1;
            $display("[TB] EOC #%0d at time %0t ns. DIGITAL_OUT=%b, sim_state=%0d", 
                     eoc_count, $time, DIGITAL_OUT, sim_state);
        end
        prev_eoc <= EOC;
    end
    
    // Debug: print state and COMP_OUT sampling timing
    always @(posedge CLK) begin
        if (XRST == 1 && sim_state == 3'd5) begin
            $display("[TB] State 5 sample at time %0t: bit_idx=%0d, COMP_OUT=%b, bits[5-%0d]=%b",
                     $time, bit_idx, COMP_OUT, bit_idx, (bit_idx < 6) ? bits[5-bit_idx] : 1'bX);
        end
    end

    initial begin
        $dumpfile("tb_SAR_LOGIC.vcd");
        $dumpvars(0, tb_SAR_LOGIC);

        // reset
        XRST = 0;
        #20;
        XRST = 1;

        // run enough cycles to perform full conversion (6 bits), add margin
        #2000;

        $display("[TB] Final DIGITAL_OUT=%b, EOC=%b at time %0t", DIGITAL_OUT, EOC, $time);
        #10;
        $finish;
    end
endmodule
