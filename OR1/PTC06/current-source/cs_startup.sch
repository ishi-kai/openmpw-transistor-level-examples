v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 190 -60 190 -10 {
lab=GND}
N -130 -150 -130 -120 {
lab=vin}
N -130 -60 -130 -20 {
lab=GND}
N -210 -60 -210 -20 {
lab=GND}
N -210 -150 -210 -120 {
lab=VDD}
N 190 -240 190 -120 {
lab=vout}
N 230 -270 260 -270 {
lab=vin}
N 260 -270 260 -90 {
lab=vin}
N 230 -90 260 -90 {
lab=vin}
N 190 -400 190 -300 {
lab=VDD}
N 170 -270 190 -270 {
lab=VDD}
N 170 -330 170 -270 {
lab=VDD}
N 170 -330 190 -330 {
lab=VDD}
N 170 -90 190 -90 {
lab=GND}
N 170 -90 170 -40 {
lab=GND}
N 170 -40 190 -40 {
lab=GND}
N 100 -170 190 -170 {
lab=vout}
N 60 -10 190 -10 {
lab=GND}
N 40 -170 60 -170 {
lab=GND}
N 40 -170 40 -110 {
lab=GND}
N 40 -110 60 -110 {
lab=GND}
N 260 -170 380 -170 {
lab=vin}
N 120 -380 190 -380 {
lab=VDD}
N 60 -380 60 -370 {
lab=VDD}
N 60 -380 120 -380 {
lab=VDD}
N 60 -140 60 -110 {
lab=GND}
N 60 -110 60 -90 {
lab=GND}
N 60 -30 60 -10 {
lab=GND}
N 60 -310 60 -200 {
lab=#net1}
N 60 -90 60 -30 {
lab=GND}
C {devices/code.sym} -250 -350 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {devices/vdd.sym} 190 -400 0 0 {name=l1}
C {devices/gnd.sym} 190 -10 0 0 {name=l2}
C {devices/vsource.sym} -210 -90 0 0 {name=Vdd value=5.0 savecurrent=false}
C {devices/vdd.sym} -210 -150 0 0 {name=l3}
C {devices/gnd.sym} -210 -20 0 0 {name=l4}
C {devices/vsource.sym} -130 -90 0 0 {name=vin value=5.0 savecurrent=false}
C {devices/lab_pin.sym} 380 -170 0 1 {name=p1 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} -130 -150 1 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/gnd.sym} -130 -20 0 0 {name=l5}
C {devices/code_shown.sym} 460 -320 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

* DC analysis (I/O curve)
dc vin 0 5.0 0.01
plot vin vout
.endc"}
C {devices/code_shown.sym} 460 -40 0 0 {name=measure only_toplevel=false value=".measure dc Vinv when v(vout)=0.7"}
C {primitives/pfet.sym} 210 -270 0 1 {name=M1 
model=pmos
W=4.0u
L=2.0u
m=1
}
C {primitives/nfet.sym} 210 -90 0 1 {name=M2 
model=nmos
W=1600.0u
L=2.0u
m=1
}
C {primitives/nfet.sym} 80 -170 0 1 {name=M3 
model=nmos
W=20.0u
L=2.0u
m=1
}
C {devices/isource.sym} 60 -340 0 0 {name=I0 value=50u}
C {devices/lab_pin.sym} 140 -170 1 0 {name=p2 sig_type=std_logic lab=vout}
