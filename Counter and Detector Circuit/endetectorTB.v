`timescale 1ns/1ns
module endetectorTB();
	wire ww1, ww2;
	reg clk = 1'b0, rst = 1'b0, jj = 1'b0, enable = 1'b1;
	endetector endetector1(clk, rst, jj, enable, ww1);
	postendetector endetector2(clk, rst, jj, enable, ww2);
	always #85 clk <= ~clk;
	initial begin
		#400 jj = 1;
		#840 jj = 0;
		#50 enable = 0;
		#100 jj = 0;
		#100 jj = 1;
		#100 jj = 0;
		#100 jj = 1;
		#120 enable = 1;
		#100 jj = 0;
		#250 jj = 1;
		#900 jj = 0;
		#250 $stop;
	end
endmodule

