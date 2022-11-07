module combinational_circuit(S,P,V,LED);

    input S,P,V;
    output LED;

    assign LED = (~S) & (P) & (V);

endmodule