v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 520 -10 640 -10 {
lab=VSS}
N 510 -140 520 -140 {
lab=VSS}
N 510 -140 510 -100 {
lab=VSS}
N 640 -190 650 -190 {
lab=VSS}
N 520 -320 520 -300 {
lab=#net1}
N 640 -30 640 -10 {
lab=VSS}
N 520 -400 520 -380 {
lab=VDD}
N 520 -400 640 -400 {
lab=VDD}
N 640 -400 640 -380 {
lab=VDD}
N 510 -350 520 -350 {
lab=VDD}
N 510 -390 510 -350 {
lab=VDD}
N 510 -390 520 -390 {
lab=VDD}
N 640 -350 650 -350 {
lab=VDD}
N 650 -390 650 -350 {
lab=VDD}
N 640 -390 650 -390 {
lab=VDD}
N 560 -350 600 -350 {
lab=vb}
N 640 -320 640 -300 {
lab=vb}
N 590 -310 640 -310 {
lab=vb}
N 590 -350 590 -310 {
lab=vb}
N 520 -110 520 -10 {
lab=VSS}
N 510 -100 520 -100 {
lab=VSS}
N 640 -160 640 -90 {
lab=#net2}
N 520 -190 600 -190 {
lab=#net1}
N 560 -140 640 -140 {
lab=#net2}
N 640 -240 640 -220 {
lab=vb}
N 520 -240 520 -170 {
lab=#net1}
N 640 -10 650 -10 {
lab=VSS}
N 520 -300 520 -240 {
lab=#net1}
N 640 -300 640 -240 {
lab=vb}
N 590 -450 590 -400 {
lab=VDD}
N 590 -10 590 40 {
lab=VSS}
N 420 -310 590 -310 {lab=vb}
N 650 -190 680 -190 {lab=VSS}
N 680 -190 680 -10 {lab=VSS}
N 650 -10 680 -10 {lab=VSS}
N 660 -60 680 -60 {lab=VSS}
N 300 -60 300 -10 {
lab=VSS}
N 300 -240 300 -120 {
lab=vout}
N 340 -270 370 -270 {
lab=#net2}
N 370 -270 370 -90 {
lab=#net2}
N 340 -90 370 -90 {
lab=#net2}
N 280 -270 300 -270 {
lab=VDD}
N 280 -330 280 -270 {
lab=VDD}
N 280 -330 300 -330 {
lab=VDD}
N 280 -90 300 -90 {
lab=VSS}
N 280 -90 280 -40 {
lab=VSS}
N 280 -40 300 -40 {
lab=VSS}
N 210 -170 300 -170 {
lab=vout}
N 170 -10 300 -10 {
lab=VSS}
N 150 -170 170 -170 {
lab=VSS}
N 150 -170 150 -110 {
lab=VSS}
N 150 -110 170 -110 {
lab=VSS}
N 170 -140 170 -110 {
lab=VSS}
N 170 -110 170 -90 {
lab=VSS}
N 170 -30 170 -10 {
lab=VSS}
N 170 -310 170 -200 {
lab=vb}
N 170 -90 170 -30 {
lab=VSS}
N 300 -10 520 -10 {lab=VSS}
N 300 -400 520 -400 {lab=VDD}
N 300 -400 300 -300 {lab=VDD}
N 600 -140 600 -80 {lab=#net2}
N 430 -80 600 -80 {lab=#net2}
N 430 -170 430 -80 {lab=#net2}
N 370 -170 430 -170 {lab=#net2}
N 170 -310 420 -310 {lab=vb}
C {devices/iopin.sym} 590 -450 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 590 40 0 0 {name=p3 lab=VSS}
C {devices/opin.sym} 590 -310 1 0 {name=p4 lab=vb}
C {IP62LIB/MP.sym} 560 -350 0 1 {name=XM5 model=PMOS w=120u l=1u m=1 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {IP62LIB/MP.sym} 600 -350 0 0 {name=XM6 model=PMOS w=120u l=1u m=1 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {IP62LIB/MN.sym} 600 -190 0 0 {name=XM7 model=NMOS w=30u l=1u m=1 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {IP62LIB/MN.sym} 560 -140 0 1 {name=XM8 model=NMOS w=30u l=1u m=1 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {IP62LIB/RR.sym} 640 -90 0 0 {name=R2
w=4e-06
R=1
l=80e-06
model=F_RR
spiceprefix=X
tc1=0
tc2=0}
C {devices/lab_pin.sym} 250 -170 1 0 {name=p2 sig_type=std_logic lab=vout}
C {IP62LIB/MP.sym} 340 -270 0 1 {name=XM1 model=PMOS w=10u l=1u m=1 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {IP62LIB/MN.sym} 340 -90 0 1 {name=XM2 model=NMOS w=5000u l=1u m=1 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {IP62LIB/MN.sym} 210 -170 0 1 {name=XM3 model=NMOS w=10u l=1u m=1 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
