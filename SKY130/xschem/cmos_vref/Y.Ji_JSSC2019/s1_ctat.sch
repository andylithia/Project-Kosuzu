v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1820 -1550 1820 -1510 {
lab=GND}
N 1760 -1580 1780 -1580 {
lab=GND}
N 1760 -1580 1760 -1510 {
lab=GND}
N 1760 -1510 1820 -1510 {
lab=GND}
N 1820 -1510 1820 -1480 {
lab=GND}
N 1670 -1590 1670 -1510 {
lab=GND}
N 1670 -1510 1760 -1510 {
lab=GND}
N 1820 -1630 1820 -1610 {
lab=v1}
N 1820 -1670 1840 -1670 {
lab=#net1}
N 1840 -1720 1840 -1670 {
lab=#net1}
N 1820 -1720 1840 -1720 {
lab=#net1}
N 1820 -1720 1820 -1700 {
lab=#net1}
N 1760 -1670 1780 -1670 {
lab=v1}
N 1760 -1670 1760 -1630 {
lab=v1}
N 1760 -1630 1820 -1630 {
lab=v1}
N 1820 -1640 1820 -1630 {
lab=v1}
N 1670 -1720 1670 -1650 {
lab=#net1}
N 1670 -1720 1820 -1720 {
lab=#net1}
C {devices/code.sym} 1500 -1950 0 0 {name=TT_MODELS only_toplevel=false
format="tcleval(@value )" value=".lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt
.include \\\\$::PDKPATH\\\\/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice"}
C {devices/code_shown.sym} 2020 -1850 0 0 {name=s1 only_toplevel=false value=".save all
.options savecurrents
.dc TEMP -20 120 20
.control
run
display
plot v1
plot i(v1)
.endc
"}
C {sky130_fd_pr/pnp_05v5.sym} 1800 -1580 0 0 {name=Q1
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {devices/vsource.sym} 1670 -1620 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 1820 -1480 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 1800 -1670 0 0 {name=M1
L=20
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 1800 -1630 0 0 {name=p1 sig_type=std_logic lab=v1}
