`include "ands.v"
`include "ors.v"
module mayor_2b2b (
    input A, input B, input C, input D, output out
);
    wire C_not, D_not;
    not nC(C_not, C);
    not nD(D_not, D);

    //productos
    wire w0,w1,w2;
    and cableW0(w0, A, C_not);
    and_3 cableW1(.o(w1), .i1(A), .i2(B), .i3(D_not));
    and_3 cableW2(.o(w2), .i1(B), .i2(C_not), .i3(D_not));

    or_3 sumaSalida(.o(out), .i1(w0), .i2(w1), .i3(w2));

endmodule