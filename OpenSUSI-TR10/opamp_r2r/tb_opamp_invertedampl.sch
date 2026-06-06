v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 580 -220 580 -200 {lab=vdd}
N 520 -220 520 -200 {lab=VB}
N 360 -200 520 -200 {lab=VB}
N 290 -140 290 -100 {lab=GND}
N 240 -140 240 -100 {lab=GND}
N 240 -280 240 -200 {lab=vdd}
N 580 -280 580 -220 {lab=vdd}
N 240 -280 580 -280 {lab=vdd}
N 420 -180 520 -180 {lab=#net1}
N 480 -140 520 -140 {lab=#net2}
N 290 -100 290 -60 {lab=GND}
N 240 -100 240 -60 {lab=GND}
N 640 -160 680 -160 {lab=out}
N 680 -160 680 -140 {lab=out}
N 680 -80 680 -60 {lab=GND}
N 580 -120 580 -60 {lab=GND}
N 650 -160 650 -100 {lab=out}
N 400 -140 400 -130 {lab=in}
N 400 -70 400 -60 {lab=GND}
N 290 -200 360 -200 {lab=VB}
N 350 -180 420 -180 {lab=#net1}
N 350 -120 350 -70 {lab=GND}
N 350 -70 350 -60 {lab=GND}
N 400 -140 420 -140 {lab=in}
N 500 -140 500 -20 {lab=#net2}
N 500 -20 550 -20 {lab=#net2}
N 610 -20 650 -20 {lab=out}
N 650 -100 650 -20 {lab=out}
C {devices/ipin.sym} 520 -220 1 0 {name=p1 lab=VB}
C {devices/iopin.sym} 580 -220 0 0 {name=p2 lab=vdd}
C {devices/vsource.sym} 290 -170 0 0 {name=V1 value=2.5 savecurrent=false}
C {devices/gnd.sym} 290 -60 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 580 -60 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 240 -60 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 240 -170 0 0 {name=V2 value=5 savecurrent=false}
C {devices/vsource.sym} 400 -100 0 0 {name=V3 value="SIN(2.5 1 1k)" savecurrent=false}
C {devices/gnd.sym} 400 -60 0 0 {name=l4 lab=GND}
C {devices/capa.sym} 680 -110 0 0 {name=C1
m=1
value=40p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 680 -60 0 0 {name=l6 lab=GND}
C {devices/iopin.sym} 680 -160 0 0 {name=p3 lab=out}
C {devices/code_shown.sym} 20 -310 0 0 {name=ngspice
only_toplevel=false
format="tcleval( @value )"
value="
.save all
.option savecurrent
.control
tran 2u 2m
plot in out
.endc
"}
C {devices/iopin.sym} 400 -140 3 0 {name=p4 lab=in}
C {devices/vsource.sym} 350 -150 0 0 {name=V4 value=2.5 savecurrent=false}
C {devices/gnd.sym} 350 -60 0 0 {name=l5 lab=GND}
C {devices/res.sym} 450 -140 1 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 580 -20 1 0 {name=R2
value=200k
footprint=1206
device=resistor
m=1}
C {devices/code.sym} 10 -120 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {opamp_r2r.sym} 580 -160 0 0 {name=x1}
