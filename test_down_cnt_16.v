`timescale 1ns/1ps
module t_down_cnt_16;
reg rst, clk, wr_en;
reg [15:0]in;
wire zero;

downcounter_16 dcnt_16(rst, clk, wr_en, in, r_enable, t_enable);

initial begin
	rst = 1;
	clk = 1;
	#10 rst = 0;
	#10 in = 16'b0000000000001111;
	#2 wr_en = 1;
	#2 wr_en = 0;
end

always
#1 clk = ~clk;

initial
	#1500 $stop;

initial
	$monitor ($time, r_enable, t_enable);

endmodule