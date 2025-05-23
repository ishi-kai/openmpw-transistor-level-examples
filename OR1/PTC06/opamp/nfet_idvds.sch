v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 30 -130 30 -120 {
lab=#net1}
N 30 -130 70 -130 {
lab=#net1}
N 110 -130 130 -130 {
lab=GND}
N 130 -130 130 -80 {
lab=GND}
N 110 -80 130 -80 {
lab=GND}
N 110 -100 110 -80 {
lab=GND}
N 30 -60 30 -30 {
lab=GND}
N 30 -50 250 -50 {
lab=GND}
N 250 -60 250 -50 {
lab=GND}
N 110 -80 110 -50 {
lab=GND}
N 110 -180 110 -160 {
lab=#net2}
N 110 -180 250 -180 {
lab=#net2}
N 250 -180 250 -120 {
lab=#net2}
C {devices/vsource.sym} 30 -90 0 0 {name=Vgs value=0.9}
C {devices/vsource.sym} 250 -90 0 0 {name=Vds value=2.5}
C {devices/gnd.sym} 30 -30 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -460 -250 0 0 {name=control only_toplevel=false value=".option savecurrent
.control
op
show m
save all
save @m1[gds]
save @m1[gm]
save @m1[vth]
dc vds 0.01 5.0 0.01
plot -i(Vds)
plot @m1[vth]
plot 1/@m1[gds]
plot @m1[gm]
plot -@m1[gm]/i(vds)
.endc"}
C {devices/code.sym} -470 -400 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {primitives/nfet.sym} 90 -130 0 0 {name=M1 
model=nmos
W=10u
L=1u
m=1
}
