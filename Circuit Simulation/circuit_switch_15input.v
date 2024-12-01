 `timescale 1ns/1ns
module circuit_switch_15input(input a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, output w3, w2, w1, w0);
	wire y1, y0, z1, z0, x1;
	circuit_switch_7input oc1(a, b, c, d, e, f, g, y2, y1, y0);
	circuit_switch_7input oc2(h, i, j, k, l, m, n, x2, x1, x0);
	circuit_switch_3input oc3(o, y0, x0, z1, w0);
	circuit_switch_3input oc4(y1, z1, x1, z2, w1);
	circuit_switch_3input oc5(y2, z2, x2, w3, w2);
endmodule