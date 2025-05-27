v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 -370 70 -180 {
lab=#net1}
N 350 -130 400 -130 {
lab=#net2}
N 360 -290 360 -130 {
lab=#net2}
N 420 -290 440 -290 {
lab=#net3}
N 500 -290 510 -290 {
lab=out}
N 510 -290 510 -130 {
lab=out}
N 470 -130 510 -130 {
lab=out}
N 390 -340 390 -330 {
lab=#net1}
N 70 -340 320 -340 {
lab=#net1}
N 70 -450 70 -430 {
lab=vdd}
N 70 -450 360 -450 {
lab=vdd}
N 430 -450 430 -160 {
lab=vdd}
N 290 -450 290 -190 {
lab=vdd}
N 70 -400 80 -400 {
lab=vdd}
N 80 -440 80 -400 {
lab=vdd}
N 70 -440 80 -440 {
lab=vdd}
N 70 -150 90 -150 {
lab=vss}
N 90 -150 90 -20 {
lab=vss}
N 70 -20 90 -20 {
lab=vss}
N 70 -40 70 -20 {
lab=vss}
N 70 -70 80 -70 {
lab=vss}
N 80 -70 80 -20 {
lab=vss}
N 70 -120 70 -100 {
lab=#net4}
N 20 -110 70 -110 {
lab=#net4}
N 20 -110 20 -70 {
lab=#net4}
N 20 -70 30 -70 {
lab=#net4}
N 20 -190 70 -190 {
lab=#net1}
N 20 -190 20 -150 {
lab=#net1}
N 20 -150 30 -150 {
lab=#net1}
N 90 -20 360 -20 {
lab=vss}
N 430 -100 430 -20 {
lab=vss}
N 290 -70 290 -20 {
lab=vss}
N 400 -220 400 -150 {
lab=#net5}
N 20 -220 330 -220 {
lab=#net5}
N 20 -400 20 -220 {
lab=#net5}
N 20 -400 30 -400 {
lab=#net5}
N 230 -220 230 -180 {
lab=#net5}
N 360 -20 430 -20 {
lab=vss}
N 330 -220 400 -220 {
lab=#net5}
N 320 -340 390 -340 {
lab=#net1}
N 360 -450 430 -450 {
lab=vdd}
N 210 -100 230 -100 {
lab=vinn}
N 210 -160 230 -160 {
lab=vinp}
N 0 -400 20 -400 {
lab=#net5}
N 510 -130 530 -130 {
lab=out}
N 430 -20 450 -20 {
lab=vss}
N 430 -450 450 -450 {
lab=vdd}
N 390 -290 390 -20 {
lab=vss}
N -50 -400 0 -400 {
lab=#net5}
N -90 -450 70 -450 {
lab=vdd}
N -90 -450 -90 -430 {
lab=vdd}
N -90 -370 -90 -310 {
lab=#net5}
N -90 -340 -30 -340 {
lab=#net5}
N -30 -400 -30 -340 {
lab=#net5}
N -100 -400 -90 -400 {
lab=vdd}
N -100 -440 -100 -400 {
lab=vdd}
N -100 -440 -90 -440 {
lab=vdd}
N -90 -250 -90 -20 {
lab=vss}
N -90 -20 70 -20 {
lab=vss}
N -90 -280 -60 -280 {
lab=vss}
N -60 -280 -60 -240 {
lab=vss}
N -90 -240 -60 -240 {
lab=vss}
N -200 -280 -130 -280 {
lab=#net6}
N -240 -250 -240 -20 {
lab=vss}
N -240 -20 -90 -20 {
lab=vss}
N -240 -360 -240 -310 {
lab=#net6}
N -240 -330 -170 -330 {
lab=#net6}
N -170 -330 -170 -280 {
lab=#net6}
N -240 -450 -90 -450 {
lab=vdd}
N -240 -450 -240 -420 {
lab=vdd}
N -240 -440 -220 -440 {
lab=vdd}
N -220 -440 -220 -390 {
lab=vdd}
N -240 -390 -220 -390 {
lab=vdd}
N -360 -390 -280 -390 {
lab=#net7}
N -360 -370 -360 -20 {
lab=vss}
N -360 -20 -240 -20 {
lab=vss}
N -360 -450 -240 -450 {
lab=vdd}
N -360 -450 -360 -410 {
lab=vdd}
N -270 -280 -240 -280 {
lab=vss}
N -270 -280 -270 -240 {
lab=vss}
N -270 -240 -240 -240 {
lab=vss}
C {diff.sym} 250 -130 0 0 {name=X1}
C {cs.sym} 420 -130 0 0 {name=X2}
C {devices/ipin.sym} 210 -160 0 0 {name=p1 lab=vinp
}
C {devices/ipin.sym} 210 -100 0 0 {name=p2 lab=vinn
}
C {devices/opin.sym} 530 -130 0 0 {name=p4 lab=out}
C {devices/iopin.sym} 450 -450 0 0 {name=p5 lab=vdd}
C {devices/iopin.sym} 450 -20 0 0 {name=p6 lab=vss}
C {primitives/pfet.sym} -70 -400 0 1 {name=M3 
model=pmos
W=20u
L=2u
m=1
}
C {primitives/nfet.sym} 390 -310 1 0 {name=M2 
model=nmos
W=40u
L=2u
m=1
}
C {primitives/pfet.sym} 50 -400 0 0 {name=M6
model=pmos
W=20u
L=2u
m=1
}
C {primitives/nfet.sym} 50 -150 0 0 {name=M1 
model=nmos
W=10u
L=2u
m=1
}
C {primitives/nfet.sym} 50 -70 0 0 {name=M7
model=nmos
W=10u
L=2u
m=1
}
C {cs-vth-ref_sym.sym} -510 -390 0 0 {name=x3}
C {primitives/pfet.sym} -260 -390 0 0 {name=M4 
model=pmos
W=20u
L=2u
m=1
}
C {primitives/nfet.sym} -220 -280 0 1 {name=M5 
model=nmos
W=5u
L=2u
m=1
}
C {primitives/nfet.sym} -110 -280 0 0 {name=M8 
model=nmos
W=5u
L=2u
m=1
}
C {primitives/Pdiff_cap.sym} 470 -290 1 0 {name=C2 model=Pdiff_cap W=18 L=10}
