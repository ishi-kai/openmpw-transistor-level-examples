# 1bit-CPU設計
## ドキュメント
ロジック回路（デジタル回路）の設計手法の一つを解説した資料です。  
HDLやロジック回路（デジタル回路）がどのようにGDSに変換されているのかの学習が目的のハンズオンです。  
- [TR10版1bit-CPU回路図](./1bit-CPU.sch)
- [TR10版1bit-CPU回路図の１ライン版](./1bit-CPU_1line.sch)
- [TR10版1bit-CPUテストベンチ](./1bit-CPU_1line_tb.sch)
- [TR10版1bit-CPUレイアウト](./1bit-CPU_1line.gds)

## シミュレーション
シミュレーションには[logicsim](http://www.cburch.com/logisim/)を利用しています。  

 ![1bit-CPUのシミュレーション回路](images/logicsim_1bit-CPU.png)

- [シミュレーションファイルのディレクトリ](logicsim)

## 詳細解説資料
上記の設計を詳細に解説した資料です。  
- [TR10版1bit-CPU解説書:PDF版](/TR10/docs/1bit-CPU_TR10.pdf)
- [TR10版1bit-CPU解説書:PPTX版](/TR10/docs/1bit-CPU_TR10.pptx)
    - SPDX-License-Identifier: Apache-2.0  

## 開発環境のセットアップ
本ハンズオンを実施するには、EDAと東海理化シャトルPDKのセットアップをしてください。  
他のPDKがインストール済み場合は、「bash unisntall.sh」を実施してからセットアップしてください。  

- [セットアップツール](https://github.com/ishi-kai/OpenRule1umPDK_setupEDA)


## オプション
### 最小構成
- [1bit-CPUの最小構成の回路図](./1bit-CPU_1line_min.sch)
- [1bit-CPUの最小構成のレイアウト](./1bit-CPU_1line_min.gds)

