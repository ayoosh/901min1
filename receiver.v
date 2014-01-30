module receiver(input clk, input rst, input r_enable, input rxd, input rec_enable, output reg [7:0]data, output reg rda);

	reg [3:0]i;
	reg [3:0]zcnt;
	reg start; // have we detected the start bit
	reg misery;
	reg [2:0]bitcnt;
	reg receive_sig;

	always@(posedge clk) begin
		receive_sig <= rxd;

		if (rst) begin
			data <= 0;
			rda <= 0;
			i <= 4'b1111;
			zcnt <= 0;
			start <= 0;
			bitcnt <= 0;
			misery <= 0;
		end

		else if (r_enable) begin
			if (start == 0 && receive_sig == 1) begin // Sanity check only to bypass idle condition
			end
			else if (start == 0) begin // First worry about start bit
				if (receive_sig == 0 && misery == 0) begin
					misery <= 1;
					zcnt <= zcnt + 1;
					i <= i - 1;
				end
				else if (misery == 1) begin
					if (i != 0) begin
						i <= i - 1;
						if (receive_sig == 0) begin
							zcnt <= zcnt + 1;
						end		
					end
					else begin
						if (zcnt > 4'd8) begin
							start <= 1;
						end
						i <= 4'b1111;
						zcnt <= 0;
						misery <= 0;
					end
				end
			end

			else if (start == 1) begin
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
					if (receive_sig == 0) begin
						zcnt <= zcnt + 1;
					end
				end
				
				if (bitcnt == 3'b111) begin	
			
			
				end
			end			
		end
	end
endmodule
