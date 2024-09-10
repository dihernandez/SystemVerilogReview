`timescale 1ns/1ps
module fixed_size_arrays;

	parameter ARR_SIZE = 15;
	reg arr1[ARR_SIZE];
	reg arr2[ARR_SIZE];
	integer i;

	initial begin
		for(i = 0; i < ARR_SIZE; i += 1) begin
			arr1[i] = $urandom;
			arr2[i] = $urandom;
		end

      $display("arr1: %0p, arr2: %0p",arr1,arr2);
	end


endmodule