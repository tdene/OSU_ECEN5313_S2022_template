v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 0 110 0 140 {
lab=GND}
N 0 -160 0 -120 {
lab=#net1}
N 150 110 150 120 {
lab=#net2}
N 0 -60 0 -30 {
lab=vl}
N -0 0 10 0 {
lab=GND}
N 10 0 10 30 {
lab=GND}
N 10 -120 10 -90 {
lab=VDDH}
N -0 -90 10 -90 {
lab=VDDH}
N 0 120 40 120 {
lab=GND}
N 100 120 150 120 {
lab=#net2}
N 150 -40 150 -10 {
lab=Vout}
N 140 -40 150 -40 {
lab=Vout}
N 0 -40 10 -40 {
lab=vl}
N 70 -40 80 -40 {
lab=#net3}
N -70 120 0 120 {
lab=GND}
N 150 -40 170 -40 {
lab=Vout}
N -0 -170 0 -160 {
lab=#net1}
N 0 -250 -0 -210 {
lab=VDDH}
N 0 -250 -0 -230 {
lab=VDDH}
N -0 -230 10 -230 {
lab=VDDH}
N 10 -230 10 -120 {
lab=VDDH}
N 150 50 150 110 {
lab=#net2}
N -540 60 -540 120 {
lab=GND}
N 10 30 10 130 {
lab=GND}
N 0 130 10 130 {
lab=GND}
N 0 30 0 50 {
lab=#net4}
N -210 120 -70 120 {
lab=GND}
N -210 0 -200 0 {
lab=nswitch}
N -50 -0 -40 0 {
lab=#net5}
N -300 -90 -200 -90 {
lab=pswitch}
N -50 -90 -40 -90 {
lab=#net6}
N -320 -90 -320 -50 {
lab=pswitch}
N -320 -90 -300 -90 {
lab=pswitch}
N -320 -30 -320 0 {
lab=nswitch}
N -320 0 -210 0 {
lab=nswitch}
N -540 -50 -540 -30 {
lab=#net7}
N -540 -50 -500 -50 {
lab=#net7}
N -540 30 -540 60 {
lab=GND}
N -540 120 -210 120 {
lab=GND}
C {devices/gnd.sym} 0 140 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 0 -250 0 0 {name=l2 lab=VDDH}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -20 -90 0 0 {name=M1
L=0.5
W=20
nf=1
mult=1025
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -20 0 0 0 {name=x3
L=0.5
W=20
nf=1
mult=975
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
C {devices/lab_pin.sym} 0 -50 0 0 {name=l3 sig_type=std_logic lab=vl}
C {devices/res.sym} 40 -40 3 0 {name=R1
value=1.5m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 70 120 3 0 {name=R2
value=10m
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -210 0 0 0 {name=l4 sig_type=std_logic lab=nswitch}
C {devices/lab_pin.sym} -300 -90 0 0 {name=l5 sig_type=std_logic lab=pswitch}
C {devices/ammeter.sym} 0 -180 0 0 {name=Vm1}
C {devices/ammeter.sym} 0 80 0 0 {name=Vm2}
C {drive_train.sym} -200 -90 0 0 {name=x1}
C {drive_train.sym} -200 0 0 0 {name=x2}
C {devices/vsource.sym} -540 0 0 0 {name=V2 value="PULSE(0 3.6 0 0.01u 0.01u 0.5u 1u)"}
C {deadtime.sym} -470 -40 0 0 {name=x4}
C {devices/lab_pin.sym} -520 -50 1 0 {name=l6 sig_type=std_logic lab=pwm}
