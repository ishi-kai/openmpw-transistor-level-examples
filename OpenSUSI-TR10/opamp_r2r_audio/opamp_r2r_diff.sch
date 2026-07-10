v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 780 20 780 60 {}
L 4 780 60 1020 60 {}
L 4 1420 20 1420 60 {}
L 4 1020 60 1420 60 {}
P 4 1 -740 -1280 {}
T {Differential input stage (rail-to-rail)} 780 80 0 0 0.4 0.4 {}
N 880 -1020 880 -900 {lab=#net1}
N 880 -870 900 -870 {lab=VDD}
N 900 -1050 900 -870 {lab=VDD}
N 880 -1050 900 -1050 {lab=VDD}
N 880 -1050 900 -1050 {lab=VDD}
N 900 -1080 900 -1050 {lab=VDD}
N 880 -840 880 -720 {lab=#net2}
N 880 -690 900 -690 {lab=VDD}
N 900 -870 900 -690 {lab=VDD}
N 880 -1200 880 -1080 {lab=VDD}
N 900 -1200 900 -1080 {lab=VDD}
N 880 -1200 900 -1200 {lab=VDD}
N 800 -1050 840 -1050 {lab=BPO}
N 800 -870 840 -870 {lab=BPI}
N 800 -690 840 -690 {lab=INP}
N 1120 -1020 1120 -900 {lab=#net3}
N 1100 -870 1120 -870 {lab=VDD}
N 1100 -1050 1100 -870 {lab=VDD}
N 1100 -1050 1120 -1050 {lab=VDD}
N 1100 -1050 1120 -1050 {lab=VDD}
N 1100 -1080 1100 -1050 {lab=VDD}
N 1120 -840 1120 -720 {lab=#net2}
N 1100 -690 1120 -690 {lab=VDD}
N 1100 -870 1100 -690 {lab=VDD}
N 1120 -1200 1120 -1080 {lab=VDD}
N 1100 -1200 1100 -1080 {lab=VDD}
N 1100 -1200 1120 -1200 {lab=VDD}
N 1160 -1050 1200 -1050 {lab=BPO}
N 1160 -870 1200 -870 {lab=BPI}
N 920 -1200 1100 -1200 {lab=VDD}
N 880 -660 880 -540 {lab=INP_P}
N 1120 -660 1120 -540 {lab=INM_P}
N 1000 -620 1000 -540 {lab=INP_N}
N 1000 -480 1000 -360 {lab=#net4}
N 1000 -300 1000 -180 {lab=#net5}
N 1000 -120 1000 0 {lab=VSS}
N 860 0 1000 0 {lab=VSS}
N 1000 -510 1020 -510 {lab=VSS}
N 1020 -510 1020 0 {lab=VSS}
N 1000 0 1020 0 {lab=VSS}
N 1000 -150 1020 -150 {lab=VSS}
N 1000 -330 1020 -330 {lab=VSS}
N 900 -1200 920 -1200 {lab=VDD}
N 880 -840 1120 -840 {lab=#net2}
N 800 -510 960 -510 {lab=INP}
N 800 -690 800 -510 {lab=INP}
N 920 -330 960 -330 {lab=BNI}
N 920 -150 960 -150 {lab=BNO}
N 1320 -620 1320 -540 {lab=INM_N}
N 1320 -480 1320 -360 {lab=#net4}
N 1320 -300 1320 -180 {lab=#net6}
N 1320 -120 1320 0 {lab=VSS}
N 1300 -510 1320 -510 {lab=VSS}
N 1300 -510 1300 0 {lab=VSS}
N 1300 0 1320 0 {lab=VSS}
N 1300 -150 1320 -150 {lab=VSS}
N 1300 -330 1320 -330 {lab=VSS}
N 1360 -330 1400 -330 {lab=BNI}
N 1360 -150 1400 -150 {lab=BNO}
N 1360 -510 1400 -510 {lab=INM}
N 1400 -690 1400 -510 {lab=INM}
N 1020 0 1300 0 {lab=VSS}
N 800 -1200 880 -1200 {lab=VDD}
N 1120 -280 1680 -280 {lab=INM_P}
N 1120 -540 1120 -280 {lab=INM_P}
N 880 -540 880 -260 {lab=INP_P}
N 1320 -960 1680 -960 {lab=INM_N}
N 1160 -690 1400 -690 {lab=INM}
N 1320 -960 1320 -620 {lab=INM_N}
N 1000 -980 1010 -980 {lab=INP_N}
N 1000 -980 1000 -620 {lab=INP_N}
N 740 0 860 0 {lab=VSS}
N 740 -1200 800 -1200 {lab=VDD}
N 1000 -360 1320 -360 {lab=#net4}
N 1010 -980 1680 -980 {lab=INP_N}
N 880 -260 1680 -260 {lab=INP_P}
N 800 -330 920 -330 {lab=BNI}
N 810 -150 920 -150 {lab=BNO}
C {MP.sym} 840 -1050 0 0 {name=MINPP1 model=PMOS w=6u l=4u m=8 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MP.sym} 840 -870 0 0 {name=MINPP2 model=PMOS w=6u l=4u m=8 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MP.sym} 840 -690 0 0 {name=MINPP3 model=PMOS w=6u l=4u m=8 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {devices/lab_wire.sym} 820 -1050 0 0 {name=p2 sig_type=std_logic lab=BPO}
C {devices/lab_wire.sym} 820 -870 0 0 {name=p4 sig_type=std_logic lab=BPI}
C {MP.sym} 1160 -1050 0 1 {name=MINMP1 model=PMOS w=6u l=4u m=8 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MP.sym} 1160 -870 0 1 {name=MINMP2 model=PMOS w=6u l=4u m=8 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MP.sym} 1160 -690 0 1 {name=MINMP3 model=PMOS w=6u l=4u m=8 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {devices/lab_wire.sym} 1180 -1050 0 1 {name=p5 sig_type=std_logic lab=BPO}
C {devices/lab_wire.sym} 1180 -870 0 1 {name=p6 sig_type=std_logic lab=BPI}
C {MN.sym} 960 -330 0 0 {name=MINPN2 model=NMOS w=6u l=4u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MN.sym} 960 -150 0 0 {name=MINPN1 model=NMOS w=6u l=4u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MN.sym} 960 -510 0 0 {name=MINPN3 model=NMOS w=6u l=4u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {devices/lab_wire.sym} 940 -330 0 0 {name=p13 sig_type=std_logic lab=BNI}
C {devices/lab_wire.sym} 940 -150 0 0 {name=p14 sig_type=std_logic lab=BNO}
C {MN.sym} 1360 -330 0 1 {name=MINMN2 model=NMOS w=6u l=4u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MN.sym} 1360 -150 0 1 {name=MINMN1 model=NMOS w=6u l=4u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MN.sym} 1360 -510 0 1 {name=MINMN3 model=NMOS w=6u l=4u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {devices/lab_wire.sym} 1380 -330 0 1 {name=p16 sig_type=std_logic lab=BNI}
C {devices/lab_wire.sym} 1380 -150 0 1 {name=p17 sig_type=std_logic lab=BNO}
C {devices/iopin.sym} 740 -1200 2 0 {name=p22 lab=VDD}
C {devices/iopin.sym} 740 0 2 0 {name=p23 lab=VSS}
C {devices/ipin.sym} 800 -510 0 0 {name=p7 lab=INP}
C {devices/ipin.sym} 1400 -690 0 1 {name=p24 lab=INM}
C {devices/opin.sym} 1680 -980 0 0 {name=p25 lab=INP_N}
C {devices/opin.sym} 1680 -960 0 0 {name=p1 lab=INM_N}
C {devices/opin.sym} 1680 -280 0 0 {name=p3 lab=INM_P}
C {devices/opin.sym} 1680 -260 0 0 {name=p8 lab=INP_P}
C {devices/ipin.sym} 800 -1050 0 0 {name=p9 lab=BPO}
C {devices/ipin.sym} 800 -870 0 0 {name=p11 lab=BPI}
C {devices/ipin.sym} 800 -330 0 0 {name=p12 lab=BNI}
C {devices/ipin.sym} 810 -150 0 0 {name=p15 lab=BNO}
