module module2(input1Module2, input2Module2, Z);
    input input1Module2, input2Module2;
    output Z;

    assign Z = ~((input1Module2 | input2Module2) & (input1Module2 & input2Module2)); 
endmodule