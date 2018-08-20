module GATE(a1, a0, b, out1, out0);

input a1, a0, b;
output out1, out0;
wire nc,t1,t2;

AND2 b1(a0, b, out0);
AND2 b0(a1, b, out1);

endmodule
