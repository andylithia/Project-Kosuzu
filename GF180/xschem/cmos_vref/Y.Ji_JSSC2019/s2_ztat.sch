v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 500 -650 500 -620 {
lab=v3}
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
lab=v2}
N 530 -750 530 -700 {
lab=v2}
N 500 -750 530 -750 {
lab=v2}
N 500 -750 500 -730 {
lab=v2}
N 430 -700 460 -700 {
lab=v3}
N 430 -700 430 -650 {
lab=v3}
N 430 -650 500 -650 {
lab=v3}
N 500 -670 500 -650 {
lab=v3}
N 500 -830 530 -830 {
lab=v1}
N 530 -880 530 -830 {
lab=v1}
N 500 -880 530 -880 {
lab=v1}
N 500 -880 500 -860 {
lab=v1}
N 430 -830 460 -830 {
lab=v2}
N 430 -830 430 -780 {
lab=v2}
N 430 -780 500 -780 {
lab=v2}
N 500 -800 500 -780 {
lab=v2}
N 500 -780 500 -750 {
lab=v2}
N 500 -950 530 -950 {
lab=v0}
N 530 -1000 530 -950 {
lab=v0}
N 500 -1000 530 -1000 {
lab=v0}
N 500 -1000 500 -980 {
lab=v0}
N 430 -950 460 -950 {
lab=v0}
N 500 -920 500 -880 {
lab=v1}
N 430 -1000 430 -950 {
lab=v0}
N 430 -1000 500 -1000 {
lab=v0}
N 500 -1020 500 -1000 {
lab=v0}
N 360 -1020 360 -630 {
lab=v0}
N 360 -1020 500 -1020 {
lab=v0}
C {devices/code_shown.sym} 710 -800 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
"}
C {devices/code_shown.sym} 710 -700 0 0 {name=s1 only_toplevel=false value=".save all
.options savecurrents

.param L1=0.5u
.param W1=10u
.param N1=1

.param L2=15u
.param W2=0.5u
.param N2=1

.dc TEMP -20 100 1
.control
run
display
plot v0 v1 v2 v3
plot i(v1)
.endc
"}
C {symbols/pnp_10p00x10p00.sym} 480 -590 0 0 {name=Q1
model=pnp_05p00x05p00
spiceprefix=X
m=2}
C {devices/gnd.sym} 500 -500 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 360 -600 0 0 {name=V1 value=0.9}
C {symbols/pfet_03v3.sym} 480 -950 0 0 {name=M3
L=L1
W=W1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/lab_wire.sym} 500 -890 0 0 {name=p1 sig_type=std_logic lab=v1}
C {devices/lab_wire.sym} 470 -780 0 0 {name=p2 sig_type=std_logic lab=v2}
C {devices/lab_wire.sym} 470 -650 0 0 {name=p3 sig_type=std_logic lab=v3}
C {symbols/pfet_03v3.sym} 480 -830 0 0 {name=M2
L=L2
W=W2
nf=1
m=N2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 480 -700 0 0 {name=M1
L=L2
W=W2
nf=1
m=N2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/lab_wire.sym} 500 -1020 0 0 {name=p4 sig_type=std_logic lab=v0}
