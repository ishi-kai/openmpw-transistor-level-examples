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
N -30 -120 -30 -100 {
lab=VDD}
N -30 -40 -30 -20 {
lab=GND}
N 140 -100 180 -100 {
lab=vgs}
N 100 -330 100 -310 {
lab=VDD}
N 220 -70 220 -50 {
lab=GND}
N 100 -70 100 -50 {
lab=GND}
N 90 -100 100 -100 {
lab=GND}
N 90 -100 90 -60 {
lab=GND}
N 90 -60 100 -60 {
lab=GND}
N 220 -100 230 -100 {
lab=GND}
N 230 -100 230 -60 {
lab=GND}
N 220 -60 230 -60 {
lab=GND}
N 100 -170 100 -130 {
lab=vgs}
N 100 -250 100 -230 {
lab=#net1}
N 100 -150 150 -150 {
lab=vgs}
N 150 -150 150 -100 {
lab=vgs}
N 220 -170 220 -130 {
lab=#net2}
N 300 -170 300 -150 {
lab=GND}
N 220 -250 220 -230 {
lab=#net3}
N 220 -250 300 -250 {
lab=#net3}
N 300 -250 300 -230 {
lab=#net3}
N 120 -280 150 -280 {lab=GND}
N 150 -280 150 -240 {lab=GND}
C {devices/gnd.sym} 160 -30 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -280 -310 0 0 {name=control only_toplevel=false value=".control
save all
op
show m
dc Vout 0 5.0 0.1 Vdd 4.5 6.0 0.5
plot i(Vi1) i(Vi2)
plot vgs
dc temp -50 125 5
plot i(Vi1) i(Vi2)
.endc"}
C {devices/vdd.sym} -30 -120 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} -30 -20 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -30 -70 0 0 {name=Vdd value=5.0 savecurrent=false}
C {devices/vdd.sym} 100 -330 0 0 {name=l4 lab=VDD}
C {devices/ammeter.sym} 100 -200 0 0 {name=Vi1 savecurrent=true}
C {devices/ammeter.sym} 220 -200 0 0 {name=Vi2 savecurrent=true}
C {devices/vsource.sym} 300 -200 0 0 {name=Vout value=3.5 savecurrent=false}
C {devices/gnd.sym} 300 -150 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 150 -150 0 1 {name=p1 sig_type=std_logic lab=vgs}
C {IP62LIB/RR.sym} 100 -310 0 0 {name=R1
w=4e-06
R=1
l=300e-06
model=F_RR
spiceprefix=X
tc1=0
tc2=0}
C {devices/gnd.sym} 150 -240 0 0 {name=l6 lab=GND}
C {IP62LIB/MN.sym} 140 -100 0 1 {name=XM1 model=NMOS w=30u l=1u m=1 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {IP62LIB/MN.sym} 180 -100 0 0 {name=XM2 model=NMOS w=30u l=1u m=1 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {devices/code.sym} -300 -460 0 0 {name=TR10_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/../ip62_models"
spice_ignore=false}
