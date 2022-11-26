module dflipflop(reset, clk, D, Q);

    input reset, clk, D;
    output reg Q;

    always @(posedge clk) begin
      if (reset == 1'b1) begin
        Q <= 1'b0;
      end
      else begin
        Q <= D;
      end
    end

endmodule