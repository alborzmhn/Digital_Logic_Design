`timescale 1ns/1ns
module testBench_switch_7input();
	reg aa, bb, cc, dd, ee, ff, gg;
	wire ww2, ww1, ww0;
	circuit_switch_7input oc_7input(aa, bb, cc, dd, ee, ff, gg, ww2, ww1, ww0);
	initial begin
		aa = 0;
		bb = 0;
		cc = 0;
		dd = 0;
		ee = 0;
		ff = 0;
		gg = 0;
		#100 aa = 1;
		#100 bb = 1;
		#100 cc = 1;
		#100 dd = 1;
		#100 ee = 1;
		#100 ff = 1;
		#100 gg = 1;
		#100 aa = 0;
		#100 cc = 0;
		#100 ee = 0;
		#100 gg = 0;
		#100 $stop;
	end
endmodule
