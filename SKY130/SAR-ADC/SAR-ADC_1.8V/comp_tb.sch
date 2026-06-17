v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -1250 200 -1250 240 {
lab=VDD}
N -1150 200 -1150 240 {
lab=CLK}
N -800 200 -800 240 {
lab=vinn}
N -900 200 -900 240 {
lab=vinp}
N -380 -170 -380 -160 {lab=VDD}
N -380 -160 -340 -160 {lab=VDD}
N -380 -80 -340 -80 {lab=GND}
N -380 -80 -380 -60 {lab=GND}
N -380 -100 -340 -100 {lab=vinp}
N -380 -140 -340 -140 {lab=vinn}
N -380 -120 -340 -120 {lab=CLK}
N -40 -160 -10 -160 {lab=VOUTP}
N -40 -140 -10 -140 {lab=VOUTN}
N -380 -250 -380 -170 {lab=VDD}
N -380 -230 180 -230 {lab=VDD}
N 180 -230 180 -160 {lab=VDD}
N -380 -60 180 -60 {lab=GND}
N 180 -100 180 -60 {lab=GND}
N -10 -160 150 -160 {lab=VOUTP}
N 150 -160 150 -140 {lab=VOUTP}
N 150 -140 180 -140 {lab=VOUTP}
N -10 -140 130 -140 {lab=VOUTN}
N 130 -140 130 -120 {lab=VOUTN}
N 130 -120 180 -120 {lab=VOUTN}
N -10 -180 -10 -160 {lab=VOUTP}
N -10 -140 -10 -120 {lab=VOUTN}
N 480 -160 520 -160 {lab=VQ_BAR}
N 480 -140 520 -140 {lab=VQ}
C {devices/simulator_commands_shown.sym} -1310 -350 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
value="
.temp 27
.option savecurrent
.control
save all

tran 100p 4u

plot v(CLK) v(vinp) v(vinn) v(VOUTN)+1.8 v(VOUTP)+3.6 v(VQ)+5.4 v(VQ_BAR)+7.2
plot v(CLK) v(vinp) v(vinn) v(VOUTN)+1.8 v(VOUTP)+3.6 v(VQ)+5.4 v(VQ_BAR)+7.2 xlimit 1000n 1200n

write comp_tb.raw

.endc
"}
C {devices/vsource.sym} -1250 270 0 0 {name=VDD value=1.8 savecurrent=false}
C {devices/gnd.sym} -1250 300 0 0 {name=l23 lab=GND}
C {devices/vdd.sym} -1250 200 0 0 {name=l16 lab=VDD}
C {devices/gnd.sym} -1150 300 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} -1150 200 0 0 {name=p3 sig_type=std_logic lab=CLK}
C {devices/vsource.sym} -800 270 0 0 {name=Vinn value=0.9 savecurrent=false}
C {devices/gnd.sym} -800 300 0 0 {name=l18 lab=GND}
C {devices/lab_pin.sym} -800 200 0 0 {name=p44 sig_type=std_logic lab=vinn}
C {devices/vsource.sym} -900 270 0 0 {name=Vinp value="PWL(0n 0 2u 1.8)" savecurrent=false}
C {devices/gnd.sym} -900 300 0 0 {name=l22 lab=GND
value=1.8}
C {devices/lab_pin.sym} -900 200 0 0 {name=p45 sig_type=std_logic lab=vinp}
C {devices/code.sym} -1310 -570 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {comp.sym} -190 -120 0 0 {name=M1
spiceprefix=X}
C {devices/vdd.sym} -380 -250 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -380 -60 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -380 -100 0 0 {name=p1 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} -380 -140 0 0 {name=p2 sig_type=std_logic lab=vinn}
C {devices/lab_pin.sym} -380 -120 0 0 {name=p4 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -10 -180 0 1 {name=p5 sig_type=std_logic lab=VOUTP}
C {devices/lab_pin.sym} -10 -120 0 1 {name=p6 sig_type=std_logic lab=VOUTN}
C {SR.sym} 330 -130 0 0 {name=M2
spiceprefix=X
}
C {devices/lab_pin.sym} 520 -140 0 1 {name=p7 sig_type=std_logic lab=VQ}
C {devices/lab_pin.sym} 520 -160 0 1 {name=p8 sig_type=std_logic lab=VQ_BAR}
C {devices/vsource.sym} -1150 270 0 0 {name=VPLL value="pulse(0 1.8 0 1n 1n 400n 800n)" savecurrent=false}
