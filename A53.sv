`timescale 1ns/1ps

module tb;


	bit clk = 0;

	always #20 clk  = ~clk;

	bit [5:0] addr;
	bit en, wr;
	int counter = 0;

	task stim();
      counter++;
		@(posedge clk) begin
			case(counter)	
				1: begin
					en = 1;
					wr = 1;
					addr = 12;
				end

				2: begin
					addr = 14;
				end

				3: begin
					wr = 0;
					addr = 23;
				end

				4: begin
					addr = 48;
				end

				5: begin
					en = 0;
					addr = 56;
				end

				default : begin
					en = 0;
					wr = 0;
					addr = 0;
				end
			endcase

		$display("at iteration:%0d en is %0b wr is %0b and addr is %0d",counter, en, wr, addr);
		end



	endtask

	initial begin
		#220;
		$finish();
	end

	always stim();

endmodule