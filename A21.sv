`timescale 1ns/1ps

module tb();
	logic clk, resetn;

	initial begin
    	clk = 1'b0;
    	resetn = 1'b0;
    	#60;
    	resetn = 1'b1;
	end

	initial begin
		$dumpfile("dump.vcd");
		$dumpvars;
		#200;
		$finish();
	end

endmodule
