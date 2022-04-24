v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 300 -30 390 -30 {
lab=high2}
N 620 -30 710 -30 {
lab=highside}
N 470 -30 540 -30 {
lab=high3}
N 300 110 390 110 {
lab=low2}
N 620 110 710 110 {
lab=low4}
N 470 110 540 110 {
lab=lowside}
N 150 -30 220 -30 {
lab=high1}
N 30 -10 30 30 {
lab=low_fb}
N 30 30 790 80 {
lab=low_fb}
N 790 80 790 110 {
lab=low_fb}
N 790 -30 790 10 {
lab=high_fb}
N 30 60 790 10 {
lab=high_fb}
N 30 60 30 90 {
lab=high_fb}
N -180 -50 30 -50 {
lab=pwm}
N -110 -50 -110 10 {
lab=pwm}
N -30 10 -30 130 {
lab=pwm_n}
N 660 -120 660 -30 {
lab=highside}
N 660 -120 830 -120 {
lab=highside}
N 510 170 830 170 {
lab=lowside}
N 510 110 510 170 {
lab=lowside}
N -30 130 30 130 {
lab=pwm_n}
N 150 110 220 110 {
lab=low1}
C {nand2.sym} 90 -30 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {nand2.sym} 90 110 0 0 {name=x2 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {inv.sym} 260 -30 0 0 {name=x3 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {inv.sym} 430 -30 0 0 {name=x4 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {inv.sym} 580 -30 0 0 {name=x5 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {inv.sym} 750 -30 0 0 {name=x6 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {inv.sym} 260 110 0 0 {name=x7 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {inv.sym} 430 110 0 0 {name=x8 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {inv.sym} 580 110 0 0 {name=x9 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {inv.sym} 750 110 0 0 {name=x10 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} -170 -50 0 0 {name=p1 lab=pwm}
C {inv.sym} -70 10 0 0 {name=x11 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/opin.sym} 830 -120 0 0 {name=p2 lab=highside}
C {devices/opin.sym} 830 170 0 0 {name=p3 lab=lowside}
C {devices/lab_pin.sym} -30 130 0 0 {name=l2 sig_type=std_logic lab=pwm_n}
C {devices/lab_pin.sym} 190 110 1 0 {name=l3 sig_type=std_logic lab=low1}
C {devices/lab_pin.sym} 350 110 1 0 {name=l4 sig_type=std_logic lab=low2}
C {devices/lab_pin.sym} 660 110 3 0 {name=l5 sig_type=std_logic lab=low4}
C {devices/lab_pin.sym} 180 -30 1 0 {name=l6 sig_type=std_logic lab=high1}
C {devices/lab_pin.sym} 350 -30 1 0 {name=l7 sig_type=std_logic lab=high2}
C {devices/lab_pin.sym} 500 -30 1 0 {name=l8 sig_type=std_logic lab=high3}
C {devices/lab_pin.sym} 790 10 2 0 {name=l9 sig_type=std_logic lab=high_fb}
C {devices/lab_pin.sym} 790 80 2 0 {name=l10 sig_type=std_logic lab=low_fb}
