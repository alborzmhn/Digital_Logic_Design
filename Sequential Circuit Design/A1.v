`timescale 1ns/1ns
module SRlatch22(input S, R, output Q, Qb);
nand #8 N1(Q, S, Qb);
nand #8 N2(Qb, R, Q);
endmodule

module SRlatch32(input S, R, a1, output Q, Qb);
nand #12 N1(Q, S, a1, Qb);
nand #8 N2(Qb, R, Q);
endmodule

module SRlatch33(input S, R, a1, a2, output Q, Qb);
nand #12 N1(Q, S, a1, Qb);
nand #12 N2(Qb, R, a2, Q);
endmodule
