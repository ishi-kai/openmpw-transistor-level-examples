v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1230 -1000 1270 -1000 {lab=VREF}
N 1230 -980 1270 -980 {lab=VAPWR}
N 1230 -960 1270 -960 {lab=VDPWR}
N 1230 -940 1270 -940 {lab=GND}
N 1230 -920 1270 -920 {lab=XRST}
N 1570 -1000 1600 -1000 {lab=DIGITAL_OUT[0]}
N 1570 -980 1600 -980 {lab=DIGITAL_OUT[1]}
N 1570 -960 1600 -960 {lab=DIGITAL_OUT[2]}
N 1570 -940 1600 -940 {lab=DIGITAL_OUT[3]}
N 1570 -920 1600 -920 {lab=DIGITAL_OUT[4]}
N 1570 -900 1600 -900 {lab=DIGITAL_OUT[5]}
N 1570 -880 1600 -880 {lab=EOC}
N 1230 -900 1270 -900 {lab=VIN}
N 1230 -880 1270 -880 {lab=CLK}
N 1150 -940 1230 -940 {lab=GND}
N 320 -580 320 -540 {
lab=VAPWR}
N 420 -580 420 -540 {
lab=CLK}
N 680 -580 680 -540 {
lab=XRST}
N 920 -580 920 -540 {
lab=VIN}
N 220 -580 220 -540 {
lab=VDPWR}
N 120 -580 120 -540 {
lab=VREF}
C {devices/simulator_commands_shown.sym} 40 -1350 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value=".include ~/TOP_pex_extracted.spice
.temp 27
.option savecurrent
.control
save all
alter VREF 5.0

let start_vin = 0.078125 / 2
let stop_vin = 5.0
let delta_vin = 0.078125
let vin_act = start_vin
alter Vin vin_act

while vin_act le stop_vin
	tran 100n 300u
	write tran_sar_adc_pex.raw
	meas tran vin FIND v(VIN) WHEN v(EOC)=0.9 FALL=LAST
	meas tran vout5 FIND v(DIGITAL_OUT[5]) WHEN v(EOC)=0.9 FALL=LAST
	meas tran vout4 FIND v(DIGITAL_OUT[4]) WHEN v(EOC)=0.9 FALL=LAST
	meas tran vout3 FIND v(DIGITAL_OUT[3]) WHEN v(EOC)=0.9 FALL=LAST
	meas tran vout2 FIND v(DIGITAL_OUT[2]) WHEN v(EOC)=0.9 FALL=LAST
	meas tran vout1 FIND v(DIGITAL_OUT[1]) WHEN v(EOC)=0.9 FALL=LAST
	meas tran vout0 FIND v(DIGITAL_OUT[0]) WHEN v(EOC)=0.9 FALL=LAST
	print vin >> tran_sar_adc_pex_out_typ.txt
	print vout5 >> tran_sar_adc_pex_out_typ.txt
	print vout4 >> tran_sar_adc_pex_out_typ.txt
	print vout3 >> tran_sar_adc_pex_out_typ.txt
	print vout2 >> tran_sar_adc_pex_out_typ.txt
	print vout1 >> tran_sar_adc_pex_out_typ.txt
	print vout0 >> tran_sar_adc_pex_out_typ.txt
	let vin_act = vin_act + delta_vin
	alter Vin vin_act
end

.endc
"}
C {devices/lab_pin.sym} 1230 -880 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 1230 -920 0 0 {name=p7 sig_type=std_logic lab=XRST}
C {devices/gnd.sym} 1150 -940 0 1 {name=l18 lab=GND}
C {devices/lab_pin.sym} 1230 -900 0 0 {name=p26 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 1600 -900 0 1 {name=p18 sig_type=std_logic lab=DIGITAL_OUT[5]}
C {devices/lab_pin.sym} 1600 -920 0 1 {name=p21 sig_type=std_logic lab=DIGITAL_OUT[4]}
C {devices/lab_pin.sym} 1600 -940 0 1 {name=p40 sig_type=std_logic lab=DIGITAL_OUT[3]}
C {devices/lab_pin.sym} 1600 -960 0 1 {name=p41 sig_type=std_logic lab=DIGITAL_OUT[2]}
C {devices/lab_pin.sym} 1600 -980 0 1 {name=p42 sig_type=std_logic lab=DIGITAL_OUT[1]}
C {devices/lab_pin.sym} 1600 -1000 0 1 {name=p43 sig_type=std_logic lab=DIGITAL_OUT[0]}
C {devices/lab_pin.sym} 1600 -880 2 0 {name=p17 sig_type=std_logic lab=EOC}
C {devices/code.sym} 30 -1550 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {sar_adc_pex.sym} 1420 -940 0 0 {name=XM1 prefix=TOP}
C {devices/lab_pin.sym} 1230 -1000 0 0 {name=p1 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} 1230 -960 0 0 {name=p3 sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 1230 -980 0 0 {name=p4 sig_type=std_logic lab=VAPWR}
C {devices/vsource.sym} 320 -510 0 0 {name=VAPwr value=3.3 savecurrent=false}
C {devices/gnd.sym} 420 -480 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 320 -480 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 420 -580 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 680 -580 0 0 {name=p9 sig_type=std_logic lab=XRST}
C {devices/gnd.sym} 680 -480 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 920 -580 2 1 {name=p25 sig_type=std_logic lab=VIN}
C {devices/gnd.sym} 920 -480 0 0 {name=l22 lab=GND}
C {devices/vsource.sym} 920 -510 0 0 {name=Vin value=1 savecurrent=false}
C {devices/vsource.sym} 120 -510 0 0 {name=Vref value=5.0 savecurrent=false}
C {devices/gnd.sym} 120 -480 0 0 {name=l23 lab=GND}
C {devices/lab_pin.sym} 320 -580 0 0 {name=p44 sig_type=std_logic lab=VAPWR}
C {devices/vsource.sym} 220 -510 0 0 {name=VDpwr value=1.8 savecurrent=false}
C {devices/gnd.sym} 220 -480 0 0 {name=l12 lab=GND
value=1.8}
C {devices/lab_pin.sym} 220 -580 0 0 {name=p45 sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 120 -580 0 0 {name=p48 sig_type=std_logic lab=VREF}
C {devices/vsource.sym} 420 -510 0 0 {name=VPLL value="pulse(0 1.8 0 1n 1n 400n 800n)" savecurrent=false}
C {devices/vsource.sym} 680 -510 0 0 {name=V3 value="pwl(0 0 200n 0 200n 1.8 4300n 0)" savecurrent=false}
