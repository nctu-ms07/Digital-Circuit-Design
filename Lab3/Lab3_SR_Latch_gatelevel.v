module Lab3_SR_Latch_gatelevel(
                               output Q,
							   output NQ,
							   input S,
							   input R
							   );
nor #2 (Q,R,NQ);
nor #2 (NQ,S,Q);

endmodule