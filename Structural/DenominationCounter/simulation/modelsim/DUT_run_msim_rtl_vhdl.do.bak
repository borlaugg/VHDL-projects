transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/risha/OneDrive/Desktop/CS/vhdl/DenominationCounter/Gates.vhd}
vcom -93 -work work {C:/Users/risha/OneDrive/Desktop/CS/vhdl/DenominationCounter/div.vhd}
vcom -93 -work work {C:/Users/risha/OneDrive/Desktop/CS/vhdl/DenominationCounter/DUT.vhdl}
vcom -93 -work work {C:/Users/risha/OneDrive/Desktop/CS/vhdl/DenominationCounter/mux2x1.vhdl}
vcom -93 -work work {C:/Users/risha/OneDrive/Desktop/CS/vhdl/DenominationCounter/components.vhdl}
vcom -93 -work work {C:/Users/risha/OneDrive/Desktop/CS/vhdl/DenominationCounter/atm.vhd}

vcom -93 -work work {C:/Users/risha/OneDrive/Desktop/CS/vhdl/DenominationCounter/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
