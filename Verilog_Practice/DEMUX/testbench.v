module tb();
    reg [1:0] I,S;
    wire [1:0] A,B,C,D;

    demux dut(
        .I(I),
        .S(S),
        .A(A),
        .B(B),
        .C(C),
        .D(D)
    );

    initial begin
      I <= 2'b11;
      S <= 2'b00;
      #100;

      I <= 2'b11;
      S <= 2'b00;
      #100;

      I <= 2'b10;
      S <= 2'b01;
      #100;

      I <= 2'b01;
      S <= 2'b10;
      #100;

      I <= 2'b00;
      S <= 2'b11;
      #100;
    end

    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0);
    end

endmodule