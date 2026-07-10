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
N 360 -140 360 -100 {lab=GND}
N 240 -140 240 -100 {lab=GND}
N 240 -280 240 -200 {lab=vdd}
N 580 -280 580 -220 {lab=vdd}
N 240 -280 580 -280 {lab=vdd}
N 420 -180 520 -180 {lab=in}
N 420 -120 420 -100 {lab=GND}
N 480 -140 520 -140 {lab=out}
N 420 -100 420 -60 {lab=GND}
N 360 -100 360 -60 {lab=GND}
N 240 -100 240 -60 {lab=GND}
N 640 -160 680 -160 {lab=out}
N 680 -160 680 -140 {lab=out}
N 680 -80 680 -60 {lab=GND}
N 480 -140 480 -100 {lab=out}
N 480 -100 650 -100 {lab=out}
N 580 -120 580 -60 {lab=GND}
N 650 -160 650 -100 {lab=out}
C {opamp_r2r.sym} 580 -160 0 0 {name=x1}
C {devices/ipin.sym} 520 -220 1 0 {name=p1 lab=VB}
C {devices/iopin.sym} 580 -220 0 0 {name=p2 lab=vdd}
C {devices/vsource.sym} 360 -170 0 0 {name=V1 value=3 savecurrent=false}
C {devices/gnd.sym} 360 -60 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 580 -60 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 240 -60 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 240 -170 0 0 {name=V2 value=5 savecurrent=false}
C {devices/vsource.sym} 420 -150 0 0 {name=V3 value="SIN(2.5 2.5 40k)" savecurrent=false}
C {devices/gnd.sym} 420 -60 0 0 {name=l4 lab=GND}
C {devices/capa.sym} 680 -110 0 0 {name=C1
m=1
value=10p
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
tran 50n 100u
plot in out
.endc
"}
C {devices/iopin.sym} 420 -180 3 0 {name=p4 lab=in}
C {devices/code.sym} 10 -120 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
