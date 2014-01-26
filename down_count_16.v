// wr_en : goes high once the baud rate generator register is loaded with appropriate value and goes low in next cycle

module downcounter_16(rst, clk, wr_en, in, zero);
input rst, clk, wr_en;
input [15:0]in;
output reg zero;

reg rdy;
reg [15:0]shift_reg;

always@(posedge clk) begin
	if (rst) begin
		shift_reg <= 0;
		zero <= 0;
		rdy <= 1'b0;
	end

	else begin
		if (wr_en) begin
			shift_reg <= in;
			rdy <= 1'b1;
		end

		else begin
			if(rdy) begin
				if (shift_reg == 0) begin
					zero <= 1'b1;
					shift_reg <= in;
				end
				else begin
					shift_reg <= shift_reg - 1;
					zero <= 0;
				end
			end
			else begin
				shift_reg <=0;
				zero <= 1'b0;
			end
		end
	end
end
endmodule
