`include "ands.v"
`include "ors.v"
module igual_2b2b (
    input A, input B, input C, input D, output out
);
    wire A_not, B_not, C_not, D_not;
    not nA(A_not, A);
    not nB(B_not, B);
    not nC(C_not, C);
    not nD(D_not, D);

    wire final_00, final_01, final_11, final_10;
    //CASO 00
    and_4 caso00(.o(final_00), .i1(A_not), .i2(B_not), .i3(C_not), .i4(D_not));
    //CASO 01
    and_4 caso01(.o(final_01), .i1(A_not), .i2(B), .i3(C_not), .i4(D));
    //CASO 11
    and_4 caso11(.o(final_11), .i1(A), .i2(B), .i3(C), .i4(D));
    //CASO 10
    and_4 caso10(.o(final_10), .i1(A), .i2(B_not), .i3(C), .i4(D_not));

    //Salida
    or_4 sumaSalida(.o(out), .i1(final_00),.i2(final_01),.i3(final_10),.i4(final_11));
endmodule