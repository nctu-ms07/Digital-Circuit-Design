module Lab2_CLG_dataflow(
                         output [4:1] C,
						 input [3:0] P,
						 input [3:0] G,
						 input C0
						 );

assign C[1] = G[0] | (C0 & P[0]);
assign C[2] = G[1] | (G[0] & P[1]) | (C0 & P[0] & P[1]);
assign C[3] = G[2] | (G[1] & P[2]) | (G[0] & P[1] & P[2]) | (C0 & P[0] & P[1] & P[2]);
assign C[4] = G[3] | (G[2] & P[3]) | (G[1] & P[2] & P[3]) | (G[0] & P[1] & P[2] & P[3]) | (C0 & P[0] & P[1] & P[2] & P[3]);

endmodule