module xnorGate(A,B,C,X);

    input A,B,C;
    output X;

    // not (V,A);
    // not (W,B);
    // and (X,V,W);
    // and (Y,A,B);
    // or (Z,X,Y);
    assign X = ~(A ^ B ^ C);

endmodule

// XNOR TruthTable
// A B | Y
// 0 0 | 1
// 0 1 | 0
// 1 0 | 0
// 1 1 | 1

// X = A'B' + AB