`timescale 1ns/1ps

module top();

	reg [7:0] a = 8'd12;
	reg [7:0] b = 8'd34;
	integer c = 67;
	integer d = 255;

	initial begin
		#12;

		$display("a = %0d, b = %0d, c = %0d, d = %0d", a, b, c, d);
	end

endmodule