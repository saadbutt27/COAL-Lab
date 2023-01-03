module d_flipflop(A ,B ,C , clk, rst, Z);
    // inputs
    input A, B, C, clk, rst;
    // output
    output Z;

    // internal wires
    wire B_or_C;
    wire A_and_B_or_C;

    // flipflop to store output to be next input
    reg Result_Combinational_Circuit;

    // assignment of logics
    assign B_or_C = B | C;
    assign A_and_B_or_C = A & (B_or_C);

    // always block to store data temporarily in flipflop
    always @(posedge clk) begin
        if (rst == 1'b1) begin
            Result_Combinational_Circuit <= 1'b0;
        end
        else begin
            Result_Combinational_Circuit <= A_and_B_or_C;
        end
    end

    // assignment to final output
    assign Z = Result_Combinational_Circuit;
    
endmodule