v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -110 310 -90 310 {lab=s0}
N -110 290 -90 290 {lab=s1}
N -110 270 -90 270 {lab=s2}
N -110 250 -90 250 {lab=s3}
N -110 230 -90 230 {lab=s4}
N -110 210 -90 210 {lab=s5}
N -110 190 -90 190 {lab=s6}
N -110 170 -90 170 {lab=s7}
N -110 150 -90 150 {lab=s8}
N -110 130 -90 130 {lab=s9}
N -110 110 -90 110 {lab=s10}
N -110 90 -90 90 {lab=s11}
N -110 70 -90 70 {lab=s12}
N -110 50 -90 50 {lab=s13}
N -110 30 -90 30 {lab=s14}
N -110 10 -90 10 {lab=s15}
N -110 -10 -90 -10 {lab=s16}
N -110 -30 -90 -30 {lab=s17}
N -110 -50 -90 -50 {lab=s18}
N -110 -70 -90 -70 {lab=s19}
N -110 -90 -90 -90 {lab=s20}
N -110 -110 -90 -110 {lab=s21}
N -110 -130 -90 -130 {lab=s22}
N -110 -150 -90 -150 {lab=s23}
N -110 -170 -90 -170 {lab=s24}
N -110 -190 -90 -190 {lab=s25}
N -110 -210 -90 -210 {lab=s26}
N -110 -230 -90 -230 {lab=s27}
N -110 -250 -90 -250 {lab=s28}
N -110 -270 -90 -270 {lab=s29}
N -110 -290 -90 -290 {lab=s30}
N -110 -310 -90 -310 {lab=s31}
N -260 -360 -260 -340 {lab=VDD}
N -260 370 -260 390 {lab=GND}
N -440 -20 -410 -20 {lab=latch}
N -440 0 -410 0 {lab=clk}
N -440 20 -410 20 {lab=din}
N -440 40 -410 40 {lab=/rst}
N -110 340 -90 340 {lab=s0}
C {devices/code_shown.sym} 20 -340 0 0 {name=NGSPICE
only_toplevel=true
value="
.include /opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice

vw0 w0 0 PULSE(0 1.2 0n 1n 1n 16n 32n)
vw1 w1 0 PULSE(0 1.2 0n 1n 1n 32n 64n)
vw2 w2 0 PULSE(0 1.2 0n 1n 1n 64n 128n)
vw3 w3 0 PULSE(0 1.2 0n 1n 1n 128n 256n)
vw4 w4 0 PULSE(0 1.2 0n 1n 1n 256n 512n)

VDD VDD 0 dc=1.2

.control
save all
set color0 = white

tran 1n 600n

plot v(w0) v(w1)+1.5 v(w2)+3 v(w3)+4.5 v(w4)+6
+v(s0)+7.5 v(s1)+9 v(s2)+10.5 v(s3)+12
+v(s4)+7.5 v(s5)+9 v(s6)+10.5 v(s7)+12
+v(s8)+7.5 v(s9)+9 v(s10)+10.5 v(s11)+12
+v(s12)+7.5 v(s13)+9 v(s14)+10.5 v(s15)+12
+v(s16)+7.5 v(s17)+9 v(s18)+10.5 v(s19)+12
+v(s20)+7.5 v(s21)+9 v(s22)+10.5 v(s23)+12
+v(s24)+7.5 v(s25)+9 v(s26)+10.5 v(s27)+12
+v(s28)+7.5 v(s29)+9 v(s30)+10.5 v(s31)+12

.endc
" }
C {devices/code_shown.sym} 20 230 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="

.param corner=0

.if (corner==0)
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
.endif
"}
C {devices/gnd.sym} -260 390 0 0 {name=l3 lab=GND}
C {devices/iopin.sym} -90 310 0 0 {name=p1 lab=s0}
C {devices/iopin.sym} -90 290 0 0 {name=p3 lab=s1}
C {devices/iopin.sym} -90 270 0 0 {name=p4 lab=s2}
C {devices/iopin.sym} -90 250 0 0 {name=p5 lab=s3}
C {devices/iopin.sym} -90 230 0 0 {name=p6 lab=s4}
C {devices/iopin.sym} -90 210 0 0 {name=p7 lab=s5}
C {devices/iopin.sym} -90 190 0 0 {name=p8 lab=s6}
C {devices/iopin.sym} -90 170 0 0 {name=p9 lab=s7}
C {devices/iopin.sym} -90 150 0 0 {name=p10 lab=s8}
C {devices/iopin.sym} -90 130 0 0 {name=p11 lab=s9}
C {devices/iopin.sym} -90 110 0 0 {name=p12 lab=s10}
C {devices/iopin.sym} -90 90 0 0 {name=p13 lab=s11}
C {devices/iopin.sym} -90 70 0 0 {name=p14 lab=s12}
C {devices/iopin.sym} -90 50 0 0 {name=p15 lab=s13}
C {devices/iopin.sym} -90 30 0 0 {name=p16 lab=s14}
C {devices/iopin.sym} -90 10 0 0 {name=p17 lab=s15}
C {devices/iopin.sym} -90 -10 0 0 {name=p18 lab=s16}
C {devices/iopin.sym} -90 -30 0 0 {name=p19 lab=s17}
C {devices/iopin.sym} -90 -50 0 0 {name=p20 lab=s18}
C {devices/iopin.sym} -90 -70 0 0 {name=p21 lab=s19}
C {devices/iopin.sym} -90 -90 0 0 {name=p22 lab=s20}
C {devices/iopin.sym} -90 -110 0 0 {name=p23 lab=s21}
C {devices/iopin.sym} -90 -130 0 0 {name=p24 lab=s22}
C {devices/iopin.sym} -90 -150 0 0 {name=p25 lab=s23}
C {devices/iopin.sym} -90 -170 0 0 {name=p26 lab=s24}
C {devices/iopin.sym} -90 -190 0 0 {name=p27 lab=s25}
C {devices/iopin.sym} -90 -210 0 0 {name=p28 lab=s26}
C {devices/iopin.sym} -90 -230 0 0 {name=p29 lab=s27}
C {devices/iopin.sym} -90 -250 0 0 {name=p30 lab=s28}
C {devices/iopin.sym} -90 -270 0 0 {name=p31 lab=s29}
C {devices/iopin.sym} -90 -290 0 0 {name=p32 lab=s30}
C {devices/iopin.sym} -90 -310 0 0 {name=p33 lab=s31}
C {iopin.sym} -260 -360 3 0 {name=p2 lab=VDD}
C {serial_decoder.sym} -260 10 0 0 {name=x1}
C {devices/iopin.sym} -440 -20 2 0 {name=p39 lab=latch}
C {devices/iopin.sym} -440 0 2 0 {name=p40 lab=clk}
C {devices/iopin.sym} -440 20 2 0 {name=p41 lab=din}
C {devices/iopin.sym} -440 40 2 0 {name=p42 lab=/rst}
C {devices/iopin.sym} -90 340 0 0 {name=p34 lab=dout}
