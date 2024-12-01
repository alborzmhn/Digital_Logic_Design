`timescale 1ns/1ns
module downcounterTB();
	wire co, serout;
	wire [7:0] qout;
	reg sload = 1, clock = 0, enable = 0, areset = 0, serin = 0;
	reg [7:0] data;
	counterdown post(serout ,serin, enable, co, sload, clock, areset, data, qout);
	always #100 clock <= ~clock;
	initial begin
		#50 data = 8'b1011000;
		#70 serin = 1;
		#50 enable = 1;
		#70 data = 8'b00001011;
		#200 sload = 0;
		repeat(20) #250 serin = $urandom % 2;
		#200 areset = 1;
		#300 $stop;
	end
endmodule

