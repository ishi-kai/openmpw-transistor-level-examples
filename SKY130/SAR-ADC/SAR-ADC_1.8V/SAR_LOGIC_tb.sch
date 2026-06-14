v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 110 440 110 480 {
lab=VDD}
N 210 440 210 480 {
lab=CLK}
N 720 440 720 480 {
lab=XRST}
N 960 440 960 480 {
lab=VIN}
N 450 160 470 160 {
lab=CLK}
N 450 140 470 140 {
lab=XRST}
N 770 240 770 330 {
lab=SDAC0}
N 760 260 770 260 {
lab=SDAC0}
N 750 240 750 330 {
lab=SDAC1}
N 740 260 750 260 {
lab=SDAC1}
N 730 240 730 330 {
lab=SDAC2}
N 720 260 730 260 {
lab=SDAC2}
N 710 240 710 330 {
lab=SDAC3}
N 700 260 710 260 {
lab=SDAC3}
N 690 240 690 330 {
lab=SDAC4}
N 680 260 690 260 {
lab=SDAC4}
N 670 240 670 330 {
lab=SDAC5}
N 660 260 670 260 {
lab=SDAC5}
N 650 240 650 330 {
lab=SDAC6}
N 640 260 650 260 {
lab=SDAC6}
N 610 240 610 320 {
lab=SC}
N 600 260 610 260 {
lab=SC}
N 990 180 990 200 {
lab=COMP_CLK}
N 650 330 650 340 {
lab=SDAC6}
N 670 330 670 360 {
lab=SDAC5}
N 690 330 690 380 {
lab=SDAC4}
N 710 330 710 400 {
lab=SDAC3}
N 650 -100 650 40 {
lab=DIGITAL_OUT[5]}
N 630 -80 650 -80 {
lab=DIGITAL_OUT[5]}
N 630 -60 670 -60 {
lab=DIGITAL_OUT[4]}
N 630 -40 690 -40 {
lab=DIGITAL_OUT[3]}
N 630 -20 710 -20 {
lab=DIGITAL_OUT[2]}
N 630 0 730 0 {
lab=DIGITAL_OUT[1]}
N 630 20 750 20 {
lab=DIGITAL_OUT[0]}
N 670 -100 670 40 {
lab=DIGITAL_OUT[4]}
N 690 -100 690 40 {
lab=DIGITAL_OUT[3]}
N 710 -100 710 40 {
lab=DIGITAL_OUT[2]}
N 730 -100 730 40 {
lab=DIGITAL_OUT[1]}
N 750 -100 750 40 {
lab=DIGITAL_OUT[0]}
N 770 -100 770 40 {
lab=EOC}
N 890 200 990 200 {lab=COMP_CLK}
N 420 200 470 200 {lab=COMP_OUT}
N 420 440 420 480 {
lab=COMP_OUT}
C {devices/code.sym} -850 -170 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {SAR_LOGIC.sym} 680 150 0 0 {name=x1 prefix=SAR_LOGIC}
C {devices/simulator_commands_shown.sym} -830 40 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value=".include ~/sar-logic/SAR_LOGIC.spice
.temp 27
.option savecurrent
.control
save all
alter V1 1.8

let start_vin = 0.0515625 / 2 / 2
let stop_vin = 1.8
let delta_vin = 0.0515625 / 2
let vin_act = start_vin
alter V2 vin_act

while vin_act le stop_vin
	tran 100n 1u
	write SAR_LOGIC_tb.raw
	meas tran vin FIND v(VIN) WHEN v(EOC)=0.9 FALL=LAST
	meas tran vout5 FIND v(DIGITAL_OUT[5]) WHEN v(EOC)=0.9 FALL=LAST
	meas tran vout4 FIND v(DIGITAL_OUT[4]) WHEN v(EOC)=0.9 FALL=LAST
	meas tran vout3 FIND v(DIGITAL_OUT[3]) WHEN v(EOC)=0.9 FALL=LAST
	meas tran vout2 FIND v(DIGITAL_OUT[2]) WHEN v(EOC)=0.9 FALL=LAST
	meas tran vout1 FIND v(DIGITAL_OUT[1]) WHEN v(EOC)=0.9 FALL=LAST
	meas tran vout0 FIND v(DIGITAL_OUT[0]) WHEN v(EOC)=0.9 FALL=LAST
	print vin >> sar_logic_tran_out_typ.txt
	print vout5 >> sar_logic_tran_out_typ.txt
	print vout4 >> sar_logic_tran_out_typ.txt
	print vout3 >> sar_logic_tran_out_typ.txt
	print vout2 >> sar_logic_tran_out_typ.txt
	print vout1 >> sar_logic_tran_out_typ.txt
	print vout0 >> sar_logic_tran_out_typ.txt
	let vin_act = vin_act + delta_vin
	alter V2 vin_act
end

.endc
"}
C {devices/vsource.sym} 110 510 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} 210 510 0 0 {name=VPLL value="pulse(0 1.8 0 1n 1n 10n 40n)" savecurrent=false}
C {devices/gnd.sym} 210 540 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 110 540 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 210 440 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 720 440 0 0 {name=p9 sig_type=std_logic lab=XRST}
C {devices/gnd.sym} 720 540 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 720 510 0 0 {name=V3 value="pwl(0 0 200n 0 202n 1.8)" savecurrent=false}
C {devices/vdd.sym} 110 440 0 0 {name=l12 lab=VDD}
C {devices/lab_pin.sym} 960 440 2 1 {name=p25 sig_type=std_logic lab=VIN}
C {devices/gnd.sym} 960 540 0 0 {name=l22 lab=GND}
C {devices/vsource.sym} 960 510 0 0 {name=V2 value=1 savecurrent=false}
C {devices/lab_pin.sym} 450 160 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 450 140 0 0 {name=p7 sig_type=std_logic lab=XRST}
C {devices/lab_pin.sym} 760 260 3 0 {name=p10 sig_type=std_logic lab=SDAC0}
C {devices/lab_pin.sym} 740 260 3 0 {name=p11 sig_type=std_logic lab=SDAC1}
C {devices/lab_pin.sym} 720 260 3 0 {name=p12 sig_type=std_logic lab=SDAC2}
C {devices/lab_pin.sym} 700 260 3 0 {name=p13 sig_type=std_logic lab=SDAC3}
C {devices/lab_pin.sym} 680 260 3 0 {name=p14 sig_type=std_logic lab=SDAC4}
C {devices/lab_pin.sym} 660 260 3 0 {name=p15 sig_type=std_logic lab=SDAC5}
C {devices/lab_pin.sym} 640 260 3 0 {name=p16 sig_type=std_logic lab=SDAC6}
C {devices/lab_pin.sym} 600 260 3 0 {name=p19 sig_type=std_logic lab=SC}
C {devices/lab_pin.sym} 990 180 0 0 {name=p20 sig_type=std_logic lab=COMP_CLK}
C {devices/vdd.sym} 470 100 0 0 {name=l15 lab=VDD}
C {devices/gnd.sym} 470 120 0 1 {name=l16 lab=GND}
C {devices/lab_pin.sym} 630 -80 0 0 {name=p18 sig_type=std_logic lab=DIGITAL_OUT[5]}
C {devices/lab_pin.sym} 630 -60 0 0 {name=p21 sig_type=std_logic lab=DIGITAL_OUT[4]}
C {devices/lab_pin.sym} 630 -40 0 0 {name=p40 sig_type=std_logic lab=DIGITAL_OUT[3]}
C {devices/lab_pin.sym} 630 -20 0 0 {name=p41 sig_type=std_logic lab=DIGITAL_OUT[2]}
C {devices/lab_pin.sym} 630 0 0 0 {name=p42 sig_type=std_logic lab=DIGITAL_OUT[1]}
C {devices/lab_pin.sym} 630 20 0 0 {name=p43 sig_type=std_logic lab=DIGITAL_OUT[0]}
C {devices/lab_pin.sym} 770 20 2 0 {name=p17 sig_type=std_logic lab=EOC}
C {devices/lab_pin.sym} 420 200 0 0 {name=p39 sig_type=std_logic lab=COMP_OUT}
C {devices/vsource.sym} 420 510 0 0 {name=VADC value="pulse(0 1.8 0 1n 1n 10n 50n)" savecurrent=false}
C {devices/gnd.sym} 420 540 0 0 {name=VADC1 lab=GND}
C {devices/lab_pin.sym} 420 440 0 0 {name=VADC2 sig_type=std_logic lab=COMP_OUT}
