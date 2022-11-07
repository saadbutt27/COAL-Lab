module combinational_circuit(A, B, C, D, Z);
    // inputs
    input A, B, C, D;

    // interim wires
    wire B_xor_D;
    wire B_and_C;
    wire C_or_D;
    wire not_C_or_D;
    wire A_or_not_C_or_D;
    wire B_xor_D_or_B_and_C;

    // output
    output Z;

    // assignment with logical operations
    assign B_xor_D = B ^ D;
    assign B_and_C = B & C;
    assign C_or_D = C | D;
    assign not_C_or_D = !(C_or_D);
    assign A_or_not_C_or_D = A | not_C_or_D;
    assign B_xor_D_or_B_and_C = B_xor_D | B_and_C;
    // final output 
    assign Z = A_or_not_C_or_D ^ B_xor_D_or_B_and_C;

endmodule

// assign Z = (A | (!(C | D))) ^ ((B ^ D) | (B & C));
// assign Z = (!(A) & !(B) & D) + (!(A) & B & C); // !A.!B.D + !A.B.C