module MUX(A,B,S,Y);
    input [1:0] A,B;
    input S;
    output [1:0] Y;

    assign Y = (S == 1'b0) ? A : B;
endmodule