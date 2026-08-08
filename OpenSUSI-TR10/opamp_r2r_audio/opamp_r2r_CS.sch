v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 -600 20 -600 60 {}
L 4 -600 60 200 60 {}
L 4 200 20 200 60 {}
L 4 240 20 240 60 {}
L 4 240 60 480 60 {}
L 4 480 20 480 60 {}
L 4 -10 200 10 200 {}
L 4 10 200 10 240 {}
L 4 -10 240 10 240 {}
L 4 20 200 20 240 {}
L 4 20 220 20 240 {}
L 4 20 220 30 220 {}
L 4 -10 180 -10 200 {}
L 4 -10 240 -10 260 {}
L 4 150 320 170 320 {}
L 4 170 320 170 360 {}
L 4 150 360 170 360 {}
L 4 180 320 180 360 {}
L 4 180 340 180 360 {}
L 4 180 340 190 340 {}
L 4 150 300 150 320 {}
L 4 150 360 150 380 {}
L 4 150 200 170 200 {}
L 4 170 200 170 240 {}
L 4 150 240 170 240 {}
L 4 180 200 180 240 {}
L 4 180 220 180 240 {}
L 4 180 220 190 220 {}
L 4 150 180 150 200 {}
L 4 150 240 150 260 {}
L 4 150 260 150 300 {}
L 4 150 140 150 160 {}
L 4 150 120 150 160 {}
L 4 130 150 150 160 {}
L 4 150 160 170 150 {}
L 4 -10 120 -10 160 {}
L 4 -30 150 -10 160 {}
L 4 -10 160 10 150 {}
L 4 -30 380 10 380 {}
L 4 -20 400 -10 380 {}
L 4 -40 400 -30 380 {}
L 4 0 400 10 380 {}
L 4 130 380 170 380 {}
L 4 160 400 170 380 {}
L 4 140 400 150 380 {}
L 4 120 400 130 380 {}
L 4 -10 260 -10 380 {}
L 4 -10 190 30 190 {}
L 4 30 220 30 260 {}
L 4 30 260 230 260 {}
L 4 190 220 190 260 {}
L 4 200 190 200 340 {}
L 4 150 190 200 190 {}
L 4 30 190 40 190 {}
L 4 40 190 40 260 {}
L 4 200 340 200 370 {}
L 4 200 370 230 370 {}
L 4 190 340 190 370 {}
L 4 190 370 200 370 {}
L 4 -90 320 -30 260 {}
L 4 -50 260 -30 260 {}
L 4 -50 260 -30 260 {}
L 4 -30 260 -30 280 {}
L 4 -540 -760 -520 -760 {}
L 4 -520 -760 -520 -740 {}
L 4 -560 -720 -520 -760 {}
P 4 1 -740 -1280 {}
T {Cascode Current Mirror (LVCCM)} -600 80 0 0 0.4 0.4 {}
T {Floating Current Mirror} 240 80 0 0 0.4 0.4 {}
T {Typical Cascode Opamp Rev.2

Process: OpenSUSI-TR10 (Tokai Rika)
 Author: Mizuki Mori (github: 3zki)} -600 120 0 0 0.4 0.4 {}
T {W2} 110 200 0 0 0.4 0.4 {}
T {W2} 110 320 0 0 0.4 0.4 {}
T {W1} -50 200 0 0 0.4 0.4 {}
T {Equivalent ratio
W1:W2
P= 1:6.20
N= 1:5.98} -190 120 0 0 0.4 0.4 {}
T {Series 3} -150 340 0 0 0.4 0.4 {}
T {Assuming 3.0V} -660 -720 0 0 0.4 0.4 {}
N 140 -1020 140 -900 {lab=#net1}
N 120 -870 140 -870 {lab=VDD}
N 120 -1050 120 -870 {lab=VDD}
N 120 -1050 140 -1050 {lab=VDD}
N 120 -1050 140 -1050 {lab=VDD}
N 120 -1080 120 -1050 {lab=VDD}
N 0 -1020 0 -900 {lab=#net2}
N -20 -870 0 -870 {lab=VDD}
N -20 -1050 -20 -870 {lab=VDD}
N -20 -1050 0 -1050 {lab=VDD}
N -20 -1050 0 -1050 {lab=VDD}
N -20 -1080 -20 -1050 {lab=VDD}
N 0 -840 0 -720 {lab=#net3}
N -20 -690 0 -690 {lab=VDD}
N -20 -870 -20 -690 {lab=VDD}
N 40 -870 40 -690 {lab=BPI}
N 40 -1050 40 -870 {lab=BPI}
N 80 -1000 80 -620 {lab=BPI}
N 0 -620 80 -620 {lab=BPI}
N 0 -660 0 -620 {lab=BPI}
N 0 -1200 0 -1080 {lab=VDD}
N -20 -1200 -20 -1080 {lab=VDD}
N -20 -1200 0 -1200 {lab=VDD}
N 0 -1200 140 -1200 {lab=VDD}
N 140 -1200 140 -1080 {lab=VDD}
N 120 -1200 120 -1080 {lab=VDD}
N -140 -1200 -140 -720 {lab=VDD}
N -140 -1200 -20 -1200 {lab=VDD}
N -100 -1200 -100 -690 {lab=VDD}
N -160 -690 -140 -690 {lab=VDD}
N -160 -1200 -160 -690 {lab=VDD}
N -160 -1200 -140 -1200 {lab=VDD}
N 180 -1000 300 -1000 {lab=BPI}
N 80 -1000 180 -1000 {lab=BPI}
N 40 -1000 80 -1000 {lab=BPI}
N 180 -1000 180 -870 {lab=BPI}
N 180 -1180 180 -1050 {lab=BPO}
N 180 -1180 300 -1180 {lab=BPO}
N 140 -1200 300 -1200 {lab=VDD}
N 220 -1180 220 -620 {lab=BPO}
N 140 -620 220 -620 {lab=BPO}
N 140 -840 140 -620 {lab=BPO}
N 140 -620 140 -540 {lab=BPO}
N -140 -660 0 -660 {lab=BPI}
N 140 -480 140 -360 {lab=BPO}
N 140 -540 140 -480 {lab=BPO}
N 0 -620 0 -540 {lab=BPI}
N 0 -480 0 -360 {lab=BPI}
N 0 -540 0 -480 {lab=BPI}
N 120 -330 140 -330 {lab=VSS}
N 140 -300 140 -180 {lab=#net4}
N 0 -300 0 -180 {lab=#net5}
N 140 -120 140 0 {lab=VSS}
N 0 -120 0 0 {lab=VSS}
N 0 0 140 0 {lab=VSS}
N -280 -620 -280 -540 {lab=BNO}
N -280 -480 -280 -360 {lab=BNO}
N -280 -540 -280 -480 {lab=BNO}
N -420 -620 -420 -540 {lab=BNI}
N -420 -480 -420 -360 {lab=#net6}
N -300 -330 -280 -330 {lab=VSS}
N -280 -300 -280 -180 {lab=#net7}
N -420 -300 -420 -180 {lab=#net8}
N -280 -120 -280 0 {lab=VSS}
N -420 -120 -420 0 {lab=VSS}
N -420 0 -280 0 {lab=VSS}
N -140 0 0 0 {lab=VSS}
N -280 0 -140 0 {lab=VSS}
N -300 -150 -280 -150 {lab=VSS}
N -300 -150 -300 -10 {lab=VSS}
N -300 -10 -300 0 {lab=VSS}
N -300 -330 -300 -150 {lab=VSS}
N -240 -20 180 -20 {lab=BNO}
N 180 -150 180 -20 {lab=BNO}
N 40 -150 40 -20 {lab=BNO}
N -240 -150 -240 -20 {lab=BNO}
N 180 -20 300 -20 {lab=BNO}
N -200 -400 -200 -20 {lab=BNO}
N -440 -510 -420 -510 {lab=VSS}
N -440 -510 -440 0 {lab=VSS}
N -440 0 -420 0 {lab=VSS}
N -440 -150 -420 -150 {lab=VSS}
N -440 -330 -420 -330 {lab=VSS}
N -380 -510 -380 -330 {lab=BNI}
N -380 -330 -380 -150 {lab=BNI}
N -380 -200 300 -200 {lab=BNI}
N -240 -330 -240 -200 {lab=BNI}
N -340 -580 -340 -200 {lab=BNI}
N -420 -580 -340 -580 {lab=BNI}
N -280 -580 -200 -580 {lab=BNO}
N -200 -580 -200 -400 {lab=BNO}
N 280 -1020 280 -900 {lab=#net9}
N 260 -870 280 -870 {lab=VDD}
N 260 -1050 260 -870 {lab=VDD}
N 260 -1050 280 -1050 {lab=VDD}
N 260 -1050 280 -1050 {lab=VDD}
N 260 -1080 260 -1050 {lab=VDD}
N 280 -1200 280 -1080 {lab=VDD}
N 260 -1200 260 -1080 {lab=VDD}
N 320 -1000 320 -870 {lab=BPI}
N 320 -1180 320 -1050 {lab=BPO}
N 280 -840 280 -620 {lab=BNF}
N 280 -620 280 -540 {lab=BNF}
N 280 -480 280 -360 {lab=#net10}
N 260 -330 280 -330 {lab=VSS}
N 280 -300 280 -180 {lab=#net11}
N 280 -120 280 0 {lab=VSS}
N 140 0 280 0 {lab=VSS}
N 300 -1000 320 -1000 {lab=BPI}
N 300 -1180 320 -1180 {lab=BPO}
N 320 -1000 740 -1000 {lab=BPI}
N 320 -1180 740 -1180 {lab=BPO}
N 40 -330 40 -200 {lab=BNI}
N 180 -330 180 -200 {lab=BNI}
N 120 -330 120 -0 {lab=VSS}
N -20 -330 -20 0 {lab=VSS}
N -20 -330 -0 -330 {lab=VSS}
N -20 -150 -0 -150 {lab=VSS}
N 120 -150 140 -150 {lab=VSS}
N 260 -330 260 0 {lab=VSS}
N 260 -150 280 -150 {lab=VSS}
N 300 -20 740 -20 {lab=BNO}
N 300 -200 740 -200 {lab=BNI}
N 320 -330 320 -200 {lab=BNI}
N 320 -560 320 -510 {lab=BNF}
N 320 -580 320 -560 {lab=BNF}
N 280 -580 320 -580 {lab=BNF}
N 260 -510 280 -510 {lab=VSS}
N 260 -510 260 -330 {lab=VSS}
N 320 -380 740 -380 {lab=BNF}
N 320 -510 320 -390 {lab=BNF}
N 320 -390 320 -380 {lab=BNF}
N 420 -1020 420 -900 {lab=#net12}
N 400 -870 420 -870 {lab=VDD}
N 400 -1050 400 -870 {lab=VDD}
N 400 -1050 420 -1050 {lab=VDD}
N 400 -1050 420 -1050 {lab=VDD}
N 400 -1080 400 -1050 {lab=VDD}
N 420 -1200 420 -1080 {lab=VDD}
N 400 -1200 400 -1080 {lab=VDD}
N 460 -1000 460 -870 {lab=BPI}
N 420 -620 420 -540 {lab=BPF}
N 420 -480 420 -360 {lab=BPF}
N 400 -330 420 -330 {lab=VSS}
N 420 -300 420 -180 {lab=#net13}
N 420 -120 420 0 {lab=VSS}
N 460 -150 460 -20 {lab=BNO}
N 280 0 420 0 {lab=VSS}
N 400 -330 400 0 {lab=VSS}
N 400 -150 420 -150 {lab=VSS}
N 460 -330 460 -200 {lab=BNI}
N 420 -540 420 -480 {lab=BPF}
N 420 -840 420 -720 {lab=#net14}
N 400 -690 420 -690 {lab=VDD}
N 400 -870 400 -690 {lab=VDD}
N 460 -690 460 -620 {lab=BPF}
N 420 -620 460 -620 {lab=BPF}
N 420 -660 420 -620 {lab=BPF}
N 460 -820 460 -690 {lab=BPF}
N 460 -820 740 -820 {lab=BPF}
N -560 -540 -420 -540 {lab=BNI}
N -520 -510 -520 0 {lab=VSS}
N -520 0 -440 -0 {lab=VSS}
N -580 -510 -560 -510 {lab=VSS}
N -580 -510 -580 -0 {lab=VSS}
N -580 -0 -520 -0 {lab=VSS}
N -560 -480 -560 -0 {lab=VSS}
N -620 -1200 -160 -1200 {lab=VDD}
N -620 -0 -580 -0 {lab=VSS}
N -740 -130 -720 -130 {lab=VSS}
N -740 -130 -740 -80 {lab=VSS}
N -740 -80 -680 -80 {lab=VSS}
N -680 -100 -680 -80 {lab=VSS}
N -680 -160 -660 -160 {lab=VSS}
N -660 -160 -660 -130 {lab=VSS}
N -680 -130 -660 -130 {lab=VSS}
N -660 -130 -660 -80 {lab=VSS}
N -680 -80 -660 -80 {lab=VSS}
N -680 -220 -660 -220 {lab=VDD}
N -680 -250 -660 -250 {lab=VDD}
N -740 -250 -720 -250 {lab=VDD}
N -740 -300 -740 -250 {lab=VDD}
N -740 -300 -680 -300 {lab=VDD}
N -680 -300 -680 -280 {lab=VDD}
N -680 -300 -660 -300 {lab=VDD}
N -660 -300 -660 -220 {lab=VDD}
N -420 -860 -420 -620 {lab=BNI}
N -420 -1200 -420 -920 {lab=VDD}
N -280 -1200 -280 -920 {lab=VDD}
N -280 -890 -260 -890 {lab=VDD}
N -260 -1200 -260 -890 {lab=VDD}
N -440 -890 -420 -890 {lab=VDD}
N -440 -1200 -440 -890 {lab=VDD}
N -380 -890 -320 -890 {lab=VB}
N -350 -890 -350 -780 {lab=VB}
N -520 -780 -350 -780 {lab=VB}
N -280 -860 -280 -620 {lab=BNO}
N -600 -890 -580 -890 {lab=VDD}
N -540 -890 -520 -890 {lab=VDD}
N -520 -940 -520 -890 {lab=VDD}
N -580 -940 -520 -940 {lab=VDD}
N -580 -940 -580 -920 {lab=VDD}
N -600 -940 -580 -940 {lab=VDD}
N -600 -1050 -580 -1050 {lab=VDD}
N -540 -1050 -520 -1050 {lab=VDD}
N -520 -1100 -520 -1050 {lab=VDD}
N -580 -1100 -520 -1100 {lab=VDD}
N -580 -1100 -580 -1080 {lab=VDD}
N -600 -1100 -580 -1100 {lab=VDD}
N -580 -1020 -580 -1000 {lab=BNI}
N -600 -1100 -600 -1050 {lab=VDD}
N -600 -940 -600 -890 {lab=VDD}
N -580 -860 -580 -840 {lab=BNO}
N 460 -1050 480 -1050 {lab=#net14}
N 480 -1050 480 -840 {lab=#net14}
N 420 -840 480 -840 {lab=#net14}
N 320 -150 340 -150 {lab=#net10}
N 340 -360 340 -150 {lab=#net10}
N 280 -360 340 -360 {lab=#net10}
N 300 -1200 420 -1200 {lab=VDD}
C {MP.sym} 180 -1050 0 1 {name=MB4P1 model=PMOS w=7.5u l=5u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MP.sym} 180 -870 0 1 {name=MB4P2 model=PMOS w=7.5u l=5u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MP.sym} 40 -1050 0 1 {name=MB3P1 model=PMOS w=7.5u l=5u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MP.sym} 40 -870 0 1 {name=MB3P2 model=PMOS w=7.5u l=5u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MP.sym} 40 -690 0 1 {name=MB3P3 model=PMOS w=7.5u l=5u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {devices/lab_wire.sym} 720 -1180 0 0 {name=p3 sig_type=std_logic lab=BPO}
C {devices/lab_wire.sym} 720 -1000 0 0 {name=p1 sig_type=std_logic lab=BPI}
C {MN.sym} 180 -330 0 1 {name=MB4N2 model=NMOS w=7.5u l=5u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MN.sym} 40 -330 0 1 {name=MB3N2 model=NMOS w=7.5u l=5u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MN.sym} 180 -150 0 1 {name=MB4N1 model=NMOS w=7.5u l=5u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MN.sym} 40 -150 0 1 {name=MB3N1 model=NMOS w=7.5u l=5u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MN.sym} -240 -330 0 1 {name=MB1N2 model=NMOS w=7.5u l=5u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MN.sym} -380 -330 0 1 {name=MB2N2 model=NMOS w=7.5u l=5u m=1 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MN.sym} -240 -150 0 1 {name=MB1N1 model=NMOS w=7.5u l=5u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MN.sym} -380 -150 0 1 {name=MB2N1 model=NMOS w=7.5u l=5u m=1 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MN.sym} -380 -510 0 1 {name=MB2N3 model=NMOS w=7.5u l=5u m=1 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {devices/lab_wire.sym} 720 -200 0 0 {name=p8 sig_type=std_logic lab=BNI}
C {devices/lab_wire.sym} 720 -20 0 0 {name=p9 sig_type=std_logic lab=BNO}
C {MP.sym} 320 -1050 0 1 {name=MB5P1 model=PMOS w=7.5u l=5u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MP.sym} 320 -870 0 1 {name=MB5P2 model=PMOS w=7.5u l=5u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MN.sym} 320 -330 0 1 {name=MB5N2 model=NMOS w=7.5u l=5u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MN.sym} 320 -150 0 1 {name=MB5N1 model=NMOS w=7.5u l=5u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MN.sym} 320 -510 0 1 {name=MB5N3 model=NMOS w=7.5u l=5u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {devices/lab_wire.sym} 720 -380 0 0 {name=p12 sig_type=std_logic lab=BNF}
C {MP.sym} 460 -1050 0 1 {name=MB6P1 model=PMOS w=7.5u l=5u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MP.sym} 460 -870 0 1 {name=MB6P2 model=PMOS w=7.5u l=5u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MN.sym} 460 -330 0 1 {name=MB6N2 model=NMOS w=7.5u l=5u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MN.sym} 460 -150 0 1 {name=MB6N1 model=NMOS w=7.5u l=5u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MP.sym} 460 -690 0 1 {name=MB6P3 model=PMOS w=7.5u l=5u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {devices/lab_wire.sym} 720 -820 0 0 {name=p15 sig_type=std_logic lab=BPF}
C {MN.sym} -520 -510 0 1 {name=MB2DMYN model=NMOS w=7.5u l=5u m=1 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {devices/iopin.sym} -620 -1200 2 0 {name=p22 lab=VDD}
C {devices/iopin.sym} -620 0 2 0 {name=p23 lab=VSS}
C {MN.sym} -720 -130 0 0 {name=MDMYN1 model=NMOS w=7.5u l=5u m=22 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {devices/lab_wire.sym} -740 -80 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {MP.sym} -720 -250 0 0 {name=MDMYP1 model=PMOS w=7.5u l=5u m=52 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {devices/lab_wire.sym} -740 -300 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {MP.sym} -380 -890 0 1 {name=MPVB1 model=PMOS w=7.5u l=5u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MP.sym} -320 -890 0 0 {name=MPVB2 model=PMOS w=7.5u l=5u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {devices/ipin.sym} -520 -780 0 0 {name=p11 lab=VB}
C {MP.sym} -540 -890 0 1 {name=MDMYP2 model=PMOS w=7.5u l=5u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {devices/lab_wire.sym} -520 -940 0 1 {name=p27 sig_type=std_logic lab=VDD}
C {MP.sym} -540 -1050 0 1 {name=MDMYP3 model=PMOS w=7.5u l=5u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {devices/lab_wire.sym} -520 -1100 0 1 {name=p28 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -580 -1000 0 0 {name=p29 sig_type=std_logic lab=BNI}
C {devices/lab_wire.sym} -580 -840 0 0 {name=p30 sig_type=std_logic lab=BNO}
C {MP.sym} -100 -690 0 1 {name=MDMYP4 model=PMOS w=7.5u l=5u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {devices/opin.sym} 740 -1180 0 0 {name=p25 lab=BPO}
C {devices/opin.sym} 740 -1000 0 0 {name=p2 lab=BPI}
C {devices/opin.sym} 740 -820 0 0 {name=p4 lab=BPF}
C {devices/opin.sym} 740 -380 0 0 {name=p5 lab=BNF}
C {devices/opin.sym} 740 -200 0 0 {name=p6 lab=BNI}
C {devices/opin.sym} 740 -20 0 0 {name=p7 lab=BNO}
