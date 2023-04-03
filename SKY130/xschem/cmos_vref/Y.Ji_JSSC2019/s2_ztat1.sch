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
N 1820 -1650 1820 -1610 {
lab=v3}
N 1820 -2100 1840 -2100 {
lab=v0}
N 1840 -2150 1840 -2100 {
lab=v0}
N 1820 -2150 1840 -2150 {
lab=v0}
N 1820 -2150 1820 -2130 {
lab=v0}
N 1760 -2100 1780 -2100 {
lab=v0}
N 1820 -2070 1820 -2060 {
lab=v1}
N 1760 -2150 1820 -2150 {
lab=v0}
N 1760 -2150 1760 -2100 {
lab=v0}
N 1820 -1690 1840 -1690 {
lab=v2}
N 1760 -1690 1780 -1690 {
lab=v3}
N 1760 -1690 1760 -1650 {
lab=v3}
N 1760 -1650 1820 -1650 {
lab=v3}
N 1820 -1660 1820 -1650 {
lab=v3}
N 1820 -1740 1820 -1720 {
lab=#net1}
N 1820 -1770 1840 -1770 {
lab=v2}
N 1840 -1770 1840 -1690 {
lab=v2}
N 1760 -1770 1780 -1770 {
lab=v3}
N 1760 -1770 1760 -1690 {
lab=v3}
N 1840 -1820 1840 -1770 {
lab=v2}
N 1820 -1820 1820 -1800 {
lab=v2}
N 1820 -1880 1840 -1880 {
lab=v1}
N 1760 -1880 1780 -1880 {
lab=v2}
N 1760 -1880 1760 -1840 {
lab=v2}
N 1760 -1840 1820 -1840 {
lab=v2}
N 1820 -1850 1820 -1840 {
lab=v2}
N 1820 -1930 1820 -1910 {
lab=#net2}
N 1820 -1960 1840 -1960 {
lab=v1}
N 1840 -1960 1840 -1880 {
lab=v1}
N 1760 -1960 1780 -1960 {
lab=v2}
N 1760 -1960 1760 -1880 {
lab=v2}
N 1840 -2000 1840 -1960 {
lab=v1}
N 1820 -2000 1820 -1990 {
lab=v1}
N 1820 -2060 1820 -2000 {
lab=v1}
N 1820 -1820 1840 -1820 {
lab=v2}
N 1820 -2000 1840 -2000 {
lab=v1}
N 1820 -1840 1820 -1820 {
lab=v2}
N 1820 -2220 1850 -2220 {
lab=GND}
N 1850 -2220 1850 -2180 {
lab=GND}
N 1820 -2190 1820 -2150 {
lab=v0}
N 1740 -2220 1780 -2220 {
lab=v1}
N 1740 -2060 1820 -2060 {
lab=v1}
N 1820 -2280 1820 -2250 {
lab=#net3}
N 1820 -2310 1850 -2310 {
lab=GND}
N 1850 -2310 1850 -2220 {
lab=GND}
N 1740 -2310 1780 -2310 {
lab=v1}
N 1740 -2310 1740 -2220 {
lab=v1}
N 1670 -2370 1670 -1650 {
lab=#net4}
N 1670 -2370 1820 -2370 {
lab=#net4}
N 1820 -2370 1820 -2340 {
lab=#net4}
N 1730 -2060 1740 -2060 {
lab=v1}
N 1740 -2220 1740 -2060 {
lab=v1}
C {devices/code.sym} 1500 -1950 0 0 {name=TT_MODELS only_toplevel=false
format="tcleval(@value )" value=".lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt
.include \\\\$::PDKPATH\\\\/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice"}
C {devices/code_shown.sym} 2020 -1850 0 0 {name=s1 only_toplevel=false value=".save all
.options savecurrents

.param L1=1
.param W1=20
.param N1=18

.param L2=0.5
.param W2=1
.param N2=20

.dc TEMP -20 100 1
.control
run
display
plot v0 v1 v2 v3
plot i(v1)
.endc
"}
C {sky130_fd_pr/pnp_05v5.sym} 1800 -1580 0 0 {name=Q1
model=pnp_05v5_W3p40L3p40
m=5
spiceprefix=X
}
C {devices/vsource.sym} 1670 -1620 0 0 {name=V1 value=3}
C {devices/gnd.sym} 1820 -1480 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 1770 -2060 0 0 {name=p1 sig_type=std_logic lab=v1}
C {sky130_fd_pr/pfet_01v8.sym} 1800 -2100 0 0 {name=M3
L=L1
W=W1
nf=1
mult=N1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1800 -1690 0 0 {name=M1
L=L2
W=W2
nf=1
mult=N2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1800 -1770 0 0 {name=M4
L=L2
W=W2
nf=1
mult=N2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 1790 -1840 0 0 {name=p2 sig_type=std_logic lab=v2}
C {devices/lab_wire.sym} 1790 -1650 0 0 {name=p3 sig_type=std_logic lab=v3}
C {sky130_fd_pr/pfet_01v8.sym} 1800 -1880 0 0 {name=M2
L=L2
W=W2
nf=1
mult=N2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1800 -1960 0 0 {name=M5
L=L2
W=W2
nf=1
mult=N2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/code_shown.sym} 2010 -2260 0 0 {name=s2 only_toplevel=false value="
*.param L1=0.5
*.param W1=20
*.param N1=1
*.param L2=30
*.param W2=0.5
*.param N2=1

"}
C {sky130_fd_pr/nfet_03v3_nvt.sym} 1800 -2220 0 0 {name=M6
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_03v3_nvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_03v3_nvt.sym} 1800 -2310 0 0 {name=M7
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_03v3_nvt
spiceprefix=X
}
C {devices/gnd.sym} 1850 -2180 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 1790 -2150 0 0 {name=p4 sig_type=std_logic lab=v0}
