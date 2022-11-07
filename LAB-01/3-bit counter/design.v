module two_bit_counter(input clk, reset,  output[2:0] Q);

    //input
    reg[2:0] flop;

    always @(posedge clk) begin
        if(reset == 1'b1) 
        begin
            flop <= 3'b000;
        end
        else begin
          flop <= flop + 3'b001;
        end
    end

    assign Q = flop;

endmodule