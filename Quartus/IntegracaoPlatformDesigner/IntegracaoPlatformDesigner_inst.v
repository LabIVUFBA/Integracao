	IntegracaoPlatformDesigner u0 (
		.clk_clk                       (<connected-to-clk_clk>),                       //                     clk.clk
		.reset_reset_n                 (<connected-to-reset_reset_n>),                 //                   reset.reset_n
		.sram_conduit_cdt_write        (<connected-to-sram_conduit_cdt_write>),        //            sram_conduit.cdt_write
		.sram_conduit_cdt_chipselect   (<connected-to-sram_conduit_cdt_chipselect>),   //                        .cdt_chipselect
		.sram_conduit_cdt_outputenable (<connected-to-sram_conduit_cdt_outputenable>), //                        .cdt_outputenable
		.sram_conduit_cdt_address      (<connected-to-sram_conduit_cdt_address>),      //                        .cdt_address
		.sram_conduit_cdt_data_io      (<connected-to-sram_conduit_cdt_data_io>),      //                        .cdt_data_io
		.sram_conduit_cdt_byteenable   (<connected-to-sram_conduit_cdt_byteenable>),   //                        .cdt_byteenable
		.sram_controller_conduit_DQ    (<connected-to-sram_controller_conduit_DQ>),    // sram_controller_conduit.DQ
		.sram_controller_conduit_ADDR  (<connected-to-sram_controller_conduit_ADDR>),  //                        .ADDR
		.sram_controller_conduit_LB_N  (<connected-to-sram_controller_conduit_LB_N>),  //                        .LB_N
		.sram_controller_conduit_UB_N  (<connected-to-sram_controller_conduit_UB_N>),  //                        .UB_N
		.sram_controller_conduit_CE_N  (<connected-to-sram_controller_conduit_CE_N>),  //                        .CE_N
		.sram_controller_conduit_OE_N  (<connected-to-sram_controller_conduit_OE_N>),  //                        .OE_N
		.sram_controller_conduit_WE_N  (<connected-to-sram_controller_conduit_WE_N>),  //                        .WE_N
		.vga_conduit_CLK               (<connected-to-vga_conduit_CLK>),               //             vga_conduit.CLK
		.vga_conduit_HS                (<connected-to-vga_conduit_HS>),                //                        .HS
		.vga_conduit_VS                (<connected-to-vga_conduit_VS>),                //                        .VS
		.vga_conduit_BLANK             (<connected-to-vga_conduit_BLANK>),             //                        .BLANK
		.vga_conduit_SYNC              (<connected-to-vga_conduit_SYNC>),              //                        .SYNC
		.vga_conduit_R                 (<connected-to-vga_conduit_R>),                 //                        .R
		.vga_conduit_G                 (<connected-to-vga_conduit_G>),                 //                        .G
		.vga_conduit_B                 (<connected-to-vga_conduit_B>)                  //                        .B
	);

