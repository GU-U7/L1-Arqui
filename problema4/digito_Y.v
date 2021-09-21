module digito_Y (
    input A, input B, input C, input D, output oY
);
    wire A_not, C_not, D_not;
    wire w0[1:0], w1;

    //cable w0 A'C'D
    not nA(A_not, A);
    not nC(C_not, C);
    and w0i(w0[0], A_not, C_not);
    and w0f(w0[1], w0[0], D);

    //cable w1 CD'
    not nD(D_not, D);
    and w1f(w1, C, D_not);

    //suma
    or sumaTotal(oY, w1, w0[1]);

endmodule