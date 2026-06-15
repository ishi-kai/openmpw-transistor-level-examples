v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 140 -380 140 -360 {lab=VDD}
N 290 -380 290 -360 {lab=VDD}
N 290 -410 290 -390 {lab=VDD}
N 290 -390 290 -380 {lab=VDD}
N 140 -380 290 -380 {lab=VDD}
N 290 -300 290 -240 {lab=#net1}
N 50 -120 190 -120 {lab=Qn}
N 160 -210 250 -210 {lab=S_bar}
N 190 -120 250 -120 {lab=Qn}
N 50 -210 160 -210 {lab=S_bar}
N 80 -330 100 -330 {lab=Qn}
N 80 -330 80 -120 {lab=Qn}
N 210 -330 250 -330 {lab=S_bar}
N 210 -330 210 -210 {lab=S_bar}
N 290 -180 290 -150 {lab=#net2}
N 290 -90 290 -40 {lab=VSS}
N 290 -120 310 -120 {lab=VSS}
N 310 -120 310 -70 {lab=VSS}
N 290 -70 310 -70 {lab=VSS}
N 340 -210 340 -160 {lab=VSS}
N 290 -210 340 -210 {lab=VSS}
N 290 -280 390 -280 {lab=#net1}
N 140 -300 140 -280 {lab=#net1}
N 140 -280 290 -280 {lab=#net1}
N 290 -330 310 -330 {lab=VDD}
N 310 -370 310 -330 {lab=VDD}
N 290 -370 310 -370 {lab=VDD}
N 140 -330 170 -330 {lab=VDD}
N 170 -370 170 -330 {lab=VDD}
N 140 -370 170 -370 {lab=VDD}
N 150 210 150 230 {lab=VDD}
N 300 210 300 230 {lab=VDD}
N 300 180 300 200 {lab=VDD}
N 300 200 300 210 {lab=VDD}
N 150 210 300 210 {lab=VDD}
N 300 290 300 350 {lab=Qn}
N 60 470 200 470 {lab=R_bar}
N 170 380 260 380 {lab=#net1}
N 200 470 260 470 {lab=R_bar}
N 60 380 170 380 {lab=#net1}
N 90 260 90 470 {lab=R_bar}
N 220 260 260 260 {lab=#net1}
N 220 260 220 380 {lab=#net1}
N 300 410 300 440 {lab=#net3}
N 300 500 300 550 {lab=VSS}
N 320 470 320 520 {lab=VSS}
N 300 520 320 520 {lab=VSS}
N 350 380 350 430 {lab=VSS}
N 300 380 350 380 {lab=VSS}
N 300 310 400 310 {lab=Qn}
N 150 290 150 310 {lab=Qn}
N 150 310 300 310 {lab=Qn}
N 320 220 320 260 {lab=VDD}
N 300 220 320 220 {lab=VDD}
N 150 260 180 260 {lab=VDD}
N 180 220 180 260 {lab=VDD}
N 150 220 180 220 {lab=VDD}
N 50 -120 50 10 {lab=Qn}
N 50 10 350 10 {lab=Qn}
N 350 10 350 310 {lab=Qn}
N 60 80 60 380 {lab=#net1}
N 60 80 370 80 {lab=#net1}
N 370 -280 370 80 {lab=#net1}
N -180 470 60 470 {lab=R_bar}
N 90 260 110 260 {lab=R_bar}
N 300 470 320 470 {lab=VSS}
N 300 260 320 260 {lab=VDD}
N -60 -210 50 -210 {lab=S_bar}
N -120 -210 -60 -210 {lab=S_bar}
C {devices/iopin.sym} 290 -410 0 1 {name=p11 lab=VDD}
C {devices/lab_wire.sym} 300 180 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/opin.sym} 400 310 0 0 {name=p8 lab=Qn}
C {devices/opin.sym} 390 -280 0 0 {name=p6 lab=Q}
C {devices/ipin.sym} -120 -210 0 0 {name=p12 lab=S_bar}
C {devices/ipin.sym} -180 470 0 0 {name=p13 lab=R_bar}
C {devices/iopin.sym} 300 550 0 0 {name=p1 lab=VSS}
C {devices/lab_wire.sym} 290 -40 2 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 340 -160 2 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 350 430 2 0 {name=p5 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 120 -330 0 0 {name=M7
L=0.5
W=6
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 270 -330 0 0 {name=M8
L=0.5
W=6
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 270 -210 0 0 {name=M15
L=0.5
W=3
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 270 -120 0 0 {name=M16
L=0.5
W=3
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 130 260 0 0 {name=M17
L=0.5
W=6
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 280 260 0 0 {name=M18
L=0.5
W=6
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 280 380 0 0 {name=M23
L=0.5
W=3
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 280 470 0 0 {name=M27
L=0.5
W=3
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
