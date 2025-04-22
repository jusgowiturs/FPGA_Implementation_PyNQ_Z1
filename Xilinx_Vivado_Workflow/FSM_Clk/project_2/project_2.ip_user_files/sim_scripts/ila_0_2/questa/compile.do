vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_2.gen/sources_1/ip/ila_0_2/hdl/verilog" \
"../../../../project_2.gen/sources_1/ip/ila_0_2/sim/ila_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

