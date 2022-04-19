v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {devices/code_shown.sym} 0 30 0 0 {name="DC Parameter Sweep"
only_toplevel=true
place=end
value="
.dc V1 0 5 0.1
.save all
"}
C {devices/code_shown.sym} 420 -80 0 0 {name="AC simulation to plot frequency response"
only_toplevel=true
place=end
value="
.ac dec 20 1 1e6
.save all

.control
run
plot db(v(Vldo_out)) 180*cph(v(Vldo_out))/pi
.endc
"}
C {devices/code_shown.sym} 160 30 0 0 {name="DC Sweep of 2 Parameters"
only_toplevel=true
place=end
value="
.dc V1 0 5 0.1 R1 1k 10k 100
.save all
"}
C {devices/code_shown.sym} 0 -70 0 0 {name="Transient simulation"
only_toplevel=true
place=end
value="
.tran 0.1n 10n
.save all
"}
C {devices/code_shown.sym} 170 -70 0 0 {name="Operation Point Analysis"
only_toplevel=true
place=end
value="
.op
.save all
"}
C {devices/code.sym} -160 -160 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt"
}
C {devices/launcher.sym} -130 -20 0 0 {name=h1
descr=Annotate 
tclcommand="ngspice::annotate"}
