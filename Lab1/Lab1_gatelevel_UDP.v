module Lab1_gatelevel_UDP(
                          output F,
                          input A,
                          input B,
                          input C,
                          input D
                          );
wire w1,w2,w3;
wire invertD,invertB,invertA;
not n1(invertD,D);
not n2(invertB,B);
not n3(invertA,A);
Lab1_UDP udp(w1,A,invertD,invertB,C);
and a1(w2,C,D);
or o1(w3,w2,invertA);
and a2(F,w1,w3);
endmodule