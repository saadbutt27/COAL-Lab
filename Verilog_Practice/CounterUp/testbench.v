module tb();
    reg clk=0, reset;
    wire [3:0] Q;

    counterUp dut (
        .clk(clk),
        .reset(reset),
        .Q(Q)
    );

    always begin
      clk <= ~clk;
      #50;
    end

    initial begin
      reset <= 1'b1;
      #100;
      reset <= 1'b0;
      #1600;
      $finish;
    end

    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0);
    end

endmodule       