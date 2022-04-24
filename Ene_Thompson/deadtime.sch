v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 300 -30 390 -30 {
lab=#net1}
N 620 -30 710 -30 {
lab=highside}
N 470 -30 540 -30 {
lab=#net2}
N 300 110 390 110 {
lab=#net3}
N 620 110 710 110 {
lab=#net4}
N 470 110 540 110 {
lab=lowside}
N 150 -30 220 -30 {
lab=#net5}
N 150 110 220 110 {
lab=#net6}
N 30 -10 30 30 {
lab=#net7}
N 30 30 790 80 {
lab=#net7}
N 790 80 790 110 {
lab=#net7}
N 790 -30 790 10 {
lab=#net8}
N 30 60 790 10 {
lab=#net8}
N 30 60 30 90 {
lab=#net8}
N -180 -50 30 -50 {
lab=pwm}
N -110 -50 -110 10 {
lab=pwm}
N -30 10 -30 130 {
lab=#net9}
N -30 130 30 130 {
lab=#net9}
N 660 -120 660 -30 {
lab=highside}
N 660 -120 830 -120 {
lab=highside}
N 510 170 830 170 {
lab=lowside}
N 510 110 510 170 {
lab=lowside}
C {import/angmar1/repos/openpdk/share/pdk/sky130A/libs.tech/xschem/sky130_stdcells/nand2_1.sym} 90 -30 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {import/angmar1/repos/openpdk/share/pdk/sky130A/libs.tech/xschem/sky130_stdcells/nand2_1.sym} 90 110 0 0 {name=x2 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {import/angmar1/repos/openpdk/share/pdk/sky130A/libs.tech/xschem/sky130_stdcells/inv_1.sym} 260 -30 0 0 {name=x3 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {import/angmar1/repos/openpdk/share/pdk/sky130A/libs.tech/xschem/sky130_stdcells/inv_1.sym} 430 -30 0 0 {name=x4 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {import/angmar1/repos/openpdk/share/pdk/sky130A/libs.tech/xschem/sky130_stdcells/inv_1.sym} 580 -30 0 0 {name=x5 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {import/angmar1/repos/openpdk/share/pdk/sky130A/libs.tech/xschem/sky130_stdcells/inv_1.sym} 750 -30 0 0 {name=x6 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {import/angmar1/repos/openpdk/share/pdk/sky130A/libs.tech/xschem/sky130_stdcells/inv_1.sym} 260 110 0 0 {name=x7 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {import/angmar1/repos/openpdk/share/pdk/sky130A/libs.tech/xschem/sky130_stdcells/inv_1.sym} 430 110 0 0 {name=x8 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {import/angmar1/repos/openpdk/share/pdk/sky130A/libs.tech/xschem/sky130_stdcells/inv_1.sym} 580 110 0 0 {name=x9 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {import/angmar1/repos/openpdk/share/pdk/sky130A/libs.tech/xschem/sky130_stdcells/inv_1.sym} 750 110 0 0 {name=x10 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {import/angmar1/programs/xschem/share/xschem/xschem_library/devices/ipin.sym} -170 -50 0 0 {name=p1 lab=pwm}
C {import/angmar1/repos/openpdk/share/pdk/sky130A/libs.tech/xschem/sky130_stdcells/inv_1.sym} -70 10 0 0 {name=x11 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {import/angmar1/programs/xschem/share/xschem/xschem_library/devices/opin.sym} 830 -120 0 0 {name=p2 lab=highside}
C {import/angmar1/programs/xschem/share/xschem/xschem_library/devices/opin.sym} 830 170 0 0 {name=p3 lab=lowside}
