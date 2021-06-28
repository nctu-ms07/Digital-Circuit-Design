module  t_Lab2_CLG;
reg [3:0] P;
reg [3:0] G;
reg C0;
wire [4:1] t1;
wire [4:1] t2;
wire [4:1] t3;
parameter stoptime = 60;

Lab2_CLG_gate test1(
                    .C(t1),
					.P(P),
					.G(G),
					.C0(C0)
					);

Lab2_CLG_dataflow test2(
                        .C(t2),
					    .P(P),
					    .G(G),
					    .C0(C0)
					    );

Lab2_CLG_behavior test3(
                        .C(t3),
					    .P(P),
					    .G(G),
					    .C0(C0)
					    );

initial begin
#stoptime $finish;
end

initial begin
#0 P = 4'b1101; G = 4'b0101; C0 = 0;
#10 P = 4'b1100; G = 4'b1000; C0 = 1;
#10 P = 4'b0101; G = 4'b1101; C0 = 0;
#10 P = 4'b1100; G = 4'b1100; C0 = 1;
#10 P = 4'b0101; G = 4'b0101; C0 = 0;
#10 P = 4'b1011; G = 4'b1011; C0 = 1;
end

initial begin
$monitor ($time, " t1 = %b, t2 = %b, t3 = %b",t1,t2,t3);
end
endmodule