// wr_en : goes high once the baud rate generator register is loaded with appropriate value and goes low in next cycle

module downcounter_16(rst, clk, wr_en, in, r_enable, t_enable);
input rst, clk, wr_en;
input [15:0]in;
output reg r_enable, t_enable;

reg rdy;
reg [15:0]shift_reg;
reg [4:0]count;

always@(posedge clk) begin
	if (rst) begin
		shift_reg <= 0;
		r_enable <= 0;
		t_enable <= 0;
		rdy <= 1'b0;
		count <= 5'b00000;
	end

	else begin
		if (wr_en) begin
			shift_reg <= in;
			count <= 0;
			rdy <= 1'b1;
		end

		else begin
			if(rdy) begin
				if (shift_reg == 0) begin
					r_enable <= 1'b1;
					count <= count + 1;
					if(count == 5'b01111) begin
						count <= 0;
						t_enable <= 1'b1;
					end
					shift_reg <= in;
				end
				else begin
					shift_reg <= shift_reg - 1;
					r_enable <= 0;
					t_enable <= 0;
				end
			end
			else begin
				t_enable <= 1'b0;
				shift_reg <= 1'b0;
				r_enable <= 1'b0;
			end
		end
	end
end
endmodule
