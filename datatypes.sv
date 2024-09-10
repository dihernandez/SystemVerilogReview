`timescale 1ns/1ps

module tb_1;

	bit a = 0;

	byte b = 0;
	shortint c = 0;
	int d = 0;
	longint e = 0;


	bit [7:0] f = 8'd0;
	bit [15:0] g = 16'h0000;

	real h = 0;

	initial begin

		a = 1'b1;


	end

endmodule

module tb_2;

	byte var1 = -126;
	bit [7:0] var2 = 130;

	initial begin
		#10;
		$display("Value of VAR : %0d", var1);
	end

endmodule

module tb_3;

	// $time(); return current simulation time in fixed point format
	// $realtime(); return current simulation time in floating point format

	time fix_time = 0; // store fixed point time value
	realtime real_time = 0; // store floating point time value

	initial begin
		#12.23;
		real_time = $realtime();
		$display("Current simulation time : %0t", real_time);

	end

endmodule