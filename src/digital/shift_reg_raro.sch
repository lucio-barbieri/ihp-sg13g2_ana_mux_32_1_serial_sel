v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -320 -20 -310 -20 {lab=clk}
N -340 0 -310 0 {lab=#net1}
N -320 -70 -320 -20 {lab=clk}
N -540 -20 -530 -20 {lab=clk}
N -540 -70 -540 -20 {lab=clk}
N -320 -70 -100 -70 {lab=clk}
N -100 -20 -90 -20 {lab=clk}
N -130 -20 -120 -20 {lab=#net2}
N -120 -20 -120 0 {lab=#net2}
N -120 0 -90 -0 {lab=#net2}
N -540 -70 -320 -70 {lab=clk}
N 120 -20 130 -20 {lab=clk}
N 100 0 130 0 {lab=#net3}
N 90 -20 100 -20 {lab=#net3}
N 100 -20 100 0 {lab=#net3}
N 340 -20 350 -20 {lab=clk}
N 310 -20 320 -20 {lab=#net4}
N 320 -20 320 0 {lab=#net4}
N 320 0 350 0 {lab=#net4}
N 530 -20 540 -20 {lab=dout_serial}
N -540 20 -530 20 {lab=rst}
N -540 20 -540 60 {lab=rst}
N -540 60 -320 60 {lab=rst}
N -320 20 -320 60 {lab=rst}
N -320 20 -310 20 {lab=rst}
N -320 60 -100 60 {lab=rst}
N -100 20 -100 60 {lab=rst}
N -100 20 -90 20 {lab=rst}
N -100 60 120 60 {lab=rst}
N 120 20 120 60 {lab=rst}
N 120 20 130 20 {lab=rst}
N 340 20 350 20 {lab=rst}
N 340 20 340 60 {lab=rst}
N 120 60 340 60 {lab=rst}
N -560 60 -540 60 {lab=rst}
N -580 0 -530 0 {lab=din}
N -580 -70 -540 -70 {lab=clk}
N 340 -90 560 -90 {lab=rst}
N 120 -90 340 -90 {lab=rst}
N -100 -90 120 -90 {lab=rst}
N -360 -110 -140 -110 {lab=latch}
N -100 -70 -100 -20 {lab=clk}
N 120 -70 340 -70 {lab=clk}
N 120 -70 120 -20 {lab=clk}
N -100 -70 120 -70 {lab=clk}
N 340 -70 340 -20 {lab=clk}
N -320 -90 -100 -90 {lab=rst}
N -140 -130 -140 -110 {lab=latch}
N -360 -130 -360 -110 {lab=latch}
N -340 -20 -340 0 {lab=#net1}
N -320 -130 -320 -90 {lab=rst}
N -140 -110 80 -110 {lab=latch}
N -100 -130 -100 -90 {lab=rst}
N 80 -130 80 -110 {lab=latch}
N 100 -130 100 -20 {lab=#net3}
N 120 -130 120 -90 {lab=rst}
N 320 -130 320 -20 {lab=#net4}
N 340 -130 340 -90 {lab=rst}
N 540 -130 540 -20 {lab=dout_serial}
N 560 -130 560 -90 {lab=rst}
N 80 -110 300 -110 {lab=latch}
N 300 -130 300 -110 {lab=latch}
N 300 -110 520 -110 {lab=latch}
N 520 -130 520 -110 {lab=latch}
N -580 -110 -360 -110 {lab=latch}
N 520 -330 520 -310 {lab=dout0}
N 300 -330 300 -310 {lab=dout1}
N 80 -330 80 -310 {lab=dout2}
N -140 -330 -140 -310 {lab=dout3}
N -360 -330 -360 -310 {lab=dout4}
N -580 -290 -550 -290 {lab=VDD}
N -580 -260 -550 -260 {lab=VSS}
N -120 -130 -120 -20 {lab=#net2}
N -560 -90 -320 -90 {lab=rst}
N -560 -90 -560 60 {lab=rst}
N -580 60 -560 60 {lab=rst}
N 540 -20 600 -20 {lab=dout_serial}
N -350 -20 -340 -20 {lab=#net1}
N -340 -130 -340 -20 {lab=#net1}
C {sg13g2_stdcells/sg13g2_dlhrq_1.sym} -440 0 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_dlhrq_1.sym} -220 0 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_dlhrq_1.sym} 0 0 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_dlhrq_1.sym} 220 0 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_dlhrq_1.sym} 440 0 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {ipin.sym} -580 0 0 0 {name=p2 lab=din}
C {ipin.sym} -580 60 0 0 {name=p3 lab=rst}
C {ipin.sym} -580 -70 0 0 {name=p4 lab=clk}
C {opin.sym} -140 -330 3 0 {name=p5 lab=dout3}
C {opin.sym} 520 -330 3 0 {name=p6 lab=dout0}
C {opin.sym} 300 -330 3 0 {name=p7 lab=dout1}
C {opin.sym} 80 -330 3 0 {name=p8 lab=dout2}
C {opin.sym} -360 -330 3 0 {name=p9 lab=dout4}
C {sg13g2_stdcells/sg13g2_dlhrq_1.sym} -340 -220 3 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_dlhrq_1.sym} -120 -220 3 0 {name=x7 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_dlhrq_1.sym} 100 -220 3 0 {name=x8 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_dlhrq_1.sym} 320 -220 3 0 {name=x9 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_dlhrq_1.sym} 540 -220 3 0 {name=x10 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {ipin.sym} -580 -110 0 0 {name=p1 lab=latch}
C {ipin.sym} -580 -290 0 0 {name=p10 lab=VDD}
C {ipin.sym} -580 -260 0 0 {name=p11 lab=VSS
}
C {opin.sym} 600 -20 0 0 {name=p12 lab=dout_serial}
