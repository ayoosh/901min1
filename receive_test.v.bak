`timescale 1ns/1ps
module t_receiver;

reg clk, rst, rst1;
wire data;
wire [7:0]data_bus;
reg [1:0]baud;
wire [1:0]io;
wire tr;
wire iocs, iorw, ioaddr,rda, tbr;

initial begin
	clk = 1;
	rst = 1;
	rst1 =1;
	baud = 2'b01;
	#2 rst = 0;
	#20 rst1 =0;
end

always
#1 clk = ~clk;

terminal term(.clk(clk), .rst(rst1), .data(data));
spart spt_module(.clk(clk), .rst(rst), .iocs(iocs), .iorw(iorw),.rda(rda), .tbr(tbr), .ioaddr(io), .databus(data_bus), .txd(tr), .rxd(data));
driver processor(.clk(clk), .rst(rst), .br_cfg(baud), .iocs(iocs),.iorw(iorw), .rda(rda), .tbr(tbr), .ioaddr(io), .databus(data_bus));

endmodule  