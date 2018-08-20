module ALL_ADDER(a,b,cin,s,cout);

    input a,b,cin;
    output s1,c1,c2,s,cout;
    HALFADD half1(a,b,s1,c1);
    HALFADD half2(cin,s1,s,c2);
    OR2 b3(c1,c2,cout);

endmodule
