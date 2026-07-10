v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -370 -20 -280 -20 {lab=#net1}
N -280 -50 -280 -20 {lab=#net1}
N -280 -50 -220 -50 {lab=#net1}
N -370 0 -270 -0 {lab=#net2}
N -270 -30 -270 -0 {lab=#net2}
N -270 -30 -220 -30 {lab=#net2}
N -370 20 -270 20 {lab=#net3}
N -270 20 -270 70 {lab=#net3}
N -270 70 -220 70 {lab=#net3}
N -370 40 -290 40 {lab=#net4}
N -290 40 -290 90 {lab=#net4}
N -290 90 -220 90 {lab=#net4}
N -810 -40 -670 -40 {lab=#net5}
N -810 -20 -670 -20 {lab=#net6}
N -810 -0 -750 -0 {lab=#net7}
N -750 -100 -750 -0 {lab=#net7}
N -750 -100 -240 -100 {lab=#net7}
N -240 -100 -240 10 {lab=#net7}
N -240 10 -220 10 {lab=#net7}
N -810 20 -750 20 {lab=#net8}
N -750 20 -750 140 {lab=#net8}
N -750 140 -240 140 {lab=#net8}
N -240 30 -240 140 {lab=#net8}
N -240 30 -220 30 {lab=#net8}
N -810 40 -670 40 {lab=#net9}
N -810 60 -670 60 {lab=#net10}
N -740 40 -740 130 {lab=#net9}
N -740 130 -260 130 {lab=#net9}
N -260 50 -260 130 {lab=#net9}
N -260 50 -220 50 {lab=#net9}
N -740 -90 -740 -20 {lab=#net6}
N -740 -90 -260 -90 {lab=#net6}
N -260 -90 -260 -10 {lab=#net6}
N -260 -10 -220 -10 {lab=#net6}
N -690 0 -670 0 {lab=INM}
N -690 20 -670 20 {lab=INP}
N -980 -40 -930 -40 {lab=VB}
N 80 -30 230 -30 {lab=#net11}
N 80 -10 230 -10 {lab=#net12}
N 80 10 230 10 {lab=#net13}
N 80 30 230 30 {lab=#net14}
N -870 -160 -870 -70 {lab=VDD}
N -870 -160 290 -160 {lab=VDD}
N 290 -160 290 -40 {lab=VDD}
N 80 -160 80 -50 {lab=VDD}
N -370 -160 -370 -40 {lab=VDD}
N -870 90 -870 180 {lab=VSS}
N 290 40 290 180 {lab=VSS}
N -870 180 290 180 {lab=VSS}
N -370 60 -370 180 {lab=VSS}
N 80 50 80 180 {lab=VSS}
N 350 -0 400 -0 {lab=OUT}
C {opamp_r2r_ABAMP.sym} 280 0 0 0 {name=x1}
C {opamp_r2r_cascode.sym} -70 20 0 0 {name=x2}
C {opamp_r2r_diff.sym} -520 10 0 0 {name=x3}
C {opamp_r2r_CS.sym} -870 10 0 0 {name=x4}
C {devices/opin.sym} 400 0 0 0 {name=p25 lab=OUT}
C {devices/iopin.sym} -870 -160 2 0 {name=p22 lab=VDD}
C {devices/iopin.sym} -870 180 2 0 {name=p23 lab=VSS}
C {devices/ipin.sym} -980 -40 0 0 {name=p11 lab=VB}
C {devices/ipin.sym} -690 0 0 0 {name=p1 lab=INM}
C {devices/ipin.sym} -690 20 0 0 {name=p2 lab=INP}
