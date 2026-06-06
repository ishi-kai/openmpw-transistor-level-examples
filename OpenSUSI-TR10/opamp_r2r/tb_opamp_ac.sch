v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 780 -300 780 -280 {lab=vdd}
N 780 -200 780 -180 {lab=GND}
N 720 -300 720 -280 {lab=VB}
N 440 -360 440 -280 {lab=vdd}
N 780 -360 780 -300 {lab=vdd}
N 440 -360 780 -360 {lab=vdd}
N 780 -180 780 -140 {lab=GND}
N 840 -240 880 -240 {lab=out}
N 880 -240 880 -220 {lab=out}
N 880 -160 880 -140 {lab=GND}
N 720 -220 720 -200 {lab=#net1}
N 720 -200 720 -80 {lab=#net1}
N 860 -240 860 -80 {lab=out}
N 720 -80 750 -80 {lab=#net1}
N 810 -80 860 -80 {lab=out}
N 600 -260 720 -260 {lab=#net2}
N 520 -280 720 -280 {lab=VB}
N 600 -200 600 -180 {lab=#net3}
N 440 -220 440 -20 {lab=GND}
N 520 -220 520 -20 {lab=GND}
N 600 -120 600 -20 {lab=GND}
C {devices/ipin.sym} 720 -300 1 0 {name=p1 lab=VB}
C {devices/iopin.sym} 780 -300 0 0 {name=p2 lab=vdd}
C {devices/vsource.sym} 520 -250 0 0 {name=V1 value="DC 2.5" savecurrent=false}
C {devices/gnd.sym} 780 -140 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 440 -250 0 0 {name=V2 value="DC 5" savecurrent=false}
C {devices/vsource.sym} 600 -230 0 0 {name=V4 value="AC 1" savecurrent=false}
C {devices/capa.sym} 880 -190 0 0 {name=C1
m=1
value=40p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 880 -140 0 0 {name=l6 lab=GND}
C {devices/iopin.sym} 880 -240 0 0 {name=p3 lab=out}
C {devices/code_shown.sym} 20 -470 0 0 {name=ngspice
only_toplevel=false
format="tcleval( @value )"
value="
.save all
.option savecurrent
.control
set units=degree
op
ac dec 20 1 1e10
plot vdb(out)
plot vp(out)
meas ac gain find vdb(out)  at=1e3 > NUL
meas ac ugf when vdb(out)=0 > NUL
meas ac phase find vp(out) at=ugf > NUL
echo 'gain(1kHz) = $&gain dB'
echo 'ugf        = $&ugf Hz'
let phasemergin = 180 + phase
echo 'phasemergin= $&phasemergin deg'
.endc
"}
C {devices/res.sym} 780 -80 1 0 {name=R1
value=100Meg
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 720 -50 0 0 {name=C2
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 720 -20 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 600 -150 0 0 {name=V3 value="DC 2.5" savecurrent=false}
C {devices/gnd.sym} 600 -20 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 520 -20 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 440 -20 0 0 {name=l8 lab=GND}
C {devices/code.sym} 10 -110 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {opamp_r2r.sym} 780 -240 0 0 {name=x1}
