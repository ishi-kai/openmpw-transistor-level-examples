v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 -740 -1280 {}
N 880 -1020 880 -900 {lab=#net1}
N 880 -1050 900 -1050 {lab=VDD}
N 880 -1050 900 -1050 {lab=VDD}
N 900 -1080 900 -1050 {lab=VDD}
N 880 -1200 880 -1080 {lab=VDD}
N 900 -1200 900 -1080 {lab=VDD}
N 880 -1200 900 -1200 {lab=VDD}
N 800 -1050 840 -1050 {lab=BPO}
N 900 -1200 920 -1200 {lab=VDD}
N 800 -1200 880 -1200 {lab=VDD}
N 740 -1200 800 -1200 {lab=VDD}
C {MP.sym} 840 -1050 0 0 {name=MINPP1 model=PMOS w=6u l=4u m=8 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0 spiceprefix=X}
C {devices/iopin.sym} 740 -1200 2 0 {name=p22 lab=VDD}
C {devices/ipin.sym} 800 -1050 0 0 {name=p9 lab=BPO}
C {devices/iopin.sym} 880 -900 2 1 {name=p2 lab=VSS}
