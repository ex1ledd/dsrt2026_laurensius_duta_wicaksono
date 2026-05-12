v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -210 -110 -210 -60 {lab=#net1}
N -210 -110 10 -110 {lab=#net1}
N 10 -110 10 -90 {lab=#net1}
N -50 -60 -30 -60 {lab=In}
N -50 -50 -50 30 {lab=In}
N -50 30 -30 30 {lab=In}
N -50 -60 -50 -50 {lab=In}
N 10 -60 30 -60 {lab=#net1}
N 30 -110 30 -60 {lab=#net1}
N 10 -110 30 -110 {lab=#net1}
N -210 -60 -210 -10 {lab=#net1}
N -120 -30 -120 -10 {lab=In}
N -120 -30 -50 -30 {lab=In}
N -210 50 -210 120 {lab=GND}
N -210 120 10 120 {lab=GND}
N 10 60 10 120 {lab=GND}
N -120 50 -120 120 {lab=GND}
N 10 -30 10 -0 {lab=Out}
N 10 30 30 30 {lab=GND}
N 30 30 30 120 {lab=GND}
N 10 120 30 120 {lab=GND}
N 10 -10 70 -10 {lab=Out}
N -120 120 -120 140 {lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -10 30 0 0 {name=M1
W=10
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -10 -60 0 0 {name=M2
W=21
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {vsource.sym} -120 20 0 0 {name=V1 
*value="pulse(0 1.8 1n 1n 1n 10n 20n)" 
value=0
savecurrent=false}
C {vsource.sym} -210 20 0 0 {name=V2 value=1.8 savecurrent=false}
C {lab_pin.sym} -120 -30 0 0 {name=p1 sig_type=std_logic lab=In}
C {lab_pin.sym} 70 -10 2 0 {name=p2 sig_type=std_logic lab=Out}
C {gnd.sym} -120 140 0 0 {name=l1 lab=GND}
C {code.sym} 30 110 0 0 {name=Script only_toplevel=true value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1
"}
C {code_shown.sym} 170 -110 0 0 {name=spice only_toplevel=false value="
.option wnflag=0
.option savecurrents
.control
save all
dc v1 0 1.8 0.01
plot In Out
op
.endc

*.option wnflag=0
*.option savecurrents
*.control
*  save all
  * Simulasi transient selama 50 nanodetik
*  tran 0.1n 50n
*  plot v(in) v(out)
*.endc
"}
