module digito_W (
    input A, input B, input C, input D, output oW
);
    wire C_not, D_not;
    wire w0[1:0], w1[1:0];

    not nC(C_not, C);
    not nD(D_not, D);

    //Cable w0 AC'D'
    and w0i(w0[0], C_not, D_not);
    and w0f(w0[1], A, w0[0]);

    //Cablo w1 BCD
    and w1i(w1[0], C, D);
    and w1f(w1[1], B, w1[0]);

    or sumaTotal(oW, w1[1], w0[1]);

endmodule