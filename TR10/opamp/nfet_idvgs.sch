v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
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
C {devices/vsource.sym} 30 -90 0 0 {name=Vgs value=2.5}
C {devices/vsource.sym} 250 -90 0 0 {name=Vds value=2.5}
C {devices/gnd.sym} 30 -30 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -460 -240 0 0 {name=control only_toplevel=false value=".option savecurrent
.control
op
show m
save all
save @m.xm1.m1[gds]
save @m.xm1.m1[gm]
save @m.xm1.m1[vth]
dc vgs 0.01 5.0 0.01
plot -i(Vds)
plot @m.xm1.m1[vth]
plot @m.xm1.m1[gm]
plot -@m.xm1.m1[gm]/i(vds)
.endc"}
C {IP62LIB/MN.sym} 70 -130 0 0 {name=XM1 model=NMOS w=10u l=1u m=1 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {devices/code.sym} -470 -390 0 0 {name=TR10_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/../ip62_models"
spice_ignore=false}
