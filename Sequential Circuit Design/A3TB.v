`timescale 1ns /1ns
module Q3TB();
	reg DD, clk = 0, clr = 1, pre = 1;
	wire Q, Qbar;
	DFF_PRE_CLR dff(DD, clk, clr, pre, Q, Qbar);
	always #80 clk <= ~clk;
	initial begin
		#100 DD = 1;
		#200 DD = 0;
		#200 pre = 0;
		#200 pre = 1;
		#200 DD = 1;
		#200 DD = 0;
		#200 clr = 0;
		#30 DD = 1;
		#200 clr = 1;
		#200 clr = 0;
		#50 DD = 0;
		#200 pre = 0;
		#50 DD = 1;
		#50 DD = 0;
		#200 clr = 1;
		#200 clr = 0;
		#100 DD = 1;
		#100 DD = 0;
		#200 $stop;
	end
endmodule
