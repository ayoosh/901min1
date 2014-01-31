module terminal(input clk, input rst, output data);

reg [11:0]data_send;
reg [15:0]baud_counter;
reg [3:0]data_counter;
reg [3:0]i;

assign data = data_send[0];

always@(posedge clk)begin
	if(rst)begin
		data_send <= 12'hAAB; // 1010 1010 1011
		baud_counter <= 16'h28A7;
		data_counter <= 4'b1100;
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