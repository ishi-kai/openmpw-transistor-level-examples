v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -120 20 -60 {
lab=VDD}
N 20 -90 170 -90 {
lab=VDD}
N 170 -90 170 -60 {
lab=VDD}
N 170 -80 190 -80 {
lab=VDD}
N 190 -80 190 -30 {
lab=VDD}
N 170 -30 190 -30 {
lab=VDD}
N -0 -80 20 -80 {
lab=VDD}
N -0 -80 0 -30 {
lab=VDD}
N 0 -30 20 -30 {
lab=VDD}
N 60 -30 130 -30 {
lab=#net1}
N 20 0 20 70 {
lab=#net1}
N 170 0 170 70 {
lab=#net2}
N 170 130 170 170 {
lab=GND}
N 20 130 20 170 {
lab=GND}
N -80 70 -80 90 {
lab=VDD}
N -80 150 -80 170 {
lab=GND}
N 80 -30 80 20 {
lab=#net1}
N 20 20 80 20 {
lab=#net1}
N 410 -120 410 -60 {
lab=VDD}
N 410 -90 560 -90 {
lab=VDD}
N 560 -90 560 -60 {
lab=VDD}
N 560 -80 580 -80 {
lab=VDD}
N 580 -80 580 -30 {
lab=VDD}
N 560 -30 580 -30 {
lab=VDD}
N 390 -80 410 -80 {
lab=VDD}
N 390 -80 390 -30 {
lab=VDD}
N 390 -30 410 -30 {
lab=VDD}
N 450 -30 520 -30 {
lab=#net3}
N 410 0 410 70 {
lab=#net3}
N 560 0 560 70 {
lab=#net4}
N 560 130 560 170 {
lab=GND}
N 410 130 410 170 {
lab=GND}
N 470 -30 470 20 {
lab=#net3}
N 410 20 470 20 {
lab=#net3}
C {primitives/pfet.sym} 40 -30 0 1 {name=M1 
model=pmos
W=100u
L=1u
m=1
}
C {primitives/pfet.sym} 150 -30 0 0 {name=M2 
model=pmos
W=100u
L=1u
m=1
}
C {devices/isource.sym} 20 100 0 0 {name=I0 value=200u}
C {devices/gnd.sym} 20 170 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 170 170 0 0 {name=l2 lab=GND}
C {devices/ammeter.sym} 170 100 0 0 {name=Vi1 savecurrent=true}
C {devices/code.sym} -480 -110 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {devices/vdd.sym} 20 -120 0 0 {name=l4 lab=VDD}
C {devices/code_shown.sym} -480 60 0 0 {name=control only_toplevel=false value=".control
save all
op
show m
dc Vdd 3.0 5.0 0.1
plot i(Vi1) i(Vi2)
.endc"}
C {devices/vdd.sym} -80 70 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -80 170 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} -80 120 0 0 {name=Vdd value=5.0 savecurrent=false}
C {primitives/pfet.sym} 430 -30 0 1 {name=M3 
model=pmos
W=100u
L=4u
m=1
}
C {primitives/pfet.sym} 540 -30 0 0 {name=M4 
model=pmos
W=100u
L=4u
m=1
}
C {devices/isource.sym} 410 100 0 0 {name=I1 value=200u}
C {devices/gnd.sym} 410 170 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 560 170 0 0 {name=l7 lab=GND}
C {devices/ammeter.sym} 560 100 0 0 {name=Vi2 savecurrent=true}
C {devices/vdd.sym} 410 -120 0 0 {name=l8 lab=VDD}
