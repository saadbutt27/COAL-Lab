module counterUp(reset, clk, Q);

    input reset, clk;
    reg [3:0] flop;
    output [3:0] Q;

    always @(posedge clk) begin
      if (reset == 1'b1) begin
        flop = 4'b0000;
      end
      else begin
        flop = flop + 4'b0001;
      end
    end 

    assign  Q = flop;

endmodule