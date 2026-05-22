v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -40 -260 40 -260 {lab=#net1}
N -80 -320 -80 -290 {lab=vdd}
N -80 -320 80 -320 {lab=vdd}
N 80 -320 80 -290 {lab=vdd}
N -80 -230 -80 -180 {lab=#net1}
N 80 -230 80 -180 {lab=#net2}
N -0 -260 -0 -210 {lab=#net1}
N -80 -210 -0 -210 {lab=#net1}
N -80 -120 -80 -100 {lab=#net3}
N -80 -100 80 -100 {lab=#net3}
N 80 -120 80 -100 {lab=#net3}
N -0 -100 0 -60 {lab=#net3}
N 80 -320 220 -320 {lab=vdd}
N 300 -320 300 -240 {lab=vdd}
N 80 -210 180 -210 {lab=#net2}
N 300 -180 300 -60 {lab=vout}
N -0 0 0 20 {lab=vss}
N 0 20 220 20 {lab=vss}
N 300 0 300 20 {lab=vss}
N -150 -0 -150 20 {lab=vss}
N -150 20 -0 20 {lab=vss}
N -110 -30 -40 -30 {lab=ibias}
N -70 -80 -70 -30 {lab=ibias}
N -70 -80 120 -80 {lab=ibias}
N 120 -80 120 -30 {lab=ibias}
N 120 -30 180 -30 {lab=ibias}
N 210 -120 220 -120 {lab=#net4}
N 180 -210 180 -180 {lab=#net2}
N 180 -210 260 -210 {lab=#net2}
N 220 -320 300 -320 {lab=vdd}
N 220 20 300 20 {lab=vss}
N 180 -30 260 -30 {lab=ibias}
N 180 -120 210 -120 {lab=#net4}
N 280 -120 300 -120 {lab=vout}
N -150 -80 -150 -60 {lab=ibias}
N -150 -70 -90 -70 {lab=ibias}
N -90 -70 -90 -30 {lab=ibias}
N -80 -150 80 -150 {lab=vss}
N -0 -170 0 -150 {lab=vss}
N 100 0 100 20 {lab=vss}
N 100 -340 100 -320 {lab=vdd}
N -160 -220 -140 -220 {lab=vss}
N -0 -30 20 -30 {lab=vss}
N 20 -30 20 -0 {lab=vss}
N 0 0 20 0 {lab=vss}
N 300 -30 320 -30 {lab=vss}
N 320 -30 320 -0 {lab=vss}
N 300 -0 320 0 {lab=vss}
N -170 -30 -150 -30 {lab=vss}
N -170 -30 -170 20 {lab=vss}
N -170 20 -150 20 {lab=vss}
N 300 -210 320 -210 {lab=vdd}
N 320 -240 320 -210 {lab=vdd}
N 300 -240 320 -240 {lab=vdd}
N 80 -260 100 -260 {lab=vdd}
N 100 -290 100 -260 {lab=vdd}
N 80 -290 100 -290 {lab=vdd}
N -100 -260 -80 -260 {lab=vdd}
N -100 -290 -100 -260 {lab=vdd}
N -100 -290 -80 -290 {lab=vdd}
N 300 -120 400 -120 {lab=vout}
C {sky130_fd_pr/nfet_01v8.sym} -130 -30 0 1 {name=M1
W=0.75
L=0.5
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
C {sky130_fd_pr/pfet_01v8.sym} -60 -260 0 1 {name=M2
W=0.75
L=0.5
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
C {sky130_fd_pr/nfet_01v8.sym} -20 -30 0 0 {name=M3
W=0.75
L=0.5
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
C {sky130_fd_pr/pfet_01v8.sym} 60 -260 0 0 {name=M4
W=0.75
L=0.5
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
C {sky130_fd_pr/nfet_01v8.sym} -100 -150 0 0 {name=M5
W=0.75
L=0.5
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
C {sky130_fd_pr/nfet_01v8.sym} 100 -150 0 1 {name=M6
W=0.75
L=0.5
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
C {sky130_fd_pr/pfet_01v8.sym} 280 -210 0 0 {name=M7
W=17
L=0.5
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
C {sky130_fd_pr/nfet_01v8.sym} 280 -30 0 0 {name=M8
W=6.5
L=0.5
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
C {ipin.sym} -150 -80 1 0 {name=p3 lab=ibias}
C {lab_pin.sym} 0 -170 1 0 {name=p4 sig_type=std_logic lab=vss}
C {lab_pin.sym} 100 0 1 0 {name=p5 sig_type=std_logic lab=vss}
C {ipin.sym} 100 -340 1 0 {name=p1 lab=vdd}
C {ipin.sym} -120 -150 3 0 {name=p2 lab=vneg}
C {ipin.sym} 120 -150 3 0 {name=p6 lab=vpos}
C {ipin.sym} -160 -220 0 0 {name=p7 lab=vss}
C {lab_pin.sym} -140 -220 2 0 {name=p8 sig_type=std_logic lab=vss}
C {opin.sym} 400 -120 0 0 {name=p9 lab=vout}
C {sky130_fd_pr/cap_mim_m3_2.sym} 250 -120 3 0 {name=C2 model=cap_mim_m3_2 W=1 L=1 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_generic_l1.sym} 180 -150 0 0 {name=R1
W=1
L=4.098
model=res_generic_l1
mult=1}
