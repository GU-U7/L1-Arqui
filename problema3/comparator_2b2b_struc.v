`include "mayor_2b2b.v"
`include "menor_2b2b.v"
`include "igual_2b2b.v"

module comparator_2b2b_struc (
    input A, input B, input C, input D, output F1, output F2, output F3
);
    mayor_2b2b salidaF3(.A(A), .B(B), .C(C), .D(D), .out(F3));
    menor_2b2b salidaF2(.A(A), .B(B), .C(C), .D(D), .out(F2)); 
    igual_2b2b salidaF1(.A(A), .B(B), .C(C), .D(D), .out(F1));
endmodule