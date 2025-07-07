v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -20 -30 20 -30 {lab=#net1}
N -20 -10 20 -10 {lab=#net2}
N -20 10 20 10 {lab=#net3}
N -20 30 20 30 {lab=#net4}
N -20 50 20 50 {lab=#net5}
N 320 -300 360 -300 {lab=s31}
N 320 -280 360 -280 {lab=s30}
N 320 -260 360 -260 {lab=s29}
N 320 -240 360 -240 {lab=s28}
N 320 -220 360 -220 {lab=s27}
N 320 -200 360 -200 {lab=s26}
N 320 -180 360 -180 {lab=s25}
N 320 -160 360 -160 {lab=s24}
N 320 -140 360 -140 {lab=s23}
N 320 -120 360 -120 {lab=s22}
N 320 -100 360 -100 {lab=s21}
N 320 -80 360 -80 {lab=s20}
N 320 -60 360 -60 {lab=s19}
N 320 -40 360 -40 {lab=s18}
N 320 -20 360 -20 {lab=s17}
N 320 0 360 0 {lab=s16}
N 320 20 360 20 {lab=s15}
N 320 40 360 40 {lab=s14}
N 320 60 360 60 {lab=s13}
N 320 80 360 80 {lab=s12}
N 320 100 360 100 {lab=s11}
N 320 120 360 120 {lab=s10}
N 320 140 360 140 {lab=s9}
N 320 160 360 160 {lab=s8}
N 320 180 360 180 {lab=s7}
N 320 200 360 200 {lab=s6}
N 320 220 360 220 {lab=s5}
N 320 240 360 240 {lab=s4}
N 320 260 360 260 {lab=s3}
N 320 280 360 280 {lab=s2}
N 320 300 360 300 {lab=s1}
N 320 320 360 320 {lab=s0}
N -200 50 -170 50 {lab=/rst}
N -200 30 -170 30 {lab=din}
N -200 10 -170 10 {lab=clk}
N -200 -10 -170 -10 {lab=latch}
N 170 -340 170 -330 {lab=VDD}
N 170 350 170 360 {lab=VSS}
N -120 -240 -70 -240 {lab=VDD}
N -120 -220 -70 -220 {lab=VSS}
N -110 -70 -110 -60 {lab=VDD}
N -110 100 -110 110 {lab=VSS}
N -0 430 360 430 {lab=dout}
N -0 70 -0 430 {lab=dout}
N -20 70 -0 70 {lab=dout}
C {ipin.sym} -200 30 0 0 {name=p2 lab=din}
C {ipin.sym} -200 50 0 0 {name=p3 lab=/rst}
C {ipin.sym} -200 10 0 0 {name=p4 lab=clk}
C {ipin.sym} -200 -10 0 0 {name=p1 lab=latch}
C {opin.sym} 360 260 0 0 {name=p5 lab=s3}
C {opin.sym} 360 320 0 0 {name=p6 lab=s0}
C {opin.sym} 360 300 0 0 {name=p7 lab=s1}
C {opin.sym} 360 280 0 0 {name=p8 lab=s2}
C {opin.sym} 360 240 0 0 {name=p9 lab=s4}
C {opin.sym} 360 220 0 0 {name=p10 lab=s5}
C {opin.sym} 360 140 0 0 {name=p11 lab=s9}
C {opin.sym} 360 200 0 0 {name=p12 lab=s6}
C {opin.sym} 360 180 0 0 {name=p13 lab=s7}
C {opin.sym} 360 160 0 0 {name=p14 lab=s8}
C {opin.sym} 360 120 0 0 {name=p15 lab=s10}
C {opin.sym} 360 100 0 0 {name=p16 lab=s11}
C {opin.sym} 360 20 0 0 {name=p17 lab=s15}
C {opin.sym} 360 80 0 0 {name=p18 lab=s12}
C {opin.sym} 360 60 0 0 {name=p19 lab=s13}
C {opin.sym} 360 40 0 0 {name=p20 lab=s14}
C {opin.sym} 360 0 0 0 {name=p21 lab=s16}
C {opin.sym} 360 -20 0 0 {name=p22 lab=s17}
C {opin.sym} 360 -100 0 0 {name=p23 lab=s21}
C {opin.sym} 360 -40 0 0 {name=p24 lab=s18}
C {opin.sym} 360 -60 0 0 {name=p25 lab=s19}
C {opin.sym} 360 -80 0 0 {name=p26 lab=s20}
C {opin.sym} 360 -120 0 0 {name=p27 lab=s22}
C {opin.sym} 360 -140 0 0 {name=p28 lab=s23}
C {opin.sym} 360 -160 0 0 {name=p29 lab=s24}
C {opin.sym} 360 -180 0 0 {name=p30 lab=s25}
C {opin.sym} 360 -260 0 0 {name=p31 lab=s29}
C {opin.sym} 360 -200 0 0 {name=p32 lab=s26}
C {opin.sym} 360 -220 0 0 {name=p33 lab=s27}
C {opin.sym} 360 -240 0 0 {name=p34 lab=s28}
C {opin.sym} 360 -280 0 0 {name=p35 lab=s30}
C {opin.sym} 360 -300 0 0 {name=p36 lab=s31}
C {iopin.sym} -120 -240 2 0 {name=p37 lab=VDD}
C {iopin.sym} -120 -220 2 0 {name=p38 lab=VSS}
C {lab_pin.sym} -70 -240 2 0 {name=p39 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -70 -220 2 0 {name=p40 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 170 -340 1 0 {name=p41 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 170 360 3 0 {name=p42 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -110 -70 1 0 {name=p43 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -110 110 3 0 {name=p44 sig_type=std_logic lab=VSS}
C {opin.sym} 360 430 0 0 {name=p45 lab=dout}
C {/home/designer/shared/ihp-sg13g2_ana_mux_32_1_serial_sel/src/digital/shift_reg.sym} -110 20 0 0 {name=x3}
C {/home/designer/shared/ihp-sg13g2_ana_mux_32_1_serial_sel/src/digital/decoder.sym} 170 10 0 0 {name=x4}
