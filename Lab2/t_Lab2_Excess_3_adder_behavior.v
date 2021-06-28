module t_Lab2_Excess_3_adder_behavior;
reg [3:0] A;
reg [3:0] B;
reg Cin;
wire [3:0] Sum;
wire Cout;
parameter stoptime = 60;

Lab2_Excess_3_adder_behavior test(
                                  .Sum(Sum),
					              .Cout(Cout),
					              .A(A),
					              .B(B),
					              .Cin(Cin)
					              );

initial begin
#stoptime $finish;
end

initial begin
#0 A = 4'b0011; B = 4'b0011; Cin = 0;
#10 A = 4'b0011; B = 4'b0011; Cin = 1;
#10 A = 4'b1000; B = 4'b0111; Cin = 0;
#10 A = 4'b1000; B = 4'b0111; Cin = 1;
#10 A = 4'b1100; B = 4'b1100; Cin = 0;
#10 A = 4'b1100; B = 4'b1100; Cin = 1;
end

initial begin
$monitor ($time, " Sum = %b, Cout = %b",Sum,Cout);
end
endmodule