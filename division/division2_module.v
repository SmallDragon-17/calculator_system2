module DIVISION2(a,b,s,r);

  input [1:0] a; 
  input [1:0] b;
  output [1:0] s;
  output [1:0] r;
  wire [3:0] t;

  if(b[1] == 0 && b[0] == 0)
    s[1] = 0; s[1] = 0;
    r[1] = 0; r[0] = 0;
  else
    a[1] - b[1]
  
  GATE gt1(a[1],a[0],b[1],t[3], t[2]);
  GATE gt2(a[1],a[0],b[0],t[1], t[0]);
  
  ADD4 bbb(t,s);

endmodule
