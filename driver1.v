module driver1(input clk, input rst, input [1:0] br_cfg, output reg iocs, output reg iorw, input rda, input tbr, output reg [1:0] ioaddr, inout [7:0] databus);

reg [7:0]data;
assign databus = (iorw ==1'b0) ? data : 8'hzz;
reg baud_done;
reg [7:0]i;
reg flag;

reg [7:0]received_data;

always@(posedge clk) begin
	if (rst) begin
		iocs <= 0;
		iorw <= 0;
		ioaddr <= 0;
		data <= 0;
		baud_done <= 0;
		i <= 8'h07;
		flag <=1'b1;
	end
	
	else if (baud_done == 0) begin
		if (ioaddr == 0) begin
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

	else if (rda== 1'b1 && flag ==1'b1) begin
		iocs <= 1;
		iorw <= 1;
		ioaddr <= 0;
		flag <= 1'b0;
	end
	else if (rda== 1'b1 && flag ==1'b0) begin
		iocs <= 0;
	end
	else if(flag == 1'b0) begin
		received_data <= data;
		flag <= 1'b1;
		$monitor(received_data);
	end
	else
	iocs <= 0;
end
endmodule