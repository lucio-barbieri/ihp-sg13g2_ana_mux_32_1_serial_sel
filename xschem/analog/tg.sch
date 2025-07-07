v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -150 0 -130 0 {
lab=C}
N 0 50 80 50 {
lab=A}
N 70 0 80 0 {
lab=BP}
N -170 0 -150 0 {
lab=C}
N 120 0 140 0 {
lab=#net1}
N -90 0 -80 0 {
lab=BN}
N 0 -50 80 -50 {
lab=B}
N -90 -50 0 -50 {
lab=B}
N -90 50 0 50 {
lab=A}
N 40 -170 140 -170 {lab=#net1}
N -150 -170 -40 -170 {lab=C}
N 80 30 80 50 {}
N -90 30 -90 50 {}
N -80 0 -80 70 {}
N 80 -50 80 -30 {}
N -90 -50 -90 -30 {}
N 70 -70 70 0 {}
N 0 -70 0 -50 {}
N 0 50 0 70 {}
N 140 -170 140 0 {}
N -150 -170 -150 0 {}
C {sg13g2_pr/sg13_lv_nmos.sym} -110 0 2 1 {name=M1
l=0.13u
w=12u
ng=3
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {iopin.sym} 0 -70 3 0 {name=p1 lab=B}
C {iopin.sym} 0 70 1 0 {name=p4 lab=A}
C {sg13g2_pr/sg13_lv_pmos.sym} 100 0 0 1 {name=M2
l=0.13u
w=30u
ng=3
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} -80 70 1 0 {name=p7 lab=BN}
C {iopin.sym} 70 -70 3 0 {name=p8 lab=BP}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 0 -170 2 1 {name=x1 VDD=BP VSS=BN prefix=sg13g2_ }
C {iopin.sym} -170 0 0 1 {name=p2 lab=C
}
