module  t_Lab3_SR_Latch_gatelevel;
wire Q,NQ;
reg S,R;
parameter stoptime = 90;

Lab3_SR_Latch_gatelevel test1(
                              .Q(Q),
					          .NQ(NQ),
					          .S(S),
					          .R(R)
					          );

initial begin
#stoptime $finish;
end

initial begin
#0 S = 1'b1; R = 1'b0;
#10 S = 1'b0; R = 1'b0;
#10 S = 1'b0; R = 1'b1;
#10 S = 1'b0; R = 1'b0;
#10 S = 1'b0; R = 1'b0;
#10 S = 1'b1; R = 1'b1;
#10 S = 1'b0; R = 1'b0;
end

initial begin
$monitor ($time, " Q = %b, NQ = %b, S = %b, R = %b",Q,NQ,S,R);
end
endmodule