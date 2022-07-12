module cos_LUT (angle_value, cos_value); 

 output    reg     [15:0]     cos_value     = 16'd0; 
 input             [7:0]     angle_value; 




always @ (angle_value)
   case (angle_value)
     8'd  1 : begin cos_value = 16'b10000000000000000;  end 
     8'd  2 : begin cos_value = 16'b1111111111110110;  end 
     8'd  3 : begin cos_value = 16'b1111111111011000;  end 
     8'd  4 : begin cos_value = 16'b1111111110100110;  end 
     8'd  5 : begin cos_value = 16'b1111111101100000;  end 
     8'd  6 : begin cos_value = 16'b1111111100000110;  end 
     8'd  7 : begin cos_value = 16'b1111111010011000;  end 
     8'd  8 : begin cos_value = 16'b1111111000010111;  end 
     8'd  9 : begin cos_value = 16'b1111110110000010;  end 
     8'd 10 : begin cos_value = 16'b1111110011011001;  end 
     8'd 11 : begin cos_value = 16'b1111110000011100;  end 
     8'd 12 : begin cos_value = 16'b1111101101001011;  end 
     8'd 13 : begin cos_value = 16'b1111101001100111;  end 
     8'd 14 : begin cos_value = 16'b1111100101110000;  end 
     8'd 15 : begin cos_value = 16'b1111100001100101;  end 
     8'd 16 : begin cos_value = 16'b1111011101000110;  end 
     8'd 17 : begin cos_value = 16'b1111011000010101;  end 
     8'd 18 : begin cos_value = 16'b1111010011010000;  end 
     8'd 19 : begin cos_value = 16'b1111001101111000;  end 
     8'd 20 : begin cos_value = 16'b1111001000001101;  end 
     8'd 21 : begin cos_value = 16'b1111000010001111;  end 
     8'd 22 : begin cos_value = 16'b1110111011111111;  end 
     8'd 23 : begin cos_value = 16'b1110110101011011;  end 
     8'd 24 : begin cos_value = 16'b1110101110100110;  end 
     8'd 25 : begin cos_value = 16'b1110100111011110;  end 
     8'd 26 : begin cos_value = 16'b1110100000000011;  end 
     8'd 27 : begin cos_value = 16'b1110011000010111;  end 
     8'd 28 : begin cos_value = 16'b1110010000011001;  end 
     8'd 29 : begin cos_value = 16'b1110001000001000;  end 
     8'd 30 : begin cos_value = 16'b1101111111100111;  end 
     8'd 31 : begin cos_value = 16'b1101110110110011;  end 
     8'd 32 : begin cos_value = 16'b1101101101101111;  end 
     8'd 33 : begin cos_value = 16'b1101100100011001;  end 
     8'd 34 : begin cos_value = 16'b1101011010110011;  end 
     8'd 35 : begin cos_value = 16'b1101010000111011;  end 
     8'd 36 : begin cos_value = 16'b1101000110110011;  end 
     8'd 37 : begin cos_value = 16'b1100111100011011;  end 
     8'd 38 : begin cos_value = 16'b1100110001110011;  end 
     8'd 39 : begin cos_value = 16'b1100100110111011;  end 
     8'd 40 : begin cos_value = 16'b1100011011110011;  end 
     8'd 41 : begin cos_value = 16'b1100010000011011;  end 
     8'd 42 : begin cos_value = 16'b1100000100110100;  end 
     8'd 43 : begin cos_value = 16'b1011111000111110;  end 
     8'd 44 : begin cos_value = 16'b1011101100111001;  end 
     8'd 45 : begin cos_value = 16'b1011100000100110;  end 
     8'd 46 : begin cos_value = 16'b1011010100000100;  end 
     8'd 47 : begin cos_value = 16'b1011000111010101;  end 
     8'd 48 : begin cos_value = 16'b1010111010010111;  end 
     8'd 49 : begin cos_value = 16'b1010101101001100;  end 
     8'd 50 : begin cos_value = 16'b1010011111110011;  end 
     8'd 51 : begin cos_value = 16'b1010010010001101;  end 
     8'd 52 : begin cos_value = 16'b1010000100011011;  end 
     8'd 53 : begin cos_value = 16'b1001110110011011;  end 
     8'd 54 : begin cos_value = 16'b1001101000010000;  end 
     8'd 55 : begin cos_value = 16'b1001011001111001;  end 
     8'd 56 : begin cos_value = 16'b1001001011010101;  end 
     8'd 57 : begin cos_value = 16'b1000111100100111;  end 
     8'd 58 : begin cos_value = 16'b1000101101101101;  end 
     8'd 59 : begin cos_value = 16'b1000011110101000;  end 
     8'd 60 : begin cos_value = 16'b1000001111011001;  end 
     8'd 61 : begin cos_value = 16'b1000000000000000;  end 
     8'd 62 : begin cos_value = 16'b 111110000011100;  end 
     8'd 63 : begin cos_value = 16'b 111100000101111;  end 
     8'd 64 : begin cos_value = 16'b 111010000111000;  end 
     8'd 65 : begin cos_value = 16'b 111000000111001;  end 
     8'd 66 : begin cos_value = 16'b 110110000110000;  end 
     8'd 67 : begin cos_value = 16'b 110100000011111;  end 
     8'd 68 : begin cos_value = 16'b 110010000000110;  end 
     8'd 69 : begin cos_value = 16'b 101111111100110;  end 
     8'd 70 : begin cos_value = 16'b 101101110111110;  end 
     8'd 71 : begin cos_value = 16'b 101011110001110;  end 
     8'd 72 : begin cos_value = 16'b 101001101011000;  end 
     8'd 73 : begin cos_value = 16'b 100111100011011;  end 
     8'd 74 : begin cos_value = 16'b 100101011011000;  end 
     8'd 75 : begin cos_value = 16'b 100011010010000;  end 
     8'd 76 : begin cos_value = 16'b 100001001000001;  end 
     8'd 77 : begin cos_value = 16'b  11110111101110;  end 
     8'd 78 : begin cos_value = 16'b  11100110010110;  end 
     8'd 79 : begin cos_value = 16'b  11010100111001;  end 
     8'd 80 : begin cos_value = 16'b  11000011011000;  end 
     8'd 81 : begin cos_value = 16'b  10110001110100;  end 
     8'd 82 : begin cos_value = 16'b  10100000001100;  end 
     8'd 83 : begin cos_value = 16'b  10001110100000;  end 
     8'd 84 : begin cos_value = 16'b   1111100110010;  end 
     8'd 85 : begin cos_value = 16'b   1101011000010;  end 
     8'd 86 : begin cos_value = 16'b   1011001001111;  end 
     8'd 87 : begin cos_value = 16'b   1000111011011;  end 
     8'd 88 : begin cos_value = 16'b    110101100101;  end 
     8'd 89 : begin cos_value = 16'b    100011101111;  end 
     8'd 90 : begin cos_value = 16'b     10001110111;  end 
     8'd 91 : begin cos_value = 16'b               0;  end 
     8'd 92 : begin cos_value = 16'b     10001110111;  end 
     8'd 93 : begin cos_value = 16'b    100011101111;  end 
     8'd 94 : begin cos_value = 16'b    110101100101;  end 
     8'd 95 : begin cos_value = 16'b   1000111011011;  end 
     8'd 96 : begin cos_value = 16'b   1011001001111;  end 
     8'd 97 : begin cos_value = 16'b   1101011000010;  end 
     8'd 98 : begin cos_value = 16'b   1111100110010;  end 
     8'd 99 : begin cos_value = 16'b  10001110100000;  end 
     8'd100 : begin cos_value = 16'b  10100000001100;  end 
     8'd101 : begin cos_value = 16'b  10110001110100;  end 
     8'd102 : begin cos_value = 16'b  11000011011000;  end 
     8'd103 : begin cos_value = 16'b  11010100111001;  end 
     8'd104 : begin cos_value = 16'b  11100110010110;  end 
     8'd105 : begin cos_value = 16'b  11110111101110;  end 
     8'd106 : begin cos_value = 16'b 100001001000001;  end 
     8'd107 : begin cos_value = 16'b 100011010010000;  end 
     8'd108 : begin cos_value = 16'b 100101011011000;  end 
     8'd109 : begin cos_value = 16'b 100111100011011;  end 
     8'd110 : begin cos_value = 16'b 101001101011000;  end 
     8'd111 : begin cos_value = 16'b 101011110001110;  end 
     8'd112 : begin cos_value = 16'b 101101110111110;  end 
     8'd113 : begin cos_value = 16'b 101111111100110;  end 
     8'd114 : begin cos_value = 16'b 110010000000110;  end 
     8'd115 : begin cos_value = 16'b 110100000011111;  end 
     8'd116 : begin cos_value = 16'b 110110000110000;  end 
     8'd117 : begin cos_value = 16'b 111000000111001;  end 
     8'd118 : begin cos_value = 16'b 111010000111000;  end 
     8'd119 : begin cos_value = 16'b 111100000101111;  end 
     8'd120 : begin cos_value = 16'b 111110000011100;  end 
     8'd121 : begin cos_value = 16'b 111111111111111;  end 
     8'd122 : begin cos_value = 16'b1000001111011001;  end 
     8'd123 : begin cos_value = 16'b1000011110101000;  end 
     8'd124 : begin cos_value = 16'b1000101101101101;  end 
     8'd125 : begin cos_value = 16'b1000111100100111;  end 
     8'd126 : begin cos_value = 16'b1001001011010101;  end 
     8'd127 : begin cos_value = 16'b1001011001111001;  end 
     8'd128 : begin cos_value = 16'b1001101000010000;  end 
     8'd129 : begin cos_value = 16'b1001110110011011;  end 
     8'd130 : begin cos_value = 16'b1010000100011011;  end 
     8'd131 : begin cos_value = 16'b1010010010001101;  end 
     8'd132 : begin cos_value = 16'b1010011111110011;  end 
     8'd133 : begin cos_value = 16'b1010101101001100;  end 
     8'd134 : begin cos_value = 16'b1010111010010111;  end 
     8'd135 : begin cos_value = 16'b1011000111010101;  end 
     8'd136 : begin cos_value = 16'b1011010100000100;  end 
     8'd137 : begin cos_value = 16'b1011100000100110;  end 
     8'd138 : begin cos_value = 16'b1011101100111001;  end 
     8'd139 : begin cos_value = 16'b1011111000111110;  end 
     8'd140 : begin cos_value = 16'b1100000100110100;  end 
     8'd141 : begin cos_value = 16'b1100010000011011;  end 
     8'd142 : begin cos_value = 16'b1100011011110011;  end 
     8'd143 : begin cos_value = 16'b1100100110111011;  end 
     8'd144 : begin cos_value = 16'b1100110001110011;  end 
     8'd145 : begin cos_value = 16'b1100111100011011;  end 
     8'd146 : begin cos_value = 16'b1101000110110011;  end 
     8'd147 : begin cos_value = 16'b1101010000111011;  end 
     8'd148 : begin cos_value = 16'b1101011010110011;  end 
     8'd149 : begin cos_value = 16'b1101100100011001;  end 
     8'd150 : begin cos_value = 16'b1101101101101111;  end 
     8'd151 : begin cos_value = 16'b1101110110110011;  end 
     8'd152 : begin cos_value = 16'b1101111111100111;  end 
     8'd153 : begin cos_value = 16'b1110001000001000;  end 
     8'd154 : begin cos_value = 16'b1110010000011001;  end 
     8'd155 : begin cos_value = 16'b1110011000010111;  end 
     8'd156 : begin cos_value = 16'b1110100000000011;  end 
     8'd157 : begin cos_value = 16'b1110100111011110;  end 
     8'd158 : begin cos_value = 16'b1110101110100110;  end 
     8'd159 : begin cos_value = 16'b1110110101011011;  end 
     8'd160 : begin cos_value = 16'b1110111011111111;  end 
     8'd161 : begin cos_value = 16'b1111000010001111;  end 
     8'd162 : begin cos_value = 16'b1111001000001101;  end 
     8'd163 : begin cos_value = 16'b1111001101111000;  end 
     8'd164 : begin cos_value = 16'b1111010011010000;  end 
     8'd165 : begin cos_value = 16'b1111011000010101;  end 
     8'd166 : begin cos_value = 16'b1111011101000110;  end 
     8'd167 : begin cos_value = 16'b1111100001100101;  end 
     8'd168 : begin cos_value = 16'b1111100101110000;  end 
     8'd169 : begin cos_value = 16'b1111101001100111;  end 
     8'd170 : begin cos_value = 16'b1111101101001011;  end 
     8'd171 : begin cos_value = 16'b1111110000011100;  end 
     8'd172 : begin cos_value = 16'b1111110011011001;  end 
     8'd173 : begin cos_value = 16'b1111110110000010;  end 
     8'd174 : begin cos_value = 16'b1111111000010111;  end 
     8'd175 : begin cos_value = 16'b1111111010011000;  end 
     8'd176 : begin cos_value = 16'b1111111100000110;  end 
     8'd177 : begin cos_value = 16'b1111111101100000;  end 
     8'd178 : begin cos_value = 16'b1111111110100110;  end 
     8'd179 : begin cos_value = 16'b1111111111011000;  end 
     8'd180 : begin cos_value = 16'b1111111111110110;  end
   endcase
endmodule