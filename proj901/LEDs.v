`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:50:57 01/20/2014 
// Design Name: 
// Module Name:    LEDs 
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
module LEDs(clk, RST, LEDs_8Bit, txd, rxd, br_cfg); // Using the project from the LEDs sameple.
output txd;        // RS232 Transmit Data
input rxd;         // RS232 Recieve Data
input RST;
input clk;
output reg [7:0]LEDs_8Bit;
input [1:0] br_cfg;
reg debug_spart;

wire iocs;
wire iorw;
wire rda;
wire tbr;
wire [1:0] ioaddr;
wire [7:0] databus;
wire [7:0] top_spart_led;
wire [7:0] top_driver_led;

//assign LEDs_8Bit = (debug_spart) ? top_spart_led : top_driver_led;

	spart spart0( .clk(clk),
                 .rst(RST),
					  .iocs(iocs),
					  .iorw(iorw),
					  .rda(rda),
					  .tbr(tbr),
					  .ioaddr(ioaddr),
					  .databus(databus),
					  .txd(txd),
					  .rxd(rxd)
					);

	driver driver0( .clk(clk),
	                .rst(RST),
						 .br_cfg(br_cfg),
						 .iocs(iocs),
						 .iorw(iorw),
						 .rda(rda),
						 .tbr(tbr),
						 .ioaddr(ioaddr),
						 .databus(databus)
					 );

//Just to see something change
always@(posedge clk, posedge RST) begin
	if(RST) begin
		//debug_spart <= 1;
		LEDs_8Bit <= 8'b11111111;
	end
	else begin
		LEDs_8Bit <= 8'b10101010;
	end
end

endmodule
