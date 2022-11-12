module tb();
    reg [7:0] A, B;
    reg [1:0] ALUControl;

    wire [7:0] Result;
    wire [8:0] vCheck;

    ALU4 dut(
        .A(A), .B(B), .ALUControl(ALUControl), .Result(Result), 
        .Z(Z), .N(N), .C(C), .V(V), .vCheck(vCheck)
    );

    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0);
    end

    initial begin
      A <= 8'b10101000;
      B <= 8'b01111100;
      ALUControl <= 2'b00;
      #100;

      // A <= 8'b11111111;
      // B <= 8'b11111111;
      // ALUControl <= 2'b01;
      // #100;

      // A <= 8'b00100010;
      // B <= 8'b00010100;
      // ALUControl <= 2'b10;
      // #100;

      // A <= 8'b00100010;
      // B <= 8'b00101000;
      // ALUControl <= 2'b11;
      #100;
    end

endmodule