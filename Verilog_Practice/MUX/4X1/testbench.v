module tb();

    reg [3:0] A,B,C,D;
    reg [1:0] S;
    wire [3:0] Y;

    MUX dut (
        .A(A), .B(B),.C(C), .D(D), .S(S), .Y(Y)
    );

    initial begin
      A <= 4'b0000;
      B <= 4'b1001;
      C <= 4'b0011;
      D <= 4'b1000;
      #100;

      S <= 2'b00;
      #100;

      S <= 2'b01;
      #100;

      S <= 2'b10;
      #100;

      S <= 2'b11;
      #100;
    end

    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0);
    end

endmodule