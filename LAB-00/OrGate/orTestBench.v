module tb();
    reg P,Q;
    wire R;

    orGate dut (.A(P), .B(Q), .X(R));

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
      $dumpfile("dump.vcd");
      $dumpvars(0);
    end
endmodule   