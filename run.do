quit -sim
vlib work
vlog park.sv FIFO.sv TB.v 
vsim -voptargs=+acc work.TB 
add wave *
run -all