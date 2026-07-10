v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 2620 20 2620 60 {}
L 4 2740 20 2740 60 {}
L 4 2620 60 2740 60 {}
L 4 2780 20 2780 60 {}
L 4 2840 20 2840 60 {}
L 4 2780 60 2840 60 {}
T {Compensation
Capacitors} 2620 80 0 0 0.4 0.4 {}
T {Push-pull Buffer
(Class AB Output)} 2780 80 0 0 0.4 0.4 {}
N 2560 0 2580 0 {lab=VSS}
N 2580 0 2800 0 {lab=VSS}
N 2800 -290 2800 0 {lab=VSS}
N 2800 -460 2800 -290 {lab=VSS}
N 2800 -690 2820 -690 {lab=VDD}
N 2820 -1200 2820 -690 {lab=VDD}
N 2680 -1200 2820 -1200 {lab=VDD}
N 2800 -1200 2800 -720 {lab=VDD}
N 2760 -780 2760 -690 {lab=AB_P}
N 2520 -780 2760 -780 {lab=AB_P}
N 2760 -490 2760 -420 {lab=AB_N}
N 2800 -480 2800 -460 {lab=VSS}
N 2760 -510 2760 -490 {lab=AB_N}
N 2800 -510 2820 -510 {lab=VSS}
N 2820 -510 2820 0 {lab=VSS}
N 2800 0 2820 0 {lab=VSS}
N 2800 -660 2800 -540 {lab=OUT}
N 2720 -590 2800 -590 {lab=OUT}
N 2650 -590 2720 -590 {lab=OUT}
N 2700 -620 2700 -560 {lab=VSS}
N 2700 -560 2700 0 {lab=VSS}
N 2630 -620 2630 -560 {lab=VSS}
N 2630 -560 2630 0 {lab=VSS}
N 2650 -650 2720 -650 {lab=CAP_P}
N 2650 -530 2720 -530 {lab=CAP_N}
N 2480 -650 2650 -650 {lab=CAP_P}
N 2480 -530 2650 -530 {lab=CAP_N}
N 2800 -590 2860 -590 {lab=OUT}
N 2520 -420 2760 -420 {lab=AB_N}
N 2470 -780 2520 -780 {lab=AB_P}
N 2480 -420 2520 -420 {lab=AB_N}
C {MP.sym} 2760 -690 0 0 {name=MDRVP model=PMOS w=6u l=4u m=96 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MN.sym} 2760 -510 0 0 {name=MDRVN model=NMOS w=6u l=4u m=48 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {devices/iopin.sym} 2680 -1200 2 0 {name=p22 lab=VDD}
C {devices/iopin.sym} 2560 0 2 0 {name=p23 lab=VSS}
C {devices/opin.sym} 2860 -590 0 0 {name=p25 lab=OUT}
C {devices/ipin.sym} 2470 -780 0 0 {name=p11 lab=AB_P}
C {devices/ipin.sym} 2480 -420 0 0 {name=p1 lab=AB_N}
C {devices/ipin.sym} 2480 -650 0 0 {name=p2 lab=CAP_P}
C {devices/ipin.sym} 2480 -530 0 0 {name=p3 lab=CAP_N}
C {IP62LIB/CSIO.sym} 2650 -650 0 0 {name=XCP2
model=F_CSIO
spiceprefix=X
x=80.6u
y=80.6u
c="expr_eng( 0.6e-3 * @x * @y )"
a="expr_eng( @x * @y )"
p="expr_eng( 2 * ( @x + @y ) )"
m=1}
C {IP62LIB/CSIO.sym} 2720 -650 0 0 {name=XCP1
model=F_CSIO
spiceprefix=X
x=80.6u
y=80.6u
c="expr_eng( 0.6e-3 * @x * @y )"
a="expr_eng( @x * @y )"
p="expr_eng( 2 * ( @x + @y ) )"
m=1}
C {IP62LIB/CSIO.sym} 2650 -530 2 1 {name=XCN2
model=F_CSIO
spiceprefix=X
x=80.6u
y=80.6u
c="expr_eng( 0.6e-3 * @x * @y )"
a="expr_eng( @x * @y )"
p="expr_eng( 2 * ( @x + @y ) )"
m=1}
C {IP62LIB/CSIO.sym} 2720 -530 2 1 {name=XCN1
model=F_CSIO
spiceprefix=X
x=80.6u
y=80.6u
c="expr_eng( 0.6e-3 * @x * @y )"
a="expr_eng( @x * @y )"
p="expr_eng( 2 * ( @x + @y ) )"
m=1}
