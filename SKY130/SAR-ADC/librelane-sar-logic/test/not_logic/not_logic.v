module not_logic (
    input wire clk,
    input wire rst_n,
    input wire i,
    output reg o
);
    always @(posedge clk) begin
        if (!rst_n) begin
            o <= 0;
        end else begin
            o <= ~i; // This is a NOT gate
        end
    end
endmodule