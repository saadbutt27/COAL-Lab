module counterUp(reset, clk, Q);

    input reset, clk;
    output reg [3:0] Q;

    always @(posedge clk) begin
      if (reset == 1'b1) begin
        Q = 4'b0;
      end
    end 
endmodule