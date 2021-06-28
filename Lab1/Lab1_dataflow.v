module Lab1_dataflow(
                     output F,
                     input A,
                     input B,
                     input C,
                     input D
                     );
wire w1,w2,w3,w4,w5;
assign w1 = A & ~D;
assign w2 = ~B & C;
assign w3 = C & D;
assign w4 = w1 | w2;
assign w5 = w3 | ~A;
assign F = w4 & w5;

endmodule