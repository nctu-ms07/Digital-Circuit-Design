module t_Lab3_Neg_Edge_D_FF_gatelevel;
wire Q,NQ;
reg D,clock;
parameter stoptime = 160;

Lab3_Neg_Edge_D_FF_gatelevel test1(
                                   .Q(Q),
					               .NQ(NQ),
					               .D(D),
					               .clock(clock)
					               );

initial begin
#stoptime $finish;
end

initial begin
#0 clock = 1'b0;
forever 
  #10 clock = ~clock;
end

initial begin
#0 D = 1'b0;
#15 D = 1'b1;
#20 D = 1'b0;
#30 D = 1'b1;
#23 D = 1'b0;
#37 D = 1'b1;
#5 D = 1'b0;
end

initial begin
$monitor ($time, " Q = %b, NQ = %b, D = %b",Q,NQ,D);
end
endmodule