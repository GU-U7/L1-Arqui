`include "F1.v"
`include "F2.v"
`include "F3.v"
module comparator (
    input A, input B, input C, input D, output F1, output F2, output F3
);

    F3 salidaF3(.A(A), .B(B), .C(C), .D(D), .out(F3));
    F2 salidaF2(.A(A), .B(B), .C(C), .D(D), .out(F2)); 
    F1 salidaF1(.A(A), .B(B), .C(C), .D(D), .out(F1));
    
endmodule