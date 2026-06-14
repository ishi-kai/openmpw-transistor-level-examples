v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 40 0 40 60 {
lab=top_c_dummy}
N 490 -80 710 -80 {
lab=common_bottom}
N 420 -20 420 60 {
lab=top_c1}
N 940 -80 1160 -80 {
lab=common_bottom}
N 580 -20 580 60 {
lab=top_c2}
N 1370 -80 1580 -80 {
lab=common_bottom}
N 1160 -80 1370 -80 {
lab=common_bottom}
N 720 -20 720 60 {
lab=top_c3}
N 240 0 240 60 {
lab=top_c0}
N 880 -20 880 60 {
lab=top_c4}
N -200 -80 240 -80 {
lab=common_bottom}
N 710 -80 940 -80 {
lab=common_bottom}
N 240 -80 490 -80 {
lab=common_bottom}
N 240 -20 240 0 {
lab=top_c0}
N 40 -20 40 0 {
lab=top_c_dummy}
N 1020 -20 1020 60 {lab=top_c5}
C {devices/iopin.sym} -200 -80 2 0 {name=p1 lab=common_bottom}
C {devices/iopin.sym} 420 60 0 0 {name=p6 lab=top_c1}
C {devices/iopin.sym} 240 60 0 0 {name=p7 lab=top_c0}
C {devices/iopin.sym} 40 60 0 0 {name=p8 lab=top_c_dummy}
C {devices/iopin.sym} 580 60 0 0 {name=p10 lab=top_c2}
C {devices/iopin.sym} 880 60 0 0 {name=p14 lab=top_c4}
C {devices/iopin.sym} 1020 60 0 0 {name=p2 lab=top_c5}
C {devices/iopin.sym} 720 60 0 0 {name=p12 lab=top_c3}
C {sky130_fd_pr/cap_mim_m3_1.sym} 240 -50 0 0 {name=C0 model=cap_mim_m3_1 W=7.1 L=7.1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 420 -50 0 0 {name=C1 model=cap_mim_m3_1 W=7.1 L=7.1 MF=2 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 580 -50 0 0 {name=C2 model=cap_mim_m3_1 W=7.1 L=7.1 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 720 -50 0 0 {name=C3 model=cap_mim_m3_1 W=7.1 L=7.1 MF=8 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 880 -50 0 0 {name=C4 model=cap_mim_m3_1 W=7.1 L=7.1 MF=16 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1020 -50 0 0 {name=C5 model=cap_mim_m3_1 W=7.1 L=7.1 MF=32 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 40 -50 0 0 {name=Cdum model=cap_mim_m3_1 W=7.1 L=7.1 MF=1 spiceprefix=X}
