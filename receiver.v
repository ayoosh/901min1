module receiver(
			input clk,
			input rst,
			input r_enable, 		// 16x baudrate enables from baud rate generator
			input rxd, 				// connected to serial input
			input rec_enable, 	// High for one clock when processor reads data
			output reg [7:0]data,// Connected to processor bus
			output reg rda			// indicates to processor that data is ready to be read. Make low after rec_enable is detected
			);

	reg [4:0]samplescnt;	// keep track of samples
	reg [3:0]zcnt; 		// number of zeroes in current bit samples
	reg start; 				// have we confirmed the start bit
	reg misery; 			// are we potentially sampling for the start bit
	reg [3:0]bitcnt;		// keep track of bits received of the final byte
	reg receive_sig, resynch;
	
	always@(posedge clk) begin
		resynch <= rxd;
		receive_sig <= resynch; // Two level Resynchronization
		
		if (rst) begin
			data <= 0;
			rda <= 0;
			samplescnt <= 0;
			zcnt <= 0;
			start <= 0;
			bitcnt <= 0;
			misery <= 0;
		end

		
		// This block runs at system clock.
		if (rec_enable == 1 && rda == 1) begin // rda == 1 is mandated by handshake. But the processor can violate protocol and try to read even if rda is not 1
			rda <= 0;
			start <= 0;
			bitcnt <= 0;
		end
		else if (bitcnt == 4'h8) begin // > condition should not occur at all
			rda <= 1;		
		end
		
		else if (start == 0 && rda == 0) begin
			// 16x baud rate block
			if (r_enable && samplescnt < 5'd16) begin
				if (misery == 0 && receive_sig == 1) begin // Sanity check only to bypass idle condition
				end
				else if (misery == 0 && receive_sig == 0) begin // Wait till first zero sample is detected. Start 16 samples from here.
					misery <= 1; // We have started sampling for the start bit now
					zcnt <= zcnt + 1;
					samplescnt <= samplescnt + 1;
				end
				else if (misery == 1) begin
					samplescnt <= samplescnt + 1;
					if (receive_sig == 0) begin
						zcnt <= zcnt + 1;
					end		
				end
			end // r_enable && samplescnt < 5'd16
			
			// This block syncs with system clock
			else if (samplescnt == 5'd16) begin
				if (zcnt > 4'd8) begin
					start <= 1;
				end
					samplescnt <= 0;
					zcnt <= 0;
					misery <= 0;	
			end
		end // start == 0 && rda == 0

		else if (start && rda == 0)begin // need to stop further receive till rda goes low
			// 16x baudrate clock samples
			if (r_enable && samplescnt < 5'd16) begin
				samplescnt <= samplescnt + 1;
				if (receive_sig == 0) begin
					zcnt <= zcnt + 1;
				end
			end
			
			// System clock
			else if (samplescnt >= 5'd16 && bitcnt < 4'h8) begin
				if (zcnt > 4'd8) begin
					data[bitcnt] <= 0;
				end
				else begin
					data[bitcnt] <= 1;
				end
				samplescnt <= 0;
				zcnt <= 0;
				bitcnt <= bitcnt + 1;
			end
		end // start == 1 && rda == 0
	end // always block ends
endmodule
