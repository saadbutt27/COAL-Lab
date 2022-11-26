module tb();
    reg zero, func7;
    reg [6:0] op;
    reg [2:0] func3;
    wire PCSrc, RegWrite, ALUSrc, MemWrite, ResultSrc;
    wire [1:0] ImmSrc;
    wire [2:0] ALUControl;

    control_unit dut (
        .zero(zero),
        .op(op),
        .func3(func3),
        .func7(func7),
        .PCSrc(PCSrc),
        .RegWrite(RegWrite),
        .ALUSrc(ALUSrc),
        .MemWrite(MemWrite),
        .ResultSrc(ResultSrc),
        .ImmSrc(ImmSrc),
        .ALUControl(ALUControl)
    );

    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0);
    end

    // always begin
    //   clk <= 1'b0;
    //   #50;
    //   clk <= 1'b1;
    //   #50;
    // end

    initial begin
      zero <= 1'b1;
      op <= 7'b0000011;
      func3 <= 3'b000;
      func7 <= 1'b1;
      #100;

      zero <= 1'b1;
      op <= 7'b0100011;
      func3 <= 3'b000;
      func7 <= 1'b1;
      #100;

      zero <= 1'b1;
      op <= 7'b0110011;
      func3 <= 3'b000;
      func7 <= 1'b1;
      #100;

      zero <= 1'b1;
      op <= 7'b1100011;
      func3 <= 3'b000;
      func7 <= 1'b1;
      #100;
    end
    
endmodule       