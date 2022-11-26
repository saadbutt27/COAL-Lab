module module1(A, B, C, D, output1Module1, output2Module1);

    input A, B, C, D;
    output output1Module1, output2Module1;

    assign output1Module1 = ((A | B) & C) | (~(A & B));
    assign output2Module1 = D;

endmodule