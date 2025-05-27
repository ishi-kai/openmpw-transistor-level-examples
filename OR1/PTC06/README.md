#オペアンプと電流源設計してみよう
[OpenRule1um PDK](https://github.com/ishi-kai/OpenRule1umPDK_setupEDA)の[PTC06 PDK](https://github.com/ishi-kai/OpenRule1umPDK_setupEDA?tab=readme-ov-file#%E3%83%95%E3%82%A7%E3%83%8B%E3%83%86%E3%83%83%E3%82%AF%E3%82%B7%E3%83%A3%E3%83%88%E3%83%ABpdk%E3%81%AE%E5%A0%B4%E5%90%88)向けに設計されています。

# 設計編（回路図とシミュレーション）
## 共通
### トランジスタの素性を調べる
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

![nMOS の Id/Vds のop](./opamp/images/nfet_idvds_op.png)
![pMOS の Id/Vds のop](./opamp/images/pfet_idvds_op.png)
![nMOS の Id/Vds のVth](./opamp/images/nfet_idvds_vth.png)
![pMOS の Id/Vds のVth](./opamp/images/pfet_idvds_vth.png)
![nMOS の Id/Vds のgm](./opamp/images/nfet_idvds_gm.png)
![pMOS の Id/Vds のgm](./opamp/images/pfet_idvds_gm.png)
![nMOS の Id/Vds のVdsの電流値](./opamp/images/nfet_idvds_ivds.png)
![pMOS の Id/Vds のVdsの電流値](./opamp/images/pfet_idvds_ivds.png)

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

![nMOS の gm/Id．横軸は Vgs](./opamp/images/nfet_idvds_2L_gm_ivds.png)
![pMOS の gm/Id．横軸は Vgs](./opamp/images/pfet_idvds_2L_gm_ivds.png)


ということで Vgs は 0.8 V，Vds は電源電圧の半分 (2.5 V) として特性を調べると下のような値になります．


![nMOS の Id/Vds のop](./opamp/images/nfet_idvds_2L_op.png)
![pMOS の Id/Vds のop](./opamp/images/pfet_idvds_2L_op.png)
![nMOS の Id/Vds のVth](./opamp/images/nfet_idvds_2L_vth.png)
![pMOS の Id/Vds のVth](./opamp/images/pfet_idvds_2L_vth.png)
![nMOS の Id/Vds のgm](./opamp/images/nfet_idvds_2L_gm.png)
![pMOS の Id/Vds のgm](./opamp/images/pfet_idvds_2L_gm.png)
![nMOS の Id/Vds のVdsの電流値](./opamp/images/nfet_idvds_2L_ivds.png)
![pMOS の Id/Vds のVdsの電流値](./opamp/images/pfet_idvds_2L_ivds.png)

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


## オペアンプ
### 全体の構成と設計目標
ここでは最も基本的な2段オペアンプを作ります。差動入力段 (初段) と増幅段 (2段目)、それに位相補償をかけます。  
初段は rds が高く電流効率 (gm/Id) もよい pMOS、を使うことにします。そうすると差動段のテール電流源 (M5) は pMOSになるので、各段に電流を供給するカレントミラーは pMOS で構成することになります (M5, M6, M8, M9)。  
ということで2段目はpMOSカレントミラーを負荷とする nMOS ソース接地増幅回路になります。回路図は下図です。差動増幅 (M1～M5)、ソース接地 (M6，M7) 以外にもいろいろトランジスタが使われていますが、これらは順を追って説明します。  
Vinp，Vinn が差動入力、Vout が出力電圧です。バイアス電流として Ibias を使っています。負荷容量は CL です。

![2段オペアンプ回路図](./opamp/images/2stage_opamp_sample.webp)
![2段オペアンプ回路図の図解](./opamp/images/2stage_opamp_sample_2.png)


### 差動増幅段
差動増幅段 (M1～M5) を設計します。カレントミラー (M3，M4) を能動負荷として使って利得を稼ぎつつ、オフセット除去もできる構成です。オフセット除去については次の節で説明します。

この回路の利得は gmR=gm2(rds2∣∣rds4) です。トランジスタのサイズはバイアスなどを見ながら決めますが，例えばトランジスタの素性を調べた表より，L=2 μm のとき，同一バイアス・同一サイズで nMOS は pMOS の10倍の電流を流す能力があります。ということは，M1 と M3，M2 と M4 は同じ電流を流すわけなので pMOS (M1，M2) のサイズを nMOS (M3，M4) の10倍にすると両者のバイアスが同じになります。このとき利得はどうなるかというと，W/L=10 で正規化した pMOS のサイズを x とすると，nMOS のサイズは x/10 。この関係と表の数値より，利得 A は

- A=96.4 μS × x × (4.8 MΩ/x ) = 462.72
- A=8.3 μS × x × (55.0 MΩ/x) = 456.5

と，**MOSのサイズに関係なく定数**になります。実際には MOSのサイズを変えるとバイアスが変わるので利得は変化しますが，MOSのサイズ (W) を変えても利得は大きくは変わらない，ということは知っておきましょう。上の計算だと 400倍 = 52 dB。利得は十分ですがオーディオ用に応用できるように駆動力を高めにしたいので pMOS (M1，M2) を大きくして，M1・M2 の W/L=100，M3・M4の W/L=5 で動かしてみます。テール電流 M5 についてはひとまず W/L=20 にして，Vgs=1.0 V にしておきます。

回路図は必ずテストベンチの部分とは分離して作成します。電源，グラウンドもピンとして定義しておきます。これは LVS をかけるときに必要です。

- [差動増幅段 (diff.sch)](./opamp/diff.sch)
![差動増幅段 (diff.sch)](./opamp/images/diff.png)

シンボルを作成して (diff.sym)，テストベンチを接続します。シミュレーションより利得は 52 dB。ほぼ計算通りです。負荷に容量をつけていないので非常に高い周波数で動くように見えますが，今は周波数特性は気にしないことにします。

- [差動増幅段AC解析テストベンチ (diff_ac.sch)](./opamp/diff_ac.sch)
![差動増幅段AC解析テストベンチ (diff_ac.sch)](./opamp/images/diff_ac.png)
![差動増幅段 利得曲線](./opamp/images/diff_ac_dB.png)

![差動増幅段 op(動作点解析)](./opamp/images/diff_ac_op.png)

重要なこととして，出力のバイアスを確認しておきます。動作点解析より，M4 の Vds は 0.92 V。2段目が nMOSソース接地増幅段なので，オーバードライブ電圧は 0.2 V程度となり2段目を動かすことはできそうです。バイアスについてはDC解析のテストベンチを作成して確認しておきましょう。下図のようになります。動作可能な出力電圧の上限が 3.8 V程度であることが分かります。

- [DC解析 (diff_dc.sch)](./opamp/diff_dc.sch)
![DC解析 (diff_dc.sch)](./opamp/images/diff_dc.png)

![差動増幅段入出力特性](./opamp/images/diff_dc_vout.png)


### ソース接地増幅段
2段目は普通のソース接地増幅回路です。設計のポイントは，十分なスルーレートが得られるように大きな電流を流すこと，システマティックオフセットを0にすることです。


#### システマティックオフセットの除去
オペアンプは Vinp と Vinn の差分を増幅する回路です。つまり Vinp = Vinn であれば出力電流は0である必要があります。ここで Vinp = Vinn であるにも関わらず

差動増幅段とソース接地増幅段を接続した回路図は下の通り。

![システマティックオフセットを考える](./opamp/images/sys_offset.webp)

ここで Vinp = Vinn とすると，I<sub>D5</sub>=I<sub>D3</sub>+I<sub>D4</sub> かつ I<sub>D3</sub>=I<sub>D4</sub> なので，I<sub>D3</sub>=I<sub>D5</sub>/2 です。また，Va=Vb なので，M3 と M7 のゲート-ソース間電圧は等しくなります。つまり I<sub>D3</sub>:I<sub>D7</sub>=W<sub>3</sub>:W<sub>7</sub> です。一方で M5と M6 はカレントミラーを構成しているので， 
I<sub>D5</sub>:I<sub>D6</sub>=W<sub>5</sub>:W<sub>6</sub> です。I<sub>D6</sub>=I<sub>D7</sub> であればシステマティックオフセットは 0 になるので，

![システマティックオフセットの式)](./opamp/images/sys_iw.png)

より，W<sub>6</sub> と W<sub>7</sub> の比は W<sub>5</sub> と W<sub>3</sub> に合わせておく必要があることが分かります。

どの程度のスルーレートが必要かは用途にもよるのですが，とりあえず nMOSの W/L をキリのいい100 にしてみます。そうすると，pMOS のサイズはシステマティックオフセットを0にする条件から決まります。差動増幅段で (W/L)<sub>5</sub> = 20，(W/L)<sub>3</sub> = 5なので， (W/L)<sub>6</sub> は (W/L)<sub>7</sub> の2倍，つまり200 にすればよいということになります。

- [ソース接地増幅段](./opamp/cs.sch)
![ソース接地増幅段](./opamp/images/cs.png)

テストベンチを組んで特性を評価します。2段目は出力段ですので，大きな負荷を駆動することが求められます。ということで負荷に10 pF を接続します。直流利得は 19 dB。差動増幅段の 52 dB と合わせて、 60 dB を超えているので、これでよしとします。

- [ソース接地増幅回路AC解析テストベンチ (cs_ac.sch)](./opamp/cs_ac.sch)
![ソース接地増幅回路AC解析テストベンチ (cs_ac.sch)](./opamp/images/cs_ac.png)
![ソース接地増幅段周波数特性](./opamp/images/cs_ac_dB.png)

過渡解析を行なってスルーレートも評価しておきます。PWL で立ち下がり信号を入力し，出力信号を評価します。スルーレート 8.6 V/μs ぐらい，0 V から 5.0 V まで立ち上がるのにかかる時間は 580 ns = 1.7MHzぐらい。

- [ソース接地過渡応答評価回路 (cs_tran.sch)](./opamp/cs_tran.sch)
![ソース接地過渡応答評価回路 (cs_tran.sch)](./opamp/images/cs_tran.png)
![ソース接地過渡応答評価回路 過渡応答](./opamp/images/cs_tran_time.png)
![ソース接地過渡応答評価回路 スルーレート](./opamp/images/cs_tran_TR.png)



### 2段増幅
差動増幅段とソース接地増幅段を接続して利得がどのぐらい出るか確認します。

- [差動段 + ソース接地 AC解析 (2stage_ac.sch)](./opamp/2stage_ac.sch)
![差動段 + ソース接地 AC解析 (2stage_ac.sch)](./opamp/images/2stage_ac.png)

まず利得を見ます。直流利得は67.6 dB。60dBを超えているのでこれでよいでしょう。単位利得周波数は .measure で取得して，11.6 MHzです。

![差動段 + ソース接地 周波数特性](./opamp/images/2stage_ac_dB.png)
![差動段 + ソース接地 単位利得周波数](./opamp/images/2stage_ac_measure.png)


位相曲線を見てみると，単位利得周波数で位相がほぼ180度回っています。.measure で取得すると，位相はほぼゼロ度。これはほぼ不安定と言っていいので，よろしくありません。

![差動段 + ソース接地 位相曲線](./opamp/images/2stage_ac_phase.png)


### 位相補償
位相余裕がちょっとまずい数字になっているので，これを60度程度にするために位相補償をかけます。利得曲線・位相曲線から読み取れることは，単位利得周波数より低い位置に第2極がきており，そのため利得が0 dB になる前に位相が回ってしまっている，ということ。というわけで第1極と第2極を分離 (pole splitting) して第2極より先に利得を 0 dB に落とします。

- ※ 極とか零点が何なのかをここで解説すると長くなるので，分からない人は教科書を読んでください…

#### ポールスプリッティング
差動増幅段の出力ノードの時定数を大きくすることで第1極を思いっきり下げます。そのためには容量を追加すればいいのですが、下図のようにソース接地増幅段の入出力をつなぐ形で位相補償容量 C<sub>c</sub> を挿入します。容量 C<sub>c</sub> はミラー効果によって差動増幅段からは (1+A)C<sub>c</sub> に見えます。今、ソース接地増幅段の利得は 19 dB (8.9倍) ですので、 C<sub>c</sub> は差動増幅段から見れば9.9倍に見え、第1極を大きく低周波側に下げることができます。

![位相補償容量](./opamp/images/phase_comp.webp)

**本来は pole-zero 解析で極・零点の位置を確認しながら決めるのですが、ngspice の pole-zero 解析がうまくいきません (原因不明)**。ということでしかたなく適当な値で設計することにします。適当に 1 pF にしてみましょう。

- [位相補償容量を追加 (2stage_cc_ac.sch)](./opamp/2stage_cc_ac.sch)
![位相補償容量を追加 (2stage_cc_ac.sch)](./opamp/images/2stage_cc_ac.png)

![2段増幅+位相補償容量 利得曲線](./opamp/images/2stage_cc_ac_dB.png)
![2段増幅+位相補償容量 op](./opamp/images/2stage_cc_ac_measure.png)
![2段増幅+位相補償容量 位相曲線](./opamp/images/2stage_cc_ac_phase.png)

単位利得周波数は 5.5 MHz とほぼ半分に下がり、位相余裕は60度越えとなりました。問題なしです。ちなみに、容量C<sub>c</sub> を増やせば位相余裕をもっと増やせますが、それではよい過渡応答は得られません。C<sub>c</sub> を挿入したことで不安定零点が発生しているからです。これを何とかする必要があります。


#### 位相補償抵抗
説明をいろいろと端折りますが、零点の位置を制御するために直列に抵抗を挿入します。

![位相補償抵抗を追加](./opamp/images/phase_comp_reg.webp)

そうすると、伝達関数は3つの極と1つの零点をもつ

![伝達関数は3つの極と1つの零点の式](./opamp/images/transfer_pole.png)

となり、極と零点の周波数は近似的に

![極と零点の周波数の近似式](./opamp/images/pole_zero.png)

となります。R6 とか R4とか C2 とかはトランジスタの抵抗とか容量です。近似なので適当に書いています。重要なのは零点 ω<sub>z</sub> が右半平面に存在しうること、その位置を Rc によって制御することができる、という点です。不安定零点 (右半平面にある零点) をなくすには大きく2つの方針があり、

1. 零点を無限遠点に飛ばす。つまり 1/gm7−Rc = 0 より gm7Rc = 1 にする。(+第2極を単位利得周波数の2倍以上にもっていく)
2. 零点と第2極をぶつけて消す。つまり −C<sub>L</sub>=Cc(1−gm7Rc) より gm7Rc = (Cc+C<sub>L</sub>) / Cc にする

の2つ。ということで、 Rc は適当な大きさかつ gm7Rc が一定になることが求められます。ばらつきなどで gm7 が変わるかも知れないということを考えると、固定抵抗ではまずそうな気がします。



#### バイアスレプリカ
gm7 に連動して値が変わる抵抗とかそんな都合のいいものが作れるのか、という感じですが、これはMOSトランジスタの線形領域を使って作ります。回路図は下図。

![位相補償抵抗 (M12) を挿入](./opamp/images/phase_comp_mos.webp)

M12 の抵抗値は線形領域の電流の式から

![M12 の抵抗値は線形領域の抵抗の式](./opamp/images/phase_comp_mos_rc.png)

一方で M7 の gm は

![gm7の式](./opamp/images/phase_comp_mos_gm7.png)

ということは

![gm7Rcの式](./opamp/images/phase_comp_mos_gm7_rc.png)

なので、M7 と M12 のオーバードライブ電圧を一定の比に保てば gm7Rc も一定になることが分かります。 
Vgs7 = Vb, Vgs12 = Vc − Vb ですから、 Vc = 2Vb となるように Vc を調整すればよいわけです。この Vc を作るのがバイアスレプリカ回路です。


![バイアスレプリカ回路 (M9～M11)](./opamp/images/bias_replica.webp)

この回路は M6 と M9 でカレントミラーを構成し、M7 に流れる電流と M9 に流れる電流が連動するようにします。M6 は負荷を駆動するために大電流を流すため、そのまま電流をコピーすると無駄に消費電力が増えてしまいます。無駄な電力を使わないように M9 は M6 よりも十分小さくしておきましょう。ここで M9 に流れる電流は M11 に流れる電流に等しいわけですから、 W<sub>6</sub> : W<sub>9</sub> = W<sub>7</sub> : W<sub>11</sub> にしておけば、M11 の Vgs つまり Vd は Vb に等しくなります。その上に同じサイズの M10 をつなぐと、同じ電流が流れるので Vgs<sub>10</sub> = Vd = Vb となり、 Vc = 2Vd = 2Vb が達成できます。

ということで回路図は下のようになります。


- [位相補償 + バイアスレプリカ (2stage_pc.sch)](./opamp/2stage_pc.sch)
![位相補償 + バイアスレプリカ (2stage_pc.sch)](./opamp/images/2stage_pc.png)


動かしてみると、特性は下の通り。利得は66.9 dB、単位利得周波数 5.4 MHz、位相余裕は 68度。まぁこんなところでしょうか。


- [位相補償 + バイアスレプリカ  AC解析(2stage_pc_ac.sch)](./opamp/2stage_pc_ac.sch)
![位相補償 + バイアスレプリカ  AC解析(2stage_pc_ac.sch)](./opamp/images/2stage_pc_ac.png)

![位相補償 + バイアスレプリカ 利得曲線](./opamp/images/2stage_pc_ac_dB.png)
![位相補償 + バイアスレプリカ op](./opamp/images/2stage_pc_ac_measure.png)
![位相補償 + バイアスレプリカ 位相曲線](./opamp/images/2stage_pc_ac_phase.png)

過渡応答も見ておきましょう。ボルテージフォロワの形にして評価します。スルーレートは 8.6V V/μs。ただし電源電圧一杯に出力を振り切る (rail-to-rail) 動作はできません。

- [位相補償 + バイアスレプリカ 過渡応答評価回路 (2stage_pc_tran.sch)](./opamp/2stage_pc_tran.sch)
![位相補償 + バイアスレプリカ 過渡応答評価回路 (2stage_pc_tran.sch)](./opamp/images/2stage_pc_tran.png)
![位相補償 + バイアスレプリカ 過渡応答評価回路 過渡応答](./opamp/images/2stage_pc_tran_time.png)
![位相補償 + バイアスレプリカ 過渡応答評価回路 op](./opamp/images/2stage_pc_tran_measure.png)


### 完成，各種性能評価
あとは pMOSカレントミラーのゲート電圧を理想電圧源で固定していますので，これを電流源 + pMOS (M8) にします．これはただのカレントミラーなので適当に調整しましょう．特に大きいトランジスタを使う意味はないので，バイアスレプリカと同じサイズにしておきます．

- [オペアンプ完成版](./opamp/opamp.sch)
![オペアンプ完成版](./opamp/images/opamp.png)


#### オープンループ特性
とりあえず利得と位相を確認しておきます．下図の回路ですが，Vinp，Vinn の与え方が変わっていることに注意してください．これまでは Vinn は固定電圧を与えていましたが，ここから先は出力電圧からバイアスを RCローパスフィルタで抜き出してきて Vinn に与えます．


- [オペアンプAC解析 (opamp_ac_temp.sch)](./opamp/opamp_ac.sch)
![オペアンプAC解析 (opamp_ac_temp.sch)](./opamp/images/opamp_ac.png)

カレントミラーのバイアスが微妙に変わっているのでちょっと特性は変わっていますが，利得 52.7 dB，単位利得周波数 24.3 dB，位相余裕 67度．

![オペアンプのop](./opamp/images/opamp_ac_measure.png)
![オペアンプ利得曲線](./opamp/images/opamp_ac_dB.png)
![オペアンプ位相曲線](./opamp/images/opamp_ac_phase.png)


#### CMRR
同相信号除去比 CMRR (Common-Mode Rejection Ratio) は差動利得と同相利得の比です．オペアンプは入力端子間の差だけを増幅するのが理想なので，同相信号に対してはまったく反応しない (利得 0倍， −∞ dB) ことが理想です．が，実際には同相信号もある程度は増幅してしまうので，その度合いを表すのが CMRR です．差動利得を A<sub>D</sub>  ，同相利得を A<sub>C</sub> として

![CMRRの式](./opamp/images/cmrr.png)

で定義されます．理想値はもちろん −∞ dB．評価回路は以下です．

- [CMRR評価回路 (opamp_cmrr.sch)](./opamp/opamp_cmrr.sch)
![CMRR評価回路 (opamp_cmrr.sch)](./opamp/images/opamp_cmrr.png)
![CMRR評価回路のop](./opamp/images/opamp_cmrr_measure.png)
![CMRR評価結果](./opamp/images/opamp_cmrr_output.png)

同相利得 (青線) はさすがに 0 dB は超えませんが，そこそこ大きい値になっており CMRR は 100 dB．そんなにいい値ではありません．これは主に差動増幅段のテール電流源が弱い (出力抵抗が小さい) ことなどが原因です．


#### 温度解析
温度 (T) も変えて評価しましょう．

- [オペアンプ温度AC解析 (opamp_ac_temp.sch)](./opamp/opamp_ac_temp.sch)
![オペアンプ温度AC解析 (opamp_ac_temp.sch)](./opamp/images/opamp_ac_temp.png)
![オペアンプ温度のop](./opamp/images/opamp_ac_temp_measure.png)
![オペアンプ温度利得曲線](./opamp/images/opamp_ac_temp_dB.png)
![オペアンプ温度位相曲線](./opamp/images/opamp_ac_temp_phase.png)



## 電流源
トランジスタはそもそも電流源です。BJTであればベース電流で制御される電流制御電流源、MOSFET であればゲート-ソース間電圧で制御される電圧制御電流源と見なすことができます。ということは制御電流/制御電圧を一定にすればトランジスタは定電流源になるはず。その制御電圧を生成して電流をコピーするのがおなじみカレントミラーです。  
しかし、OR1にはBJTはありません。BJTなしの定電流源を作ります。  

### 基本電流源
電流を作るもっとも安直な方法は抵抗を使うことです。

- [基本電流源回路](./current-source/cs-basic.sch)
![基本電流源回路](./current-source/images/cs-basic.png)


オペアンプの設計に合わせて、チャネル長 L を最小の2倍にしています。適当に W/L = 10 にして抵抗を調整し、参照電流 (i1) が 5 mA ぐらいになるようにしました。

![出力電圧-電流特性](./current-source/images/cs-basic_VA.png)

また、抵抗で参照電流を作っているため電源電圧を±10% 変えると参照電流もほぼ±10%変動しています。また、温度特性を見ると

![温度-電流特性](./current-source/images/cs-basic_temp.png)

-50℃～125℃でだいたい半分ぐらい変わっています。


### Vth-referenced 自己バイアス電流源
電圧に依存しない電流を作る方法として、Vth-referenced 自己バイアス回路というものがあります。

- [Vth-referenced 自己バイアス回路](./current-source/cs-vth-ref.sch)
![Vth-referenced 自己バイアス回路](./current-source/images/cs-vth-ref.png)


M1 と M2 のつなぎ方がカレントミラーと異なっているところがポイントです。この構成にすると、M1・M2 に流れるドレイン電流がトランジスタのしきい値電圧によって ≃ Vth/R となります。  
また、ここでは、MOSFETのサイズをW=100μm L=2μmとしています。理由は、先ほど設計したオペアンプで利用する電流源＝10μAを供給する電流源とするためです。50μAを流す電流源として、設計して、カレントミラーで電流をミラーするときに、オペアンプ側のpMOSがW=20μmなので、1/5となり、10μAとなるという寸法です。  
シミュレーションすると、

![電圧-電流特性](./current-source/images/cs-vth-ref_VA.png)
![温度特性](./current-source/images/cs-vth-ref_temp.png)

i2 は電源電圧に対して安定しており、変動は0.5%以下になっています。一方、Vth を参照しているため温度による Vth の変動はそのまま出力に影響します。温度変動に対しては電流は約10%変動します。



## オペアンプ＋電流源
### 電流源の使い方
前節までで電流源回路ができたわけですが、これどうやって使うの？ と思う人も多いのではないかと思います。それもそのはずで、電流源回路、ある意味で名前に偽りがあります。その辺を説明します。

#### 電流源回路と電流源記号
回路素子で電流源と言えば下の記号

![xschem の電流源 （isource）](./current-source/images/isource.webp)

端子があって、端子から流れ出る/流れ込む電流が一定となる素子です。ところが前節の回路はどれも、回路の内部に一定の電流が流れてはいますが、その電流が端子から外部に出入りすることはありません。つまりここで紹介した電流源回路は、回路記号の電流源に相当するものではないのです。というわけで、区別を明確にするためにここでは前節で紹介した回路を「電流源回路」、回路記号の電流源を単に「電流源」と書くことにします。上に書いた通り、「電流源」は2つの端子を持ち、端子に流れる電流が一定となる素子です。  


では「電流源回路」の出力端子は何なのかというと、電流源回路が他の回路とやりとりするのは電流ではなくカレントミラーのバイアス電圧です。つまり、電流源回路は「設定した電流を端子から出力する」のではなく、「カレントミラーに設定通りの電流が流れるようなバイアス電圧を出力する」回路ということです。言い換えると、電流源回路は電流源記号を置き換えるのではなくカレントミラーの参照電流側を置き換えるものです。下図参照。  


![電流源回路の担当部分](./current-source/images/usege_cs_cm.webp)


#### つなぎ方の例
具体的に使い方の例を示します。下図のように、アクティブ負荷を持つソース接地増幅回路があったとします。この回路は設計段階では理想電流源を使ってカレントミラーでアクティブ負荷を作ってシミュレーションしました。これを電流源回路と結合します。


![アクティブロードをもつソース接地増幅回路](./current-source/images/usege_cs_cs_connecting.webp)


つなげる前にこの回路をもう一度よく見ておくと、増幅回路として必要なのは XM1 と XM2 だけです。XM2 をアクティブロード (電流源) にしたいので、XM3 をつけてカレントミラーを組み、XM2 のゲート電位を固定します (黄色の枠線)。XM3 はバイアス電圧を作るわけですが、そのためには基準電流が必要なので、ここでは理想電流源を使って参照電流を流し、それによってバイアスを定めます (赤の枠線)。ようするに、この回路が増幅回路としてうまく機能するのに必要なのは「XM2 のゲート電圧を決めてくれる誰か」なわけです。


というわけで、電流源回路をつなぎます。前節で紹介した Vth-reference型をつなげると、下図になります。


![電流源回路 + アクティブ負荷ソース接地増幅回路 （注: MOSのサイズは適当です）](./current-source/images/usege_cs_cs_connecting_cs.webp)


電流源回路とソース接地増幅回路をつなぐのは、電流ではなくバイアス電圧 Vb です。参照電流を流している XM6 とアクティブ負荷 XM2 がカレントミラーになっているので、(MOSサイズを適切に調整していれば) これで理想電流源を使った回路と同じものになるというわけです。


なお nMOS カレントミラーでバイアス電流を流したいんだけど… という場合に XM3 や XM4 のゲート電圧を使ってはいけません。これらのゲートと別の nMOS のゲートをつないでもカレントミラーにはなりません。カレントミラーの参照側は XM6 のようにダイオード接続 (ゲートとドレイン直結) である必要があります。そのため、nMOS カレントミラーを動かしたい場合は下図のようになります。


![nMOSカレントミラーへのつなぎ方](./current-source/images/usege_cs_cs_connecting_cs_nmos.webp)


まず pMOSカレントミラーで XM7 を電流源として動かし、その電流を ダイオード接続された XM8 に流すことで nMOSゲート電圧を作っています。あとはその電圧を XM1 に渡せば、XM1 が電流源としてはたらくという仕組みです。


### オペアンプに電流源を接続する
前節の内容に従って、電流源をオペアンプに接続して、各種性能評価をします。

- [オペアンプ＋電流源回路](./opamp/opamp_cs.sch)
![オペアンプ＋電流源回路](./opamp/images/opamp_cs.png)


#### オープンループ特性
- [オペアンプAC解析 (opamp_cs_ac_temp.sch)](./opamp/opamp_cs_ac.sch)
![オペアンプAC解析 (opamp_cs_ac_temp.sch)](./opamp/images/opamp_cs_ac.png)
![オペアンプのop](./opamp/images/opamp_cs_ac_measure.png)
![オペアンプ利得曲線](./opamp/images/opamp_cs_ac_dB.png)
![オペアンプ位相曲線](./opamp/images/opamp_cs_ac_phase.png)


#### CMRR
- [CMRR評価回路 (opamp_cs_cmrr.sch)](./opamp/opamp_cs_cmrr.sch)
![CMRR評価回路 (opamp_cs_cmrr.sch)](./opamp/images/opamp_cs_cmrr.png)
![CMRR評価回路のop](./opamp/images/opamp_cs_cmrr_measure.png)
![CMRR評価結果](./opamp/images/opamp_cs_cmrr_output.png)


#### 温度解析
- [オペアンプ温度AC解析 (opamp_cs_ac_temp.sch)](./opamp/opamp_cs_ac_temp.sch)
![オペアンプ温度AC解析 (opamp_cs_ac_temp.sch)](./opamp/images/opamp_cs_ac_temp.png)
![オペアンプ温度のop](./opamp/images/opamp_cs_ac_temp_measure.png)
![オペアンプ温度利得曲線](./opamp/images/opamp_cs_ac_temp_dB.png)
![オペアンプ温度位相曲線](./opamp/images/opamp_cs_ac_temp_phase.png)


問題はないようなので、これで完成です。


# レイアウト編
## schematic to placeレイアウト
まずは、基本として「schematic to placeレイアウト」という回路図の見た目をそのままレイアウトにする方法でレイアウトしてみます。  
レイアウトテクニックとしては、フィンガーのみを使用しています。より高度なレイアウトテクニックはこの後に記載していきます。  
- フィンガーについては[Open Source Silicon Magazine Vol.1 ーはじめてのIC設計ー](https://techbookfest.org/product/3W7W1ukgkMrX6ENeBJaaYn)をご覧ください

これまで設計したオペアンプの回路図は部品単位で設計されていますので、まずは、1つの回路図に全て集約します。

- [集約したオペアンプ (opamp_cs_full.sch)](./opamp/opamp_cs_full.sch)
![集約したオペアンプ (opamp_cs_full.sch)](./opamp/images/opamp_cs_full.png)
![オペアンプのschematic to placeレイアウト](./opamp/images/opamp_cs_schem2place_layout.png)

schematic to placeレイアウトですので、回路図の配置そのままのレイアウトになります。


### DRC
DRCを実行します。下図のようにオールグリーンとなればOKです。  

![schematic to place版のDRC](./opamp/images/opamp_cs_schem2place_drc.png)


### LVS
LVS機能の一部にバグがあるようですので、修正されるまで下記の対応をお願いします。  

#### PDKバグ対応：抵抗やキャパシタの認識
LVSを実行します。しかし、下記のようなエラーが出ます。どうやら、PDKのLVS機能がxscheｍのPoly_resシンボルやPoly_capシンボルを認識できないようです。  

![エラーメッセージ](./opamp/images/opamp_cs_schem2place_lvs_reg_ng.png)

そこで、回路図のPoly_resシンボルやPoly_capシンボルをxschemの標準部品のPresシンボルやcapaシンボルに変更します。(下図の赤丸内)  

- [シンボルを変更した回路図 (opamp_cs_full_lvs.sch)](./opamp/opamp_cs_full_lvs.sch)
![シンボルを変更した回路図 (opamp_cs_full_lvs.sch)](./opamp/images/opamp_cs_schem2place_xschem_lvs.png)


#### PDKバグ対応：Pdiff_cap, Ndiff_capの認識
上記の修正をしても、まだ、LVSでエラーが出ます。これは、PDKがP-CellのPdiff_cap, Ndiff_capの接続関係をうまく認識できていないことが原因です。  

![capの接続エラー](./opamp/images/opamp_cs_schem2place_lvs_ng.png)

そこで、一時的にPoly_capに置き換えて、LVSを実行してください。(下図の赤丸内)  
オールグリーンになればOKです。  

- [capを変更したレイアウト (opamp_cs_full_lvs.gds)](./opamp/opamp_cs_full_lvs.gds)
![capを変更したレイアウト (opamp_cs_full_lvs.gds)](./opamp/images/opamp_cs_schem2place_layout_lvs.png)
![LVS OK](./opamp/images/opamp_cs_schem2place_lvs_ok.png)


## 各種レイアウトテクニック
これ以降は、各種レイアウトテクニックを解説します。自分の設計に適しなものをご利用ください。  

### Cell（セル）単位でのレイアウト




# 出典
土谷先生のGF180による[OPAMPサンプル](https://note.com/akira_tsuchiya/n/n710ed2d0e428)と[CSサンプル](https://note.com/akira_tsuchiya/n/n307d76106a86)_を[OpenRule1um PDK](https://github.com/ishi-kai/OpenRule1umPDK_setupEDA)の[PTC06 PDK](https://github.com/ishi-kai/OpenRule1umPDK_setupEDA?tab=readme-ov-file#%E3%83%95%E3%82%A7%E3%83%8B%E3%83%86%E3%83%83%E3%82%AF%E3%82%B7%E3%83%A3%E3%83%88%E3%83%ABpdk%E3%81%AE%E5%A0%B4%E5%90%88)向けに書き直したものです。

# ライセンス
SPDX-License-Identifier: Apache-2.0 

Copyright 2024 Noritsuna IMAMURA
Copyright 2023 Akira Tsuchiya (atuchiya)
