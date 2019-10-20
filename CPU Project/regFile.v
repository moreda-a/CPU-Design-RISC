module regFIle(read_data1,read_data2,read_addr1,read_addr2,write_addr,write_data,write_en,clear,clk);
	
	output[15:0] read_data1,read_data2;
	input [4:0] read_addr1,read_addr2,write_addr;
	input[15:0] write_data;
	input write_en,clear,clk;
	
	reg[15:0] registers[31:0];
	integer i;

	always @(posedge clear,posedge clk)
	begin
		if(clear)
			for(i=0;i<32;i=i+1)
				registers[i]= 16'b0000000000000000;
		else if(write_en)
			registers[write_addr] = write_data;
	end
	
	assign read_data1=registers[read_addr1];
	assign read_data2=registers[read_addr2];

endmodule
