// SAR ADC の逐次比較ロジック
//
// 動作の流れ:
// 1. CDAC をサンプリング/リセットする
// 2. MSB から順番に bit を 1 にして比較する
// 3. COMP_OUT に応じて、その bit を残すか 0 に戻す
// 4. LSB まで終わったら DIGITAL_OUT を更新し、EOC を 1 にする
//
// 注意:
// SAR ADC では CDAC の電荷を保持したまま逐次比較する。
// そのため、SC を HIGH にして CDAC をリセットするのは変換開始時だけ。
//
// このファイルでは、EOC が HIGH の間は SDAC に最終DACコードを保持する。
// これにより、EOC の瞬間に CDAC 側が次回用MSB試行値へ切り替わることを避ける。
//
// ピン/信号情報:
// COMP_OUT    : コンパレータ出力。
//               COMP_CLK を LOW に戻した後、安定した値を読む想定。
//               1 なら現在試している DAC bit を残し、
//               0 なら現在試している DAC bit を 0 に戻す。
// CLK         : SAR ロジックを進めるクロック。
// XRST        : 非同期リセット信号。LOW でリセット、HIGH で動作。
// COMP_CLK    : コンパレータに入力する比較タイミング用クロック。
//               このロジックでは HIGH にして比較を開始し、
//               LOW に戻した後に COMP_OUT を取り込む。
// SC          : CDAC のコンパレータ側端子を GND に落とすスイッチ。
//               HIGH でリセット/サンプリング、LOW で電荷保持の想定。
// EOC         : End Of Conversion。1 回の A/D 変換完了時に HIGH になる。
// DIGITAL_OUT : A/D 変換結果。BIT_ADC=6 の場合は 6bit 幅。
// SDAC        : CDAC の各容量に Vref/GND を与えるスイッチ。
//               HIGH で Vref、LOW で GND を入力する想定。
//               [BIT_ADC:1] が判定用CDACスイッチ。
//               [BIT_ADC] が最大容量側、[1] が最小判定容量側に対応する。
//               [0] はダミー容量用で、SAR の bit 判定には使わない。
// VDD         : 電源電圧。RTL のポートには含めず、レイアウト時の電源ピンで扱う。
// VSS         : GND。RTL のポートには含めず、レイアウト時の電源ピンで扱う。

module SAR_LOGIC #(
    parameter integer BIT_ADC = 6
) (
    // コンパレータの出力。
    // 1 のとき「現在の DAC 試行値を採用する」、
    // 0 のとき「現在の DAC 試行 bit を落とす」という想定。
    input wire COMP_OUT,

    // CLK  : SAR ロジックを進めるクロック。
    // XRST : 非同期リセット。0 でリセット、1 で動作。
    input wire CLK, XRST,

    // COMP_CLK : コンパレータに与える比較タイミング用クロック。
    // SC       : CDAC のコンパレータ側端子を GND に落とすスイッチ。
    //            HIGH でリセット/サンプリング、LOW で電荷保持の想定。
    // EOC      : End Of Conversion。1 になると 1 回の A/D 変換が完了。
    output reg COMP_CLK, SC, EOC,

    // 変換結果。6bit 設定なら [5:0] になる。
    output reg [BIT_ADC-1:0] DIGITAL_OUT,

    // CDAC の各容量に Vref/GND を与えるスイッチ。
    // [BIT_ADC:1] が判定用、[0] がダミー容量用。
    output reg [BIT_ADC:0] SDAC
);
    localparam HIGH = 1'b1;
    localparam LOW  = 1'b0;

    // state の意味。
    // 数字だけで書くと「3'd3 が何の状態か」が追いにくいため、
    // 状態名を付けている。合成時には定数として扱われる。
    localparam [2:0] ST_SAMPLE    = 3'd0;  // CDAC をリセット/サンプル
    localparam [2:0] ST_APPLY_DAC = 3'd1;  // 試行する DAC コードを出す/保持する
    localparam [2:0] ST_SETTLE    = 3'd2;  // DAC 出力の待ち時間
    localparam [2:0] ST_COMP_HIGH = 3'd3;  // コンパレータ比較開始
    localparam [2:0] ST_COMP_LOW  = 3'd4;  // コンパレータ出力をラッチ
    localparam [2:0] ST_CAPTURE   = 3'd5;  // COMP_OUT を読み、次の bit へ

    // 最初に試す DAC コード。
    // 6bit の場合は 7bit 幅の 1000000 になり、判定用MSBだけを 1 にする。
    // SDAC[0] はダミー容量用なので 0 のまま。
    //
    // 1'b1 << BIT_ADC のように 1bit 幅の値をシフトすると、
    // ツールによっては期待した幅にならない可能性がある。
    // そのため、連結演算で明示的に BIT_ADC+1 bit の定数を作る。
    localparam [BIT_ADC:0] MSB_TRIAL = {1'b1, {BIT_ADC{1'b0}}};

    // DIGITAL_OUT に出す前の一時レジスタ。
    // COMP_OUT を MSB から順番に詰めていく。
    reg [BIT_ADC-1:0] DIGITAL_OUT_BUF;

    // 現在どの bit を判定しているかを示す。
    // 0 が MSB、BIT_ADC-1 が LSB。
    // 現在のアナログ回路は BIT_ADC=6 前提なので 3bit 幅で足りる。
    reg [2:0] bit_index;

    // 現在の状態。
    reg [2:0] state;

    // SAR ロジック本体。
    // case 文の各状態が、上の state 一覧に対応している。
    always @(posedge CLK or negedge XRST) begin
        if (XRST == LOW) begin
            // 非同期リセット。
            // すべての出力と内部レジスタを既知の初期値に戻す。
            state <= ST_SAMPLE;
            bit_index <= 0;
            DIGITAL_OUT <= 0;
            DIGITAL_OUT_BUF <= 0;
            COMP_CLK <= LOW;
            SC <= HIGH;
            EOC <= LOW;
            SDAC <= 0;
        end else begin
            case (state)
                ST_SAMPLE: begin
                    // 変換開始。CDAC をリセット/サンプルする。
                    // 前回変換の EOC と SDAC はここで戻す。
                    COMP_CLK <= LOW;
                    SC <= HIGH;
                    EOC <= LOW;
                    SDAC <= 0;
                    bit_index <= 0;
                    DIGITAL_OUT_BUF <= 0;
                    state <= ST_APPLY_DAC;
                end

                ST_APPLY_DAC: begin
                    // CDAC の電荷を保持するため、SC を LOW にする。
                    //
                    // MSB 判定時:
                    // - 最初の試行コード 1000000 を出す。
                    //
                    // 2bit目以降:
                    // - 直前の ST_CAPTURE で次の SDAC を作っているため、
                    //   ここではその値を保持する。
                    COMP_CLK <= LOW;
                    SC <= LOW;
                    EOC <= LOW;
                    if (bit_index == 0) begin
                        SDAC <= MSB_TRIAL;
                    end
                    state <= ST_SETTLE;
                end

                ST_SETTLE: begin
                    // スイッチ切り替え後、CDAC 出力が落ち着くのを待つ。
                    COMP_CLK <= LOW;
                    SC <= LOW;
                    state <= ST_COMP_HIGH;
                end

                ST_COMP_HIGH: begin
                    // COMP_CLK を HIGH にして、コンパレータに比較させる。
                    COMP_CLK <= HIGH;
                    state <= ST_COMP_LOW;
                end

                ST_COMP_LOW: begin
                    // COMP_CLK を LOW に戻す。
                    // 次の状態で、安定した COMP_OUT を読む想定。
                    COMP_CLK <= LOW;
                    state <= ST_CAPTURE;
                end

                ST_CAPTURE: begin
                    // COMP_OUT を取り込み、次の SDAC を決める。
                    // 1 なら現在の bit を残し、0 ならその bit を落とす。
                    DIGITAL_OUT_BUF <= {DIGITAL_OUT_BUF[BIT_ADC-2:0], COMP_OUT};

                    if (bit_index == BIT_ADC - 1) begin
                        // LSB まで判定したので、1 回の変換が完了。
                        // 最後の COMP_OUT は、この式で直接 DIGITAL_OUT に入れる。
                        DIGITAL_OUT <= {DIGITAL_OUT_BUF[BIT_ADC-2:0], COMP_OUT};
                        EOC <= HIGH;

                        // EOC が HIGH の間、SDAC には最終DACコードを保持する。
                        // 次のクロックで ST_SAMPLE に入り、そこで SDAC を 0 に戻す。
                        SDAC <= accept_SDAC(COMP_OUT, bit_index, SDAC);
                        bit_index <= 0;
                        state <= ST_SAMPLE;
                    end else begin
                        // まだ bit が残っているので、次の試行コードを作る。
                        SDAC <= next_SDAC(COMP_OUT, bit_index, SDAC);
                        bit_index <= bit_index + 1'b1;
                        state <= ST_APPLY_DAC;
                    end
                end

                default: begin
                    // 想定外の状態に入った場合は、安全側として変換開始へ戻す。
                    state <= ST_SAMPLE;
                end
            endcase
        end
    end

    // 次の SDAC 試行コードを作る関数。
    //
    // current_bit は「今判定した bit」を表す。
    // 例: 6bit ADC の場合
    // current_bit=0 は SDAC[6]、current_bit=1 は SDAC[5] に対応する。
    //
    // 動き:
    // - COMP_OUT=1: 今の bit は 1 のまま残す
    // - COMP_OUT=0: 今の bit を 0 に戻す
    // - どちらの場合も、次に判定する 1 つ下の bit を 1 にする
    // - SDAC[0] はダミー容量用なので、この関数では判定bitとして使わない
    function [BIT_ADC:0] next_SDAC;
        input comp_out;
        input [2:0] current_bit;
        input [BIT_ADC:0] sdac_now;
        begin
            next_SDAC = sdac_now;

            if (comp_out == LOW) begin
                next_SDAC[BIT_ADC - current_bit] = LOW;
            end

            next_SDAC[BIT_ADC - (current_bit + 1'b1)] = HIGH;
        end
    endfunction

    // 最終bitの判定後に、最終DACコードを作る関数。
    //
    // next_SDAC は「次の試行bitを 1 にする」処理も行うが、
    // 最終bitでは次に試すbitがない。
    // そのため、この関数では現在のbitを採用/破棄するだけにして、
    // EOC 中の SDAC が変換結果と対応するようにする。
    function [BIT_ADC:0] accept_SDAC;
        input comp_out;
        input [2:0] current_bit;
        input [BIT_ADC:0] sdac_now;
        begin
            accept_SDAC = sdac_now;

            if (comp_out == LOW) begin
                accept_SDAC[BIT_ADC - current_bit] = LOW;
            end
        end
    endfunction
endmodule
