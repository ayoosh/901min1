module divisor_buf(rst, clk, io_addr, baud_write, data_in, div_buf, buf_rdy);
input rst, clk;
input [1:0] io_addr;
input [7:0] data_in;
input baud_write;
output reg [15:0] div_buf;
output reg buf_rdy;

always@(posedge clk) begin
	if(rst) begin
		div_buf <= 16'h0000;
		buf_rdy <= 0;
	end
	if(baud_write && io_addr == 2'b10) begin
		div_buf[7:0] <= data_in[7:0];
	end
	else if(baud_write && io_addr == 2'b11) begin
		div_buf[15:8] <= data_in[7:0];
		buf_rdy <= 1;
	end
	else 
		buf_rdy <= 0;
end

endmodule
		