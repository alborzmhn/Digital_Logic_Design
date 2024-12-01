`timescale 1ns/1ns
module testBench_switchGate_3input();
	reg aa, bb, cc;
	wire yy01, yy00, yy1, yy0;
	circuit_switch_3input oc_switch_3input(aa, bb, cc, yy1, yy0);
	circuit_gate_3input oc_gate_3input(aa, bb, cc, yy01, yy00);
	initial begin
		aa = 0;
		bb = 0;
		cc = 0;
		#100 aa = 1;
		#100 bb = 1;
		#100 cc = 1;
		#100 aa = 0;
		#100 bb = 0;
		#100 cc = 0;
		#100 $stop;
	end
endmodule
