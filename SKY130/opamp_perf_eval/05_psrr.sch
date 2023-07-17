v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1960 -1410 1960 -1400 {
lab=#net1}
N 2040 -1300 2040 -1290 {
lab=GND}
N 1880 -1410 1880 -1400 {
lab=#net1}
N 1880 -1400 1960 -1400 {
lab=#net1}
N 2040 -1310 2040 -1300 {
lab=GND}
N 1800 -1310 1800 -1300 {
lab=GND}
N 1800 -1300 1880 -1300 {
lab=GND}
N 1720 -1310 1720 -1300 {
lab=GND}
N 1720 -1300 1800 -1300 {
lab=GND}
N 1880 -1310 1880 -1300 {
lab=GND}
N 1880 -1300 2040 -1300 {
lab=GND}
N 1880 -1400 1880 -1370 {
lab=#net1}
N 1800 -1470 1800 -1370 {
lab=bias2}
N 1720 -1470 1720 -1370 {
lab=bias1}
N 2040 -1410 2040 -1370 {
lab=#net2}
C {devices/code_shown.sym} 2090 -1310 0 0 {name=s1 only_toplevel=false value="
.include "dut_example.sp"
XDUT vin vip bias1 bias2 vo VDD GND opamp
"}
C {devices/vsource.sym} 2040 -1340 0 0 {name=Vsupply value=1.8}
C {devices/vsource.sym} 1960 -1440 0 0 {name=V2 value="AC 0"}
C {devices/gnd.sym} 2040 -1290 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 1880 -1440 0 0 {name=V3 value="AC 0"}
C {devices/vdd.sym} 2040 -1470 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} 1800 -1340 0 0 {name=Vbias2 value="0.75"}
C {devices/vsource.sym} 1720 -1340 0 0 {name=Vbias1 value="0.8"}
C {devices/vsource.sym} 1880 -1340 0 0 {name=Vindc value="1"}
C {devices/lab_wire.sym} 1800 -1470 0 0 {name=p1 sig_type=std_logic lab=bias2}
C {devices/lab_wire.sym} 1720 -1470 0 0 {name=p2 sig_type=std_logic lab=bias1}
C {devices/lab_wire.sym} 1960 -1470 0 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 1880 -1470 0 0 {name=p4 sig_type=std_logic lab=vip}
C {devices/code.sym} 2090 -1630 0 0 {name=TT_MODELS only_toplevel=false
format="tcleval(@value )" value=".lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt
.include \\\\$::PDKPATH\\\\/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice"}
C {devices/code_shown.sym} 2270 -1630 0 0 {name=s2 only_toplevel=false value=".save all
.options savecurrents
.ac dec 100 1k 10G
.control
run
display
let phase=180/PI*vp(vo)
plot vdb(vo) 
plot phase

echo \\"Calculated Parameters\\"
meas ac pm_deg find phase when vdb(vo)=0
meas ac dc_gain find vdb(vo) at=1k
let vor=dc_gain-vdb(vo)
meas ac m3db_f when vor=3
meas ac ugb_f when vdb(vo)=0
.endc
"}
C {devices/vsource.sym} 2040 -1440 0 0 {name=V1 value="AC 1"}
