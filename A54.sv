module tb;

	bit [14:0] arr[32];

	function automatic void init_arr(ref bit [14:0] arr [32]);
		for(int i = 0; i <= 32; i++) begin
			arr[i] = i * 8;
		end
	endfunction 

	initial begin
		init_arr(arr);

      for(int i = 0; i <= 31; i++) begin
			$display("arr[%0d] : %0d", i, arr[i]);
		end
	end

endmodule