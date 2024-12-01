 `timescale 1ns/1ns
module circuit_switch_7input(input a, b, c, d, e, f, g, output w2, w1, w0);
	wire y1, y0, z1, z0, x1;
	circuit_switch_3input oc1(a, b, c, y1, y0);
	circuit_switch_3input oc2(d, e, f, z1, z0);
	circuit_switch_3input oc3(y0, z0, g, x1, w0);
	circuit_switch_3input oc4(y1, z1, x1, w2, w1);
endmodule
