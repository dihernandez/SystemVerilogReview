`timescale 1ns/1ps

module queue;


	integer arr[20];
	integer q[$];
	integer i;

	initial begin
		for(i = 0; i < 20; i++) begin
          arr[i] = $urandom_range(0,100);
		end

		$display("arr: %0p",arr);

		for(i = 0; i < 20; i++) begin
			q.push_front(arr[i]);
		end

		$display("queue: %0p",q);
	end


endmodule