`timescale 1ns/1ps

module tb();

	logic clk = 0;

	always #111.111 clk = ~clk;

	initial begin
		$dumpfile("dump.vcd");
		$dumpvars;
		#300;
		$finish();
	end


endmodule