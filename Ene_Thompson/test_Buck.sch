v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 90 80 90 100 {
lab=GND}
N 90 -20 90 20 {
lab=#net1}
N 70 -60 90 -60 {
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

 .control
        run
        meas tran idd_ave INTEG i(v2) from=190u to=191u
        meas tran idh_ave INTEG i(v1) from=190u to=191u
        meas tran ido_ave INTEG i(vouti) from=190u to=191u
        meas tran vout_ave INTEG v(vout) from=190u to=191u
        meas tran vout_max MAX   v(vout) from=190u to=191u
        meas tran vdd_ave INTEG v(vdd)   from=190u to=191u
        let idd_ave = idd_ave*1Meg
        let idh_ave = idh_ave*1Meg
        let ido_ave = ido_ave*1Meg
        let vdd_ave = vdd_ave*1Meg
        let vout_ave = vout_ave*1Meg
        let power_in = (idd_ave-idh_ave)*vdd_ave
        let power_out = (ido_ave)*vout_ave
        let nu = power_out/power_in*100
        print power_in
        print power_out
        print nu
        print vout_ave
        print vout_max-vout_ave
 .endc
"}
C {devices/vsource.sym} -260 -120 0 0 {name=V1 value=3.6}
C {devices/gnd.sym} 90 100 0 0 {name=l4 lab=GND}
C {devices/res.sym} 90 50 0 0 {name=R1
value=2.25
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -80 -20 0 1 {name=p1 lab=Vout}
C {devices/ipin.sym} 80 -60 0 0 {name=p2 lab=Vout}
C {devices/vdd.sym} -150 -150 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -150 -90 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} -150 -120 0 0 {name=V2 value=3.60}
C {devices/ammeter.sym} 90 -30 0 0 {name=Vouti}
