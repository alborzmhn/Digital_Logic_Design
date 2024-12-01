module behavioral_ALU(input signed [15 : 0] A, B, input C, input[2 : 0] operator, output reg[15 : 0] W, output zero, neg);
	always @(A, B, C, operator) begin
		W = 16'b0;
		case(operator)
			3'd0 : W = ~A + 1'b1;
			3'd1 : W = A + 1'b1;
			3'd2 : W = A + B + C;
			3'd3 : W = A + (B>>>1);
			3'd4 : W = A & B;
			3'd5 : W = A | B;
			3'd6 : W = {A[7:0],B[7:0]};
			default : W = 16'b0;
		endcase
	end
	assign zero = ~|W;
	assign neg = W[15];
endmodule
