v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 270 170 290 170 {lab=dout4}
N 70 190 100 190 {lab=latch}
N 70 210 100 210 {lab=clk}
N 70 230 100 230 {lab=din}
N 70 250 100 250 {lab=rst}
N 270 190 290 190 {lab=dout3}
N 270 210 290 210 {lab=dout2}
N 270 230 290 230 {lab=dout1}
N 270 250 290 250 {lab=dout0}
N 170 130 170 140 {lab=VDD}
N 170 300 170 310 {lab=GND}
N 270 270 290 270 {lab=dout_serial}
C {devices/code_shown.sym} -380 -350 0 0 {name=NGSPICE
only_toplevel=true
value="
.include /opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice

vrst rst 0 dc=0

vdin din 0 PULSE(0 1.2 0n 1n 1n 16n 32n)
vclk clk 0 PULSE(0 1.2 0n 1n 1n 32n 64n)

vlatch latch 0 PULSE(0 1.2 64n 1n 1n 16n 32n)

VDD VDD 0 dc=1.2

.control
save all
set color0 = white

tran 1n 70n

plot v(clk) v(din)+1.5 + v(latch)+3
+v(dout0) v(dout1)+5 v(dout2)+6.5 v(dout3)+8 v(dout4)+9.5

.endc
" }
C {devices/code_shown.sym} -370 130 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="

.param corner=0

.if (corner==0)
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
.endif
"}
C {devices/iopin.sym} 290 170 0 0 {name=p34 lab=dout4}
C {devices/iopin.sym} 70 190 2 0 {name=p35 lab=latch}
C {devices/iopin.sym} 70 210 2 0 {name=p36 lab=clk}
C {devices/iopin.sym} 70 230 2 0 {name=p37 lab=din}
C {devices/iopin.sym} 70 250 2 0 {name=p38 lab=rst}
C {devices/iopin.sym} 290 190 0 0 {name=p1 lab=dout3}
C {devices/iopin.sym} 290 210 0 0 {name=p2 lab=dout2}
C {devices/iopin.sym} 290 230 0 0 {name=p3 lab=dout1}
C {devices/iopin.sym} 290 250 0 0 {name=p4 lab=dout0}
C {iopin.sym} 170 130 3 0 {name=p5 lab=VDD}
C {devices/gnd.sym} 170 310 0 0 {name=l3 lab=GND}
C {shift_reg.sym} 170 220 0 0 {name=x1}
C {devices/iopin.sym} 290 270 0 0 {name=p6 lab=dout_serial}
