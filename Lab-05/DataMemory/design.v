module Data_Memory(A, WD, clk, WE, RD);

    input [31:0] A, WD;
    input clk, WE;

    output [31:0] RD;

    reg [31:0] memory [1023:0];

    assign RD = (WE == 1'b0) ? memory[A] : 32'h00000000;

    always @(posedge clk) begin
        if (WE == 1'b1) begin
            memory[A] <= WD; 
        end
    end

endmodule