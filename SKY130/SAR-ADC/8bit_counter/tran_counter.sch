v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 60 -300 60 -260 {
lab=VREF}
N 160 -300 160 -260 {
lab=CLK}
N 420 -300 420 -260 {
lab=XCNT}
N 450 -620 470 -620 {
lab=CLK}
N 450 -640 470 -640 {
lab=XRST}
N 650 -880 650 -740 {
lab=DIGITAL_OUT[5]}
N 650 -930 650 -880 {lab=DIGITAL_OUT[5]}
N 610 -930 610 -740 {lab=DIGITAL_OUT[7]}
N 630 -930 630 -740 {lab=DIGITAL_OUT[6]}
N 670 -930 670 -740 {lab=DIGITAL_OUT[4]}
N 690 -930 690 -740 {lab=DIGITAL_OUT[3]}
N 710 -930 710 -740 {lab=DIGITAL_OUT[2]}
N 730 -930 730 -740 {lab=DIGITAL_OUT[1]}
N 750 -930 750 -740 {lab=DIGITAL_OUT[0]}
N 520 -900 610 -900 {lab=DIGITAL_OUT[7]}
N 520 -880 630 -880 {lab=DIGITAL_OUT[6]}
N 520 -860 650 -860 {lab=DIGITAL_OUT[5]}
N 520 -840 670 -840 {lab=DIGITAL_OUT[4]}
N 520 -820 690 -820 {lab=DIGITAL_OUT[3]}
N 520 -800 710 -800 {lab=DIGITAL_OUT[2]}
N 520 -780 730 -780 {lab=DIGITAL_OUT[1]}
N 520 -760 750 -760 {lab=DIGITAL_OUT[0]}
N 350 -680 470 -680 {lab=VREF}
N 450 -580 470 -580 {lab=XCNT}
N 690 -300 690 -260 {
lab=XRST}
C {devices/vsource.sym} 60 -230 0 0 {name=Vref value=1.8 savecurrent=false}
C {devices/gnd.sym} 160 -200 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 60 -200 0 0 {name=l3 lab=GND}
C {devices/simulator_commands_shown.sym} 20 -1350 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value=".include ~/counter/counter_FULL.spice
.temp 27
.option savecurrent
.control
* save all
save v(XCNT) v(XRST) v(clk) v(digital_out[7]) v(digital_out[6]) v(digital_out[5]) v(digital_out[4]) v(digital_out[3]) v(digital_out[2]) v(digital_out[1]) v(digital_out[0])

* delta_v 0.028125

tran 100n 100u
write tran_counter.raw

.endc
"}
C {devices/lab_pin.sym} 160 -300 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 420 -300 0 0 {name=p9 sig_type=std_logic lab=XCNT}
C {devices/gnd.sym} 420 -200 0 0 {name=l1 lab=GND}
C {devices/code.sym} 30 -1550 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/vsource.sym} 160 -230 0 0 {name=VPLL value="pulse(0 1.8 0 1n 1n 400n 800n)" savecurrent=false}
C {devices/vsource.sym} 420 -230 0 0 {name=Vcnt value="pulse(0 1.8 0 1n 1n 800n 1200n)" savecurrent=false}
C {devices/lab_pin.sym} 60 -300 2 1 {name=p45 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} 450 -620 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 450 -580 0 0 {name=p7 sig_type=std_logic lab=XCNT}
C {devices/gnd.sym} 470 -660 0 1 {name=l16 lab=GND}
C {devices/lab_pin.sym} 520 -860 0 0 {name=p18 sig_type=std_logic lab=DIGITAL_OUT[5]}
C {devices/lab_pin.sym} 520 -840 0 0 {name=p21 sig_type=std_logic lab=DIGITAL_OUT[4]}
C {devices/lab_pin.sym} 520 -820 0 0 {name=p40 sig_type=std_logic lab=DIGITAL_OUT[3]}
C {devices/lab_pin.sym} 520 -800 0 0 {name=p41 sig_type=std_logic lab=DIGITAL_OUT[2]}
C {devices/lab_pin.sym} 520 -780 0 0 {name=p42 sig_type=std_logic lab=DIGITAL_OUT[1]}
C {devices/lab_pin.sym} 520 -760 0 0 {name=p43 sig_type=std_logic lab=DIGITAL_OUT[0]}
C {devices/lab_pin.sym} 350 -680 2 1 {name=p1 sig_type=std_logic lab=VREF}
C {counter_FULL.sym} 680 -630 0 0 {name=x1 prefix=counter}
C {devices/lab_pin.sym} 520 -880 0 0 {name=p3 sig_type=std_logic lab=DIGITAL_OUT[6]}
C {devices/lab_pin.sym} 520 -900 0 0 {name=p4 sig_type=std_logic lab=DIGITAL_OUT[7]}
C {devices/lab_pin.sym} 690 -300 0 0 {name=p6 sig_type=std_logic lab=XRST}
C {devices/gnd.sym} 690 -200 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 690 -230 0 0 {name=Vrst value="pwl(0 0 400n 0 800n 1.8 800n 1.8)" savecurrent=false}
C {devices/lab_pin.sym} 450 -640 0 0 {name=p8 sig_type=std_logic lab=XRST}
