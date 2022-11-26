module encoder(Y0, Y1, Y2, Y3, A);
    // 4x2 Encoder
    input Y0, Y1, Y2, Y3;
    output [1:0] A;

    assign A[1] = Y2 | Y3;
    assign A[0] = Y1 | Y3;
 

endmodule