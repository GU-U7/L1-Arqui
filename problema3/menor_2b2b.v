/* `include "and_3.v"
`include "and_4.v"
`include "or_3.v"
`include "or_4.v" */
module menor_2b2b (
    input A, input B, input C, input D, output out
);
    wire A_not, B_not;
    not nC(A_not, A);
    not nD(B_not, B);

    //productos
    wire w0,w1,w2;
    and cableW0(w0, C, A_not);
    and_3 cableW1(.o(w1), .i1(A_not), .i2(B_not), .i3(D));
    and_3 cableW2(.o(w2), .i1(B_not), .i2(C), .i3(D));

    or_3 sumaSalida(.o(out), .i1(w0), .i2(w1), .i3(w2));

endmodule