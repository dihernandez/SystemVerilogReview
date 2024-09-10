`timescale 1ns/1ps

module ha(
	input wire a,b,
	output wire sout, cout

	);

	assign sout = a ^ b;
	assign cout = a & b;

endmodule

module fa(
	input a, b, cin,
	output s, c
		);

	wire t1, t2, t3;

	ha h1(a, b, t1, t2);
	ha h2(h1, cin, s, t3);

	assign c = t2 | t3;
endmodule