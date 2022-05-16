transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/risha/OneDrive/Desktop/CS/vhdl/FAusingdec/db/gates.vhdl}
vcom -93 -work work {C:/Users/risha/OneDrive/Desktop/CS/vhdl/FAusingdec/db/DUT.vhdl}
vcom -93 -work work {C:/Users/risha/OneDrive/Desktop/CS/vhdl/FAusingdec/db/dec2x4.vhdl}
vcom -93 -work work {C:/Users/risha/OneDrive/Desktop/CS/vhdl/FAusingdec/db/dec3x8.vhdl}
vcom -93 -work work {C:/Users/risha/OneDrive/Desktop/CS/vhdl/FAusingdec/db/FAdec.vhdl}

vcom -93 -work work {C:/Users/risha/OneDrive/Desktop/CS/vhdl/FAusingdec/db/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
