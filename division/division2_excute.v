module DIVISION2TEST;


  reg [1:0] a;
  reg [1:0] b;
  wire s, r;
  integer i, j, k, m;

  DIVISION2 bbb(a,b,s);
    initial begin
      $dumpfile("division2test.vcd");
      $dumpvars(0,DIVISION2TEST);
      $monitor("%t: a1 = %b, a0 = %b,b1 = %b, b0 = %b, d3 = %b, d2 = %b, d1 = %b, d0 = %b", $time, a[1],a[0],b[1],b[0],s,r);

       a[1]=0; a[0]=0; b[1]=0; b[0]=0;
      for(i=0; i<2; i=i+1) 
        for(j=0; j<2; j=j+1)
          for(k=0; k<2; k=k+1)
            for(m=0; m<2; m=m+1) begin
              #10 b[0] = j; b[1] = i; a[0] = m; a[1] = k;
            end

      #10 $finish;
    end
endmodule 
