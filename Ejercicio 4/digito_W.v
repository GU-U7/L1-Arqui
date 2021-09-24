module digito_W (
    input A, input B, input C, input D, output oW
);
    assign oW = B & C & D | A & ~C & ~D;
    
endmodule