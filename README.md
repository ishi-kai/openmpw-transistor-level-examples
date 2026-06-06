# Examples of Transistor-Level Simulation for OpenMPW
SPDX-License-Identifier: Apache-2.0 

- Copyright 2023 Akira Tsuchiya (atuchiya)
- Copyright 2024 Mizuki MORI (3zki) 
- Copyright 2024-2026 Noritsuna IMAMURA (noritsuna) 


## インバータ回路
EDAツールの使い方の学習が目的のハンズオンです。  

- [サンプル回路](https://github.com/ishi-kai/OpenEDA-PDK_SetupScript/tree/main/samples/inverter)
- [ツールの使い方解説資料](https://github.com/ishi-kai/OpenEDA-PDK_SetupScript/tree/main/docs)
- [サンプル回路の解説資料](https://github.com/3zki/lsi1_analog1/blob/main/analog_tutorial_jp.pdf)

## OPAMP回路
アナログ回路の基礎の学習が目的のハンズオンです。  
理解に必要な基礎知識一覧は、「[LSI設計者のためのCMOSアナログ回路入門』を読む前に必要な数学チートシート（生成AI質問用）](https://zenn.dev/qwerewq/articles/ffcd84ffa97e18)」をご覧ください。  

### OR1向け
- [サンプル回路](https://github.com/ishi-kai/openmpw-transistor-level-examples/tree/main/OR1/PTC06)
- [サンプル回路の解説資料](https://github.com/ishi-kai/openmpw-transistor-level-examples/tree/main/OR1/PTC06/docs)
### TR10向け
- [サンプル回路](https://github.com/ishi-kai/openmpw-transistor-level-examples/tree/main/TR10/opamp)
- [サンプル回路の解説資料](https://github.com/ishi-kai/openmpw-transistor-level-examples/blob/main/TR10/docs/OPAMP_TR10.pdf)
### OpenSUSI-TR10向け
- [サンプル回路](https://github.com/ishi-kai/openmpw-transistor-level-examples/tree/main/OpenSUSI-TR10/opamp)
- [サンプル回路の解説資料](https://github.com/ishi-kai/openmpw-transistor-level-examples/blob/main/OpenSUSI-TR10/docs/OPAMP_OpenSUSI-TR10.pdf)
### GF180向け
- [サンプル回路](https://github.com/ishi-kai/openmpw-transistor-level-examples/tree/main/GF180/opamp)
- [サンプル回路の解説資料](https://github.com/ishi-kai/openmpw-transistor-level-examples/tree/main/GF180/opamp)


### Rail-to-Rail OPAMP回路
OPAMP設計ハンズオンをマスター人向けのRail-to-Rail OPAMPの解説です。  
理解に必要な基礎知識一覧は、「[LSI設計者のためのCMOSアナログ回路入門』を読む前に必要な数学チートシート（生成AI質問用）](https://zenn.dev/qwerewq/articles/ffcd84ffa97e18)」をご覧ください。  

### OpenSUSI-TR10向け
- [サンプル回路](https://github.com/ishi-kai/openmpw-transistor-level-examples/tree/main/OpenSUSI-TR10/opamp_r2r/)
- [サンプル回路の解説資料](https://github.com/ishi-kai/openmpw-transistor-level-examples/blob/main/OpenSUSI-TR10/docs/OPAMP_R2R_OpenSUSI-TR10.pdf)


### オーディオ用OPAMP回路
オーディオ用OPAMPの音質に関する部分だけを設計して、レイアウトするハンズオンとなります。  

### OpenSUSI-TR10向け
- [サンプル回路](https://github.com/ishi-kai/openmpw-transistor-level-examples/tree/main/OpenSUSI-TR10/opamp_r2r_audio/)
- [サンプル回路の解説資料](https://github.com/ishi-kai/openmpw-transistor-level-examples/blob/main/OpenSUSI-TR10/docs/OPAMP_R2R_Audio_OpenSUSI-TR10.pdf)


## CS回路
アナログ回路の基礎の学習が目的のハンズオンです。  

### OR1向け
- [サンプル回路](https://github.com/ishi-kai/openmpw-transistor-level-examples/tree/main/OR1/PTC06)
- [サンプル回路の解説資料](https://github.com/ishi-kai/openmpw-transistor-level-examples/tree/main/OR1/PTC06/docs)
### TR10向け
- [サンプル回路](https://github.com/ishi-kai/openmpw-transistor-level-examples/tree/main/TR10/current-source)
- [サンプル回路の解説資料](https://github.com/ishi-kai/openmpw-transistor-level-examples/blob/main/TR10/docs/CS_TR10.pdf)
### OpenSUSI-TR10向け
- [サンプル回路](https://github.com/ishi-kai/openmpw-transistor-level-examples/tree/main/OpenSUSI-TR10/current-source)
- [サンプル回路の解説資料](https://github.com/ishi-kai/openmpw-transistor-level-examples/blob/main/OpenSUSI-TR10/docs/CS_OpenSUSI-TR10.pdf)
### GR180向け
- [サンプル回路](https://github.com/ishi-kai/openmpw-transistor-level-examples/tree/main/GF180/current-source)
- [サンプル回路の解説資料](https://github.com/ishi-kai/openmpw-transistor-level-examples/tree/main/GF180/current-source)

## BGR回路
### GF180向け
- [サンプル回路](https://github.com/ishi-kai/openmpw-transistor-level-examples/tree/main/GF180/bgr)
- [サンプル回路の解説資料](https://github.com/ishi-kai/openmpw-transistor-level-examples/tree/main/GF180/bgr)

## 1bit-CPU回路
HDLやロジック回路（デジタル回路）がどのようにGDSに変換されているのかの学習が目的のハンズオンです。  

### TR10向け
- [サンプル回路](https://github.com/ishi-kai/openmpw-transistor-level-examples/tree/main/TR10/1bit-CPU)
- [サンプル回路の解説資料](https://github.com/ishi-kai/openmpw-transistor-level-examples/blob/main/TR10/docs/1bit-CPU_TR10.pdf)
### OpenSUSI-TR10向け
- [サンプル回路](https://github.com/ishi-kai/openmpw-transistor-level-examples/tree/main/OpenSUSI-TR10/1bit-CPU)
- [サンプル回路の解説資料](https://github.com/ishi-kai/openmpw-transistor-level-examples/blob/main/OpenSUSI-TR10/docs/1bit-CPU_OpenSUSI-TR10.pdf)



## リンク
- [各種ドキュメントリンク集](/docs/README.md)
- [LSI設計者のためのCMOSアナログ回路入門』を読む前に必要な数学チートシート（生成AI質問用）](https://zenn.dev/qwerewq/articles/ffcd84ffa97e18) 


## 各種公式やパラメータ一覧表
- ![基本公式](/images/CMOS_Basis.png)
- ![基本増幅回路](/images/CMOS_Basic_Circuit.png)
- ![Id, W/L, gmの関係](/images/ID_WL_GM.png)
- ![キャラクタライズ数値例](/images/MOSFET_Characterization)
