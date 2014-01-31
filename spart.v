`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:   
// Design Name: 
// Module Name:    spart 
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
module spart( input clk, input rst, input iocs, input iorw, output rda, output tbr, input [1:0]ioaddr, inout [7:0]databus, output txd, input rxd);

wire [7:0]bus;
wire [15:0]bus_from_buf_to_counter;
wire trans_enable;
wire rec_enable;
wire divisor_enable;
wire rdy;
wire d_enable;
wire r_enable;

assign rec = (iocs && ioaddr == 2'b00 && iorw == 1'b1) ? 1'b1 : 1'b0;
assign databus = ((iorw == 1'b1 && ((ioaddr==00) || (ioaddr==01))) ? bus : 8'hzz);
assign divisor_enable = (iocs && (ioaddr == 2'b10 || ioaddr == 2'b11)) ? ~iorw : 1'b0;
assign d_enable = (iocs && ioaddr == 2'b00 && iorw == 1'b0) ? 1'b1 : 1'b0;  
assign rec_enable = (iocs && ioaddr == 2'b00 && iorw == 1'b1) ? 1'b1 : 1'b0;  

divisor_buf d2(.rst(rst), .clk(clk), .io_addr(ioaddr), .baud_write(divisor_enable), .data_in(bus), .div_buf(bus_from_buf_to_counter), .buf_rdy(rdy));
downcounter_16 d1(.rst(rst), .clk(clk), .wr_en(rdy), .in(bus_from_buf_to_counter), .r_enable(r_enable), .t_enable(trans_enable));
transmitter t1(.clk(clk), .rst(rst),.baud_t_enable(trans_enable), .data_t_enable(d_enable),.data(databus),.txd(txd),.tbr(tbr));
receiver r(.clk(clk), .rst(rst), .r_enable(r_enable), .rxd(rxd), .rec_enable(rec_enable), .data(bus), .rda(rda));

endmodule
