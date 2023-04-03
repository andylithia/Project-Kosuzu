v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 500 -650 500 -620 {
lab=v1}
N 430 -590 460 -590 {
lab=GND}
N 430 -590 430 -530 {
lab=GND}
N 430 -530 500 -530 {
lab=GND}
N 500 -560 500 -530 {
lab=GND}
N 500 -530 500 -500 {
lab=GND}
N 360 -570 360 -530 {
lab=GND}
N 360 -530 430 -530 {
lab=GND}
N 500 -700 530 -700 {
lab=#net1}
N 530 -750 530 -700 {
lab=#net1}
N 500 -750 530 -750 {
lab=#net1}
N 500 -750 500 -730 {
lab=#net1}
N 360 -750 500 -750 {
lab=#net1}
N 360 -750 360 -630 {
lab=#net1}
N 430 -700 460 -700 {
lab=v1}
N 430 -700 430 -650 {
lab=v1}
N 430 -650 500 -650 {
lab=v1}
N 500 -670 500 -650 {
lab=v1}
C {devices/code_shown.sym} 710 -790 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
"}
C {devices/code_shown.sym} 710 -700 0 0 {name=s1 only_toplevel=false value=".save all
.options savecurrents
.dc TEMP -20 120 20
.control
run
display
plot v1
plot i(v1)
.endc
"}
C {symbols/pnp_10p00x10p00.sym} 480 -590 0 0 {name=Q1
model=pnp_05p00x05p00
spiceprefix=X
m=1}
C {devices/gnd.sym} 500 -500 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 360 -600 0 0 {name=V1 value=1.8}
C {symbols/pfet_03v3.sym} 480 -700 0 0 {name=M1
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/lab_wire.sym} 470 -650 0 0 {name=p1 sig_type=std_logic lab=v1
}
