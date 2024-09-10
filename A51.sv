class MyInts;

	integer unsigned a;
	integer unsigned b;
	integer unsigned c;

endclass

module tb;

	MyInts my_ints;


	initial begin 

		my_ints = new();

		my_ints.a = 45;
		my_ints.b = 78;
		my_ints.c = 90;

		$display("First member: %0d, second member: %0d, third member: %0d", my_ints.a, my_ints.b, my_ints.c);

		my_ints = null;
	end

endmodule