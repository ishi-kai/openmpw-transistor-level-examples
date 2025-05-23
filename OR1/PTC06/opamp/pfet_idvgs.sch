v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -120 60 -120 {
lab=#net1}
N 100 -120 120 -120 {
lab=#net2}
N 100 -90 100 -70 {
lab=GND}
N 100 -70 100 -40 {
lab=GND}
N 100 -170 100 -150 {
lab=#net2}
N 120 -170 120 -120 {
lab=#net2}
N 100 -170 120 -170 {
lab=#net2}
N 20 -210 20 -190 {
lab=#net2}
N 20 -210 240 -210 {
lab=#net2}
N 240 -210 240 -170 {
lab=#net2}
N 100 -210 100 -170 {
lab=#net2}
N 20 -130 20 -120 {
lab=#net1}
N 100 -60 240 -60 {
lab=GND}
N 240 -90 240 -60 {
lab=GND}
N 240 -170 240 -150 {
lab=#net2}
C {devices/vsource.sym} 20 -160 0 0 {name=Vgs value=2.5}
C {devices/vsource.sym} 240 -120 0 0 {name=Vds value=2.5}
C {devices/gnd.sym} 100 -40 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -450 -250 0 0 {name=control only_toplevel=false value=".option savecurrent
.control
op
show m
save all
save @m1[gds]
save @m1[gm]
save @m1[vth]
dc vgs 0 5.0 0.01
plot -i(Vds)
plot @m1[vth]
plot @m1[gm]
plot -@m1[gm]/i(vds)
.endc"}
C {devices/code.sym} -460 -400 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {primitives/pfet.sym} 80 -120 0 0 {name=M1 
model=pmos
W=10u
L=1u
m=1
spiceprefix=X}
