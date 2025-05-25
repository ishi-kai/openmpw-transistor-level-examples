v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
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
lab=#net1}
N 230 -230 230 -190 {
lab=#net1}
N 220 -190 230 -190 {
lab=#net1}
N 100 -360 100 -340 {
lab=#net2}
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
lab=#net1}
N 100 -230 180 -230 {
lab=#net3}
N 140 -180 220 -180 {
lab=#net1}
N 220 -280 220 -260 {
lab=#net4}
N 100 -280 100 -210 {
lab=#net3}
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
C {primitives/HR_poly.sym} 220 -100 0 0 {name=R2 model=R_poly W=1.2 L=1200}
C {primitives/pfet.sym} 200 -390 0 0 {name=M4 
model=pmos
W=100u
L=2u
m=1
}
C {primitives/pfet.sym} 120 -390 0 1 {name=M3 
model=pmos
W=100u
L=2u
m=1
}
C {devices/code.sym} -250 -510 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {primitives/nfet.sym} 200 -230 0 0 {name=M2 
model=nmos
W=20u
L=2u
m=1
}
C {primitives/nfet.sym} 120 -180 0 1 {name=M1 
model=nmos
W=20u
L=2u
m=1
}
