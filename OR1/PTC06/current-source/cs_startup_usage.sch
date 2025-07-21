v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 190 -60 190 -10 {
lab=VSS}
N 190 -240 190 -120 {
lab=#net1}
N 230 -270 260 -270 {
lab=#net2}
N 260 -270 260 -90 {
lab=#net2}
N 230 -90 260 -90 {
lab=#net2}
N 190 -400 190 -300 {
lab=VDD}
N 170 -270 190 -270 {
lab=VDD}
N 170 -330 170 -270 {
lab=VDD}
N 170 -330 190 -330 {
lab=VDD}
N 170 -90 190 -90 {
lab=VSS}
N 170 -90 170 -40 {
lab=VSS}
N 170 -40 190 -40 {
lab=VSS}
N 100 -170 190 -170 {
lab=#net1}
N 60 -10 190 -10 {
lab=VSS}
N 40 -170 60 -170 {
lab=VSS}
N 40 -170 40 -110 {
lab=VSS}
N 40 -110 60 -110 {
lab=VSS}
N 260 -170 380 -170 {
lab=#net2}
N 60 -140 60 -110 {
lab=VSS}
N 60 -110 60 -90 {
lab=VSS}
N 60 -30 60 -10 {
lab=VSS}
N 60 -310 60 -200 {
lab=#net3}
N 60 -90 60 -30 {
lab=VSS}
N 520 -10 640 -10 {
lab=VSS}
N 510 -140 520 -140 {
lab=VSS}
N 510 -140 510 -100 {
lab=VSS}
N 640 -190 650 -190 {
lab=VSS}
N 520 -320 520 -300 {
lab=#net4}
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
lab=#net3}
N 640 -320 640 -300 {
lab=#net3}
N 590 -310 640 -310 {
lab=#net3}
N 590 -350 590 -310 {
lab=#net3}
N 520 -110 520 -10 {
lab=VSS}
N 510 -100 520 -100 {
lab=VSS}
N 640 -160 640 -90 {
lab=#net2}
N 520 -190 600 -190 {
lab=#net4}
N 560 -140 640 -140 {
lab=#net2}
N 640 -240 640 -220 {
lab=#net3}
N 520 -240 520 -170 {
lab=#net4}
N 650 -190 650 -10 {
lab=VSS}
N 640 -10 650 -10 {
lab=VSS}
N 520 -300 520 -240 {
lab=#net4}
N 640 -300 640 -240 {
lab=#net3}
N 60 -310 590 -310 {
lab=#net3}
N 190 -400 520 -400 {
lab=VDD}
N 590 -140 590 -90 {
lab=#net2}
N 380 -170 380 -90 {
lab=#net2}
N 380 -90 590 -90 {
lab=#net2}
N 190 -10 520 -10 {
lab=VSS}
N 590 -450 590 -400 {
lab=VDD}
N 590 -10 590 40 {
lab=VSS}
C {primitives/pfet.sym} 210 -270 0 1 {name=M1 
model=pmos
W=4.0u
L=2.0u
m=1
}
C {primitives/nfet.sym} 210 -90 0 1 {name=M2 
model=nmos
W=1600.0u
L=2.0u
m=1
}
C {primitives/nfet.sym} 80 -170 0 1 {name=M3 
model=nmos
W=20.0u
L=2.0u
m=1
}
C {primitives/HR_poly.sym} 640 -60 0 0 {name=R2 model=HR_poly W=2.0 L=2000}
C {primitives/pfet.sym} 620 -350 0 0 {name=M4 
model=pmos
W=100u
L=2u
m=1
}
C {primitives/pfet.sym} 540 -350 0 1 {name=M5 
model=pmos
W=100u
L=2u
m=1
}
C {primitives/nfet.sym} 620 -190 0 0 {name=M6 
model=nmos
W=20u
L=2u
m=1
}
C {primitives/nfet.sym} 540 -140 0 1 {name=M7 
model=nmos
W=20u
L=2u
m=1
}
C {devices/iopin.sym} 590 -450 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 590 40 0 0 {name=p3 lab=VSS}
C {devices/opin.sym} 590 -310 1 0 {name=p4 lab=vb}
