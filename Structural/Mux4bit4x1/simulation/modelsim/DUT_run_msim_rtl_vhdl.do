transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/risha/OneDrive/Desktop/CS/vhdl/Mux4bit4x1/db/gates.vhdl}
vcom -93 -work work {C:/Users/risha/OneDrive/Desktop/CS/vhdl/Mux4bit4x1/db/DUT.vhdl}
vcom -93 -work work {C:/Users/risha/OneDrive/Desktop/CS/vhdl/Mux4bit4x1/db/2x1mux.vhdl}
vcom -93 -work work {C:/Users/risha/OneDrive/Desktop/CS/vhdl/Mux4bit4x1/db/4x1Mux.vhdl}
vcom -93 -work work {C:/Users/risha/OneDrive/Desktop/CS/vhdl/Mux4bit4x1/db/Mux4bit.vhdl}

vcom -93 -work work {C:/Users/risha/OneDrive/Desktop/CS/vhdl/Mux4bit4x1/db/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
