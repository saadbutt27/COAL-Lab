module tb();

    reg clk, reset;
    wire[2:0] Q;

    // module declaration
    two_bit_counter dut (
        .clk(clk), .reset(reset), .Q(Q)
    );

    // clock cycle
    always begin
        clk <= 1'b1;
        #50;
        clk <= 1'b0;
        #50;
    end

    initial begin
      reset <= 1'b1;
      #100;
      reset <= 1'b0;
      #800;

      $finish;
    end

    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0);
    end
        
endmodule