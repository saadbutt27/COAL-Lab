module CompCombCir(A,B,C,Q);
    input A,B,C;
    output Q;

    wire A_nand_B, A_nor_B;

    assign A_nand_B = (~(A & B));
    assign A_nor_B = (~(A | B));
    assign Q = (A_nand_B) & (C) & (A_nor_B);

endmodule