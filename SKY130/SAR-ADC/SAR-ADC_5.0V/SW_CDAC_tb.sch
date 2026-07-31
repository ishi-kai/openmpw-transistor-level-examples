v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 330 -390 330 -350 {
lab=VAPWR}
N 430 -390 430 -350 {
lab=CLK}
N 230 -390 230 -350 {
lab=VDPWR}
N 130 -390 130 -350 {
lab=VREF}
N 630 -500 800 -500 {lab=#net1}
N 560 -670 560 -560 {lab=VREF}
N 560 -620 770 -620 {lab=VREF}
N 770 -620 770 -460 {lab=VREF}
N 770 -460 800 -460 {lab=VREF}
N 770 -480 800 -480 {lab=VREF}
N 410 -500 470 -500 {lab=CLK}
N 960 -480 1040 -480 {lab=VOUT}
N 1040 -480 1140 -480 {lab=VOUT}
N 1040 -420 1040 -380 {lab=GND}
N 540 -440 800 -440 {lab=GND}
N 650 -440 650 -380 {lab=GND}
C {devices/vsource.sym} 330 -320 0 0 {name=VAPwr value=3.3 savecurrent=false}
C {devices/gnd.sym} 430 -290 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 330 -290 0 0 {name=l3 lab=GND}
C {devices/simulator_commands_shown.sym} 90 -670 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.temp 27
.option savecurrent
.control
save all

tran 100n 2u
plot v(CLK) v(VOUT)  
write SW_CDAC_tb.raw

.endc
"}
C {devices/lab_pin.sym} 430 -390 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/vsource.sym} 130 -320 0 0 {name=Vref value=5.0 savecurrent=false}
C {devices/gnd.sym} 130 -290 0 0 {name=l23 lab=GND}
C {devices/code.sym} 10 -920 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/lab_pin.sym} 330 -390 0 0 {name=p44 sig_type=std_logic lab=VAPWR}
C {devices/vsource.sym} 230 -320 0 0 {name=VDpwr value=1.8 savecurrent=false}
C {devices/gnd.sym} 230 -290 0 0 {name=l12 lab=GND
value=1.8}
C {devices/lab_pin.sym} 230 -390 0 0 {name=p45 sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 560 -670 2 1 {name=p47 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} 130 -390 0 0 {name=p48 sig_type=std_logic lab=VREF}
C {SW_CDAC.sym} 800 -500 0 0 {name=XM1
spiceprefix=X}
C {LV_SHIF_D2A.sym} 610 -440 0 0 {name=XM2
spiceprefix=X
}
C {devices/lab_pin.sym} 1140 -480 2 0 {name=p75 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 540 -560 3 1 {name=p76 sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 520 -560 3 1 {name=p77 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} 410 -500 0 0 {name=p49 sig_type=std_logic lab=CLK}
C {devices/gnd.sym} 1040 -380 0 1 {name=l5 lab=GND}
C {devices/gnd.sym} 650 -380 0 1 {name=l14 lab=GND}
C {devices/vsource.sym} 430 -320 0 0 {name=VPLL value="pulse(0 1.8 0 1n 1n 400n 800n)" savecurrent=false}
C {devices/capa.sym} 1040 -450 0 0 {name=C1
m=64
value=100f
footprint=1206
device="ceramic capacitor"}
