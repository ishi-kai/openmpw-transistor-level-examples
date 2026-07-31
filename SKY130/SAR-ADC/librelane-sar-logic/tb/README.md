# SAR_LOGIC テストベンチ実行手順

概要
- このリポジトリには `src/SAR_LOGIC.v` とテストベンチ `tb/tb_SAR_LOGIC.v` が含まれています。
- テストベンチは VCD 波形 `tb_SAR_LOGIC.vcd` を出力します。

前提条件
- `iverilog` と `vvp` がインストールされていること（多くの環境で `apt install iverilog` 等で入手可能）。
- 波形確認には `gtkwave` を使うと便利です（任意）。

シンプルな実行手順（システムの `iverilog` を使う）
```bash
# コンパイル
iverilog -g2005 -o tb_sim tb_SAR_LOGIC.v ../src/SAR_LOGIC.v

# 実行（VCD を生成）
vvp tb_sim

# 生成された波形: tb_SAR_LOGIC.vcd
# 例えば GTKWave で開く:
gtkwave tb_SAR_LOGIC.vcd
```


期待される出力（確認ポイント）
- シミュレーション実行中にコンソール上に EOC（End Of Conversion）と `DIGITAL_OUT` の表示が出ます。
- 正常動作では各 EOC で `DIGITAL_OUT=101101` が繰り返し表示され、最終的な `tb_SAR_LOGIC.vcd` に同様の波形が残ります。

トラブルシューティング
- `iverilog` が見つからない場合はシステムにインストールしてください。

ファイル参照
- テストベンチ: tb/tb_SAR_LOGIC.v
- DUT: src/SAR_LOGIC.v
- 生成波形: tb_SAR_LOGIC.vcd
