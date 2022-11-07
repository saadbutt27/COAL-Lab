module tb();

    // variables
    reg P , Q;
    wire R;

    // declaring design // dut (Design Under Test)
    gate dut(.A(P),.B(Q),.Y(R));

    initial begin
      P <= 1'b0;
      Q <= 1'b0;
      #50;

      P <= 1'b0;
      Q <= 1'b1;
      #50;

      P <= 1'b1;
      Q <= 1'b0;
      #50;

      P <= 1'b1;
      Q <= 1'b1;
      #50;
    end

    initial begin
    $dumpfile("dump.vcd"); // value change dump // variable change dump
    $dumpvars(0);
    end

endmodule