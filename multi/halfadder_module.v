/* HALFADD */
module HALFADD(a, b, X, Y);
//count is and -> Y

  input a, b;
  output X, Y;
    
    XOR2 aaa(a, b, X);
    AND2 bbb(a, b, Y);
    /*assign X = A ^ B; /* XOR2 */
    /*assign Y = A & B; /* AND2 */

endmodule
