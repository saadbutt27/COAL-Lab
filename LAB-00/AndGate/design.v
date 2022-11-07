module gate(A,B,Y);

    // Declaring inputs
    input A,B;
    // Declaring output
    output Y;

    // Using gate level modelling
    and(Y,A,B);

endmodule