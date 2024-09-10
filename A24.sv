`timescale 1ns/1ps

module tb();

	logic clk = 0;

	task gen_square_wave(input real period, input real duty_cycle);
      	real t_on, t_off;
        t_on = period * duty_cycle;
		t_off = period - t_on;
		while(1) begin
			clk = 1;
			#t_on;
			clk = 0;
			#t_off;
		end
	endtask : gen_square_wave

	initial begin
		gen_square_wave(40, 0.4);
	end

	initial begin
		$dumpfile("dump.vcd");
		$dumpvars;
		#400;
		$finish();
	end

endmodule