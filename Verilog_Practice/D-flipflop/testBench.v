module tb();
    reg reset, clk, D;
    wire Q;

    dflipflop dut (
        .reset(reset), .clk(clk), .D(D), .Q(Q)
    );

    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0);
    end

    // to generate clock signal
    always begin
      clk <= 1'b1;
      #50;
      clk <= 1'b0;
      #50;
    end

    initial begin
      reset <= 1'b1;
      D <= 1'b0;
      #100;
      reset <= 1'b0;
      D <= 1'b1;
      #100;
      D <= 1'b0;
      #100;
      D <= 1'b1;
      #100;
      $finish;
    end
endmodule