module tb;

	function int unsigned multiply(int unsigned a, int unsigned b);

		return a*b;

	endfunction

	int unsigned ain;
	int unsigned bin;
	int unsigned result;

	initial begin
		ain = 10;
		bin = 5;

		result = multiply(ain, bin);

		if(result == 50) begin
			$display("Test Passed");
		end
		else begin
			$display("Test Failed, result is %0d", result);
		end
		
	end


endmodule