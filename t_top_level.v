`timescale 1ns/1ps

module t_top;
reg rst, clk;
reg [1:0] br_cfg;

top_level top ( 
   clk,         // 100mhz clock
   rst,         // Asynchronous reset, tied to dip switch 0
   txd,        // RS232 Transmit Data
   rxd,         // RS232 Recieve Data
   br_cfg // Baud Rate Configuration, Tied to dip switches 2 and 3
    );

initial begin
	rst = 1;
	clk = 1;
	br_cfg = 2'b11;
	#4 rst = 0;
end

always
#1 clk = ~clk;

initial 

#5000000 $stop;

initial
$monitor ($time, txd);

endmodule
	