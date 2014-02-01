`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    
// Design Name: 
// Module Name:    driver 
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
module driver(input clk, input rst, input [1:0] br_cfg, output reg iocs, output reg iorw, input rda, input tbr, output reg [1:0] ioaddr, inout [7:0] databus, output reg [7:0]driver_led);

reg [7:0]data;
assign databus = ((iorw == 1'b0) ? data : 8'hzz);
reg baud_done;
reg [7:0]i;
reg flag;
reg [7:0]internal_data;
reg have_data; // Is there data in internal_data to transmit
reg ready_for_data; // 
always@(posedge clk) begin
	if (rst) begin
		iocs <= 0;
		iorw <= 0;
		ioaddr <= 2'b00;
		data <= 0;
		baud_done <= 0;
		i <= 8'h07;
		flag <= 1'b1;
		internal_data <= 0;
		have_data <= 0;
		ready_for_data <= 0;
	end
	
	else if (baud_done == 0) begin
		if (ioaddr == 2'b00) begin
			iocs <= 1;
			ioaddr <= 2'b10;
			iorw <= 0;
			if (br_cfg == 2'b00)
				data <= 8'h16;
			if (br_cfg == 2'b01)
				data <= 8'h8b;
			if (br_cfg == 2'b10)
				data <= 8'h46;
			if (br_cfg == 2'b11)
				data <= 8'ha3;
		end

		else if (ioaddr == 2'b10) begin
			iocs <= 1;
			ioaddr <= 2'b11;
			iorw <= 2'b00;
			baud_done <= 1;
			if (br_cfg == 2'b00)
				data <= 8'h05;
			if (br_cfg == 2'b01)
				data <= 8'h02;
			if (br_cfg == 2'b10)
				data <= 8'h01;
			if (br_cfg == 2'b11)
				data <= 8'h00;
		end
	end

	else if (tbr == 1 && have_data == 1) begin
		iocs <= 1;
		iorw <= 0;
		ioaddr <= 2'b00;
		data <= internal_data;
		have_data <= 0;
	end
	
	else if (have_data == 0 && rda == 1) begin
		if (ready_for_data == 0) begin
			iocs <= 1;
			iorw <= 1;
			ioaddr <= 0;
			ready_for_data <= 1;
		end
		else if (ready_for_data == 1) begin
			internal_data <= data;
			have_data <= 1'b1;
			ready_for_data <= 1'b0;
			iocs <= 1'b0;
		end
	end

	else begin
	   iocs <= 1'b0; // Sanity keep iocs to 0 if nothing to do
   end
end
endmodule
