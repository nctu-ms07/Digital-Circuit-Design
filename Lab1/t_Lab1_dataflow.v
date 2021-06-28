module  t_Lab1_dataflow;
reg A,B,C,D;
wire F;
parameter stoptime = 200;
Lab1_dataflow test(
                   .F(F),
                   .A(A),
                   .B(B),
                   .C(C),
                   .D(D)
                   );

initial begin
#stoptime $finish;
end

initial begin
#0 A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0;
#10 A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b1;
#10 A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b0;
#10 A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b1;
#10 A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b0;
#10 A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b1;
#10 A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b0;
#10 A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b1;
#10 A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b0;
#10 A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b1;
#10 A = 1'b1; B = 1'b0; C = 1'b1; D = 1'b0;
#10 A = 1'b1; B = 1'b0; C = 1'b1; D = 1'b1;
#10 A = 1'b1; B = 1'b1; C = 1'b0; D = 1'b0;
#10 A = 1'b1; B = 1'b1; C = 1'b0; D = 1'b1;
#10 A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b0;
#10 A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b1;
end

initial begin
$monitor ($time, " A = %b, B = %b, C = %b, D = %b, F = %b",A,B,C,D,F);
end
endmodule