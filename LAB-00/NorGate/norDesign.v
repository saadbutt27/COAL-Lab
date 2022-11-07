module norGate(A,B,Y);

    input A,B;
    output X,Y;

    or (X,A,B);
    not (Y,X);

endmodule