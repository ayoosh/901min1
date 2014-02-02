//Toplevel of the test bench which has interacting modules.
//Here, 'terminal is a module which mimics the behaviour of the computer which sends the data to the FPGA through the txd and rxd lines.
//Spart module receives data from the rxd line and sends it to the driver on the databus. It also sends the data in serial form at the specifies baud rate to through the serial port.
//Driver is the processor which monitors the TBR and RDA lines and sends or receives data respectively.

`timescale 1ns/1ps
module t_receiver;

reg clk, rst, rst1;
wire data;
wire [7:0]data_bus;
reg [1:0]baud;
wire [1:0]io;
wire tr;
wire iocs, iorw, rda, tbr;

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

terminal term(.clk(clk), .rst(rst1), .data(data));    //Instantiation of the terminal which emulates the behaviour of a computer
spart spt_module(.clk(clk), .rst(rst), .iocs(iocs), .iorw(iorw),.rda(rda), .tbr(tbr), .ioaddr(io), .databus(data_bus), .txd(tr), .rxd(data)); //Instantiates the spart module
driver processor(.clk(clk), .rst(rst), .br_cfg(baud), .iocs(iocs),.iorw(iorw), .rda(rda), .tbr(tbr), .ioaddr(io), .databus(data_bus)); //Instantiation of the driver

endmodule  