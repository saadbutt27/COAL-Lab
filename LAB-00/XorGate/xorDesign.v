module xorGate(A,B,Z);

    input A,B;
    output V,W,X,Y,Z;

    not (V,A);
    not (W,B);
    and (X,V,B);
    and (Y,A,W);
    or (Z,X,Y);
    // xor (Z,A,B);
endmodule

// XOR TruthTable
// A B | Y
// 0 0 | 0
// 0 1 | 1
// 1 0 | 1
// 1 1 | 0

// X = A'B + AB'