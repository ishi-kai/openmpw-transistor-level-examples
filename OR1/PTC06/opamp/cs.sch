v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -200 240 -140 {
lab=out}
N 240 -80 240 -50 {
lab=vss}
N 240 -300 240 -280 {
lab=vdd}
N 240 -170 280 -170 {
lab=out}
N 240 -250 260 -250 {
lab=vdd}
N 260 -290 260 -250 {
lab=vdd}
N 240 -290 260 -290 {
lab=vdd}
N 240 -110 250 -110 {
lab=vss}
N 250 -110 250 -70 {
lab=vss}
N 240 -70 250 -70 {
lab=vss}
N 240 -220 240 -200 {
lab=out}
N 170 -110 200 -110 {
lab=vin}
N 170 -250 200 -250 {
lab=vb}
N 240 -320 240 -300 {
lab=vdd}
N 240 -50 240 -40 {
lab=vss}
C {devices/ipin.sym} 170 -250 0 0 {name=p1 lab=vb}
C {devices/ipin.sym} 170 -110 0 0 {name=p2 lab=vin}
C {devices/opin.sym} 280 -170 0 0 {name=p3 lab=out}
C {devices/iopin.sym} 240 -40 0 0 {name=p4 lab=vss}
C {devices/iopin.sym} 240 -320 0 0 {name=p5 lab=vdd}
C {primitives/pfet.sym} 220 -250 0 0 {name=M6 
model=pmos
W=400u
L=2u
m=1
}
C {primitives/nfet.sym} 220 -110 0 0 {name=M7 
model=nmos
W=200u
L=2u
m=1
}
