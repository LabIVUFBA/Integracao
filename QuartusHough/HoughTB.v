`timescale 1ns/1ns
module HoughTB();

reg start, reset, clock;
reg [10:0] hough_result;
wire[9:0] x_address;
wire[8:0] y_address;
wire[7:0] theta;
wire write_enable, ready;
wire[10:0] address;
wire[8:0] current_state, next_state;
reg[239:0] data;
reg valid;
wire[18:0]count_frames;

integer count_write_enable;
integer count_theta;
integer count_accumulate;

integer arquivo;

FSMHough DUV(clock, reset, hough_result, theta, write_enable, ready, address, x_address, y_address, current_state, next_state, valid, data, count_frames);

always #10 clock = !clock;
always #200 hough_result = !hough_result;

initial begin

	reset = 1;
	valid = 0;

	// DEFININDO QUE A CADA FRAME DE 240 PIXELS, SOMENTE 1 PIXEL DE BORDA SERÁ ENCONTRADO!
	data[0] = 1;
	//data[100] = 1;
	#10 clock = 1;
	#10 clock = 0;
	#10 clock = 1;
	#10 clock = 0;
	//address = 11'b00100100100;

	hough_result = 11'b00000111111;

end

initial
begin
	repeat (4500)
	begin
		#200 valid = !valid;
	end
end


initial
begin
    //Incrementando o contador de theta toda vez que theta é modificado
    count_theta = 0;
	repeat (10000000)
	begin
		@(theta)
			if (theta != 0) count_theta = count_theta + 1;
	end
end

initial
begin
    //Incrementando o contador de wren toda vez que wren é modificado
    count_write_enable = 0;
	repeat (10000000)
	begin
		@(posedge write_enable)
			count_write_enable = count_write_enable + 1;
	end
end


initial
begin
    //Incrementando o contador de wren toda vez que wren é modificado
    count_accumulate = 0;
	repeat (10000000)
	begin
		@(current_state)
            if (current_state == 16) count_accumulate = count_accumulate + 1;
	end
end


initial
begin
	#150000000
    $display("\n------------ count_write_enable: ------------\n"); 
    $display(count_write_enable);
    $display("\n------------ count_theta: ------------\n"); 
    $display(count_theta);
    $display("\n------------ count_accumulate: ------------\n"); 
    $display(count_accumulate);
end

initial begin
    arquivo = $fopen("acumulacao.txt", "w");         
end

always @ (posedge write_enable) begin
	$fwrite(arquivo,"%d %d\n", address, theta);
	if(x_address == 639 && y_address == 479) begin
		$fclose(arquivo);
	end
end

endmodule

