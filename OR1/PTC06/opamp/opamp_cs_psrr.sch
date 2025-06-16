v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 330 -240 370 -240 {
lab=outp}
N 370 -240 370 -220 {
lab=outp}
N 370 -160 370 -110 {
lab=GND}
N 270 -60 370 -60 {
lab=GND}
N 150 -150 170 -150 {
lab=#net1}
N 150 -220 150 -190 {
lab=#net1}
N 150 -220 210 -220 {
lab=#net1}
N 150 -70 150 -60 {
lab=GND}
N 350 -240 350 -170 {
lab=outp}
N 150 -190 150 -150 {
lab=#net1}
N 150 -150 150 -130 {
lab=#net1}
N 230 -150 350 -150 {
lab=outp}
N 350 -170 350 -150 {
lab=outp}
N 370 -110 370 -60 {
lab=GND}
N 40 -280 40 -260 {
lab=VDD}
N 40 -200 40 -170 {
lab=GND}
N 270 -320 270 -300 {
lab=#net2}
N 270 -400 270 -380 {
lab=VDD}
N 270 -180 270 -60 {
lab=GND}
N 800 -240 840 -240 {
lab=outn}
N 840 -240 840 -220 {
lab=outn}
N 840 -160 840 -110 {
lab=GND}
N 740 -60 840 -60 {
lab=GND}
N 620 -150 640 -150 {
lab=#net3}
N 620 -220 620 -190 {
lab=#net3}
N 620 -220 680 -220 {
lab=#net3}
N 620 -70 620 -60 {
lab=GND}
N 820 -240 820 -170 {
lab=outn}
N 620 -190 620 -150 {
lab=#net3}
N 620 -150 620 -130 {
lab=#net3}
N 700 -150 820 -150 {
lab=outn}
N 820 -170 820 -150 {
lab=outn}
N 840 -110 840 -60 {
lab=GND}
N 740 -320 740 -300 {
lab=VDD}
N 370 -60 740 -60 {
lab=GND}
N 740 -80 740 -60 {
lab=GND}
N 740 -180 740 -140 {
lab=#net4}
N 150 -260 150 -220 {
lab=#net1}
N 150 -260 210 -260 {
lab=#net1}
N 620 -260 620 -220 {
lab=#net3}
N 620 -260 680 -260 {
lab=#net3}
N 150 -60 270 -60 {
lab=GND}
N 150 -60 150 -40 {
lab=GND}
C {devices/code_shown.sym} -470 -300 0 0 {name=control only_toplevel=false value=".option savecurrent
.control
set units=degree
op
save all
ac dec 20 1e3 1e10
plot vdb(outp), vdb(outn)
.endc"}
C {devices/vsource.sym} 40 -230 0 0 {name=Vdd value=5.0}
C {devices/gnd.sym} 150 -40 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 370 -240 0 1 {name=p1 sig_type=std_logic lab=outp}
C {devices/code_shown.sym} -470 -80 0 0 {name=measure only_toplevel=false value=".measure ac gain_vdd find vdb(outp) at=1e3
.measure ac gain_vss find vdb(outn) at=1e3"}
C {devices/capa.sym} 370 -190 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 200 -150 1 0 {name=R1
value=100Meg
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 150 -100 0 0 {name=C2
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} 40 -280 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} 40 -170 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 270 -400 0 0 {name=l4 lab=VDD}
C {devices/vsource.sym} 270 -350 0 0 {name=Vn1 value="AC 1"}
C {devices/vdd.sym} 740 -320 0 0 {name=l5 lab=VDD}
C {devices/lab_pin.sym} 840 -240 0 1 {name=p3 sig_type=std_logic lab=outn}
C {devices/capa.sym} 840 -190 0 0 {name=C3
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 670 -150 1 0 {name=R2
value=100Meg
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 620 -100 0 0 {name=C4
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 740 -110 0 0 {name=Vn2 value="AC 1"}
C {devices/code.sym} -470 -480 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {opamp_cs.sym} 230 -240 0 0 {name=X1}
C {opamp_cs.sym} 700 -240 0 0 {name=X2}
