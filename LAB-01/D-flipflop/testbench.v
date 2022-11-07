module tb();
    reg A, B, C, clk, rst;
    wire Z;

    d_flipflop dut (
        .A(A), .B(B), .C(C), .clk(clk), .rst(rst), .Z(Z)
    );

    always begin
      clk <= 1'b1;
      #50;

      clk <= 1'b0;
      #50;
    end

    initial begin
      rst <= 1'b1;
      #100;

      rst <= 1'b0;
      A <= 1'b0;
      B <= 1'b1;
      C <= 1'b1;
      #100;
      $finish;
    end

    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0);
    end

endmodule