v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {fc  = 5.0 GHz
fin = 5.02GHz} -260 -370 0 0 0.4 0.4 {}
N -420 -140 -400 -140 {
lab=von}
N -300 -190 -300 -170 {
lab=von}
N -360 -140 -340 -140 {
lab=vop}
N -400 -190 -360 -140 {
lab=vop}
N -460 -190 -400 -190 {
lab=vop}
N -460 -190 -460 -170 {
lab=vop}
N -400 -140 -360 -190 {
lab=von}
N -360 -190 -300 -190 {
lab=von}
N -480 -140 -460 -140 {
lab=GND}
N -480 -140 -480 0 {
lab=GND}
N -300 -140 -280 -140 {
lab=GND}
N -280 -140 -280 0 {
lab=GND}
N -460 -110 -460 -90 {
lab=vmid}
N -380 -90 -300 -90 {
lab=vmid}
N -300 -110 -300 -90 {
lab=vmid}
N -380 -90 -380 -80 {
lab=vmid}
N -460 -90 -380 -90 {
lab=vmid}
N -380 -50 -360 -50 {
lab=GND}
N -360 -50 -360 0 {
lab=GND}
N -380 0 -360 0 {
lab=GND}
N -380 -20 -380 0 {
lab=GND}
N -360 0 -280 0 {
lab=GND}
N -560 -20 -560 0 {
lab=GND}
N -560 0 -480 0 {
lab=GND}
N -580 -50 -560 -50 {
lab=GND}
N -580 -50 -580 0 {
lab=GND}
N -580 0 -560 0 {
lab=GND}
N -580 0 -580 20 {
lab=GND}
N -660 -30 -660 0 {
lab=GND}
N -660 0 -580 0 {
lab=GND}
N -660 -190 -660 -90 {
lab=VDD}
N -560 -90 -560 -80 {
lab=#net1}
N -560 -190 -560 -170 {
lab=VDD}
N -660 -190 -560 -190 {
lab=VDD}
N -660 -240 -660 -190 {
lab=VDD}
N -560 -90 -500 -90 {
lab=#net1}
N -560 -110 -560 -90 {
lab=#net1}
N -500 -90 -500 -50 {
lab=#net1}
N -520 -50 -500 -50 {
lab=#net1}
N -460 -380 -460 -310 {
lab=VDD}
N -350 -380 -300 -380 {
lab=VDD}
N -300 -380 -300 -310 {
lab=VDD}
N -460 -400 -460 -380 {
lab=VDD}
N -460 -240 -410 -240 {
lab=vop}
N -460 -250 -460 -240 {
lab=vop}
N -350 -240 -300 -240 {
lab=von}
N -300 -250 -300 -240 {
lab=von}
N -520 -240 -520 -210 {
lab=vop}
N -520 -210 -460 -210 {
lab=vop}
N -460 -220 -460 -210 {
lab=vop}
N -520 -380 -460 -380 {
lab=VDD}
N -410 -280 -410 -240 {
lab=vop}
N -410 -380 -410 -340 {
lab=VDD}
N -460 -380 -410 -380 {
lab=VDD}
N -350 -280 -350 -240 {
lab=von}
N -350 -380 -350 -340 {
lab=VDD}
N -410 -380 -350 -380 {
lab=VDD}
N -520 -380 -520 -300 {
lab=VDD}
N -300 -210 -300 -190 {
lab=von}
N -70 -50 -70 -0 {
lab=GND}
N -130 0 -70 -0 {
lab=GND}
N -460 -210 -460 -190 {
lab=vop}
N -500 -50 -420 -50 {
lab=#net1}
N -480 0 -380 0 {
lab=GND}
N -70 -210 -70 -110 {
lab=von}
N -300 -210 -70 -210 {
lab=von}
N -300 -240 -300 -210 {
lab=von}
N -130 -110 -130 0 {
lab=GND}
N -280 -0 -130 0 {
lab=GND}
N -130 -220 -130 -170 {
lab=vop}
N -460 -220 -130 -220 {
lab=vop}
N -460 -240 -460 -220 {
lab=vop}
C {devices/code_shown.sym} -10 -160 0 0 {name=s1 only_toplevel=false value=".save all
.options savecurrents

.tran 10ps 500n 200n
.control
run
display
plot vop von
plot vmid
let vout = vop-von
fft vout
plot vdb(vout)
.endc
"}
C {devices/code_shown.sym} -20 -460 0 0 {name=s2 only_toplevel=false value="
.param iinj=1m
.param finj=5.02G

"}
C {devices/code_shown.sym} -10 -230 0 0 {name=sT_MODELS only_toplevel=false
format="tcleval(@value )" value=".lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt
.include \\\\$::PDKPATH\\\\/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice"}
C {sky130_fd_pr/nfet_01v8.sym} -320 -140 0 0 {name=M1
L=0.15
W=5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -440 -140 0 1 {name=M2
L=0.15
W=5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -400 -50 0 0 {name=M3
L=5
W=1
nf=1 
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -540 -50 0 1 {name=M4
L=5
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} -580 20 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -660 -60 0 0 {name=V1 value=1}
C {devices/vdd.sym} -660 -240 0 0 {name=l2 lab=VDD}
C {devices/isource.sym} -560 -140 0 0 {name=I0 value=25u}
C {devices/vdd.sym} -460 -400 0 0 {name=l3 lab=VDD}
C {devices/lab_wire.sym} -420 -90 0 0 {name=p1 sig_type=std_logic lab=vmid}
C {devices/ind.sym} -460 -280 0 0 {name=L4
m=1
value=0.5n
footprint=1206
device=inductor}
C {devices/ind.sym} -300 -280 0 0 {name=L5
m=1
value=0.5n
footprint=1206
device=inductor}
C {devices/capa.sym} -380 -240 1 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -460 -210 0 0 {name=p2 sig_type=std_logic lab=vop}
C {devices/lab_wire.sym} -300 -210 0 0 {name=p3 sig_type=std_logic lab=von}
C {devices/isource.sym} -520 -270 0 1 {name=I1 value="PULSE(0 0.4 1n 10p 10p 1n 1)"}
C {devices/res.sym} -410 -310 0 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -350 -310 0 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/isource.sym} -130 -140 2 1 {name=I3 value="SIN(0 \{iinj\} \{finj\})"}
C {devices/isource.sym} -70 -80 2 1 {name=I2 value="SIN(0 \{-iinj\} \{finj\})"}
