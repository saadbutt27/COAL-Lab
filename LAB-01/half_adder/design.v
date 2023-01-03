module half_adder(A, B, S, Cout);

    // inputs
    input A, B, C;
    // outputs
    output S, Cout;

    //logic designing
    assign S = A ^ B;
    assign Cout = A & B;

endmodule