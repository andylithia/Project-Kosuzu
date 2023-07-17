* OPAMP device-under-test
** minus:    negative input terminal
** plus:     positive input terminal
** vbiasone: first stage bias voltage
** vbiastwo: second stage bias voltage
** output:   
** vdd:      power supply
** gnd:      common ground
.subckt opamp minus plus vbiasone vbiastwo output vdd gnd
X0 vdd     minus_i output vdd sky130_fd_pr__pfet_01v8 ad=1.0404e+14p pd=6.3048e+08u as=6.93e+13p ps=4.398e+08u w=7e+06u l=1e+06u M=60
X2 minus_i plus_i  n4     vdd sky130_fd_pr__pfet_01v8 ad=1.188e+13p pd=7.596e+07u as=3.06e+13p ps=1.782e+08u w=6e+06u l=1e+06u M=12
X3 vdd     plus_i  n4     vdd sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=6e+06u l=1e+06u M=8
X5 n3      plus_i  plus_i vdd sky130_fd_pr__pfet_01v8 ad=2.52e+13p pd=1.524e+08u as=1.728e+13p ps=1.0176e+08u w=6e+06u l=1e+06u M=12
X7 n3      plus_i  vdd    vdd sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=6e+06u l=1e+06u M=8

X1 output vbiastwo gnd     gnd sky130_fd_pr__nfet_01v8 ad=4.752e+13p pd=3.0384e+08u as=7.038e+13p ps=4.1946e+08u w=6e+06u l=2e+06u M=48
X4 vmid   minus    minus_i gnd sky130_fd_pr__nfet_01v8 ad=3.06e+13p pd=1.782e+08u as=7.92e+12p ps=5.064e+07u w=6e+06u l=1e+06u M=8
X8 plus_i plus     vmid    gnd sky130_fd_pr__nfet_01v8 ad=7.92e+12p pd=5.064e+07u as=0p ps=0u w=6e+06u l=1e+06u M=8
X9 gnd    vbiasone vmid    gnd sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=6e+06u l=2e+06u M=4
*  D      G        S       B

X6 gnd output  sky130_fd_pr__cap_mim_m3_1 l=1.2e+07u w=1.2e+07u
X10 gnd output sky130_fd_pr__cap_mim_m3_1 l=1.2e+07u w=1.2e+07u
X11 gnd output sky130_fd_pr__cap_mim_m3_1 l=1.2e+07u w=1.2e+07u
X12 gnd output sky130_fd_pr__cap_mim_m3_1 l=1.2e+07u w=1.2e+07u
X13 gnd output sky130_fd_pr__cap_mim_m3_1 l=1.2e+07u w=1.2e+07u
X14 gnd output sky130_fd_pr__cap_mim_m3_1 l=1.2e+07u w=1.2e+07u
.ends
