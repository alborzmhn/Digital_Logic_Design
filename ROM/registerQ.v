module registerQ(input [15:0] regin, input load, init, clock, reset, output reg [15:0] regout);
	always@(posedge clock, posedge reset) begin
		if(reset)
			regout <= 16'b0;
		else
			if(init)
				regout <= 16'b0000000100000000;
			else
				regout <= load ? regin : regout;
	end
endmodule