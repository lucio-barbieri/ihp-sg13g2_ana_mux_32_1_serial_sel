v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -220 310 -200 310 {lab=s0}
N -220 290 -200 290 {lab=s1}
N -220 270 -200 270 {lab=s2}
N -220 250 -200 250 {lab=s3}
N -220 230 -200 230 {lab=s4}
N -220 210 -200 210 {lab=s5}
N -220 190 -200 190 {lab=s6}
N -220 170 -200 170 {lab=s7}
N -220 150 -200 150 {lab=s8}
N -220 130 -200 130 {lab=s9}
N -220 110 -200 110 {lab=s10}
N -220 90 -200 90 {lab=s11}
N -220 70 -200 70 {lab=s12}
N -220 50 -200 50 {lab=s13}
N -220 30 -200 30 {lab=s14}
N -220 10 -200 10 {lab=s15}
N -220 -10 -200 -10 {lab=s16}
N -220 -30 -200 -30 {lab=s17}
N -220 -50 -200 -50 {lab=s18}
N -220 -70 -200 -70 {lab=s19}
N -220 -90 -200 -90 {lab=s20}
N -220 -110 -200 -110 {lab=s21}
N -220 -130 -200 -130 {lab=s22}
N -220 -150 -200 -150 {lab=s23}
N -220 -170 -200 -170 {lab=s24}
N -220 -190 -200 -190 {lab=s25}
N -220 -210 -200 -210 {lab=s26}
N -220 -230 -200 -230 {lab=s27}
N -220 -250 -200 -250 {lab=s28}
N -220 -270 -200 -270 {lab=s29}
N -220 -290 -200 -290 {lab=s30}
N -220 -310 -200 -310 {lab=s31}
N -550 -40 -520 -40 {lab=w4}
N -550 -20 -520 -20 {lab=w3}
N -550 0 -520 0 {lab=w2}
N -550 20 -520 20 {lab=w1}
N -550 40 -520 40 {lab=w0}
N -370 -360 -370 -340 {lab=VDD}
N -370 340 -370 370 {lab=GND}
C {devices/code_shown.sym} -90 -340 0 0 {name=NGSPICE
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
C {devices/code_shown.sym} -90 230 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="

.param corner=0

.if (corner==0)
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
.endif
"}
C {devices/gnd.sym} -370 360 0 0 {name=l3 lab=GND}
C {devices/iopin.sym} -200 310 0 0 {name=p1 lab=s0}
C {devices/iopin.sym} -200 290 0 0 {name=p3 lab=s1}
C {devices/iopin.sym} -200 270 0 0 {name=p4 lab=s2}
C {devices/iopin.sym} -200 250 0 0 {name=p5 lab=s3}
C {devices/iopin.sym} -200 230 0 0 {name=p6 lab=s4}
C {devices/iopin.sym} -200 210 0 0 {name=p7 lab=s5}
C {devices/iopin.sym} -200 190 0 0 {name=p8 lab=s6}
C {devices/iopin.sym} -200 170 0 0 {name=p9 lab=s7}
C {devices/iopin.sym} -200 150 0 0 {name=p10 lab=s8}
C {devices/iopin.sym} -200 130 0 0 {name=p11 lab=s9}
C {devices/iopin.sym} -200 110 0 0 {name=p12 lab=s10}
C {devices/iopin.sym} -200 90 0 0 {name=p13 lab=s11}
C {devices/iopin.sym} -200 70 0 0 {name=p14 lab=s12}
C {devices/iopin.sym} -200 50 0 0 {name=p15 lab=s13}
C {devices/iopin.sym} -200 30 0 0 {name=p16 lab=s14}
C {devices/iopin.sym} -200 10 0 0 {name=p17 lab=s15}
C {devices/iopin.sym} -200 -10 0 0 {name=p18 lab=s16}
C {devices/iopin.sym} -200 -30 0 0 {name=p19 lab=s17}
C {devices/iopin.sym} -200 -50 0 0 {name=p20 lab=s18}
C {devices/iopin.sym} -200 -70 0 0 {name=p21 lab=s19}
C {devices/iopin.sym} -200 -90 0 0 {name=p22 lab=s20}
C {devices/iopin.sym} -200 -110 0 0 {name=p23 lab=s21}
C {devices/iopin.sym} -200 -130 0 0 {name=p24 lab=s22}
C {devices/iopin.sym} -200 -150 0 0 {name=p25 lab=s23}
C {devices/iopin.sym} -200 -170 0 0 {name=p26 lab=s24}
C {devices/iopin.sym} -200 -190 0 0 {name=p27 lab=s25}
C {devices/iopin.sym} -200 -210 0 0 {name=p28 lab=s26}
C {devices/iopin.sym} -200 -230 0 0 {name=p29 lab=s27}
C {devices/iopin.sym} -200 -250 0 0 {name=p30 lab=s28}
C {devices/iopin.sym} -200 -270 0 0 {name=p31 lab=s29}
C {devices/iopin.sym} -200 -290 0 0 {name=p32 lab=s30}
C {devices/iopin.sym} -200 -310 0 0 {name=p33 lab=s31}
C {devices/iopin.sym} -550 -40 2 0 {name=p34 lab=w4}
C {devices/iopin.sym} -550 -20 2 0 {name=p35 lab=w3}
C {devices/iopin.sym} -550 0 2 0 {name=p36 lab=w2}
C {devices/iopin.sym} -550 20 2 0 {name=p37 lab=w1}
C {devices/iopin.sym} -550 40 2 0 {name=p38 lab=w0}
C {decoder.sym} -370 0 0 0 {name=x1}
C {iopin.sym} -370 -360 3 0 {name=p2 lab=VDD}
