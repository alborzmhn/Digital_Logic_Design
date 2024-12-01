`timescale 1ns/1ns
module detectorTB();
	wire ww1, ww2;
	reg clk = 1'b0, rst = 1'b0, jj = 1'b0;
	postdetector detector2(clk, rst, jj, ww2);
	detector detector1(clk, rst, jj, ww1);
	always #85 clk <= ~clk;
	initial begin
		#400 jj = 1;
		#840 jj = 0;
		#250 jj = 1;
		#900 jj = 0;
		#150 $stop;
	end
endmodule