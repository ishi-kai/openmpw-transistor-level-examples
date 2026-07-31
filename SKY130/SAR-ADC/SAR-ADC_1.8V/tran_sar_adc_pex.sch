v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1230 -1000 1270 -1000 {lab=VREF}
N 1230 -980 1270 -980 {lab=XRST}
N 1230 -960 1270 -960 {lab=VIN}
N 1230 -940 1270 -940 {lab=#net1}
N 1230 -920 1270 -920 {lab=GND}
N 1570 -1000 1600 -1000 {lab=DIGITAL_OUT[0]}
N 1570 -980 1600 -980 {lab=DIGITAL_OUT[1]}
N 1570 -960 1600 -960 {lab=DIGITAL_OUT[2]}
N 1570 -940 1600 -940 {lab=DIGITAL_OUT[3]}
N 1570 -920 1600 -920 {lab=DIGITAL_OUT[4]}
N 1570 -900 1600 -900 {lab=DIGITAL_OUT[5]}
N 1570 -880 1600 -880 {lab=EOC}
N 1150 -920 1230 -920 {lab=GND}
N 50 -660 50 -620 {
lab=VREF}
N 150 -660 150 -620 {
lab=CLK}
N 410 -660 410 -620 {
lab=XRST}
N 650 -660 650 -620 {
lab=VIN}
C {devices/lab_pin.sym} 1230 -940 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 1230 -980 0 0 {name=p7 sig_type=std_logic lab=XRST}
C {devices/gnd.sym} 1150 -920 0 1 {name=l18 lab=GND}
C {devices/lab_pin.sym} 1230 -960 0 0 {name=p26 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 1600 -900 0 1 {name=p18 sig_type=std_logic lab=DIGITAL_OUT[5]}
C {devices/lab_pin.sym} 1600 -920 0 1 {name=p21 sig_type=std_logic lab=DIGITAL_OUT[4]}
C {devices/lab_pin.sym} 1600 -940 0 1 {name=p40 sig_type=std_logic lab=DIGITAL_OUT[3]}
C {devices/lab_pin.sym} 1600 -960 0 1 {name=p41 sig_type=std_logic lab=DIGITAL_OUT[2]}
C {devices/lab_pin.sym} 1600 -980 0 1 {name=p42 sig_type=std_logic lab=DIGITAL_OUT[1]}
C {devices/lab_pin.sym} 1600 -1000 0 1 {name=p43 sig_type=std_logic lab=DIGITAL_OUT[0]}
C {devices/lab_pin.sym} 1600 -880 2 0 {name=p17 sig_type=std_logic lab=EOC}
C {sar_adc_pex.sym} 1420 -940 0 0 {name=XM1 prefix=TOP}
C {devices/lab_pin.sym} 1230 -1000 0 0 {name=p1 sig_type=std_logic lab=VREF}
C {devices/vsource.sym} 50 -590 0 0 {name=Vref value=1.8 savecurrent=false}
C {devices/gnd.sym} 150 -560 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 50 -560 0 0 {name=l3 lab=GND}
C {devices/simulator_commands_shown.sym} 30 -1710 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value=".include ~/sar-adc/SAR_LOGIC.spice
.temp 27
.option savecurrent
.control
save all

* let start_vin = 0.0515625 / 2 
let start_vin = 0.028125 / 2 
let stop_vin = 1.8
* let delta_vin = 0.0515625
let delta_vin = 0.028125
let vin_act = start_vin
alter Vin vin_act

while vin_act le stop_vin
	tran 100n 300u
	write sar_adc_tran.raw
	meas tran vin FIND v(VIN) WHEN v(EOC)=0.9 FALL=LAST
	meas tran vout5 FIND v(DIGITAL_OUT[5]) WHEN v(EOC)=0.9 FALL=LAST
	meas tran vout4 FIND v(DIGITAL_OUT[4]) WHEN v(EOC)=0.9 FALL=LAST
	meas tran vout3 FIND v(DIGITAL_OUT[3]) WHEN v(EOC)=0.9 FALL=LAST
	meas tran vout2 FIND v(DIGITAL_OUT[2]) WHEN v(EOC)=0.9 FALL=LAST
	meas tran vout1 FIND v(DIGITAL_OUT[1]) WHEN v(EOC)=0.9 FALL=LAST
	meas tran vout0 FIND v(DIGITAL_OUT[0]) WHEN v(EOC)=0.9 FALL=LAST
	print vin >> tran_sar_adc_out_typ.txt
	print vout5 >> tran_sar_adc_out_typ.txt
	print vout4 >> tran_sar_adc_out_typ.txt
	print vout3 >> tran_sar_adc_out_typ.txt
	print vout2 >> tran_sar_adc_out_typ.txt
	print vout1 >> tran_sar_adc_out_typ.txt
	print vout0 >> tran_sar_adc_out_typ.txt
	let vin_act = vin_act + delta_vin
	alter Vin vin_act
end

.endc
"}
C {devices/lab_pin.sym} 150 -660 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 410 -660 0 0 {name=p9 sig_type=std_logic lab=XRST}
C {devices/gnd.sym} 410 -560 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 650 -660 2 1 {name=p25 sig_type=std_logic lab=VIN}
C {devices/gnd.sym} 650 -560 0 0 {name=l22 lab=GND}
C {devices/vsource.sym} 650 -590 0 0 {name=Vin value=1 savecurrent=false}
C {devices/code.sym} 20 -1910 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/vsource.sym} 150 -590 0 0 {name=VPLL value="pulse(0 1.8 0 1n 1n 400n 800n)" savecurrent=false}
C {devices/vsource.sym} 410 -590 0 0 {name=Vrst value="pwl(0 0 100n 0 200n 1.8 200n 1.8)" savecurrent=false}
C {devices/lab_pin.sym} 50 -660 2 1 {name=p44 sig_type=std_logic lab=VREF}
