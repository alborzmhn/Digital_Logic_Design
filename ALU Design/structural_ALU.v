module structural_ALU(input signed [15 : 0] A, B, input C, input[2 : 0] operator, output reg[15 : 0] W, output zero, neg);
	reg [15 : 0]a, b, adder_output, logic_output; reg c;

	assign a = (operator == 3'b000) ? ~A : A;
	assign b = (operator == 3'b010) ? B : (operator == 3'b011) ? (B >>> 1) : 1'b1;
	assign c = (operator == 3'b010) ? c : 1'b0;
	assign adder_output = a + b + c;
	always @(A, B, operator) begin
		logic_output = 16'b0;
		case(operator)
			3'b100 : logic_output = A & B;
			3'b101 : logic_output = A | B;
			3'b110 : logic_output = {A[7:0],B[7:0]};
			3'b111 : logic_output = 16'b0;
			default : logic_output = 16'b0;
		endcase
	end
	always @(adder_output, logic_output, operator[2]) begin
		W = 16'b0;
		case(operator[2])
			1'b0 : W = adder_output;
			1'b1 : W = logic_output;
			default : W = 16'b0;
		endcase
	end
	assign zero = ~|W;
	assign neg = W[15];
endmodule
