v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -100 -20 40 -20 {lab=common_bottom}
N 40 -20 240 -20 {lab=common_bottom}
N 240 -20 420 -20 {lab=common_bottom}
N 420 -20 580 -20 {lab=common_bottom}
N 580 -20 720 -20 {lab=common_bottom}
N 720 -20 880 -20 {lab=common_bottom}
N 880 -20 1020 -20 {lab=common_bottom}
N 40 -140 40 -80 {lab=top_c_dummy}
N 240 -140 240 -80 {lab=top_c0}
N 420 -140 420 -80 {lab=top_c1}
N 580 -140 580 -80 {lab=top_c2}
N 720 -140 720 -80 {lab=top_c3}
N 880 -140 880 -80 {lab=top_c4}
N 1020 -140 1020 -80 {lab=top_c5}
C {devices/iopin.sym} -100 -20 2 0 {name=p1 lab=common_bottom}
C {devices/iopin.sym} 420 -140 0 0 {name=p6 lab=top_c1}
C {devices/iopin.sym} 240 -140 0 0 {name=p7 lab=top_c0}
C {devices/iopin.sym} 40 -140 0 0 {name=p8 lab=top_c_dummy}
C {devices/iopin.sym} 580 -140 0 0 {name=p10 lab=top_c2}
C {devices/iopin.sym} 880 -140 0 0 {name=p14 lab=top_c4}
C {devices/iopin.sym} 1020 -140 0 0 {name=p2 lab=top_c5}
C {devices/iopin.sym} 720 -140 0 0 {name=p12 lab=top_c3}
C {devices/capa.sym} 40 -50 0 0 {name=Cdum
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 240 -50 0 0 {name=C0
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 420 -50 0 0 {name=C1
m=1
value=200f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 580 -50 0 0 {name=C2
m=1
value=400f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 720 -50 0 0 {name=C3
m=1
value=800f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 880 -50 0 0 {name=C4
m=1
value=1600f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1020 -50 0 0 {name=C5
m=1
value=3200f
footprint=1206
device="ceramic capacitor"}
