//Testbench to check the functionality of the down-counter in the baud rate generator. 
//This testbench gives a pseudo value to the divisor value and starts the counter through the wr_en signal. 
//r_enable signal runs at 16X of the baud rate and acts as enable signal for the receiver block. t_enable runs at the baud rate and acts as an enable for the transmitter block.

`timescale 1ns/1ps
module t_down_cnt_16;

reg rst, clk, wr_en;
reg [15:0]in;
wire r_enable, t_enable;

downcounter_16 dcnt_16(rst, clk, wr_en, in, r_enable, t_enable);

initial begin
	rst = 1;
	clk = 1;
	#10 rst = 0;
	#10 in = 16'b0000000000001111; //starting value for the counter
	#2 wr_en = 1; // Starts the down-count operation
	#2 wr_en = 0;
end

always
#1 clk = ~clk;

initial
	#1500 $stop;

initial
	$monitor ($time, r_enable, t_enable);

endmodule