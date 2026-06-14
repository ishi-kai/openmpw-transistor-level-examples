v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -90 -100 -90 -50 {lab=#net1}
N -130 -130 -130 -20 {lab=VIN}
N -90 -200 -90 -160 {lab=VDPWR}
N -90 -130 -70 -130 {lab=VDPWR}
N -70 -180 -70 -130 {lab=VDPWR}
N -90 -180 -70 -180 {lab=VDPWR}
N -90 10 -90 50 {lab=VSS}
N -90 -20 -70 -20 {lab=VSS}
N -70 -20 -70 30 {lab=VSS}
N -90 30 -70 30 {lab=VSS}
N 50 -100 50 -50 {lab=#net2}
N 10 -130 10 -20 {lab=#net1}
N 50 -200 50 -160 {lab=VDPWR}
N 50 -130 70 -130 {lab=VDPWR}
N 70 -180 70 -130 {lab=VDPWR}
N 50 -180 70 -180 {lab=VDPWR}
N 50 10 50 50 {lab=VSS}
N 50 -20 70 -20 {lab=VSS}
N 70 -20 70 30 {lab=VSS}
N 50 30 70 30 {lab=VSS}
N -90 -80 10 -80 {lab=#net1}
N -210 -80 -130 -80 {lab=VIN}
N -90 -200 50 -200 {lab=VDPWR}
N -90 50 50 50 {lab=VSS}
N 210 -100 210 -50 {lab=#net3}
N 170 -130 170 -20 {lab=#net2}
N 210 -200 210 -160 {lab=VAPWR}
N 210 -130 230 -130 {lab=VAPWR}
N 230 -180 230 -130 {lab=VAPWR}
N 210 -180 230 -180 {lab=VAPWR}
N 210 10 210 50 {lab=VSS}
N 210 -20 230 -20 {lab=VSS}
N 230 -20 230 30 {lab=VSS}
N 210 30 230 30 {lab=VSS}
N 350 -100 350 -50 {lab=#net4}
N 310 -130 310 -20 {lab=#net3}
N 350 -200 350 -160 {lab=VAPWR}
N 350 -130 370 -130 {lab=VAPWR}
N 370 -180 370 -130 {lab=VAPWR}
N 350 -180 370 -180 {lab=VAPWR}
N 350 10 350 50 {lab=VSS}
N 350 -20 370 -20 {lab=VSS}
N 370 -20 370 30 {lab=VSS}
N 350 30 370 30 {lab=VSS}
N 210 -80 310 -80 {lab=#net3}
N 210 -200 350 -200 {lab=VAPWR}
N 210 50 350 50 {lab=VSS}
N 510 -100 510 -50 {lab=#net5}
N 470 -130 470 -20 {lab=#net4}
N 510 -200 510 -160 {lab=VREF}
N 510 -130 530 -130 {lab=VREF}
N 530 -180 530 -130 {lab=VREF}
N 510 -180 530 -180 {lab=VREF}
N 510 10 510 50 {lab=VSS}
N 510 -20 530 -20 {lab=VSS}
N 530 -20 530 30 {lab=VSS}
N 510 30 530 30 {lab=VSS}
N 650 -100 650 -50 {lab=VOUT}
N 610 -130 610 -20 {lab=#net5}
N 650 -200 650 -160 {lab=VREF}
N 650 -130 670 -130 {lab=VREF}
N 670 -180 670 -130 {lab=VREF}
N 650 -180 670 -180 {lab=VREF}
N 650 10 650 50 {lab=VSS}
N 650 -20 670 -20 {lab=VSS}
N 670 -20 670 30 {lab=VSS}
N 650 30 670 30 {lab=VSS}
N 510 -80 610 -80 {lab=#net5}
N 510 -200 650 -200 {lab=VREF}
N 510 50 650 50 {lab=VSS}
N 50 -80 170 -80 {lab=#net2}
N 350 -80 470 -80 {lab=#net4}
N 650 -80 760 -80 {lab=VOUT}
N 580 -230 580 -200 {lab=VREF}
N 280 -230 280 -200 {lab=VAPWR}
N -20 -230 -20 -200 {lab=VDPWR}
N -20 50 -20 80 {lab=VSS}
N -20 80 580 80 {lab=VSS}
N 580 50 580 80 {lab=VSS}
N 280 80 280 120 {lab=VSS}
N 280 50 280 80 {lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -110 -20 0 0 {name=M2
W=2
L=0.5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -110 -130 0 0 {name=M1
W=5
L=0.5
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
C {devices/iopin.sym} -20 -230 0 1 {name=p1 lab=VDPWR}
C {devices/iopin.sym} 280 120 0 0 {name=p2 lab=VSS}
C {devices/iopin.sym} 280 -230 0 1 {name=p3 lab=VAPWR}
C {devices/iopin.sym} 580 -230 0 1 {name=p4 lab=VREF}
C {devices/ipin.sym} -210 -80 0 0 {name=p5 lab=VIN}
C {devices/opin.sym} 760 -80 0 0 {name=p6 lab=VOUT}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 30 -20 0 0 {name=M3
W=2
L=0.5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 30 -130 0 0 {name=M4
W=5
L=0.5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 190 -20 0 0 {name=M5
W=4
L=0.5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 190 -130 0 0 {name=M6
W=10
L=0.5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 330 -20 0 0 {name=M7
W=4
L=0.5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 330 -130 0 0 {name=M8
W=10
L=0.5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 490 -20 0 0 {name=M9
W=16
L=0.5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 490 -130 0 0 {name=M10
W=40
L=0.5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 630 -20 0 0 {name=M11
W=16
L=0.5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 630 -130 0 0 {name=M12
W=40
L=0.5
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
