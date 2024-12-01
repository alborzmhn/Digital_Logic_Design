`timescale 1ns/1ns
module DFF(input D, clk, output Q, Qb);
	wire W1, W1b, W2, W2b;
	reg aa1 = 1;
	SRlatch22 s1(W2b, clk, W1, W1b);
	SRlatch33 s2(clk, D, W1b, aa1, W2, W2b);
	SRlatch22 s3(W1b, W2, Q, Qb);
endmodule


