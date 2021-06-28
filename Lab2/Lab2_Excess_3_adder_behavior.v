module Lab2_Excess_3_adder_behavior(
                                    output reg [3:0] Sum,
									output Cout,
									input [3:0] A,
									input [3:0] B,
									input Cin
									);
wire [3:0] Z;
wire [3:0] S;
wire [3:0] D;

Lab2_4_bit_CLA cla(
                   .Sum(Z),
				   .Cout(Cout),
				   .A(A),
				   .B(B),
				   .Cin(Cin)
				   );
				   
Lab2_4_bit_CLA cla3(
                    .Sum(S),
				    .A(Z),
				    .B(4'b0011),
				    .Cin(1'b0)
				    );

Lab2_4_bit_BLS bls3(
                    .Diff(D),
				    .X(Z),
				    .Y(4'b0011),
				    .Bin(1'b0)
				    );

always@(*)begin
    if(Cout)
        Sum = S;
    else
	    Sum = D;
end

endmodule