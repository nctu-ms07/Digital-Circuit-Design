module t_Lab2_4_bit_BLS;
reg [3:0] X;
reg [3:0] Y;
reg Bin;
wire [3:0] Diff;
wire Bout;
parameter stoptime = 80;

Lab2_4_bit_BLS test(
                    .Diff(Diff),
					.Bout(Bout),
					.X(X),
					.Y(Y),
					.Bin(Bin)
					);

initial begin
#stoptime $finish;
end

initial begin
#0 X = 4'b1101; Y = 4'b0101; Bin = 0;
#10 X = 4'b1100; Y = 4'b1000; Bin = 1;
#10 X = 4'b0101; Y = 4'b1101; Bin = 0;
#10 X = 4'b1000; Y = 4'b1100; Bin = 1;
#10 X = 4'b0101; Y = 4'b0101; Bin = 0;
#10 X = 4'b1011; Y = 4'b1011; Bin = 1;
#10 X = 4'b0000; Y = 4'b1111; Bin = 0;
#10 X = 4'b0000; Y = 4'b1111; Bin = 1;
end

initial begin
$monitor ($time, " Diff = %b, Bout = %b",Diff,Bout);
end
endmodule