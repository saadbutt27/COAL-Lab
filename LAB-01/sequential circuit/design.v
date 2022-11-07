module sequential_circuit(A, B, C, clk, reset, Q);

    // inputs
    input A, B, C, clk, reset;
    // output
    output Q;

    //interim signals
    wire A_xor_B;
    wire A_and_B;
    wire A_or_B_C;
    reg flop;

    //logic designing
    assign A_xor_B = A ^ B;
    assign A_and_B = A & B;
    assign A_or_B_C = C | A_xor_B | A_and_B;

    always @(posedge clk) begin
        if(reset == 1'b1) 
        begin
            flop <= 1'b0;
        end
        else begin
          flop <= A_or_B_C;
        end
    end

    assign Q = flop;

endmodule

// assign Q = (A ^ B) | (A & B) | C