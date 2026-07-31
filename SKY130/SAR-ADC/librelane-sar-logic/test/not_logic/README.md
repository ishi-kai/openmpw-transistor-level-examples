# Not回路
レジスタに入力のnotを入れるだけの回路

# ビルド手順

## 事前準備
ターミナルでこのディレクトリに移動してください。

## ① GDS生成
`-j <job数>`でどのぐらい並列に実行するか指定できる。20スレッドぐらい同時に走るコアだと思うので、20で。
```terminal
librelane config.json -j 20
```

## ② gdsファイルをひらく
```terminal
librelane --last-run --flow openinklayout config.json 
```

# `config.json`を見てみよう
基本的に、このサイト(https://librelane.readthedocs.io/en/stable/index.html)を見ればいい。...けど最初は大変なので、いくつかピックアップしてみた。

## 中身
```json
{
  "DESIGN_NAME": "not_logic",           //トップモジュール名
  "VERILOG_FILES": ["dir::not_logic.v"],//合成したいファイル
  "CLOCK_PERIOD": 25,                   //クロック周期(ns)
  "CLOCK_PORT": "clk",                  //クロック信号の名前
  "RT_MAX_LAYER": "met4",               //配線で使用する最大レイヤー
  "FP_SIZING": "absolute",              //サイズを変えるために必要な設定
  "DIE_AREA": [0, 0, 50, 100 ],         //サイズ
  "FP_PIN_ORDER_CFG": "dir::pin_order.cfg", //ピンの向き・順番の設定ファイル
  "STD_CELL_LIBRARY": "sky130_fd_sc_hd"  //スタセルの名前(標準がたしか`sky130_fd_sc_hd`)
}
```

## サイズを変えてみよう
`"DIE_AREA": [0, 0, 200, 100 ]`にしてみるとわかりやすいかも

# `pin_order.cfg`を見てみよう

## 中身
WENSで入出力の向きを指定しています。
```cfg
#W
clk
rst_n

#E

#N
i

#S
o
```

## 向きを変えてみよう
自由に変えてみよう

# `runs`を見てみよう
## 中身について
各プロセスのいろいろが順番で記録されている。

## 電力・最大動作周波数
`55-openroad-stapostpnr`に色々入ってる。
```terminal
.
├── COMMANDS
├── config.json
├── max_ff_n40C_1v95
├── max_ss_100C_1v60
├── max_tt_025C_1v80
├── min_ff_n40C_1v95
├── min_ss_100C_1v60
├── min_tt_025C_1v80
├── nom_ff_n40C_1v95
├── nom_ss_100C_1v60
├── nom_tt_025C_1v80
├── runtime.txt
├── state_in.json
├── state_out.json
└── summary.rpt
```

たとえば`max_ff_n40C_1v95/power.rpt`には簡単な電力評価の結果が入っている。
```rpt
Group                    Internal    Switching      Leakage        Total
                            Power        Power        Power        Power (Watts)
------------------------------------------------------------------------
Sequential           1.993652e-06 4.096479e-08 1.914729e-11 2.034636e-06  71.0%
Combinational        4.508561e-07 3.771173e-07 2.893285e-11 8.280023e-07  28.9%
Clock                0.000000e+00 0.000000e+00 2.798649e-09 2.798649e-09   0.1%
Macro                0.000000e+00 0.000000e+00 0.000000e+00 0.000000e+00   0.0%
Pad                  0.000000e+00 0.000000e+00 0.000000e+00 0.000000e+00   0.0%
------------------------------------------------------------------------
Total                2.444508e-06 4.180820e-07 2.846729e-09 2.865437e-06 100.0%
                            85.3%        14.6%         0.1%
```

動作周波数は`max_ff_n40C_1v95/clock.rpt`に。
だいたいこんな感じ

| 項目 | 値 | 意味 |
| ---- | ---- | ---- |
| Period | 25.000000 ns | 現在の設計クロック周期 |
Current Frequency | 40 MHz | 現在：1 / 25ns = 40MHz |
period_min | 2.66 ns | クリティカルパスの最小遅延 |
fmax（最大動作周波数） | 376.40 MHz | このチップが実現可能な最大周波数 |

## （やり途中で断念したけど）LVS
LVSが`70-netgen-lvs/lvs_script.lvs`で吐かれてる。PEXに使いたいと思って色々やったけど、うまく行かなかった。
`70-netgen-lvs/reports/lvs.netgen.rpt`に色々載ってる。

```rpt
Subcircuit pins:
Circuit 1: not_logic                       |Circuit 2: not_logic                       
-------------------------------------------|-------------------------------------------
clk                                        |clk                                        
rst_n                                      |rst_n                                      
i                                          |i                                          
o                                          |o                                          
VGND                                       |VGND                                       
VPWR                                       |VPWR                                       
---------------------------------------------------------------------------------------
Cell pin lists are equivalent.
Device classes not_logic and not_logic are equivalent.

Final result: Circuits match uniquely.
.
```