module ALU4(A, B, ALUControl, Result, Z, N, C, V, vCheck);

    // inputs
    input [7:0] A, B;
    input [1:0] ALUControl;

    // outputs
    output [7:0] Result;
    output Z,N,C,V;
    output [8:0] vCheck;


    // interim wires
    wire [7:0] A_and_B, A_or_B, not_B, Mux1, Sum, Mux2;
    wire ctrl1_not, Cout_and;
    wire xor_A_Sum, xnor_A_B_ctrl0, over_And, Cout;

    // Logic Designing
    // And, Or
    assign A_and_B = A & B;
    assign A_or_B = A | B;
    // Not
    assign not_B = ~B;
    // 2x1 Mux
    assign Mux1 = (ALUControl[0] == 1'b1) ? not_B : B;
    // Addition / Subtraction
    assign {Cout, Sum} = A + Mux1 + ALUControl[0];
    assign vCheck = A + Mux1 + ALUControl;
    //4x2 Mux
    assign Mux2 = (ALUControl[1:0] == 2'b00) ? Sum :
                  (ALUControl[1:0] == 2'b01) ? Sum :
                  (ALUControl[1:0] == 2'b10) ? A_and_B : A_or_B;
            
    // Result Output
    assign Result = Mux2;

    // Flags Outputs
    // for zero checking
    assign Z = &(~Result);
    // for negative checking
    assign N = Result[7];
    //for carry checking
    assign ctrl1_not = (~ALUControl[1]);
    assign Cout_and = ctrl1_not & Cout;
    assign C = Cout_and;
    // for overflow checking
    // assign xor_A_Sum = Sum[7] ^ A[7];
    // assign xnor_A_B_ctrl0 = ~(A[7] ^ B[7] ^ ALUControl[0]);
    // assign over_And = ctrl1_not & xor_A_Sum & xnor_A_B_ctrl0;
    // assign V = over_And;

    assign V = (Cout == 1'b0) ? 1'b0 : (Cout != vCheck[8:7]) ? 1'b1 : 1'b0;

endmodule