module tb();

    reg A, B;
    wire S, Cout;

    // module declaration
    half_adder dut (
        .A(A), .B(B), .S(S), .Cout(Cout)
    );

    initial begin
      A <= 1'b0;
      B <= 1'b0;
      #100;

      A <= 1'b1;
      B <= 1'b0;
      #100;

      A <= 1'b0;
      B <= 1'b1;
      #100;
      
      A <= 1'b1;
      B <= 1'b1;
      #100;

    end

    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0);
    end
        
endmodule