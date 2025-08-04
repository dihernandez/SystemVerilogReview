class task_in_class;


	bit [3:0] a;
	bit [3:0] b;
	bit [3:0] c;

	function new(input bit[3:0]a = 1,input bit[3:0]b = 2, input bit[3:0]c = 4);
		this.a = a;
		this.b = b;
		this.c = c;
	endfunction

	task add_members();
		int sum = a + b + c;
		$display("sum of a, b, and c is : %d", sum);
	endtask

endclass : task_in_class

module tb;

	task_in_class f1;

	initial begin
		f1  = new();
		f1.add_members();
	end

endmodule