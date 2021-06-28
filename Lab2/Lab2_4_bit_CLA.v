module Lab2_4_bit_CLA(
                      output [3:0] Sum,
					  output Cout,
					  input [3:0] A,
					  input [3:0] B,
					  input Cin
					  );

wire [4:1] C;
wire [3:0] P;
wire [3:0] G;

assign P[0] = A[0] | B[0];
assign P[1] = A[1] | B[1];
assign P[2] = A[2] | B[2];
assign P[3] = A[3] | B[3];

assign G[0] = A[0] & B[0];
assign G[1] = A[1] & B[1];
assign G[2] = A[2] & B[2];
assign G[3] = A[3] & B[3];

Lab2_CLG_dataflow clg(
                      .C(C),
					  .P(P),
					  .G(G),
					  .C0(Cin)
					  );

assign Sum[0] = A[0] ^ B[0] ^ Cin;
assign Sum[1] = A[1] ^ B[1] ^ C[1];
assign Sum[2] = A[2] ^ B[2] ^ C[2];
assign Sum[3] = A[3] ^ B[3] ^ C[3];
assign Cout = C[4];

endmodule