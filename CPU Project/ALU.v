module ALU(Data_out,sign,zero,equal,overflow,Data1,Data2,operation,shift_amount);
	
	output[15:0] Data_out;
	output sign,zero,overflow,equal;
	input [15:0] Data1,Data2;
	input[2:0] operation;
	input[3:0] shift_amount;
	
	reg[15:0] Data_out;
	reg sign,zero,overflow,equal;

	always @(Data1,Data2,operation,shift_amount)
	begin
		sign =1'b0;
		zero=1'b0;
		overflow=1'b0;
		equal=1'b0;

		case(operation)
			3'b000: Data_out = Data2;//DATA1
			3'b001: begin
					Data_out = Data1 + Data2;
					overflow = (Data1[15] & Data2[15] & ~Data_out[15]) | (~Data1[15] & ~Data2[15] & Data_out[15]);
				end
			3'b010:begin
					Data_out = Data1 - Data2;
					overflow = (Data1[15] & ~Data2[15] & ~Data_out[15]) | (~Data1[15] & Data2[15] & Data_out[15]);
				end
			3'b011: begin
					Data_out = Data1 >> shift_amount;
					overflow = (Data1[15] & ~Data_out[15]) | (~Data1[15] & Data_out[15]);
				end
			3'b100: begin
					Data_out = Data1 << shift_amount;
					overflow = (Data1[15] & ~Data_out[15]) | (~Data1[15] & Data_out[15]);
				end
			3'b101: Data_out = ~(Data1 & Data2);
			3'b110: begin
					Data_out = Data1;
					equal = (Data1 == Data2) ? 1 :0;
				end
			3'b111: Data_out = (Data1 < Data2) ? Data2 :Data1;	
		endcase
		
		zero = ~|Data_out;
		sign = Data_out[15];
	end

endmodule