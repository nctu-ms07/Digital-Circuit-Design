module Lab1_gatelevel(
                      output F,
                      input A,
                      input B,
                      input C,
                      input D
                      );
wire w1,w2,w3,w4,w5;
wire invertD,invertB,invertA;
not n1(invertD,D);
not n2(invertB,B);
not n3(invertA,A);
and a1(w1,A,invertD);
and a2(w2,invertB,C);
and a3(w3,C,D);
or o1(w4,w1,w2);
or o2(w5,w3,invertA);
and a3(F,w4,w5);

endmodule