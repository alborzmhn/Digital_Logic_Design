`timescale 1ns/1ns
module finalcircuitTB();
	reg start = 0, rst = 0, serialin = 0, clock = 0;
	wire ready, serialout;
	finalcircuit post(ready ,clock, rst, start, serialin, serialout);
	initial begin
		repeat(100) #100 clock <= ~clock;
	end
	initial begin
		#40 start = 1;
		#100 start = 0;
	end
	initial begin
		#440 serialin = 0;
		#200 serialin = 1;
		#1000 serialin = 0;
		#200 serialin = 0;
		#200 serialin = 1;
		#400 serialin = 0;
		#800 serialin = 0;
		repeat(10) #200 serialin = $random % 2;
	end
endmodule

