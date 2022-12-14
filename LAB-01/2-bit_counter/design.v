module two_bit_counter(input clk, reset,  output[1:0] Q);

    //input
    reg[1:0] flop;

    always @(posedge clk) begin
        if(reset == 1'b1) 
        begin
            flop <= 2'b00;
        end
        else begin
          flop <= flop + 2'b01;
        end
    end

    assign Q = flop;

endmodule