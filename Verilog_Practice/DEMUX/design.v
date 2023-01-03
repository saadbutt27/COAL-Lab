module demux(I,S,A,B,C,D);

    input [1:0] I;
    input [1:0] S;
    output reg [1:0] A,B,C,D;

    wire [10:0] G,F;

    assign G = {{9{1'b0}},I};
    assign F = {{9{I[1]}},I};

    always @(I or S) begin
        case(S)
            2'b00 : begin
                A <= I;
                B <= 2'b00;
                C <= 2'b00;
                D <= 2'b00;
            end
            2'b01 : begin
                A <= 2'b00;
                B <= I;
                C <= 2'b00;
                D <= 2'b00;
            end
            2'b10 : begin
                A <= 2'b00;
                B <= 2'b00;
                C <= I;
                D <= 2'b00;
            end
            2'b11 : begin
                A <= 2'b00;
                B <= 2'b00;
                C <= 2'b00;
                D <= I;
            end
            default : begin
                A <= 2'b00;
                B <= 2'b00;
                C <= 2'b00;
                D <= 2'b00;
            end
        endcase

                
        // if (S == 1'b0) begin
        //     assign A = I;
        //     assign B = 1'b0;
        // end
        // else begin
        //     assign A = 1'b0;
        //     assign B = I;
        // end      
    end

endmodule