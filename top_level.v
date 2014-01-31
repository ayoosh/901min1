`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:   
// Design Name: 
// Module Name:    top_level 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
//module top_level(
////    clk,         // 100mhz clock
////    rst,         // Asynchronous reset, tied to dip switch 0
////    txd,        // RS232 Transmit Data
////    rxd,         // RS232 Recieve Data
////    br_cfg, // Baud Rate Configuration, Tied to dip switches 2 and 3
//	 GPIO_LED_0,
//	 GPIO_LED_1
//    );
//	
////	input clk,         // 100mhz clock
////    input rst,         // Asynchronous reset, tied to dip switch 0
////    output txd,        // RS232 Transmit Data
////    input rxd,         // RS232 Recieve Data
////    input [1:0] br_cfg, // Baud Rate Configuration, Tied to dip switches 2 and 3
//	 output reg GPIO_LED_0;
//	 output reg GPIO_LED_1;
////	
////	wire iocs;
////	wire iorw;
////	wire rda;
////	wire tbr;
////	wire [1:0] ioaddr;
////	wire [7:0] databus;
////	
//
//	// Instantiate your SPART here
//	/*spart spart0( .clk(clk),
//                 .rst(rst),
//					  .iocs(iocs),
//					  .iorw(iorw),
//					  .rda(rda),
//					  .tbr(tbr),
//					  .ioaddr(ioaddr),
//					  .databus(databus),
//					  .txd(txd),
//					  .rxd(rxd)
//					);
//
//	// Instantiate your driver here
//	driver driver0( .clk(clk),
//	                .rst(rst),
//						 .br_cfg(br_cfg),
//						 .iocs(iocs),
//						 .iorw(iorw),
//						 .rda(rda),
//						 .tbr(tbr),
//						 .ioaddr(ioaddr),
//						 .databus(databus)
//					 );*/
//	//always@(posedge clk) begin
//		//if (rst) begin
//		always begin
//		GPIO_LED_0 <= 1;
//		GPIO_LED_1 <= 0;
//		end
//		//end
//		//else begin
//		//	GPIO_LED_1 <= ~GPIO_LED_1;
//		//end
//	//end
//					 
//endmodule

module top_level (clk, rst, LEDs_8Bit);
input rst;
input clk;
output reg [7:0]LEDs_8Bit;

always@(posedge clk, posedge rst) begin
	if(rst) begin
		LEDs_8Bit <= 8'b10101010;
	end
	else begin
		LEDs_8Bit <= 8'b11110000;
	end
end

endmodule