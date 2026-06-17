v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 170 -400 170 -340 {lab=VDD}
N 170 -400 1050 -400 {lab=VDD}
N 1050 -400 1050 -340 {lab=VDD}
N 930 -400 930 -340 {lab=VDD}
N 750 -400 750 -310 {lab=VDD}
N 550 -400 550 -310 {lab=VDD}
N 350 -400 350 -340 {lab=VDD}
N 170 -310 190 -310 {lab=VDD}
N 190 -350 190 -310 {lab=VDD}
N 170 -350 190 -350 {lab=VDD}
N 350 -310 370 -310 {lab=VDD}
N 370 -350 370 -310 {lab=VDD}
N 350 -350 370 -350 {lab=VDD}
N 530 -280 550 -280 {lab=VDD}
N 530 -320 530 -280 {lab=VDD}
N 530 -320 550 -320 {lab=VDD}
N 750 -280 770 -280 {lab=VDD}
N 770 -320 770 -280 {lab=VDD}
N 750 -320 770 -320 {lab=VDD}
N 910 -310 930 -310 {lab=VDD}
N 910 -350 910 -310 {lab=VDD}
N 910 -350 930 -350 {lab=VDD}
N 1030 -310 1050 -310 {lab=VDD}
N 1030 -350 1030 -310 {lab=VDD}
N 1030 -350 1050 -350 {lab=VDD}
N 590 -280 620 -280 {lab=VOUTP}
N 620 -280 620 -50 {lab=VOUTP}
N 590 -50 620 -50 {lab=VOUTP}
N 680 -280 710 -280 {lab=VOUTN}
N 680 -280 680 -50 {lab=VOUTN}
N 680 -50 710 -50 {lab=VOUTN}
N 550 -250 550 -80 {lab=VOUTN}
N 750 -250 750 -80 {lab=VOUTP}
N 550 -130 680 -130 {lab=VOUTN}
N 680 -130 1300 -130 {lab=VOUTN}
N 620 -190 750 -190 {lab=VOUTP}
N 750 -190 1300 -190 {lab=VOUTP}
N 550 -20 550 40 {lab=#net1}
N 750 -20 750 40 {lab=#net2}
N 550 100 550 120 {lab=#net3}
N 550 120 750 120 {lab=#net3}
N 750 100 750 120 {lab=#net3}
N 650 120 650 140 {lab=#net3}
N 930 -280 930 -220 {lab=VOUTP}
N 750 -220 930 -220 {lab=VOUTP}
N 1050 -280 1050 10 {lab=#net2}
N 750 10 1050 10 {lab=#net2}
N 350 -280 350 -220 {lab=VOUTN}
N 350 -220 550 -220 {lab=VOUTN}
N 170 -280 170 10 {lab=#net1}
N 170 10 550 10 {lab=#net1}
N 520 -50 550 -50 {lab=VSS}
N 520 -50 520 -20 {lab=VSS}
N 750 -50 780 -50 {lab=VSS}
N 780 -50 780 -20 {lab=VSS}
N 650 200 650 250 {lab=VSS}
N 650 170 670 170 {lab=VSS}
N 670 170 670 220 {lab=VSS}
N 650 220 670 220 {lab=VSS}
N 720 70 750 70 {lab=VSS}
N 720 70 720 100 {lab=VSS}
N 550 70 580 70 {lab=VSS}
N 580 70 580 100 {lab=VSS}
N 80 170 610 170 {lab=CLK}
N 80 -310 80 170 {lab=CLK}
N 1090 -310 1160 -310 {lab=CLK}
N 970 -310 990 -310 {lab=CLK}
N 990 -310 990 -260 {lab=CLK}
N 990 -260 1120 -260 {lab=CLK}
N 1120 -310 1120 -260 {lab=CLK}
N 280 -310 310 -310 {lab=CLK}
N 280 -310 280 -250 {lab=CLK}
N 100 -250 280 -250 {lab=CLK}
N 100 -310 100 -250 {lab=CLK}
N 440 70 510 70 {lab=VINP}
N 790 70 860 70 {lab=VINN}
N 650 -440 650 -400 {lab=VDD}
N 1300 -360 1300 -190 {lab=VOUTP}
N 1300 -360 1570 -360 {lab=VOUTP}
N 1300 -130 1300 320 {lab=VOUTN}
N 1300 320 1580 320 {lab=VOUTN}
N 30 -310 130 -310 {lab=CLK}
C {sky130_fd_pr/pfet_01v8.sym} 150 -310 0 0 {name=M1
W=3
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 330 -310 0 0 {name=M2
W=3
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 570 -280 0 1 {name=M3
W=3
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 730 -280 0 0 {name=M4
W=3
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 950 -310 0 1 {name=M5
W=3
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1070 -310 0 1 {name=M6
W=3
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 570 -50 0 1 {name=M7
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 770 70 0 1 {name=M10
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 730 -50 0 0 {name=M8
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 530 70 0 0 {name=M9
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 630 170 0 0 {name=M11
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 720 100 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 520 -20 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 780 -20 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 580 100 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1160 -310 0 1 {name=p7 sig_type=std_logic lab=CLK}
C {devices/iopin.sym} 650 250 0 0 {name=p8 lab=VSS}
C {devices/iopin.sym} 650 -440 0 1 {name=p9 lab=VDD}
C {devices/ipin.sym} 30 -310 0 0 {name=p10 lab=CLK}
C {devices/ipin.sym} 440 70 0 0 {name=p11 lab=VINP}
C {devices/ipin.sym} 860 70 0 1 {name=p12 lab=VINN}
C {devices/opin.sym} 1580 320 0 0 {name=p1 lab=VOUTN}
C {devices/opin.sym} 1570 -360 0 0 {name=p2 lab=VOUTP}
