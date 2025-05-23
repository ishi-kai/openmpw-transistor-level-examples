#オペアンプと電流源設計してみよう
[OpenRule1um PDK](https://github.com/ishi-kai/OpenRule1umPDK_setupEDA)の[PTC06 PDK](https://github.com/ishi-kai/OpenRule1umPDK_setupEDA?tab=readme-ov-file#%E3%83%95%E3%82%A7%E3%83%8B%E3%83%86%E3%83%83%E3%82%AF%E3%82%B7%E3%83%A3%E3%83%88%E3%83%ABpdk%E3%81%AE%E5%A0%B4%E5%90%88)向けに設計されています。

# 共通
## トランジスタの素性を調べる
回路を作る前にトランジスタの素性を知っておく必要があります。アナログ回路設計で重要なのはドレイン電流 Id、しきい値電圧 Vth、相互コンダクタンス gm、出力抵抗 rds (1/gds)。まずはチャネル長 L を最小の 1 um、MOSのサイズはきりのいいところで W/L=10 にしておきましょう。  

しきい値電圧はだいたい 0.8 V前後、ということはこのトランジスタのゲート-ソース間電圧はオーバードライブ100 mV ぐらいとして 0.9 Vぐらいが最も電流効率 (gm/Id) がよくなります。下図のように，オーバードライブはかけすぎると電流が大きくなる割に gm はそれほど増えないので効率が悪くなります。

![nMOS の gm/Id．横軸は Vgs](./opamp/images/nfet_idvgs_gm_ivds.png)
![pMOS の gm/Id．横軸は Vgs](./opamp/images/pfet_idvgs_gm_ivds.png)


ということで Vgs は 0.8 V，Vds は電源電圧の半分 (2.5 V) として特性を調べると下のような値になります．


![nMOS の Id/Vgs のop](./opamp/images/nfet_idvgs_op.png)
![pMOS の Id/Vgs のop](./opamp/images/pfet_idvgs_op.png)
![nMOS の Id/Vgs のVth](./opamp/images/nfet_idvgs_vth.png)
![pMOS の Id/Vgs のVth](./opamp/images/pfet_idvgs_vth.png)
![nMOS の Id/Vgs のgm](./opamp/images/nfet_idvgs_gm.png)
![pMOS の Id/Vgs のgm](./opamp/images/pfet_idvgs_gm.png)
![nMOS の Id/Vgs のVdsの電流値](./opamp/images/nfet_idvgs_ivds.png)
![pMOS の Id/Vgs のVdsの電流値](./opamp/images/pfet_idvgs_ivds.png)

- Id/Vgs出力用シミュレーションファイル
    - [nMOS用](./opamp/pfet_idvgs.sch)
    - [pMOS用](./opamp/pfet_idvgs.sch)
- Id/Vds出力用シミュレーションファイル
    - [nMOS用](./opamp/pfet_idvds.sch)
    - [pMOS用](./opamp/pfet_idvds.sch)

| L=1μm | nMOS | pMOS |
|:------------:|:--------------:|:------------|
| Vth | 836mV | 1.3V |
| Id | 5.2uA | 1.8uA |
| gm | 67.4uS | 17.8uS |
| rds | 4.8MΩ | 13.0MΩ |
| gm*rds(Intrinsic gain) | 323.52 | 231.4 |


しきい値電圧の違いもありますが、nMOS と pMOS でかなり特性が違います。nMOS は Intrinsic gain (gm*rds)が323.52 (50 dB)で十分に見えます。直流利得は pMOS で稼ぐのがよさそうな雰囲気がします。ちょっと、pMOSのほうがIntrinsic gainが低いのが気になるので、L を2倍 (2 um) にした場合も見ておきましょう。W/L は同じ 10 になるように，W=20 umです。

![nMOS の gm/Id．横軸は Vgs](./opamp/images/nfet_idvgs_2L_gm_ivds.png)
![pMOS の gm/Id．横軸は Vgs](./opamp/images/pfet_idvgs_2L_gm_ivds.png)


ということで Vgs は 0.8 V，Vds は電源電圧の半分 (2.5 V) として特性を調べると下のような値になります．


![nMOS の Id/Vgs のop](./opamp/images/nfet_idvgs_2L_op.png)
![pMOS の Id/Vgs のop](./opamp/images/pfet_idvgs_2L_op.png)
![nMOS の Id/Vgs のVth](./opamp/images/nfet_idvgs_2L_vth.png)
![pMOS の Id/Vgs のVth](./opamp/images/pfet_idvgs_2L_vth.png)
![nMOS の Id/Vgs のgm](./opamp/images/nfet_idvgs_2L_gm.png)
![pMOS の Id/Vgs のgm](./opamp/images/pfet_idvgs_2L_gm.png)
![nMOS の Id/Vgs のVdsの電流値](./opamp/images/nfet_idvgs_2L_ivds.png)
![pMOS の Id/Vgs のVdsの電流値](./opamp/images/pfet_idvgs_2L_ivds.png)

- Id/Vgs出力用シミュレーションファイル
    - [nMOS用](./opamp/pfet_idvgs_2L.sch)
    - [pMOS用](./opamp/pfet_idvgs_2L.sch)
- Id/Vds出力用シミュレーションファイル
    - [nMOS用](./opamp/pfet_idvds_2L.sch)
    - [pMOS用](./opamp/pfet_idvds_2L.sch)


| L=2μm | nMOS | pMOS |
|:------------:|:--------------:|:------------|
| Vth | 786mV | 1.4V |
| Id | 8.6uA | 0.78uA |
| gm | 96.4uS | 8.3uS |
| rds | 4.8MΩ | 55.0MΩ |
| gm*rds(Intrinsic gain) | 462.72 | 456.5 |


まだ、微妙なところではありますが、これ以上Lを大きくするとMOSのサイズが大きくなりすぎてしまうので、L=2μmを利用することにします。  
また、利得を稼ぎたいときは L を大きくすればよさそうということが分かります。  


# オペアンプ
## 全体の構成と設計目標
ここでは最も基本的な2段オペアンプを作ります。差動入力段 (初段) と増幅段 (2段目)、それに位相補償をかけます。  
初段は rds が高く電流効率 (gm/Id) もよい pMOS、を使うことにします。そうすると差動段のテール電流源 (M5) は pMOSになるので、各段に電流を供給するカレントミラーは pMOS で構成することになります (M5, M6, M8, M9)。  
ということで2段目はpMOSカレントミラーを負荷とする nMOS ソース接地増幅回路になります。回路図は下図です。差動増幅 (M1～M5)、ソース接地 (M6，M7) 以外にもいろいろトランジスタが使われていますが、これらは順を追って説明します。  
Vinp，Vinn が差動入力、Vout が出力電圧です。バイアス電流として Ibias を使っています。負荷容量は CL です。

![2段オペアンプ回路図](./opamp/images/2stage_opamp_sample.webp)
![2段オペアンプ回路図の図解](./opamp/images/2stage_opamp_sample2.png)


## 差動増幅段




# 電流源
トランジスタはそもそも電流源です。BJTであればベース電流で制御される電流制御電流源、MOSFET であればゲート-ソース間電圧で制御される電圧制御電流源と見なすことができます。ということは制御電流/制御電圧を一定にすればトランジスタは定電流源になるはず。その制御電圧を生成して電流をコピーするのがおなじみカレントミラーです。  
しかし、OR1にはBJTはありません。BJTなしの定電流源を作ります。  

## 基本電流源
電流を作るもっとも安直な方法は抵抗を使うことです。

- [基本電流源回路](./current-source/cs-basic.sch)
![基本電流源回路](./current-source/images/cs-basic.png)


## Vth-referenced 自己バイアス電流源
電圧に依存しない電流を作る方法として、Vth-referenced 自己バイアス回路というものがあります。  

- [Vth-referenced 自己バイアス回路](./current-source/cs-vth-ref.sch)
![Vth-referenced 自己バイアス回路](./current-source/images/cs-vth-ref.png)


ここでは、MOSFETのサイズをW=100μm L=2μmとしています。  
理由は、先ほど設計したオペアンプで利用する電流源＝10μAを供給する電流源とするためです。  
50μAを流す電流源として、設計して、カレントミラーで電流をミラーするときに、オペアンプ側のpMOSがW=20μmなので、1/5となり、10μAとなるという寸法です。  


# オペアンプ＋電流源
## オペアンプに電流源を接続する

カレントミラーで接続します。

- [オペアンプ＋電流源回路](./opamp/opamp_cs.sch)
![オペアンプ＋電流源回路](./opamp/images/opamp_cs.png)



# 出典
土谷先生のGF180による[OPAMPサンプル](https://note.com/akira_tsuchiya/n/n710ed2d0e428)と[CSサンプル](https://note.com/akira_tsuchiya/n/n307d76106a86_を[OpenRule1um PDK](https://github.com/ishi-kai/OpenRule1umPDK_setupEDA)の[PTC06 PDK](https://github.com/ishi-kai/OpenRule1umPDK_setupEDA?tab=readme-ov-file#%E3%83%95%E3%82%A7%E3%83%8B%E3%83%86%E3%83%83%E3%82%AF%E3%82%B7%E3%83%A3%E3%83%88%E3%83%ABpdk%E3%81%AE%E5%A0%B4%E5%90%88)向けに書き直したものです。

## ライセンス
SPDX-License-Identifier: Apache-2.0 

Copyright 2024 Noritsuna IMAMURA
Copyright 2023 Akira Tsuchiya (atuchiya)
