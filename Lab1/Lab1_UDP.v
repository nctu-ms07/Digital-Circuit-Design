primitive Lab1_UDP(
                   output result,
                   input src1,
                   input src2,
                   input src3,
                   input src4
                   );
table
0 0 0 0 : 0;
0 0 0 1 : 0;
0 0 1 0 : 0;
0 0 1 1 : 1;
0 1 0 0 : 0;
0 1 0 1 : 0;
0 1 1 0 : 0;
0 1 1 1 : 1;
1 0 0 0 : 0;
1 0 0 1 : 0;
1 0 1 0 : 0;
1 0 1 1 : 1;
1 1 0 0 : 1;
1 1 0 1 : 1;
1 1 1 0 : 1;
1 1 1 1 : 1;
endtable
endprimitive