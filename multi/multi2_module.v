module MULTI2(a,b,s);

  input [1:0] a; 
  input [1:0] b;
  output [3:0] s;
  wire [3:0] t;
  
  GATE gt1(a[1],a[0],b[1],t[3], t[2]);
  GATE gt2(a[1],a[0],b[0],t[1], t[0]);
  
  ADD4 bbb(t,s);

endmodule
