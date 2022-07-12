`timescale 1ns/1ns
module HoughTB();

reg reset, clock;
wire [10:0] hough_result;
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
integer count_x;
integer count_y;


FSMHough DUV(clock, reset, hough_result, theta, write_enable, ready, address, x_address, y_address, current_state, next_state, valid, data, count_frames);

wire [15:0] sin_value, cos_value;

sin_LUT sen(theta, sen_value);
cos_LUT cos(theta, cos_value);

assign hough_result = x_address*cos_value + y_address*sen_value;
integer arquivo;



always #10 clock = !clock;

initial begin

reset = 1;
valid = 0;

// DEFININDO QUE A CADA FRAME DE 240 PIXELS, SOMENTE 3 PIXELS DE BORDA SERÃO ENCONTRADOS!
data = 10'b1001001000;
#10 clock = 1;
#10 clock = 0;
end


initial
begin
	repeat (4500)
	begin
		#40 valid = !valid;
	end
end


initial
begin
    #1000//Incrementando o contador de theta toda vez que theta é modificado
    count_x = 0;
	repeat (10000000)
	begin
		@(x_address)
			count_x = count_x + 1;
	end
end

initial
begin
    #1000
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
    //Incrementando o contador de theta toda vez que theta é modificado
    #1000
    count_y = 0;
	repeat (10000000)
	begin
		@(y_address)
			count_y = count_y + 1;
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
	#300000000
    $display("\n------------ count_write_enable: ------------\n"); 
    $display(count_write_enable);
    $display("\n------------ count_theta: ------------\n"); 
    $display(count_theta);
    $display("\n------------ count_x: ------------\n"); 
    $display(count_x);
    $display("\n------------ count_y: ------------\n"); 
    $display(count_y);


    if (count_x > 307200)
    begin
        $display("\n------------ A quantidade de valores de X percorridos não está condizente com 640*480!  ------------\n"); 
        $stop;
    end

    if (count_y > 480)
    begin
        $display("\n------------ A quantidade de valores de Y percorridos não está condizente com 640*480!  ------------\n"); 
        $stop;
    end

    $display("\n------------ Executado sem falhas! ------------\n"); 
    $stop;
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

