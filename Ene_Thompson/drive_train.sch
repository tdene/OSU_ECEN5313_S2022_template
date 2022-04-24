v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 40 -20 40 10 {
lab=#net1}
N 40 -50 60 -50 {
lab=VDD}
N 60 -80 60 -50 {
lab=VDD}
N 40 -80 60 -80 {
lab=VDD}
N 170 -50 190 -50 {
lab=VDD}
N 190 -80 190 -50 {
lab=VDD}
N 170 -80 190 -80 {
lab=VDD}
N 300 -50 320 -50 {
lab=VDD}
N 320 -80 320 -50 {
lab=VDD}
N 300 -80 320 -80 {
lab=VDD}
N 300 40 320 40 {
lab=GND}
N 320 40 320 70 {
lab=GND}
N 300 70 320 70 {
lab=GND}
N 170 40 190 40 {
lab=GND}
N 190 40 190 70 {
lab=GND}
N 170 70 190 70 {
lab=GND}
N 170 -20 170 10 {
lab=#net2}
N 300 -20 300 10 {
lab=#net3}
N 260 -50 260 40 {
lab=#net2}
N 170 -0 260 0 {
lab=#net2}
N 130 -50 130 40 {
lab=#net1}
N 40 0 130 0 {
lab=#net1}
N 40 70 60 70 {
lab=GND}
N 60 40 60 70 {
lab=GND}
N 40 40 60 40 {
lab=GND}
N 40 70 40 110 {
lab=GND}
N 60 70 320 70 {
lab=GND}
N 0 -50 0 40 {
lab=A}
N -40 -0 -0 0 {
lab=A}
N 40 -120 40 -80 {
lab=VDD}
N 60 -80 320 -80 {
lab=VDD}
N 410 -50 430 -50 {
lab=VDD}
N 430 -80 430 -50 {
lab=VDD}
N 410 -80 430 -80 {
lab=VDD}
N 410 40 430 40 {
lab=GND}
N 430 40 430 70 {
lab=GND}
N 410 70 430 70 {
lab=GND}
N 410 -20 410 10 {
lab=Y}
N 370 -50 370 40 {
lab=#net3}
N 320 -80 410 -80 {
lab=VDD}
N 320 70 410 70 {
lab=GND}
N 300 0 370 0 {
lab=#net3}
N 410 0 490 0 {
lab=Y}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 20 40 0 0 {name=M1
L=0.5
W=1
nf=1
mult=7
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 20 -50 0 0 {name=M2
L=0.5
W=1
nf=1
mult=7
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 150 40 0 0 {name=M3
L=0.5
W=1
nf=1
mult=50
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 150 -50 0 0 {name=M4
L=0.5
W=1
nf=1
mult=50
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 280 40 0 0 {name=M5
L=0.5
W=10
nf=1
mult=35
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 280 -50 0 0 {name=M6
L=0.5
W=10
nf=1
mult=35
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/vdd.sym} 40 -120 0 0 {name=l2 lab=VDDH}
C {devices/gnd.sym} 40 110 0 0 {name=l1 lab=GND}
C {devices/opin.sym} 480 0 0 0 {name=p1 lab=Y}
C {devices/ipin.sym} -30 0 0 0 {name=p2 lab=A}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 390 40 0 0 {name=M7
L=0.5
W=20
nf=1
mult=125
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 390 -50 0 0 {name=M8
L=0.5
W=20
nf=1
mult=125
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
