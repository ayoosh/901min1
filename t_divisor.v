// Testbench to check the divisor load operation. 
//This testbench loads the value of div_high buffer and div_low buffer with the appropriate values sent by the processor through the data bus. 
//Baud_write is the signal generated by the combinational logic for which IOCS, IORW and IOADDR are the inputs
// The convention followed is the lower byte is loaded first and then the higher byte.

`timescale 1ns/1ps

module t_divisor_buf;
reg rst, clk, baud_write;
reg [1:0] io_addr;
reg [7:0] data_in;
wire [15:0] div_buf;
wire buf_rdy;

divisor_buf div(rst, clk, io_addr, baud_write, data_in, div_buf, buf_rdy);

initial begin
	baud_write = 0;
	rst = 1;
	clk = 1;
	#4 rst = 0;
	 baud_write = 1;
	#4 data_in = 8'b10101010;
	io_addr = 2'b10;
	#4 data_in = 8'b01010000;
	io_addr = 2'b11;
	#2 baud_write = 0;
	#4 rst = 1;
	#4 rst = 0;
	#4 io_addr = 2'b10;
	 baud_write = 1;
	 data_in = 8'b00001111;
	 data_in = 8'b01010000;
	 io_addr = 2'b11;
	#2 baud_write = 0;
end

always
#1 clk = ~clk;

initial 
#500 $stop;

initial
$monitor($time, data_in, div_buf);

endmodule
	