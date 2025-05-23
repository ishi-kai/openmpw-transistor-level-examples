v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 30 -110 30 -90 {
lab=GND}
N 30 -190 30 -170 {
lab=#net1}
N 140 -150 140 -140 {
lab=#net2}
N 140 -150 220 -150 {
lab=#net2}
N 140 -80 140 -70 {
lab=GND}
N 140 -70 260 -70 {
lab=GND}
N 90 -170 240 -170 {
lab=#net3}
N 220 -150 240 -150 {
lab=#net2}
N 90 -70 140 -70 {
lab=GND}
N 90 -110 90 -70 {
lab=GND}
N 30 -90 30 -50 {
lab=GND}
N 30 -70 90 -70 {
lab=GND}
N 270 -190 270 -180 {
lab=#net1}
N 30 -190 270 -190 {
lab=#net1}
N 270 -120 270 -70 {
lab=GND}
N 260 -70 270 -70 {
lab=GND}
N 310 -150 340 -150 {
lab=out}
N 340 -150 340 -140 {
lab=out}
N 340 -80 340 -70 {
lab=GND}
N 270 -70 340 -70 {
lab=GND}
C {devices/gnd.sym} 30 -50 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 30 -140 0 0 {name=Vdd value=5.0}
C {devices/vsource.sym} 90 -140 0 0 {name=Vb value=3.5}
C {devices/vsource.sym} 140 -110 0 0 {name=Vin value="DC 0.92 AC 1"}
C {devices/code_shown.sym} -460 -440 0 0 {name=control only_toplevel=false value=".option savecurrent
.control
op
show m
save all
ac dec 20 1e3 1e8
plot vdb(out)
print @m.x1.m6[vgs]
print @m.x1.m6[vgs] - @m.x1.m6[vth]
print @m.x1.m6[vds]
print @m.x1.m6[id]
print @m.x1.m6[gm]
print @m.x1.m6[gds]
print 1/@m.x1.m6[gds]
print @m.x1.m7[vgs]
print @m.x1.m7[vgs] - @m.x1.m7[vth]
print @m.x1.m7[vds]
print @m.x1.m7[id]
print @m.x1.m7[gm]
print @m.x1.m7[gds]
print 1/@m.x1.m7[gds]
.endc"}
C {cs.sym} 260 -150 0 0 {name=X1}
C {devices/lab_pin.sym} 340 -150 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/capa.sym} 340 -110 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/code_shown.sym} -460 -30 0 0 {name=measure only_toplevel=false value=".measure ac gain find Vdb(out) at=1e3"}
C {devices/code.sym} -470 -590 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
