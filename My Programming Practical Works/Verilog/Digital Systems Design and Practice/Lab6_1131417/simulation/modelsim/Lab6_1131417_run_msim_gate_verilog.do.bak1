transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {Lab6_1131417.vo}

vlog -vlog01compat -work work +incdir+C:/Thomas/2_top/CS206B/Lab6_1131417 {C:/Thomas/2_top/CS206B/Lab6_1131417/test.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneiii_ver -L gate_work -L work -voptargs="+acc" test

add wave *
view structure
view signals
run 1 ns
