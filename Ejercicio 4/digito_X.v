module digito_X (
    input A, input B, input C, input D, output oX
);
    assign oX = B & ~C | C & (B^D);

endmodule