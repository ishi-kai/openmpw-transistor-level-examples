v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -210 -230 -210 -160 {lab=#net1}
N -210 -100 -210 -50 {lab=#net2}
N -170 -20 -60 -20 {lab=#net3}
N -170 -130 -60 -130 {lab=#net1}
N -20 -100 -20 -50 {lab=out}
N -210 10 -210 80 {lab=#net3}
N -360 110 -250 110 {lab=#net4}
N -210 -330 -210 -290 {lab=VDD}
N -210 -330 -20 -330 {lab=VDD}
N -20 -330 -20 -160 {lab=VDD}
N -20 10 -20 180 {lab=GND}
N -210 180 -20 180 {lab=GND}
N -210 140 -210 180 {lab=GND}
N -120 180 -120 220 {lab=GND}
N -110 -360 -110 -330 {lab=VDD}
N -210 110 -190 110 {lab=GND}
N -190 110 -190 180 {lab=GND}
N -20 -130 -0 -130 {lab=GND}
N -210 -180 -130 -180 {lab=#net1}
N -130 -180 -130 -130 {lab=#net1}
N -130 -20 -130 40 {lab=#net3}
N -210 40 -130 40 {lab=#net3}
N -20 -20 20 -20 {lab=VDD}
N 20 -330 20 -20 {lab=VDD}
N -20 -330 20 -330 {lab=VDD}
N 0 -130 0 180 {lab=GND}
N -20 180 0 180 {lab=GND}
N -280 -20 -210 -20 {lab=VDD}
N -280 -330 -280 -20 {lab=VDD}
N -280 -330 -210 -330 {lab=VDD}
N -260 -130 -210 -130 {lab=GND}
N -260 -130 -260 180 {lab=GND}
N -260 180 -210 180 {lab=GND}
N -530 50 -530 70 {
lab=VDD}
N -530 130 -530 150 {
lab=GND}
N -360 170 -360 180 {lab=GND}
N -360 180 -260 180 {lab=GND}
N -20 -70 130 -70 {lab=out}
N 60 -70 60 -20 {lab=out}
N 60 40 60 70 {lab=GND}
N 60 130 60 180 {lab=GND}
N -0 180 60 180 {lab=GND}
N 110 -70 110 -20 {lab=out}
N 110 40 110 180 {lab=GND}
N 60 180 110 180 {lab=GND}
N 60 70 60 130 {lab=GND}
C {primitives/pfet.sym} -37.6576099915567 -20 0 0 {name=M2 
model=pmos
W=300u
L=2u
m=1
}
C {primitives/nfet.sym} -40 -130 0 0 {name=M1
model=nmos
W=100u
L=2u
m=1
}
C {primitives/pfet.sym} -190 -20 0 1 {name=M6 
model=pmos
W=30u
L=2u
m=1
}
C {primitives/nfet.sym} -230 110 0 0 {name=M5 
model=nmos
W=10u
L=2u
m=1
}
C {primitives/nfet.sym} -190 -130 0 1 {name=M4 
model=nmos
W=10u
L=2u
m=1
}
C {devices/code_shown.sym} -790 -160 0 0 {name=control only_toplevel=false value=".option savecurrent
.control
set units=degree
op
show m
save all
dc Vin 1.0 2.6 0.01
plot i(Vi1)
.endc"}
C {devices/code.sym} -800 -310 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {devices/lab_pin.sym} 130 -70 0 1 {name=p6 sig_type=std_logic lab=out}
C {devices/gnd.sym} -120 220 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -110 -360 0 0 {name=l4 lab=VDD}
C {devices/vdd.sym} -530 50 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -530 150 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} -530 100 0 0 {name=Vdd value=5.0 savecurrent=false}
C {devices/isource.sym} -210 -260 0 0 {name=I0 value=10u}
C {devices/ammeter.sym} 60 10 0 0 {name=Vi1 savecurrent=true}
C {devices/vsource.sym} -360 140 0 0 {name=Vin value="1.1"}
C {devices/capa.sym} 110 10 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
