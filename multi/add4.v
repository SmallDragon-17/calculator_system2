module ADD4(t,d);

  input [3:0]t;
  output [3:0]d;
  wire c = 1;
  wire [3:0] x;

    // kougi pdf page [3] figure
    // Ex
    // 0010 = 2
    // 0011 = 3
    // ----
    // 0010 = 2
    // 0100 = 4
    // ----
    // 0110 = 6
    //
    // b4 & b1 = 0

    // xor -> b
    XOR2 b3(0, c, x[3]); //3
    XOR2 b2(0, c, x[2]); //2
    XOR2 b1(t[1], c, x[1]); //1 //left figure 0 & 0 and throw gate
    XOR2 b0(t[0], c, x[0]); //0
    
    // a4 & a1 = 0
    ALL_ADDER bb0(0, x[0],1, d[0], count0); //0
    ALL_ADDER bb1(t[3], x[1], count0, d[1], count1); //1
    ALL_ADDER bb2(t[2], x[2], count1, d[2], count2); //2
    ALL_ADDER bb3(0, x[3], count2, d[3], count3); //3

endmodule
