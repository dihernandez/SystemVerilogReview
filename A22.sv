`timescale 1ps/1ps

module tb();

	logic clk = 0;

	always #20000 clk = ~clk;

	initial begin
		$dumpfile("dump.vcd");
		$dumpvars;
		#200000;
		$finish();
	end


endmodule