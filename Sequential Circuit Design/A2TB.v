`timescale 1ns/1ns
module Q2TB();
	reg DD = 0, clk = 0;
	wire Q, Qb;
	DFF dff(DD, clk, Q, Qb);
	always #80 clk <= ~clk;
	initial begin
		#50 DD = 1;
		#200 DD = 0;
		#200 DD = 1;
		#200 DD = 0;
		#200 DD = 1;
		#200 DD = 0;
		#200 $stop;
end
endmodule
