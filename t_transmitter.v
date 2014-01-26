`timescale 1ns/1ps
module t_transmitter;
reg rst, clk, t_enable, baud_enable;
reg [15:0]data;
wire txd, tbr;

transmitter trans(rst, clk, baud_enable, t_enable, data, txd, tbr);
initial begin
	baud_enable = 0;
	t_enable = 0;
	rst = 1;
	clk = 1;
	#10 rst = 0;
	#0 data = 8'b11111110;
	#2 t_enable = 1;
	#2 t_enable = 0;
	#10 baud_enable = 1;
	#2	baud_enable = 0;
	#10 baud_enable = 1;
	#2	baud_enable = 0;
	#10 baud_enable = 1;
	#2	baud_enable = 0;
	#10 baud_enable = 1;
	#2	baud_enable = 0;
	#10 baud_enable = 1;
	#2	baud_enable = 0;
	#10 baud_enable = 1;
	#2	baud_enable = 0;
	#10 baud_enable = 1;
	#2	baud_enable = 0;
	#10 baud_enable = 1;
	#2	baud_enable = 0;
	#10 baud_enable = 1;
	#2	baud_enable = 0;
	#10 baud_enable = 1;
	#2	baud_enable = 0;
	#10 baud_enable = 1;
	#2	baud_enable = 0;
	#10 baud_enable = 1;
	#2	baud_enable = 0;

end

always
#1 clk = ~clk;

initial
	#200 $stop;

endmodule