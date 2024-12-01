module controllerQ(input start, clock, reset, encircuit, output reg ready, ldx, selx_rom , encounter, init_counter, init_t, ldt, ldr, init_r, ci_adder);
	reg [3:0] ps, ns;
	parameter [3:0] idle = 0, init = 1, load = 2, mult1 = 3, mult2 = 4, mult3 = 5, mult4 = 6, compare = 7, sub_add = 8;
	always@(ps, start, encircuit) begin
		ns = idle;
		{ready, ldx, selx_rom , encounter, init_counter, init_t, ldt, ldr, init_r} = 9'b0;
		case(ps)
			idle: begin ns = (start) ? init : idle; ready = 1; end
			init: begin ns = (start) ? init : load; init_t = 1; init_r = 1; init_counter = 1; encounter = 0; ci_adder = 1; ready = 0; end
			load: begin ns = mult1; ldx = 1;end
			mult1: begin ns = mult2; ldt = 1; selx_rom = 0; ci_adder = ~ci_adder; end
			mult2: begin ns = mult3; ldt = 1; selx_rom = 0; end
			mult3: begin ns = mult4; ldt = 1; selx_rom = 1; encounter = 1; end
			mult4: begin ns = compare; ldt = 1; selx_rom = 1; encounter = 1; end
			compare: begin ns = (encircuit) ? sub_add : idle; encounter = 0; ldt = 0; end
			sub_add: begin ns = mult1; ldr = 1; end
			default: ns = idle;
		endcase
	end
	always@(posedge clock, posedge reset) begin
		if(reset)
			ps <= idle;
		else
			ps <= ns;
	end
endmodule