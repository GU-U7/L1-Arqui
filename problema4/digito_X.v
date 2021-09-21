module digito_X (
    input A, input B, input C, input D, output oX
);
    wire C_not;
    wire w0, w1[1:0];

    //cable w0 BC'
    not nC(C_not, C);
    and w0f(w0, C_not, B);

    //cable w1 C(B xor D)
    xor w1i(w1[0], B, D);
    and w1f(w1[1], w1[0], C);

    //suma 
    or sumaTotal(oX, w1[1], w0);

endmodule