vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_2.gen/sources_1/ip/ila_0_2/hdl/verilog" \
"../../../../project_2.gen/sources_1/ip/ila_0_2/sim/ila_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

