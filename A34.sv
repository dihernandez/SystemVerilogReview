`timescale 1ns/1ps

module dynamic_array;

  int darr[];
	integer i;

	initial begin
		darr = new[7];
		for(i = 0; i < 7; i += 1) begin
			darr[i] = (i + 1) * 7;
		end

		#20;

      darr = new[20](darr);

		for(i = 7; i < 20; i += 1) begin
			darr[i] = (i - 6)*5;
		end

		$display("darr: %0p", darr);
	end

endmodule