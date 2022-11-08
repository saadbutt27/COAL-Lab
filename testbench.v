module tb();

  reg [31:0]A,B;
  reg [2:0] ctrl;
  wire [31:0] Q;
  
  ALU dut(
    .A(A), .B(B), .ctrl(ctrl), .Q(Q)
  );

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end

  initial begin
    A <= 32'd8;
    B <= 32'd5;
    ctrl <= 3'b000;
    #100;
    
    A <= 32'd8;
    B <= 32'd5;
    ctrl <= 3'b001;
    #100;
    
    A <= 32'd8;
    B <= 32'd5;
    ctrl <= 3'b010;
    #100;
    
    A <= 32'd8;
    B <= 32'd5;
    ctrl <= 3'b011;
    #100;
  end

endmodule