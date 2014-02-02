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
module driver(input clk, input rst, input [1:0] br_cfg, output reg iocs, output reg iorw, input rda, input tbr, output reg [1:0] ioaddr, inout [7:0] databus);

reg [7:0]data;
assign databus = ((iorw == 1'b0) ? data : 8'hzz);
reg baud_done;			// Done with sending baud rate configuration.
reg [7:0]internal_data;	// Internal storage to keep data to be echoed.
reg have_data;			// Do we have data to send. If yes send to spart to transmit
reg ready_for_data;		// rda is high for many clock cycles. So this becomes the flag to differentiate if we have asserted control signals to read data in next clock cycle.
always@(posedge clk) begin
	if (rst) begin
		iocs <= 0;
		iorw <= 0;
		ioaddr <= 2'b00;
		data <= 0;
		baud_done <= 0;
		internal_data <= 0;
		have_data <= 0;
		ready_for_data <= 0;
	end
	
	// Strict order. Send lower byte of baud rate first.
	else if (baud_done == 0) begin
		if (ioaddr == 2'b00) begin
			iocs <= 1;
			ioaddr <= 2'b10;
			iorw <= 0;
			if (br_cfg == 2'b00)
				data <= 8'h15;
			if (br_cfg == 2'b01)
				data <= 8'h8a;
			if (br_cfg == 2'b10)
				data <= 8'h45;
			if (br_cfg == 2'b11)
				data <= 8'ha2;
		end

		else if (ioaddr == 2'b10) begin
			iocs <= 1;
			ioaddr <= 2'b11;
			iorw <= 0;
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

	// If have data to send, Transmit.
	else if (tbr == 1 && have_data == 1) begin
		iocs <= 1;
		iorw <= 0;
		ioaddr <= 2'b00;
		data <= internal_data;
		have_data <= 0;
	end
	
	// If no data to send, wait for rda, then receive data
	else if (have_data == 0 && rda == 1) begin
		if (ready_for_data == 0) begin
			iocs <= 1;
			iorw <= 1;
			ioaddr <= 2'b00;
			ready_for_data <= 1;
		end
		else if (ready_for_data == 1) begin
			internal_data <= databus;
			have_data <= 1'b1;
			ready_for_data <= 1'b0;
			iocs <= 1'b0;
		end
	end

	// No data to send, rda is low. Time to be lazy.
	else begin
	   iocs <= 1'b0; // Sanity keep iocs to 0 if nothing to do
   end
end
endmodule
