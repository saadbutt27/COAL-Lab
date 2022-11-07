module gate(A,B,Y);

    // declaring inputs
    input A,B;
    //declaring output
    output Y;

    // declaring gate level logic
    and(Y,A,B);

    // declaring dataflow // & And // | or // ^ xor // ~ not
    // assign Y = A + B;

endmodule