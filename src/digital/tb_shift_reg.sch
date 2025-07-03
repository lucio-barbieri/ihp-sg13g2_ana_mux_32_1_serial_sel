v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 260 170 280 170 {lab=dout4}
N 80 190 110 190 {lab=latch}
N 80 210 110 210 {lab=clk}
N 80 230 110 230 {lab=din}
N 80 250 110 250 {lab=/rst}
N 260 190 280 190 {lab=dout3}
N 260 210 280 210 {lab=dout2}
N 260 230 280 230 {lab=dout1}
N 260 250 280 250 {lab=dout0}
N 170 130 170 140 {lab=VDD}
N 170 300 170 310 {lab=GND}
N 260 270 280 270 {lab=dout_serial}
C {devices/code_shown.sym} -390 -310 0 0 {name=NGSPICE
only_toplevel=true
value="
.include /opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice

vrst /rst 0 PULSE(1.2 0 0n 1n 1n 3n 100n)
vclk clk 0 PULSE(0 1.2 6n 1n 1n 16n 32n)
vdin din 0 PULSE(0 1.2 15n 1n 1n 32n 64n)
vlatch latch 0 PULSE(0 1.2 90n 1n 1n 4n 100n)

VDD VDD 0 dc=1.2

.control
save all
set color0 = white

tran 1n 100n

plot v(/rst)-1.5 v(clk) v(din)+1.5 v(latch)+3
+v(dout0)+5 v(dout1)+6.5 v(dout2)+8 v(dout3)+9.5 v(dout4)+11

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
C {devices/iopin.sym} 280 170 0 0 {name=p34 lab=dout4}
C {devices/iopin.sym} 80 190 2 0 {name=p35 lab=latch}
C {devices/iopin.sym} 80 210 2 0 {name=p36 lab=clk}
C {devices/iopin.sym} 80 230 2 0 {name=p37 lab=din}
C {devices/iopin.sym} 80 250 2 0 {name=p38 lab=/rst}
C {devices/iopin.sym} 280 190 0 0 {name=p1 lab=dout3}
C {devices/iopin.sym} 280 210 0 0 {name=p2 lab=dout2}
C {devices/iopin.sym} 280 230 0 0 {name=p3 lab=dout1}
C {devices/iopin.sym} 280 250 0 0 {name=p4 lab=dout0}
C {iopin.sym} 170 130 3 0 {name=p5 lab=VDD}
C {devices/gnd.sym} 170 310 0 0 {name=l3 lab=GND}
C {shift_reg.sym} 170 220 0 0 {name=x1}
C {devices/iopin.sym} 280 270 0 0 {name=p6 lab=dout_serial}
