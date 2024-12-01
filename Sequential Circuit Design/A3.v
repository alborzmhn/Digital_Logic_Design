`timescale 1ns/1ns
module DFF_PRE_CLR(input D, clk, clr, pre, output Q, Qb);
	wire W1, W1b, W2, W2b;
	SRlatch33 s1(pre, clr, W2b, clk, W1, W1b);
	SRlatch33 s2(clk, D, W1b, clr, W2, W2b);
	SRlatch33 s3(W1b, W2, pre, clr, Q, Qb);
endmodule
