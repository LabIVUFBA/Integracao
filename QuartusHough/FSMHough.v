
module FSMHough(clock, reset, hough_result, theta, write_enable, ready, address, x_address, y_address, current_state, next_state, valid, data, count_frames);
input clock, reset, valid;
input[239:0] data;
input[10:0] hough_result;
output reg[9:0] x_address;
output reg[8:0] y_address;
output reg[7:0] theta;
output reg write_enable, ready;
output reg signed[10:0] address; // endereço de 11 bits = 2048 possíveis valores para representar os 1600 possíveis valores de rho
output reg[8:0] current_state, next_state;
output reg[18:0] count_frames; //contagem das 307200 posições da matriz de dados que vão ser recebidos da interface avalon
reg edge_detection_data [0:307199];
reg[7:0] i;

parameter 
	idle_state = 9'b000000001,
	receive_data = 9'b000001000,
	check_value = 9'b000000010,
	calculate_hough = 9'b000000100,
	accumulate = 9'b000010000,
	increase_theta = 9'b000100000,
	increase_y = 9'b001000000,
	increase_x = 9'b010000000,
	finished = 9'b100000000;

parameter max_rho = 10'b1100100000;

always @ (current_state or valid or x_address or y_address or count_frames)
begin
case (current_state)
	idle_state : 
		begin 
			if (valid) next_state = receive_data;
			else next_state = idle_state;
		end
	receive_data :
		begin
			if (count_frames == 19'b1001011000000000000) next_state = check_value;
			else 
			begin
				next_state = receive_data;
				for (i = 0; i < 240; i = i +1) begin
    				edge_detection_data[i+count_frames] = data[i];
				end
			end
		end
	check_value :
		begin
			if (edge_detection_data[(y_address*640) + x_address] == 1) next_state = calculate_hough;
			else
			begin
				if (x_address == 10'b1001111111)
						begin
							if (y_address == 9'b111011111) next_state = finished;
							else next_state = increase_y;
						end
					else next_state = increase_x;
			end
		end
	calculate_hough : 
		begin
			next_state = accumulate;
		end
	accumulate: 
		begin
			if (theta == 8'b10110100)
				begin
					if (x_address == 10'b1001111111)//if (x == 10'b1001111111)
						begin
							if (y_address == 9'b111011111) /*if (y == 9'b111011111)*/ next_state = finished;
							else next_state = increase_y;
						end
					else next_state = increase_x;
				end
			else next_state = increase_theta;
		end
	increase_theta:
		begin
			next_state = calculate_hough;
		end
	increase_x:
		begin
			next_state = check_value;
		end
	increase_y:
		begin
			next_state = check_value;
		end
	finished:
		begin
			next_state = idle_state;
		end
	default : next_state = current_state;
endcase
end

always @ (posedge valid)
begin
	count_frames = count_frames + 240;
end


always @ (posedge clock or negedge reset) 
begin
	if (!reset)
		current_state <= idle_state;
	else
	begin
		current_state <= next_state;
		case (next_state)
			idle_state: 
				begin
					x_address <= 0;
					y_address <= 0;
					theta <= 0;
					write_enable <= 0;
					count_frames <= 0;
				end
			receive_data:
				begin
					ready <= 0;
				end
			calculate_hough: 
				begin
					ready <= 0;
				end
			accumulate: 
				begin
					address <= hough_result + max_rho;
					write_enable <= 1;
				end
			increase_y:
				begin
					write_enable <= 0;
					x_address <= 0;
					theta <= 0;
					y_address <= y_address + 1;
				end
			increase_x:
				begin
					write_enable <= 0;
					theta <= 0;
					x_address <= x_address + 1;
				end
			increase_theta:
				begin
					write_enable <= 0;
					theta <= theta + 1;
				end
			finished:
				begin
					ready <= 1;
				end
			default: next_state <= idle_state;
		endcase
	end
end


endmodule
 