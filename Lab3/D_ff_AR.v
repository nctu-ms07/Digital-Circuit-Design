module D_ff_AR(
               output Q,
			   output NQ,
			   input D,
			   input clock,
			   input reset
			   );
wire S,R;
wire w1,w4;

nand (w1,R,D,reset);
nand (w4,w1,S);
nand (S,w4,clock,reset);
nand (R,S,w1,clock);

nand (Q,S,NQ);
nand (NQ,R,Q,reset);

endmodule