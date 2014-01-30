module receiver(input clk, input rst, input r_enable, input rxd, input rec_enable, output [7:0]data, output rda);

	reg [7:0]data;
	reg rda;
	reg [3:0]i;
	reg [3:0]zcnt;
	reg start; // have we detected the start bit
	reg [2:0]bitcnt;	

	always@(posedge clk) begin
		if (rst) begin
			data <= 0;
			rda <= 0;
			i <= 4'b1111;
			zcnt <= 0;
			start <= 0;
			bitcnt <= 0;
		end

		else if (r_enable) begin
			if (start == 0 && rxd == 1) begin // Sanity check only to bypass idle condition
			end
			else if (rxd == 0 && start == 0) begin
				zcnt <= zcnt + 1;
				if (i == 0) begin
					if (zcnt > 4'd8) begin
						start <= 1;
					end
					i <= 4'b1111;
					zcnt <= 0;
				end
				else begin
						i <= i - 1;
				end
			end

			else if (start == 1) begin
				if (rxd == 0) begin
					zcnt <= zcnt + 1;
				end
				if (i == 0) begin
					if (zcnt > 4'd8) begin
						data[bitcnt] <= 0;
					end
					else begin
						data[bitcnt] <= 1;
					end
					i <= 4'b1111;
					zcnt <= 0;
					bitcnt <= bitcnt + 1;
				end
				else begin
					i <= i - 1;
				end
				
				if (bitcnt == 3'b111) begin



			end			
		end
	end
endmodule
