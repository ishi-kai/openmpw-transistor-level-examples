v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 100 -50 220 -50 {
lab=GND}
N 160 -50 160 -30 {
lab=GND}
N -170 -130 -170 -110 {
lab=VDD}
N -170 -50 -170 -30 {
lab=GND}
N 160 -460 160 -440 {
lab=VDD}
N 90 -180 100 -180 {
lab=GND}
N 90 -180 90 -140 {
lab=GND}
N 220 -230 230 -230 {
lab=GND}
N 100 -360 100 -340 {
lab=#net1}
N 220 -70 220 -50 {
lab=GND}
N 100 -440 100 -420 {
lab=VDD}
N 100 -440 220 -440 {
lab=VDD}
N 220 -440 220 -420 {
lab=VDD}
N 90 -390 100 -390 {
lab=VDD}
N 90 -430 90 -390 {
lab=VDD}
N 90 -430 100 -430 {
lab=VDD}
N 220 -390 230 -390 {
lab=VDD}
N 230 -430 230 -390 {
lab=VDD}
N 220 -430 230 -430 {
lab=VDD}
N 140 -390 180 -390 {
lab=vb}
N 220 -360 220 -340 {
lab=vb}
N 170 -350 220 -350 {
lab=vb}
N 170 -390 170 -350 {
lab=vb}
N 100 -150 100 -50 {
lab=GND}
N 90 -140 100 -140 {
lab=GND}
N 220 -200 220 -130 {
lab=#net2}
N 100 -230 180 -230 {
lab=#net3}
N 140 -180 220 -180 {
lab=#net2}
N 220 -280 220 -260 {
lab=#net4}
N 100 -280 100 -210 {
lab=#net3}
N 220 -50 230 -50 {
lab=GND}
N 230 -230 260 -230 {lab=GND}
N 260 -230 260 -50 {lab=GND}
N 230 -50 260 -50 {lab=GND}
N 240 -100 260 -100 {lab=GND}
C {devices/gnd.sym} 160 -30 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -230 -360 0 0 {name=control only_toplevel=false value=".control
save all
op
show m
dc Vdd 4.5 6.0 0.1
plot i(Vi1) i(Vi2)
plot vb
dc temp -50 125 5
plot i(Vi1) i(Vi2)
plot vb
.endc"}
C {devices/vdd.sym} -170 -130 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} -170 -30 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -170 -80 0 0 {name=Vdd value=5.0 savecurrent=false}
C {devices/vdd.sym} 160 -460 0 0 {name=l4 lab=VDD}
C {devices/ammeter.sym} 100 -310 0 0 {name=Vi1 savecurrent=true}
C {devices/ammeter.sym} 220 -310 0 0 {name=Vi2 savecurrent=true}
C {devices/lab_pin.sym} 170 -350 0 0 {name=p1 sig_type=std_logic lab=vb}
C {devices/code.sym} -240 -510 0 0 {name=TR10_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/../ip62_models"
spice_ignore=false}
C {IP62LIB/MN.sym} 140 -180 0 1 {name=XM1 model=NMOS w=30u l=1u m=1 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {IP62LIB/MN.sym} 180 -230 0 0 {name=XM2 model=NMOS w=30u l=1u m=1 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {IP62LIB/MP.sym} 140 -390 0 1 {name=XM3 model=PMOS w=120u l=1u m=1 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {IP62LIB/MP.sym} 180 -390 0 0 {name=XM4 model=PMOS w=120u l=1u m=1 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {IP62LIB/RR.sym} 220 -130 0 0 {name=R1
w=4e-06
R=1
l=80e-06
model=F_RR
spiceprefix=X
tc1=0
tc2=0}
