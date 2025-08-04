class custom_constructor;


	bit [7:0] a;
	bit [7:0] b;
	bit [7:0] c;

	function new(input bit[7:0]a,input bit[7:0]b, input bit[7:0]c);
		this.a = a;
		this.b = b;
		this.c = c;
	endfunction

endclass : custom_constructor

module tb;

	custom_constructor c1;

	initial begin
		c1  = new(.a(2),.b(4),.c(56));

		$display("A: %0d, B: %0d, C: %0d", c1.a, c1.b, c1.c);
	end

endmodule