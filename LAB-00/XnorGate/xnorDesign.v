module xnorGate(A,B,Z);

    input A,B;
    output V,W,X,Y,Z;

    not (V,A);
    not (W,B);
    and (X,V,W);
    and (Y,A,B);
    or (Z,X,Y);

endmodule

// XNOR TruthTable
// A B | Y
// 0 0 | 1
// 0 1 | 0
// 1 0 | 0
// 1 1 | 1

// X = A'B' + AB