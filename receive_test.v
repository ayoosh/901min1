module t_receiver;

reg clk, rst;
wire data;
wire [7:0]data_bus;
reg [1:0]baud;
wire [1:0]io;
wire tr;
wire iocs, iorw, ioaddr,rda, tbr;

initial begin
	clk = 1;
	rst = 1;
	baud = 2'b00;
	#2 rst = 0;
end

always
#1 clk = ~clk;

terminal t(.clk(clk), .rst(rst), .data(data));
spart (.clk(clk), .rst(rst), .iocs(iocs), .iorw(iorw),.rda(rda), .tbr(tbr), .ioaddr(io), .databus(data_bus), .txd(tr), .rxd(data));
driver1 (.clk(clk), .rst(rst), .br_cfg(baud), .iocs(iocs),.iorw(iorw), .rda(rda), .tbr(tbr), .ioaddr(io), .databus(data_bus));

endmodule  