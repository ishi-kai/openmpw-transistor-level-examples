v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 70 -320 140 -320 {lab=#net1}
N 140 -320 190 -320 {lab=#net1}
N 70 -300 190 -300 {lab=#net2}
N 190 -280 190 -180 {lab=GND}
N -230 -180 190 -180 {lab=GND}
N -230 -240 -230 -180 {lab=GND}
N 160 -180 160 -140 {lab=GND}
N 160 -410 160 -340 {lab=VDD}
N 160 -340 190 -340 {lab=VDD}
N -230 -340 160 -340 {lab=VDD}
N -230 -340 -230 -320 {lab=VDD}
N -900 60 -900 100 {
lab=VDD}
N -450 60 -450 100 {
lab=vinn}
N -550 60 -550 100 {
lab=vinp}
N -810 60 -810 100 {
lab=CLK}
C {devices/ipin.sym} -230 -280 0 0 {name=p10 lab=CLK}
C {devices/ipin.sym} -230 -260 0 0 {name=p11 lab=VINP}
C {devices/ipin.sym} -230 -300 0 0 {name=p12 lab=VINN}
C {devices/opin.sym} 490 -340 0 0 {name=p13 lab=Q}
C {devices/opin.sym} 490 -320 0 0 {name=p14 lab=Q_bar}
C {devices/code.sym} -970 -720 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/vdd.sym} 160 -410 0 0 {name=l3 lab=VDD}
C {SR.sym} 340 -310 0 0 {name=M1
spiceprefix=X
}
C {comp_arm.sym} -80 -280 0 0 {name=M2
spiceprefix=X}
C {devices/simulator_commands_shown.sym} -960 -490 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
value="
.temp 27
.option savecurrent
.control
save all

tran 100n 10u

plot v(CLK) v(vinp) v(vinn) v(Q_bar)+1.8 v(Q)+3.6
plot v(CLK) v(vinp) v(vinn) v(Q_bar)+1.8 v(Q)+3.6 xlimit 3000n 5000n

write comp_arm_tb.raw

.endc
"}
C {devices/vsource.sym} -900 130 0 0 {name=VDD value=1.8 savecurrent=false}
C {devices/gnd.sym} -900 160 0 0 {name=l23 lab=GND}
C {devices/vdd.sym} -900 60 0 0 {name=l16 lab=VDD}
C {devices/vsource.sym} -450 130 0 0 {name=Vinn value="PWL(0n 0 10u 1.8)" savecurrent=false}
C {devices/gnd.sym} -450 160 0 0 {name=l18 lab=GND}
C {devices/lab_pin.sym} -450 60 0 0 {name=p44 sig_type=std_logic lab=vinn}
C {devices/vsource.sym} -550 130 0 0 {name=Vinp value="0.9" savecurrent=false}
C {devices/gnd.sym} -550 160 0 0 {name=l22 lab=GND
value=1.8}
C {devices/lab_pin.sym} -550 60 0 0 {name=p45 sig_type=std_logic lab=vinp}
C {devices/gnd.sym} -810 160 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -810 60 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/vsource.sym} -810 130 0 0 {name=VPLL value="pulse(0 1.8 0 1n 1n 400n 800n)" savecurrent=false}
C {devices/gnd.sym} 160 -140 0 0 {name=l2 lab=GND}
