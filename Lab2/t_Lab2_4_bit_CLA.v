module t_Lab2_4_bit_CLA;
reg [3:0] A;
reg [3:0] B;
reg Cin;
wire [3:0] Sum;
wire Cout;
parameter stoptime = 80;

Lab2_4_bit_CLA test(
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
#0 A = 4'b1101; B = 4'b0101; Cin = 0;
#10 A = 4'b1100; B = 4'b1000; Cin = 1;
#10 A = 4'b0101; B = 4'b1101; Cin = 0;
#10 A = 4'b1000; B = 4'b1100; Cin = 1;
#10 A = 4'b0101; B = 4'b0101; Cin = 0;
#10 A = 4'b1011; B = 4'b1011; Cin = 1;
#10 A = 4'b1111; B = 4'b1111; Cin = 1;
#10 A = 4'b1111; B = 4'b0000; Cin = 1;
end

initial begin
$monitor ($time, " Sum = %b, Cout = %b",Sum,Cout);
end
endmodule