`timescale 1ns/1ns
module postcontroller(input clk, rst, start, w_detector, co_counter, co_downcounter, output reg ready, en_detector, en_counter, set_8, en_downcounter, load_downcounter);
	reg [2:0] ns, ps;
	parameter [2:0] idle = 3'd0, init = 3'd1, detector = 3'd2, counter_8 = 3'd3, load_8 = 3'd4, countdown = 3'd5;
	always@(ps, start, w_detector, co_counter, co_downcounter) begin
		ns = idle;
		ready = 1'b0; en_detector = 1'b0; en_counter = 1'b0; set_8 = 1'b0; en_downcounter = 1'b0; load_downcounter = 1'b0;
		case(ps)
			idle: begin ns = start ? init : idle; ready = 1; end
			init: begin ns = start ? init : detector; set_8 = 1; en_detector = 1; end
			detector: begin ns = w_detector ? counter_8 : detector; en_detector = w_detector ? 0 : 1; set_8 = 0; en_counter = w_detector ? 1 : 0; end
			counter_8: begin ns = co_counter ? load_8 : counter_8; end
			load_8: begin ns = countdown;load_downcounter = 1;en_counter = 0; en_downcounter = 1; end
			countdown: begin ns = co_downcounter ? idle : co_downcounter;load_downcounter =0; en_downcounter = co_downcounter ? 0 : 1; end
			default: ns = idle;
		endcase
	end
	always@(posedge clk, posedge rst) begin
		if(rst)
			ps <= idle;
		else
			ps <= ns;
	end
endmodule