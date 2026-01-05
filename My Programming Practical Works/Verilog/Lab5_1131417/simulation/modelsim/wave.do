onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Literal /test/A
add wave -noupdate -format Literal /test/B
add wave -noupdate -format Literal /test/sel
add wave -noupdate -format Literal /test/aluo
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {300000 ps} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 101
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
WaveRestoreZoom {0 ps} {534824 ps}
