v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -900 60 -900 100 {
lab=VDD}
N -450 60 -450 100 {
lab=vinn}
N -550 60 -550 100 {
lab=vinp}
N -810 60 -810 100 {
lab=CLK}
N -170 -330 -170 -320 {lab=VDD}
N -170 -320 -130 -320 {lab=VDD}
N -170 -240 -130 -240 {lab=GND}
N -170 -240 -170 -220 {lab=GND}
N -170 -260 -130 -260 {lab=vinp}
N -170 -300 -130 -300 {lab=vinn}
N -170 -280 -130 -280 {lab=CLK}
N 170 -320 200 -320 {lab=VOUTP}
N 170 -300 200 -300 {lab=VOUTN}
N -170 -410 -170 -330 {lab=VDD}
N -170 -390 390 -390 {lab=VDD}
N 390 -390 390 -320 {lab=VDD}
N -170 -220 390 -220 {lab=GND}
N 390 -260 390 -220 {lab=GND}
N 200 -320 360 -320 {lab=VOUTP}
N 200 -300 340 -300 {lab=VOUTN}
N 200 -340 200 -320 {lab=VOUTP}
N 200 -300 200 -280 {lab=VOUTN}
N 690 -320 730 -320 {lab=VQ_BAR}
N 690 -300 730 -300 {lab=VQ}
N 340 -300 390 -300 {lab=VOUTN}
N 360 -320 360 -280 {lab=VOUTP}
N 360 -280 390 -280 {lab=VOUTP}
C {devices/code.sym} -970 -720 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/simulator_commands_shown.sym} -960 -490 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
value="
.temp 27
.option savecurrent
.control
save all

tran 100p 2.2u

plot v(CLK) v(vinp) v(vinn) v(VOUTN)+1.8 v(VOUTP)+3.6
plot v(CLK) v(vinp) v(vinn) v(VOUTN)+1.8 v(VOUTP)+3.6 xlimit 1000n 1200n

write comp_arm_tb.raw

.endc
"}
C {devices/vsource.sym} -900 130 0 0 {name=VDD value=1.8 savecurrent=false}
C {devices/gnd.sym} -900 160 0 0 {name=l23 lab=GND}
C {devices/vdd.sym} -900 60 0 0 {name=l16 lab=VDD}
C {devices/vsource.sym} -450 130 0 0 {name=Vinn value="PWL(0n 0 2u 1.8)" savecurrent=false}
C {devices/gnd.sym} -450 160 0 0 {name=l18 lab=GND}
C {devices/lab_pin.sym} -450 60 0 0 {name=p44 sig_type=std_logic lab=vinn}
C {devices/vsource.sym} -550 130 0 0 {name=Vinp value="0.9" savecurrent=false}
C {devices/gnd.sym} -550 160 0 0 {name=l22 lab=GND
value=1.8}
C {devices/lab_pin.sym} -550 60 0 0 {name=p45 sig_type=std_logic lab=vinp}
C {devices/gnd.sym} -810 160 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -810 60 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/vsource.sym} -810 130 0 0 {name=VPLL value="pulse(0 1.8 0 1n 1n 400n 800n)" savecurrent=false}
C {devices/vdd.sym} -170 -410 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} -170 -220 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -170 -260 0 0 {name=p1 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} -170 -300 0 0 {name=p3 sig_type=std_logic lab=vinn}
C {devices/lab_pin.sym} -170 -280 0 0 {name=p4 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 200 -340 0 1 {name=p5 sig_type=std_logic lab=VOUTP}
C {devices/lab_pin.sym} 200 -280 0 1 {name=p6 sig_type=std_logic lab=VOUTN}
C {SR.sym} 540 -290 0 0 {name=M2
spiceprefix=X
}
C {devices/lab_pin.sym} 730 -300 0 1 {name=p7 sig_type=std_logic lab=VQ}
C {devices/lab_pin.sym} 730 -320 0 1 {name=p8 sig_type=std_logic lab=VQ_BAR}
C {comp_arm.sym} 20 -280 0 0 {name=M1
spiceprefix=X}
