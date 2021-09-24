//`include "mux2_1_struc.v"
module mux2_1_8b_struc (
    input [7:0] in0, input [7:0] in1, input sel, output [7:0] out
);
    mux2_1_struc bit0(in0[0], in1[0], sel, out[0]);
    mux2_1_struc bit1(in0[1], in1[1], sel, out[1]);
    mux2_1_struc bit2(in0[2], in1[2], sel, out[2]);
    mux2_1_struc bit3(in0[3], in1[3], sel, out[3]);
    mux2_1_struc bit4(in0[4], in1[4], sel, out[4]);
    mux2_1_struc bit5(in0[5], in1[5], sel, out[5]);
    mux2_1_struc bit6(in0[6], in1[6], sel, out[6]);
    mux2_1_struc bit7(in0[7], in1[7], sel, out[7]);
endmodule