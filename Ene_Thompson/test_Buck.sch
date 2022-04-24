v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 90 80 90 100 {
lab=GND}
N 70 -20 90 -20 {
lab=Vout}
N 90 -20 90 20 {
lab=Vout}
C {Buck.sym} -230 -20 0 0 {name=x1}
C {devices/vdd.sym} -260 -150 0 0 {name=l1 lab=VDDH}
C {devices/gnd.sym} -260 -90 0 0 {name=l2 lab=GND}
C {devices/code.sym} -100 60 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SKYWATER_MODELS/sky130.lib.spice tt"}
C {devices/code_shown.sym} -80 220 0 0 {name="Parameter Sweep"
only_toplevel=true
value="
.tran 1u 200u
.save all
"}
C {devices/vsource.sym} -260 -120 0 0 {name=V1 value=3.6}
C {devices/gnd.sym} 90 100 0 0 {name=l4 lab=GND}
C {devices/res.sym} 90 50 0 0 {name=R1
value=4.5
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -80 -20 0 1 {name=p1 lab=Vout}
C {devices/ipin.sym} 80 -20 0 0 {name=p2 lab=Vout}
C {devices/vdd.sym} -150 -150 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -150 -90 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} -150 -120 0 0 {name=V2 value=3.6}
C {devices/code.sym} -250 60 0 0 {name=GROSS_CELLS
only_toplevel=true
format="tcleval( @value )"
value="
.subckt sky130_fd_sc_hd__nand2_1 A B VGND VNB VPB VPWR Y
X0 Y A VPWR VPB sky130_fd_pr__pfet_g5v0d10v5 w=1 l=0.5
X1 VPWR B Y VPB sky130_fd_pr__pfet_g5v0d10v5 w=1 l=0.5
X2 VGND B a_113_47# VNB sky130_fd_pr__nfet_g5v0d10v5 w=1 l=0.5
X3 a_113_47# A Y VNB sky130_fd_pr__nfet_g5v0d10v5 w=1 l=0.5
.ends

.subckt sky130_fd_sc_hd__inv_1 A VGND VNB VPB VPWR Y
X0 VGND A Y VNB sky130_fd_pr__nfet_g5v0d10v5 w=1 l=0.5
X1 VPWR A Y VPB sky130_fd_pr__pfet_g5v0d10v5 w=1 l=0.5
.ends
"}
