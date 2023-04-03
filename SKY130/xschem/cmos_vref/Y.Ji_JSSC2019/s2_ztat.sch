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
N 1820 -2440 1840 -2440 {
lab=#net1}
N 1840 -2490 1840 -2440 {
lab=#net1}
N 1820 -2490 1840 -2490 {
lab=#net1}
N 1820 -2490 1820 -2470 {
lab=#net1}
N 1760 -2440 1780 -2440 {
lab=#net1}
N 1820 -2410 1820 -2400 {
lab=v1}
N 1760 -2490 1820 -2490 {
lab=#net1}
N 1760 -2490 1760 -2440 {
lab=#net1}
N 1670 -2490 1760 -2490 {
lab=#net1}
N 1730 -2400 1820 -2400 {
lab=v1}
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
lab=#net2}
N 1820 -1770 1840 -1770 {
lab=v2}
N 1840 -1770 1840 -1690 {
lab=v2}
N 1760 -1770 1780 -1770 {
lab=v3}
N 1760 -1770 1760 -1690 {
lab=v3}
N 1820 -2400 1820 -2310 {
lab=v1}
N 1820 -1850 1840 -1850 {
lab=v2}
N 1760 -1850 1780 -1850 {
lab=v3}
N 1760 -1850 1760 -1770 {
lab=v3}
N 1820 -1820 1820 -1800 {
lab=#net3}
N 1820 -1900 1820 -1880 {
lab=#net4}
N 1820 -1930 1840 -1930 {
lab=v2}
N 1840 -1930 1840 -1850 {
lab=v2}
N 1840 -1980 1840 -1930 {
lab=v2}
N 1820 -1980 1820 -1960 {
lab=v2}
N 1760 -1930 1780 -1930 {
lab=v3}
N 1760 -1930 1760 -1850 {
lab=v3}
N 1840 -1850 1840 -1770 {
lab=v2}
N 1820 -1980 1840 -1980 {
lab=v2}
N 1820 -2020 1840 -2020 {
lab=v1}
N 1760 -2020 1780 -2020 {
lab=v2}
N 1760 -2020 1760 -1980 {
lab=v2}
N 1760 -1980 1820 -1980 {
lab=v2}
N 1820 -1990 1820 -1980 {
lab=v2}
N 1820 -2070 1820 -2050 {
lab=#net5}
N 1820 -2100 1840 -2100 {
lab=v1}
N 1840 -2100 1840 -2020 {
lab=v1}
N 1760 -2100 1780 -2100 {
lab=v2}
N 1760 -2100 1760 -2020 {
lab=v2}
N 1820 -2180 1840 -2180 {
lab=v1}
N 1760 -2180 1780 -2180 {
lab=v2}
N 1760 -2180 1760 -2100 {
lab=v2}
N 1820 -2150 1820 -2130 {
lab=#net6}
N 1820 -2230 1820 -2210 {
lab=#net7}
N 1820 -2260 1840 -2260 {
lab=v1}
N 1840 -2260 1840 -2180 {
lab=v1}
N 1840 -2310 1840 -2260 {
lab=v1}
N 1820 -2310 1820 -2290 {
lab=v1}
N 1760 -2260 1780 -2260 {
lab=v2}
N 1760 -2260 1760 -2180 {
lab=v2}
N 1840 -2180 1840 -2100 {
lab=v1}
N 1820 -2310 1840 -2310 {
lab=v1}
N 1670 -2490 1670 -1650 {
lab=#net1}
C {devices/code.sym} 1500 -1950 0 0 {name=TT_MODELS only_toplevel=false
format="tcleval(@value )" value=".lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt
.include \\\\$::PDKPATH\\\\/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice"}
C {devices/code_shown.sym} 2020 -1850 0 0 {name=s1 only_toplevel=false value=".save all
.options savecurrents

.param L1=1
.param W1=40
.param N1=1

.param L2=2.5
.param W2=0.5
.param N2=1

.dc TEMP -20 120 10
.control
run
display
plot v1 v2 v3
plot i(v1)
.endc
"}
C {sky130_fd_pr/pnp_05v5.sym} 1800 -1580 0 0 {name=Q1
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {devices/vsource.sym} 1670 -1620 0 0 {name=V1 value=1}
C {devices/gnd.sym} 1820 -1480 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 1770 -2400 0 0 {name=p1 sig_type=std_logic lab=v1}
C {sky130_fd_pr/pfet_01v8.sym} 1800 -2440 0 0 {name=M3
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
C {devices/lab_wire.sym} 1790 -1980 0 0 {name=p2 sig_type=std_logic lab=v2}
C {devices/lab_wire.sym} 1790 -1650 0 0 {name=p3 sig_type=std_logic lab=v3}
C {sky130_fd_pr/pfet_01v8.sym} 1800 -1850 0 0 {name=M6
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
C {sky130_fd_pr/pfet_01v8.sym} 1800 -1930 0 0 {name=M7
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
C {sky130_fd_pr/pfet_01v8.sym} 1800 -2020 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} 1800 -2100 0 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} 1800 -2180 0 0 {name=M8
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
C {sky130_fd_pr/pfet_01v8.sym} 1800 -2260 0 0 {name=M9
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
