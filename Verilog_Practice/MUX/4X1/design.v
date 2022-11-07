module MUX(A,B,C,D,S,Y);
    input [3:0] A,B,C,D;
    input [1:0] S;
    output [3:0] Y;

    assign Y = S[1] ? (S[0] ? D : C) : (S[0] ? B : A);

endmodule