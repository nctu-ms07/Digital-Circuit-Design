module t_Lab3_BCD_to_Excess3;
reg clock,reset;
reg x;
wire z1;
wire z2;
parameter stoptime = 390;

Lab3_BCD_to_Excess3_state_diagram test(
                                       .z(z1),
					                   .x(x),
					                   .clock(clock),
					                   .reset(reset)
					                   );
					                   
Lab3_BCD_to_Excess3_structure test2(
                                       .z(z2),
					                   .x(x),
					                   .clock(clock),
					                   .reset(reset)
					                   );

initial begin
#stoptime $finish;
end

initial begin
#0 clock = 1'b1;
forever 
  #5 clock = ~clock;
end

initial begin
#0 reset = 1'b0;
#5 reset = 1'b1;
end

initial begin
#5 x = 0;
#5 x = 0;
#10 x = 0;
#10 x = 0;
//$display("0000");
#10 x = 1;
#10 x = 0;
#10 x = 0;
#10 x = 0;
//$display("0001");
#10 x = 0;
#10 x = 1;
#10 x = 0;
#10 x = 0;
//$display("0010");
#10 x = 1;
#10 x = 1;
#10 x = 0;
#10 x = 0;
//$display("0011");
#10 x = 0;
#10 x = 0;
#10 x = 1;
#10 x = 0;
//$display("0100");
#10 x = 1;
#10 x = 0;
#10 x = 1;
#10 x = 0;
//$display("0101");
#10 x = 0;
#10 x = 1;
#10 x = 1;
#10 x = 0;
//$display("0110");
#10 x = 1;
#10 x = 1;
#10 x = 1;
#10 x = 0;
//$display("0111");
#10 x = 0;
#10 x = 0;
#10 x = 0;
#10 x = 1;
//$display("1000");
#10 x = 1;
#10 x = 0;
#10 x = 0;
#10 x = 1;
//$display("1001");
end

initial begin
$monitor ($time, " z1 = %b z2 = %b, state1 = %d, state2 = %d",z1,z2,test.state,test2.state);
end
endmodule