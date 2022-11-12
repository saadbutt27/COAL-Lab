module ALU(A,B,ctrl,Result);

  // Inputs
  input [31:0] A,B;
  input [2:0] ctrl;

  // Outputs
  output [31:0] Result;

  // Interim Wires
  wire [31:0] A_and_B, A_or_B, B_not, A_sum_B;
  wire [31:0] S1;
  wire Cout;

  // Logic Designing
  // And
  assign A_and_B = A & B;
  // Or
  assign A_or_B = A | B;
  // Not
  assign B_not = ~B;
  // 2x1 MUX
  assign S1 = (ctrl[0] == 1'b1) ? B_not : B;
  // Addition / Subtraction
  assign {Cout, A_sum_B} = A + S1 + ctrl[0];
  // Result output through 4x1 MUX
  assign Result = (ctrl[1:0] == 2'b00) ? A_sum_B : (ctrl[1:0] == 2'b01) ? A_sum_B : (ctrl[1:0] == 2'b10) ? A_and_B : A_or_B;

endmodule