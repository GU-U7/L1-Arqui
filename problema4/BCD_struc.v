`include "digito_W.v"
`include "digito_X.v"
`include "digito_Y.v"
`include "digito_Z.v"

module BCD_struc (
    input in_A, input in_B, input in_C, input in_D, output out_W, output out_X, output out_Y, output out_Z
);
    digito_W dW(.oW(out_W), .A(in_A), .B(in_B), .C(in_C), .D(in_D));
    digito_X dX(.oX(out_X), .A(in_A), .B(in_B), .C(in_C), .D(in_D));
    digito_Y dY(.oY(out_Y), .A(in_A), .B(in_B), .C(in_C), .D(in_D));
    digito_Z dZ(.oZ(out_Z), .A(in_A), .B(in_B), .C(in_C), .D(in_D)); //Podriamos utilizar solamente: not dZ(out_Z, D);

endmodule