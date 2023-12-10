onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /Wrap_tb/clk
add wave -noupdate -radix hexadecimal /Wrap_tb/rst
add wave -noupdate -radix hexadecimal /Wrap_tb/start
add wave -noupdate -radix hexadecimal /Wrap_tb/mode
add wave -noupdate -radix hexadecimal /Wrap_tb/data_in1
add wave -noupdate -radix hexadecimal /Wrap_tb/data_in2
add wave -noupdate -radix hexadecimal /Wrap_tb/data_out1
add wave -noupdate -radix hexadecimal /Wrap_tb/data_out2
add wave -noupdate -radix hexadecimal /Wrap_tb/in_done
add wave -noupdate -radix hexadecimal /Wrap_tb/cal_done
add wave -noupdate -radix hexadecimal /Wrap_tb/done
add wave -noupdate -radix hexadecimal /Wrap_tb/A1
add wave -noupdate -radix hexadecimal /Wrap_tb/A2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {40094811 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {38885365 ps} {40407005 ps}
