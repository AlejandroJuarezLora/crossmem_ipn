v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 740 -850 1540 -450 {flags=graph
y1=0
y2=2
ypos1=-0.49751251
ypos2=1.5024872
divy=5
subdivy=1
unity=1
x1=0
x2=0.001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="out3
out2
out1
out0"
color="4 5 6 7"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
B 2 -210 -830 590 -430 {flags=graph
y1=-0.55277776
y2=1.9472224
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="4 7"
node="x
hx"}
N 10 -100 130 -100 {lab=x}
N 10 -100 10 -60 {lab=x}
N 430 -140 470 -140 {lab=out0}
N 430 -120 470 -120 {lab=out1}
N 430 -100 470 -100 {lab=out2}
N 430 -80 470 -80 {lab=out3}
N 470 -80 830 -80 {lab=out3}
N 830 -80 830 -0 {lab=out3}
N 800 -100 800 0 {lab=out2}
N 470 -100 800 -100 {lab=out2}
N 470 -120 770 -120 {lab=out1}
N 770 -120 770 -0 {lab=out1}
N 740 -140 740 -0 {lab=out0}
N 470 -140 740 -140 {lab=out0}
C {vsource.sym} 10 -30 0 0 {name=V1 value="SINE(0.9 0.9 1k 0 0 0)" savecurrent=false}
C {/foss/designs/crossmem_ipn/designs/libs/crossmem_ipn/adc4bits/adc4bits.sym} 280 -100 0 0 {name=x1}
C {vsource.sym} -90 -30 0 0 {name=V2 value=1.8 savecurrent=false}
C {vdd.sym} -90 -60 0 0 {name=l1 lab=VDD}
C {vdd.sym} 280 -190 0 0 {name=l2 lab=VDD}
C {gnd.sym} -90 0 0 0 {name=l4 lab=0}
C {gnd.sym} 10 0 0 0 {name=l5 lab=0}
C {gnd.sym} 280 -10 0 0 {name=l6 lab=0}
C {lab_pin.sym} 740 -140 0 1 {name=p1 sig_type=std_logic lab=out0}
C {lab_pin.sym} 770 -120 0 1 {name=p2 sig_type=std_logic lab=out1}
C {lab_pin.sym} 800 -100 0 1 {name=p3 sig_type=std_logic lab=out2}
C {lab_pin.sym} 830 -80 0 1 {name=p4 sig_type=std_logic lab=out3}
C {code_shown.sym} -100 330 0 0 {name=s1 only_toplevel=false value="
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.inc /foss/designs/crossmem_ipn/designs/libs/crossmem_ipn/adc4bits/priorityEnc/runs/test/final/spice/priority_encoder_2.spice
.tran 1u 1m
.save all
.control
	run
	write tb_adc_dac.raw
.endc
"}
C {launcher.sym} -20 110 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/tb_adc_dac.raw tran"
}
C {lab_pin.sym} 40 -100 3 1 {name=p5 sig_type=std_logic lab=x}
C {sky130_fd_pr/corner.sym} -40 -380 0 0 {name=CORNER only_toplevel=true corner=tt}
C {/foss/designs/crossmem_ipn/designs/libs/crossmem_ipn/dac4bits/sch/DAC4.sym} 690 100 0 0 {name=x2}
C {vdd.sym} 210 -10 2 0 {name=l3 lab=VDD}
C {vdd.sym} 570 200 2 0 {name=l7 lab=VDD}
C {gnd.sym} 570 0 2 0 {name=l8 lab=0}
C {lab_pin.sym} 890 100 0 1 {name=p6 sig_type=std_logic lab=hx}
C {gnd.sym} 690 200 0 0 {name=l9 lab=0}
C {vdd.sym} 690 0 0 0 {name=l10 lab=VDD}
