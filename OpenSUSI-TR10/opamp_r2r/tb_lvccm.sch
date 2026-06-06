v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 -740 -1280 {}
N 430 -680 430 -600 {lab=BNO}
N 430 -540 430 -420 {lab=BNO}
N 430 -600 430 -540 {lab=BNO}
N 290 -680 290 -600 {lab=BNI}
N 410 -390 430 -390 {lab=GND}
N 430 -360 430 -240 {lab=VNO_B0}
N 430 -180 430 -60 {lab=GND}
N 290 -60 430 -60 {lab=GND}
N 430 -60 570 -60 {lab=GND}
N 410 -210 430 -210 {lab=GND}
N 410 -210 410 -70 {lab=GND}
N 410 -70 410 -60 {lab=GND}
N 410 -390 410 -210 {lab=GND}
N 470 -210 470 -80 {lab=BNO}
N 510 -460 510 -80 {lab=BNO}
N 270 -60 290 -60 {lab=GND}
N 470 -390 470 -260 {lab=BNI}
N 370 -640 370 -260 {lab=BNI}
N 290 -640 370 -640 {lab=BNI}
N 430 -640 510 -640 {lab=BNO}
N 510 -640 510 -460 {lab=BNO}
N 190 -60 270 -60 {lab=GND}
N 130 -60 190 -60 {lab=GND}
N 90 -60 130 -60 {lab=GND}
N 290 -600 290 -420 {lab=BNI}
N 270 -390 290 -390 {lab=GND}
N 270 -390 270 -60 {lab=GND}
N 290 -360 290 -60 {lab=GND}
N 330 -390 330 -260 {lab=BNI}
N 430 -850 430 -740 {lab=VDD}
N 90 -850 430 -850 {lab=VDD}
N 290 -850 290 -740 {lab=VDD}
N 780 -360 780 -240 {lab=VNO_CCM}
N 780 -180 780 -60 {lab=GND}
N 800 -390 800 -60 {lab=GND}
N 780 -390 800 -390 {lab=GND}
N 780 -210 800 -210 {lab=GND}
N 640 -390 740 -390 {lab=BNI}
N 640 -210 740 -210 {lab=BNO}
N 660 -60 800 -60 {lab=GND}
N 780 -480 780 -420 {lab=#net1}
N 780 -480 880 -480 {lab=#net1}
N 880 -480 880 -400 {lab=#net1}
N 880 -400 880 -380 {lab=#net1}
N 880 -320 880 -60 {lab=GND}
N 800 -60 880 -60 {lab=GND}
N 1200 -370 1200 -250 {lab=VNO_CM}
N 1200 -190 1200 -70 {lab=GND}
N 1200 -220 1220 -220 {lab=GND}
N 1060 -220 1160 -220 {lab=BNO}
N 1080 -70 1220 -70 {lab=GND}
N 1200 -490 1200 -430 {lab=VNO_CM}
N 1200 -490 1300 -490 {lab=VNO_CM}
N 1300 -490 1300 -410 {lab=VNO_CM}
N 1300 -410 1300 -390 {lab=VNO_CM}
N 1300 -330 1300 -70 {lab=GND}
N 1220 -70 1300 -70 {lab=GND}
N 140 -850 140 -670 {lab=VDD}
N 140 -610 140 -60 {lab=GND}
N 1220 -220 1220 -70 {lab=GND}
N 1200 -420 1200 -370 {lab=VNO_CM}
N 1200 -430 1200 -420 {lab=VNO_CM}
N 330 -260 560 -260 {lab=BNI}
N 470 -80 560 -80 {lab=BNO}
C {MN.sym} 470 -390 0 1 {name=MB1N2 model=NMOS w=12u l=8u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MN.sym} 470 -210 0 1 {name=MB1N1 model=NMOS w=12u l=8u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MN.sym} 330 -390 0 1 {name=MB1 model=NMOS w=3u l=8u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {devices/isource.sym} 290 -710 0 0 {name=I0 value=50u}
C {devices/isource.sym} 430 -710 0 0 {name=I1 value=50u}
C {devices/iopin.sym} 90 -850 2 0 {name=p1 lab=VDD}
C {MN.sym} 740 -390 0 0 {name=MB2 model=NMOS w=12u l=8u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {MN.sym} 740 -210 0 0 {name=MB3 model=NMOS w=12u l=8u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {devices/lab_wire.sym} 560 -260 0 1 {name=p8 sig_type=std_logic lab=BNI}
C {devices/lab_wire.sym} 560 -80 0 1 {name=p9 sig_type=std_logic lab=BNO}
C {devices/lab_wire.sym} 660 -390 0 0 {name=p3 sig_type=std_logic lab=BNI}
C {devices/lab_wire.sym} 660 -210 0 0 {name=p4 sig_type=std_logic lab=BNO}
C {devices/vsource.sym} 880 -350 0 0 {name=V_CCM value=5 savecurrent=false}
C {devices/gnd.sym} 660 -60 0 0 {name=l4 lab=GND}
C {MN.sym} 1160 -220 0 0 {name=MB5 model=NMOS w=12u l=8u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {devices/lab_wire.sym} 1080 -220 0 0 {name=p5 sig_type=std_logic lab=BNO}
C {devices/vsource.sym} 1300 -360 0 0 {name=V_CM value=5 savecurrent=false}
C {devices/gnd.sym} 1080 -70 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 780 -270 0 0 {name=p6 sig_type=std_logic lab=VNO_CCM}
C {devices/lab_wire.sym} 1200 -280 0 0 {name=p7 sig_type=std_logic lab=VNO_CM}
C {devices/gnd.sym} 90 -60 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} 580 -810 0 0 {name=ngspice
only_toplevel=false
format="tcleval( @value )"
value="
.save all
.option savecurrent
.control
dc V_CM 1 5 0.1 
plot v_cm#branch*-1
dc V_CCM 1 5 0.1
plot v_ccm#branch*-1
plot VNO_CCM
.endc
"}
C {devices/vsource.sym} 140 -640 0 0 {name=V3 value=5 savecurrent=false}
C {devices/lab_wire.sym} 430 -300 0 0 {name=p2 sig_type=std_logic lab=VNO_B0}
C {devices/code.sym} 570 -990 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
