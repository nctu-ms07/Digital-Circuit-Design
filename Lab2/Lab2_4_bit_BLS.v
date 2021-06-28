module Lab2_4_bit_BLS(
                      output [3:0] Diff,
					  output Bout,
					  input [3:0] X,
					  input [3:0] Y,
					  input Bin
					  );

wire [4:1] C;
wire [3:0] P;
wire [3:0] G;

assign P[0] = ~X[0] | Y[0];
assign P[1] = ~X[1] | Y[1];
assign P[2] = ~X[2] | Y[2];
assign P[3] = ~X[3] | Y[3];

assign G[0] = ~X[0] & Y[0];
assign G[1] = ~X[1] & Y[1];
assign G[2] = ~X[2] & Y[2];
assign G[3] = ~X[3] & Y[3];

Lab2_CLG_dataflow clg(
                      .C(C),
					  .P(P),
					  .G(G),
					  .C0(Bin)
					  );

assign Diff[0] = X[0] ^ Y[0] ^ Bin;
assign Diff[1] = X[1] ^ Y[1] ^ C[1];
assign Diff[2] = X[2] ^ Y[2] ^ C[2];
assign Diff[3] = X[3] ^ Y[3] ^ C[3];
assign Bout = C[4];

endmodule