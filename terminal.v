module terminal(input clk, input rst, output data);

reg [11:0]data_send;
reg [15:0]baud_counter;
reg [3:0]i;

assign data = data_send[0];

always@(posedge clk)begin
	if(rst)begin
		data_send <= 12'hAAB; // 1-01010101-0-11 -> Stop bit - 8 data bits MSB to LSB - Start bit - stop bits...
		baud_counter <= 16'h28A7; // generates a baud rate of 9600. Changing its values changes the baud rates to 4800, 19200, 38400
	end
	else begin
		if(baud_counter == 0)begin
			baud_counter <= 16'h28A7;
			for(i=0 ;i < 4'b1011; i = i+1)
				data_send[i] <= data_send[i+1];
			data_send[11] <= data_send[0];
		end
		else
			baud_counter <= baud_counter - 1;
	end
end

endmodule