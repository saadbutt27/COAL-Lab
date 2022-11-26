module tb();

    reg A,B,C,D,clk,rst;
    wire Z;

    top_module dut(
        .A(A), .B(B), .C(C), .D(D), .clk(clk), .rst(rst), .Z(Z)
    );

    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0);
    end

    always begin
      clk <= 1'b0;
      #50;
      clk <= 1'b1;
      #50;
    end

    initial begin
      A <= 1'b0;
      B <= 1'b0;
      C <= 1'b0;
      D <= 1'b0;
      rst <= 1'b1;
      #100;

      A <= 1'b0;
      B <= 1'b1;
      C <= 1'b1;
      D <= 1'b1;
      rst <= 1'b0;
      #100;

      A <= 1'b0;
      B <= 1'b1;
      C <= 1'b1;
      D <= 1'b0;
      #200;

      $finish;
    end

endmodule