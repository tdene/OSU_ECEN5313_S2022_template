v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 60 -10 60 20 {
lab=Y}
N 60 20 110 20 {
lab=Y}
N 110 20 110 40 {
lab=Y}
N 160 -10 160 20 {
lab=Y}
N 110 20 160 20 {
lab=Y}
N 110 100 110 140 {
lab=#net1}
N 60 -90 60 -70 {
lab=VDDH}
N 60 -90 160 -90 {
lab=VDDH}
N 160 -90 160 -70 {
lab=VDDH}
N 200 -40 240 -40 {
lab=B}
N -20 -40 20 -40 {
lab=A}
N 40 70 70 70 {
lab=A}
N 60 -40 160 -40 {
lab=VDDH}
N 110 -90 110 -40 {
lab=VDDH}
N 110 70 140 70 {
lab=GND}
N 140 70 140 170 {
lab=GND}
N 110 170 140 170 {
lab=GND}
N 110 200 110 220 {
lab=GND}
N 140 170 140 210 {
lab=GND}
N 110 210 140 210 {
lab=GND}
N 40 170 70 170 {
lab=B}
N 160 20 240 20 {
lab=Y}
N 0 -40 0 70 {
lab=A}
N 0 70 40 70 {
lab=A}
N 40 170 40 250 {
lab=B}
N 40 250 280 250 {
lab=B}
N 280 -40 280 250 {
lab=B}
N 240 -40 280 -40 {
lab=B}
N -20 170 40 170 {
lab=B}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 90 170 0 0 {name=M1
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 40 -40 0 0 {name=M2
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 180 -40 0 1 {name=M3
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 90 70 0 0 {name=M4
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/vdd.sym} 110 -90 0 0 {name=l1 lab=VDDH}
C {devices/gnd.sym} 110 220 0 0 {name=l2 lab=GND}
C {devices/ipin.sym} -10 -40 0 0 {name=p1 lab=A}
C {devices/opin.sym} 230 20 0 0 {name=p5 lab=Y}
C {devices/ipin.sym} -10 170 0 0 {name=p2 lab=B}
