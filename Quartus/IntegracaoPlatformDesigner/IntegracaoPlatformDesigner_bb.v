
module IntegracaoPlatformDesigner (
	clk_clk,
	reset_reset_n,
	sram_conduit_cdt_write,
	sram_conduit_cdt_chipselect,
	sram_conduit_cdt_outputenable,
	sram_conduit_cdt_address,
	sram_conduit_cdt_data_io,
	sram_conduit_cdt_byteenable,
	sram_controller_conduit_DQ,
	sram_controller_conduit_ADDR,
	sram_controller_conduit_LB_N,
	sram_controller_conduit_UB_N,
	sram_controller_conduit_CE_N,
	sram_controller_conduit_OE_N,
	sram_controller_conduit_WE_N,
	vga_conduit_CLK,
	vga_conduit_HS,
	vga_conduit_VS,
	vga_conduit_BLANK,
	vga_conduit_SYNC,
	vga_conduit_R,
	vga_conduit_G,
	vga_conduit_B);	

	input		clk_clk;
	input		reset_reset_n;
	input		sram_conduit_cdt_write;
	input		sram_conduit_cdt_chipselect;
	input		sram_conduit_cdt_outputenable;
	input	[19:0]	sram_conduit_cdt_address;
	inout	[15:0]	sram_conduit_cdt_data_io;
	input	[1:0]	sram_conduit_cdt_byteenable;
	inout	[15:0]	sram_controller_conduit_DQ;
	output	[19:0]	sram_controller_conduit_ADDR;
	output		sram_controller_conduit_LB_N;
	output		sram_controller_conduit_UB_N;
	output		sram_controller_conduit_CE_N;
	output		sram_controller_conduit_OE_N;
	output		sram_controller_conduit_WE_N;
	output		vga_conduit_CLK;
	output		vga_conduit_HS;
	output		vga_conduit_VS;
	output		vga_conduit_BLANK;
	output		vga_conduit_SYNC;
	output	[7:0]	vga_conduit_R;
	output	[7:0]	vga_conduit_G;
	output	[7:0]	vga_conduit_B;
endmodule
