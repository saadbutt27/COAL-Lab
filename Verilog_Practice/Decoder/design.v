module decoder(A,E,Y0,Y1,Y2,Y3);
    // 2x4 Decoder
    input [1:0] A;
    input E;
    output Y0,Y1,Y2,Y3;

    assign Y0 = (E) & (~A[0]) & (~A[1]);
    assign Y1 = (E) & (A[0]) & (~A[1]);
    assign Y2 = (E) & (~A[0]) & (A[1]);
    assign Y3 = (E) & (A[0]) & (A[1]); 

endmodule