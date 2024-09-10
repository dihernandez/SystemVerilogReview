module initialize_array;

	parameter NUM_SQUARES = 10;
	integer i;
	int unsigned squares[NUM_SQUARES];


	initial begin
		for(i = 0; i < NUM_SQUARES; i += 1) begin
			squares[i] = i*i;
		end

		for(i = 0; i < NUM_SQUARES; i += 1) begin
			$display("i is %d, squares is %0d",i,squares[i]);
		end
	end

endmodule