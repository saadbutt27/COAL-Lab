module ALU(A,B,ctrl,Q);
  input [31:0] A,B;
  input [2:0] ctrl;

  output [31:0] Q;

  wire [31:0] A_and_B, A_or_B, B_not, A_sum_B;
  wire [31:0] S1;
  wire Cout;
  wire [31:0] Z;

  assign A_and_B = A & B;
  assign A_or_B = A | B;
  assign B_not = ~B;
  assign S1 = (ctrl[0] == 1'b1) ? B_not : B;
  assign {Cout, A_sum_B} = A + S1 + ctrl[0];
  assign Z = {31'b00000000000000000000000000000000,S1[30]};
  // assign Q = (ctrl[1] == 1'b1) ? ((ctrl[0] == 1'b1) ? A_or_B : A_and_B) : ((ctrl[0] == 1'b1) ? A_sum_B : A_sum_B);
  assign Q = (ctrl[1:0] == 2'b00) ? A_sum_B : (ctrl[1:0] == 2'b01) ? A_sum_B : (ctrl[1:0] == 2'b10) ? A_and_B : A_or_B;

endmodule