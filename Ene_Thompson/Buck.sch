v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 0 50 -0 80 {
lab=GND}
N 0 -160 0 -120 {
lab=VDD}
N 150 50 150 60 {
lab=#net1}
N -160 -90 -40 -90 {
lab=pswitch}
N -0 30 -0 50 {
lab=GND}
N 0 -60 0 -30 {
lab=vl}
N -0 0 10 0 {
lab=GND}
N 10 0 10 30 {
lab=GND}
N -0 30 10 30 {
lab=GND}
N 10 -120 10 -90 {
lab=VDD}
N 0 -120 10 -120 {
lab=VDD}
N -0 -90 10 -90 {
lab=VDD}
N 0 60 40 60 {
lab=GND}
N 100 60 150 60 {
lab=#net1}
N 150 -40 150 -10 {
lab=Vout}
N 140 -40 150 -40 {
lab=Vout}
N 0 -40 10 -40 {
lab=vl}
N 70 -40 80 -40 {
lab=#net2}
N -70 60 0 60 {
lab=GND}
N -160 -30 -160 60 {
lab=GND}
N -160 60 -70 60 {
lab=GND}
N -70 0 -40 0 {
lab=nswitch}
N 150 -40 170 -40 {
lab=Vout}
C {devices/gnd.sym} 0 80 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 0 -160 0 0 {name=l2 lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -20 -90 0 0 {name=M1
L=0.5
W=20
nf=1
mult=1000
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/opin.sym} 170 -40 0 0 {name=p1 lab=Vout}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -20 0 0 0 {name=M2
L=0.5
W=20
nf=1
mult=1000
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/ind.sym} 110 -40 3 0 {name=L1
m=1
value=4.7u
footprint=1206
device=inductor}
C {devices/capa.sym} 150 20 0 0 {name=C1
m=1
value=1u
ic=1.8V
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} -160 -60 0 1 {name=V1 value="PULSE(0 5 0 0.01u 0.01u 0.5u 1u)"}
C {devices/lab_pin.sym} 0 -50 0 0 {name=l3 sig_type=std_logic lab=vl}
C {devices/res.sym} 40 -40 3 0 {name=R1
value=1.5m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 70 60 3 0 {name=R2
value=10m
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -70 30 0 1 {name=V2 value="PULSE(0 5 50n 0.01u 0.01u 0.55u 1u)"}
C {devices/lab_pin.sym} -70 0 0 0 {name=l4 sig_type=std_logic lab=nswitch}
C {devices/lab_pin.sym} -160 -90 0 0 {name=l5 sig_type=std_logic lab=pswitch}
