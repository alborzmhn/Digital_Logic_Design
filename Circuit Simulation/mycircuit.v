 `timescale 1ns/1ns
module circuit_switch_3input(input a, b, c, output y1, y0);
	wire d, e, f, g, h, i, j, k, l, m, n, o, p;
	supply1 vdd;
	supply0 gnd;
	pmos #(5, 6, 7) T1(d, vdd, ~b), T2(y1, d, ~c), T3(e, vdd, ~b), T4(e, vdd, ~c), T5(y1, e, ~a);
	nmos #(3, 4, 5) T6(y1, f, ~b), T7(y1, f, ~c), T8(f, g, ~c), T9(g, gnd, ~b), T10(f, gnd, ~a);
	pmos #(5, 6, 7) T11(h, vdd, ~b), T12(j, h, ~c), T13(i, vdd, b), T14(j, i, c), T15(y0, j, ~a), T16(k, vdd, b), T17(m, k, ~c), T18(l, vdd, ~b), T19(m, l, c), T20(y0, m, a);
	nmos #(3, 4, 5) T21(y0, o, ~a), T22(y0, n, ~c), T23(y0, n, ~b), T24(n, o, b), T25(n, o, c), T26(o, p, ~b), T27(o, p, c), T28(p, gnd, ~c), T29(p, gnd, b), T30(o, gnd, a);
endmodule
