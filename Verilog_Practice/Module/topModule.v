`include "module1.v"
`include "module2.v"

module top_module(A,B,C,D,clk,rst,Z);

    input A,B,C,D,clk,rst;
    output Z;

    reg [1:0] middleReg;
    wire output1Module1, output2Module1;

    // module intantiation of module1
    // module1 -> sub module name
    // mod1 -> name to instantiate module 1
    module1 mod1 (
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .output1Module1(output1Module1),
        .output2Module1(output2Module1)
    );

    always @(posedge clk) begin
      if (rst) begin
        middleReg <= 2'b00;
      end
      else begin
        middleReg[0] <= output1Module1;
        middleReg[1] <= output2Module1; 
      end
    end

    module2 mod2 (
        .input1Module2(middleReg[0]),
        .input2Module2(middleReg[1]),
        .Z(Z)
    );

endmodule