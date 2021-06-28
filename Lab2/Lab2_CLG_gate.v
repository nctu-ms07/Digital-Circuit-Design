module Lab2_CLG_gate(
                     output [4:1] C,
					 input [3:0] P,
					 input [3:0] G,
					 input C0
					 );

wire w0,w1,w2,w3,w4,w5,w6,w7,w8,w9;

and (w0,C0,P[0]);
and (w1,C0,P[0],P[1]);
and (w2,C0,P[0],P[1],P[2]);
and (w3,C0,P[0],P[1],P[2],P[3]);

and (w4,G[0],P[1]);
and (w5,G[0],P[1],P[2]);
and (w6,G[0],P[1],P[2],P[3]);

and (w7,G[1],P[2]);
and (w8,G[1],P[2],P[3]);

and (w9,G[2],P[3]);

or (C[1],G[0],w0);
or (C[2],G[1],w1,w4);
or (C[3],G[2],w2,w5,w7);
or (C[4],G[3],w3,w6,w8,w9);

endmodule