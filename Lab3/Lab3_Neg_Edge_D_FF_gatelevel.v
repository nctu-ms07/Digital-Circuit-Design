module Lab3_Neg_Edge_D_FF_gatelevel(
                                    output Q,
									output NQ,
									input D,
									input clock
									);
wire S,R;
wire w1,w4;

nor #2(w4,S,D);
nor #2(w1,w4,R);
nor #2(R,w1,clock);
nor #2(S,R,w4,clock);

Lab3_SR_Latch_gatelevel g(
                          .Q(Q),
						  .NQ(NQ),
						  .S(S),
						  .R(R)
						  );

endmodule