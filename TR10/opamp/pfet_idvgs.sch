v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
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
save @m.xm1.m1[gds]
save @m.xm1.m1[gm]
save @m.xm1.m1[vth]
dc vgs 0 5.0 0.01
plot -i(Vds)
plot @m.xm1.m1[vth]
plot @m.xm1.m1[gm]
plot -@m.xm1.m1[gm]/i(vds)
.endc"}
C {devices/code.sym} -460 -400 0 0 {name=TR10_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/../ip62_models"
spice_ignore=false}
C {IP62LIB/MP.sym} 60 -120 0 0 {name=XM1 model=PMOS w=10u l=1u m=1 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
