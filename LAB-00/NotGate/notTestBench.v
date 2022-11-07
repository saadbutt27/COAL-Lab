module tb();

    reg P;
    wire Q;

    notGate dut(.A(P), .B(Q));

    initial begin
      P <= 1'b1;
      #50;

      P <= 1'b0;
      #50;
    end

    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0);
    end

endmodule