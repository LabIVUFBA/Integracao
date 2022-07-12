onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider -height 40 SYS
add wave -noupdate -itemcolor {Pale Green} -label CLK -radix binary -radixshowbase 0 /IntegracaoPlatformDesigner_tb/integracaoplatformdesigner_inst_clk_bfm_clk_clk
add wave -noupdate -itemcolor {Pale Green} -label VGA_CLK -radix binary -radixshowbase 0 /IntegracaoPlatformDesigner_tb/integracaoplatformdesigner_inst_vga_conduit_clk
add wave -noupdate -itemcolor {Pale Green} -label RESET -radix binary -radixshowbase 0 /IntegracaoPlatformDesigner_tb/integracaoplatformdesigner_inst_reset_bfm_reset_reset
add wave -noupdate -divider -height 40 MEM
add wave -noupdate -itemcolor Gold -label OUTPUT_EN_N -radix binary /IntegracaoPlatformDesigner_tb/integracaoplatformdesigner_inst_sram_controller_conduit_oe_n
add wave -noupdate -itemcolor Gold -label WRITE_EN_N -radix binary /IntegracaoPlatformDesigner_tb/integracaoplatformdesigner_inst_sram_controller_conduit_we_n
add wave -noupdate -itemcolor Gold -label LOWERBYTE_N -radix binary /IntegracaoPlatformDesigner_tb/integracaoplatformdesigner_inst_sram_controller_conduit_lb_n
add wave -noupdate -itemcolor Gold -label UPPERBYTE_N -radix binary /IntegracaoPlatformDesigner_tb/integracaoplatformdesigner_inst_sram_controller_conduit_ub_n
add wave -noupdate -itemcolor Gold -label DATA_OUT -radix unsigned /IntegracaoPlatformDesigner_tb/integracaoplatformdesigner_inst_sram_controller_conduit_dq
add wave -noupdate -itemcolor Gold -label CHIP_EN_N -radix binary /IntegracaoPlatformDesigner_tb/integracaoplatformdesigner_inst_sram_controller_conduit_ce_n
add wave -noupdate -itemcolor Gold -label ADDRESS -radix unsigned /IntegracaoPlatformDesigner_tb/integracaoplatformdesigner_inst_sram_controller_conduit_addr
add wave -noupdate -divider -height 40 VGA
add wave -noupdate -itemcolor Salmon -label RED -radix hexadecimal /IntegracaoPlatformDesigner_tb/integracaoplatformdesigner_inst_vga_conduit_r
add wave -noupdate -itemcolor Salmon -label GREEN -radix hexadecimal /IntegracaoPlatformDesigner_tb/integracaoplatformdesigner_inst_vga_conduit_g
add wave -noupdate -itemcolor Salmon -label BLUE -radix hexadecimal /IntegracaoPlatformDesigner_tb/integracaoplatformdesigner_inst_vga_conduit_b
add wave -noupdate -itemcolor Salmon -label BLANK -radix binary /IntegracaoPlatformDesigner_tb/integracaoplatformdesigner_inst_vga_conduit_blank
add wave -noupdate -itemcolor Salmon -label SYNC -radix binary /IntegracaoPlatformDesigner_tb/integracaoplatformdesigner_inst_vga_conduit_sync
add wave -noupdate -itemcolor Salmon -label HORIZONTAL_SYNC -radix binary /IntegracaoPlatformDesigner_tb/integracaoplatformdesigner_inst_vga_conduit_hs
add wave -noupdate -itemcolor Salmon -label VERTICAL_SYNC -radix binary /IntegracaoPlatformDesigner_tb/integracaoplatformdesigner_inst_vga_conduit_vs
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3698430000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 188
configure wave -valuecolwidth 108
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {3880694246 ps}
