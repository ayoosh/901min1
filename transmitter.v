// Transmitter has two enables. 't_enable' to load data into the register, 'baud_enable' comes from the BRG
// 't_busy' is set based on whether the shift reg is full or empty
// 0th bit of shift register is always stop bit
// 1st bit of shift register is always start bit
// Bits 9:2 are data bits

module transmitter(input clk, input rst,input baud_t_enable, input data_t_enable, input [7:0]data, output txd, output tbr);

reg t_busy; 
reg [3:0]i;						// To shorthand the shift register
reg [9:0]t_shift_reg; // Shift register which operates at baud rate
reg [3:0]t_count; 		//Counter which counts till 9

assign txd = t_shift_reg[0];
assign tbr = ~t_busy;
always@(posedge clk) begin
	if(rst)begin
		t_shift_reg <= 10'h3ff;
		t_count <= 0;
		t_busy <= 0;
	end

	else if(baud_t_enable && t_busy) begin
		for(i=0 ; i < 4'b1001; i=i+1)
			t_shift_reg[i] <= t_shift_reg[i+1];
		t_shift_reg[9] <= 1'b1;
		t_count <= t_count - 1'b1;
		if(t_count == 0)
			t_busy <= 1'b0;
	end

	else if(data_t_enable)begin
		t_shift_reg[9:2] <= data[7:0];
		t_shift_reg[1] <= 1'b0;
		t_busy <=1'b1;		
		t_count <= 4'b1001;
	end
end
endmodule