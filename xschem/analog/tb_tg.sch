v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -130 -420 -100 -420 {lab=vin1}
N 60 -420 90 -420 {lab=vout}
N -20 -380 -20 -350 {lab=GND}
N -80 -480 -80 -460 {lab=vdd}
N -80 -380 -80 -360 {lab=GND}
N 60 -180 90 -180 {lab=vout}
N -20 -140 -20 -110 {lab=vdd}
N -80 -240 -80 -220 {lab=vdd}
N -80 -140 -80 -120 {lab=GND}
N -250 -130 -250 -120 {lab=GND}
N -250 -120 -80 -120 {lab=GND}
N -210 -180 -190 -180 {lab=#net1}
N -130 -180 -100 -180 {lab=#net2}
C {devices/code_shown.sym} 200 -470 0 0 {name=NGSPICE
only_toplevel=true
value="
*.param v_max = 1.2
.include /opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
vin1 vin1 0 dc=0.6
vout vout 0 dc=0
vdd vdd 0 dc=1.2
.control
save all

dc vin1 0 1.2 0.01

meas dc IMAX FIND i(vin2) WHEN vin1=1.2

plot i(vin1)
plot i(vin2)
let RON = -1.2/IMAX
print RON


.endc
" }
C {devices/iopin.sym} -130 -420 0 1 {name=p2 lab=vin1}
C {devices/gnd.sym} -20 -350 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 210 -40 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="

.param corner=0
.if (corner==0)
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
.endif
"}
C {devices/iopin.sym} 90 -420 0 0 {name=p1 lab=vout}
C {lab_pin.sym} -80 -480 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -80 -360 0 0 {name=p5 sig_type=std_logic lab=GND}
C {lab_pin.sym} -80 -240 0 0 {name=p9 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -80 -120 0 0 {name=p10 sig_type=std_logic lab=GND}
C {lab_pin.sym} -20 -110 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 90 -180 0 1 {name=p7 sig_type=std_logic lab=vout}
C {vcvs.sym} -210 -150 0 0 {name=E1 value=1}
C {lab_pin.sym} -250 -170 0 0 {name=p6 sig_type=std_logic lab=vin1}
C {vsource.sym} -160 -180 1 0 {name=vin2 value=0 savecurrent=false}
C {/home/designer/shared/ihp-sg13g2_ana_mux_32_1_serial_sel/xschem/analog/tg.sym} -20 -420 0 0 {name=x3}
C {/home/designer/shared/ihp-sg13g2_ana_mux_32_1_serial_sel/xschem/analog/tg.sym} -20 -180 0 0 {name=x1}
