module tb();
    reg S,P,V;
    wire LED;

    combinational_circuit dut(
        .S(S), .P(P), .V(V), .LED(LED)
    );

    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0);
    end

    initial begin
      S <= 1'b0;
      P <= 1'b0;
      V <= 1'b0;
      #100;
    
      S <= 1'b0;
      P <= 1'b0;
      V <= 1'b1;
      #100;

      S <= 1'b0;
      P <= 1'b1;
      V <= 1'b0;
      #100;

      S <= 1'b0;
      P <= 1'b1;
      V <= 1'b1;
      #100;

      S <= 1'b1;
      P <= 1'b0;
      V <= 1'b0;
      #100;

      S <= 1'b1;
      P <= 1'b0;
      V <= 1'b1;
      #100;

      S <= 1'b1;
      P <= 1'b1;
      V <= 1'b0;
      #100;

      S <= 1'b1;
      P <= 1'b1;
      V <= 1'b1;
      #100;
    end
    
endmodule