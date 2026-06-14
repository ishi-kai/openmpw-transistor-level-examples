v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -90 40 980 40 {lab=VCTRL}
N 980 -30 980 40 {lab=VCTRL}
N 840 -30 840 40 {lab=VCTRL}
N 680 -30 680 40 {lab=VCTRL}
N 540 -30 540 40 {lab=VCTRL}
N 380 -30 380 40 {lab=VCTRL}
N 200 -30 200 40 {lab=VCTRL}
N -0 -30 -0 40 {lab=VCTRL}
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
C {sky130_fd_pr/cap_var_hvt.sym} 240 -50 0 0 {name=C0 model=cap_var_hvt W=5 L=5 VM=1 spiceprefix=X}
C {sky130_fd_pr/cap_var_hvt.sym} 420 -50 0 0 {name=C1 model=cap_var_hvt W=5 L=5 VM=2 spiceprefix=X}
C {sky130_fd_pr/cap_var_hvt.sym} 580 -50 0 0 {name=C2 model=cap_var_hvt W=5 L=5 VM=4 spiceprefix=X}
C {sky130_fd_pr/cap_var_hvt.sym} 720 -50 0 0 {name=C3 model=cap_var_hvt W=5 L=5 VM=8 spiceprefix=X}
C {sky130_fd_pr/cap_var_hvt.sym} 880 -50 0 0 {name=C4 model=cap_var_hvt W=5 L=5 VM=16 spiceprefix=X}
C {sky130_fd_pr/cap_var_hvt.sym} 1020 -50 0 0 {name=C5 model=cap_var_hvt W=5 L=5 VM=32 spiceprefix=X}
C {sky130_fd_pr/cap_var_hvt.sym} 40 -50 0 0 {name=Cdum model=cap_var_hvt W=5 L=5 VM=1 spiceprefix=X}
C {devices/ipin.sym} -90 40 0 0 {name=p3 lab=VCTRL}
