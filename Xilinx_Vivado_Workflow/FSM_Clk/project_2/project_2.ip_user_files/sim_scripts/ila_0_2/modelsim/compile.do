vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_2.gen/sources_1/ip/ila_0_2/hdl/verilog" \
"../../../../project_2.gen/sources_1/ip/ila_0_2/sim/ila_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

