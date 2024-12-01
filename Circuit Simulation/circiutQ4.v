 `timescale 1ns/1ns
module circuit_assign_3input(input a, b, c, output y1, y0);
	assign #(20) y0 = ~a & ~b & c | ~a & b & ~c | a & b & c | a & ~b & ~c;
	assign #(15) y1 = a & b | a & c | b & c;
endmodule
  