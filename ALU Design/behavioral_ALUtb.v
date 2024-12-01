`timescale 1ns/ 1ns
module behavioral_ALUtb();
	reg [15 : 0] aa, bb;
	reg cc;
	reg [2:0] operator;
	wire[15 : 0] ww, wws;
	wire zz, zzs, nn, nns;
	behavioral_ALU my_ALU(aa, bb, cc, operator, ww, zz, nn);
	behavioral_ALU_synth my_ALU_synth(aa, bb, cc, operator, wws, zzs, nns);
	initial begin
		#100 aa = 16'b0; bb = 16'b0; cc = 16'b0; operator = 3'd0;
		repeat(7) begin
			#200 operator = operator + 1'b1;
			repeat(10) #100 {aa, bb, cc} = $random;
		end
		#100 $stop;
	end
endmodule
