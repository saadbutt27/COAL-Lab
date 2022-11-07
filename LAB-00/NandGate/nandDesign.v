module nandGate(A,B,Y);
    wire X;
    input A,B;
    output Y;

    and (X,A,B);
    not (Y,X);
endmodule