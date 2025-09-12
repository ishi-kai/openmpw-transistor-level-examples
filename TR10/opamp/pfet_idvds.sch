v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 30 -130 70 -130 {
lab=#net1}
N 110 -130 130 -130 {
lab=#net2}
N 110 -100 110 -80 {
lab=GND}
N 110 -80 110 -50 {
lab=GND}
N 110 -180 110 -160 {
lab=#net2}
N 130 -180 130 -130 {
lab=#net2}
N 110 -180 130 -180 {
lab=#net2}
N 30 -220 30 -200 {
lab=#net2}
N 30 -220 250 -220 {
lab=#net2}
N 250 -220 250 -180 {
lab=#net2}
N 110 -220 110 -180 {
lab=#net2}
N 30 -140 30 -130 {
lab=#net1}
N 110 -70 250 -70 {
lab=GND}
N 250 -100 250 -70 {
lab=GND}
N 250 -180 250 -160 {
lab=#net2}
C {devices/vsource.sym} 30 -170 0 0 {name=Vgs value=0.9}
C {devices/vsource.sym} 250 -130 0 0 {name=Vds value=2.5}
C {devices/gnd.sym} 110 -50 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -540 -240 0 0 {name=control only_toplevel=false value=".option savecurrent
.control
op
show m
save all
save @m.xm1.m1[gds]
save @m.xm1.m1[gm]
save @m.xm1.m1[vth]
dc vds 0.01 5.0 0.01
plot -i(Vds)
plot @m.xm1.m1[vth]
plot 1/@m.xm1.m1[gds]
plot @m.xm1.m1[gm]
plot -@m.xm1.m1[gm]/i(vds)
.endc"}
C {IP62LIB/MP.sym} 70 -130 0 0 {name=XM1 model=PMOS w=10u l=1u m=1 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {devices/code.sym} -550 -390 0 0 {name=TR10_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/../ip62_models"
spice_ignore=false}
