module combinational_circuit(A, B, C, Q);

    //inputs
    input A, B, C;
    output Q;

    //interim signals
    wire A_xor_B;
    wire A_and_B;

    //logic designing
    assign A_xor_B = A ^ B;
    assign A_and_B = A & B;
    // final output
    assign Q = C | A_xor_B | A_and_B;

endmodule

// assign Q = (A ^ B) | (A & B) | C