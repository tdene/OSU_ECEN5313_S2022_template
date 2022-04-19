v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {This must be included in
your top level design to be
able to run Ngspice simulations} 90 -530 0 0 0.3 0.3 {}
T {This annotate symbol
is used with the spice
probes found in devices.
ctlr + left click to annotate
the probes in the schematic.
MUST have run Ngspice sim in
batch mode before hand, and have
a .raw file in you PWD.} 110 -200 0 0 0.3 0.3 {}
C {devices/code_shown.sym} 440 -250 0 0 {name="DC Parameter Sweep"
only_toplevel=true
place=end
value="
.dc V1 0 5 0.1
.save all
"}
C {devices/code_shown.sym} 890 -350 0 0 {name="AC Simulation to Plot Frequency Response"
only_toplevel=true
place=end
value="
.ac dec 20 1 1e6
.save all

.control
run
plot db(v(Vout)) 180*cph(v(Vout))/pi
.endc
"}
C {devices/code_shown.sym} 630 -250 0 0 {name="DC Sweep of 2 Parameters"
only_toplevel=true
place=end
value="
.dc V1 0 5 0.1 R1 1k 10k 100
.save all
"}
C {devices/code_shown.sym} 440 -350 0 0 {name="Transient simulation"
only_toplevel=true
place=end
value="
.tran 0.1n 10n
.save all
"}
C {devices/code_shown.sym} 640 -350 0 0 {name="Operation Point Analysis"
only_toplevel=true
place=end
value="
.op
.save all
"}
C {devices/code.sym} 140 -440 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt"
}
C {devices/launcher.sym} 190 -230 0 0 {name=h1
descr=Annotate 
tclcommand="ngspice::annotate"}
C {devices/title-2.sym} 0 0 0 0 {name=l1 author="Ryan Ridley" rev=1.0}
