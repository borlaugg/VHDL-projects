transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/risha/OneDrive/Desktop/CS/vhdl/AS/db/gates.vhd}
vcom -93 -work work {C:/Users/risha/OneDrive/Desktop/CS/vhdl/AS/db/DUT.vhd}
vcom -93 -work work {C:/Users/risha/OneDrive/Desktop/CS/vhdl/AS/db/FullADDER.vhd}
vcom -93 -work work {C:/Users/risha/OneDrive/Desktop/CS/vhdl/AS/db/ADDersub.vhd}

vcom -93 -work work {C:/Users/risha/OneDrive/Desktop/CS/vhdl/AS/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
