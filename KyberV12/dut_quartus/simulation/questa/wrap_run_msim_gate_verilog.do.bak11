transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {wrap.vo}

vlog -vlog01compat -work work +incdir+/home/haka/Desktop/KyberV12/dut_quartus {/home/haka/Desktop/KyberV12/dut_quartus/Wrap_tb.v}

vsim -t 1ps -L altera_ver -L altera_lnsim_ver -L cyclonev_ver -L lpm_ver -L sgate_ver -L cyclonev_hssi_ver -L altera_mf_ver -L cyclonev_pcie_hip_ver -L gate_work -L work -voptargs="+acc"  Wrap_tb

add wave *
view structure
view signals
run -all
