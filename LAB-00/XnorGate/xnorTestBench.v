module tb();

    reg P,Q,C;
    wire R;

    xnorGate dut (.A(P), .B(Q), .C(C), .X(R));

    initial begin
      P <= 1'b0;
      Q <= 1'b0;
      C <= 1'b0;
      #50;

      P <= 1'b0;
      Q <= 1'b0;
      C <= 1'b1;
      #50;

      P <= 1'b0;
      Q <= 1'b1;
      C <= 1'b0;
      #50;

      P <= 1'b0;
      Q <= 1'b1;
      C <= 1'b1;
      #50;

      P <= 1'b1;
      Q <= 1'b1;
      C <= 1'b1;
      #50;
    end

    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0);
    end

endmodule