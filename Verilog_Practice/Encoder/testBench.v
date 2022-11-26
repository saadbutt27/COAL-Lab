module tb();

    reg Y0, Y1, Y2, Y3;
    wire [1:0] A;

    encoder dut ( 
        .Y0(Y0), .Y1(Y1), .Y2(Y2), .Y3(Y3), .A(A)
    );

    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0);
    end

    initial begin
      Y3 <= 1'b0;
      Y2 <= 1'b0;
      Y1 <= 1'b0;
      Y0 <= 1'b1;
      #100;

      Y3 <= 1'b0;
      Y2 <= 1'b0;
      Y1 <= 1'b1;
      Y0 <= 1'b0;
      #100;
      Y3 <= 1'b0;
      Y2 <= 1'b1;
      Y1 <= 1'b0;
      Y0 <= 1'b0;
      #100;
      Y3 <= 1'b1;
      Y2 <= 1'b0;
      Y1 <= 1'b0;
      Y0 <= 1'b0;
      #100;
    end

endmodule