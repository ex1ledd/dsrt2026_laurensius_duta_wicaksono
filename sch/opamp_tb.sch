v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 5 -432.5 -382.5 -427.5 -377.5 {name=vpos dir=in}
B 5 -332.5 -382.5 -327.5 -377.5 {name=vneg dir=in}
T {vpos} -465 -384 0 0 0.2 0.2 {}
T {vneg} -315 -384 0 0 0.2 0.2 {}
N -430 -320 -430 -300 {lab=#net1}
N -430 -300 -340 -300 {lab=#net1}
N -330 -320 -330 -300 {lab=#net1}
N -340 -300 -330 -300 {lab=#net1}
N -380 -300 -380 -290 {lab=#net1}
N -380 -230 -380 -220 {lab=GND}
N -90 -260 -90 -240 {lab=vss}
N -200 -340 -180 -340 {lab=vneg}
N -200 -280 -180 -280 {lab=vpos}
N 0 -310 20 -310 {lab=out}
N -110 -390 -110 -370 {lab=vdd}
N -90 -390 -90 -360 {lab=ibias}
C {vsource.sym} -430 -350 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {vsource.sym} -330 -350 2 1 {name=V2 value="0 AC 1" savecurrent=false}
C {vsource.sym} -380 -260 0 0 {name=V3 value=1.2 savecurrent=false}
C {gnd.sym} -380 -220 0 0 {name=l1 lab=GND}
C {vsource.sym} -460 -150 0 0 {name=V4 value=1.8 savecurrent=false}
C {vsource.sym} -380 -150 0 0 {name=V5 value=-1.8 savecurrent=false}
C {isource.sym} -300 -150 0 0 {name=I0 value=30u}
C {gnd.sym} -460 -120 0 0 {name=l2 lab=GND}
C {gnd.sym} -380 -120 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -460 -180 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -380 -180 0 0 {name=p2 sig_type=std_logic lab=vss}
C {lab_pin.sym} -300 -180 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -300 -120 0 0 {name=p4 sig_type=std_logic lab=ibias}
C {lab_pin.sym} -430 -380 1 0 {name=p5 sig_type=std_logic lab=vpos}
C {lab_pin.sym} -330 -380 1 0 {name=p6 sig_type=std_logic lab=vneg}
C {code_shown.sym} -120 -70 0 0 {name=s1 only_toplevel=false value="
.option wnflag=0
.option savecurrents

.control
  * Save only the essential nodes to prevent slow loading
  save v(in) v(out)
  
  * AC sweep: 10 points per decade, from 1Hz to 100MHz (10^8)
  ac dec 20 1 1e8.5
  
  * This single command generates the combined dual-grid plot
  plot db(v(out)) (180*cph(v(out))/pi)
.endc
"}
C {code.sym} -250 -80 0 0 {name=Script only_toplevel=true value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1
"}
C {lab_pin.sym} -110 -390 1 0 {name=p7 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -90 -240 3 0 {name=p8 sig_type=std_logic lab=vss}
C {lab_pin.sym} -200 -340 0 0 {name=p9 sig_type=std_logic lab=vneg}
C {lab_pin.sym} -200 -280 0 0 {name=p10 sig_type=std_logic lab=vpos}
C {lab_pin.sym} -90 -390 1 0 {name=p11 sig_type=std_logic lab=ibias}
C {lab_pin.sym} 20 -310 2 0 {name=p12 sig_type=std_logic lab=out}
C {/headless/Desktop/DSRT SEM6/opamp.sym} -160 -310 0 0 {name=x1}
