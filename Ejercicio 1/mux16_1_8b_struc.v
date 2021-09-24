`include "mux2_1_struc.v"
`include "mux2_1_8b_struc.v"
module mux16_1_8b_struc (
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3, input [7:0] in4, input [7:0] in5, input [7:0] in6, input [7:0] in7, input [7:0] in8, input [7:0] in9, input [7:0] in10, input [7:0] in11, input [7:0] in12, input [7:0] in13, input [7:0] in14, input [7:0] in15, input sel3, input sel2, input sel1, input sel0, output [7:0] out
);
    //1era evaluacion
    wire [7:0] eva1[7:0];
    mux2_1_8b_struc mux01(in0, in1, sel0, eva1[0]);
    mux2_1_8b_struc mux23(in2, in3, sel0, eva1[1]);
    mux2_1_8b_struc mux45(in4, in5, sel0, eva1[2]);
    mux2_1_8b_struc mux67(in6, in7, sel0, eva1[3]);
    mux2_1_8b_struc mux89(in8, in9, sel0, eva1[4]);
    mux2_1_8b_struc mux1011(in10, in11, sel0, eva1[5]);
    mux2_1_8b_struc mux1213(in12, in13, sel0, eva1[6]);
    mux2_1_8b_struc mux1415(in14, in15, sel0, eva1[7]);

    //2da evaluacion
    wire [7:0] eva2[3:0];
    mux2_1_8b_struc eva1_01(eva1[0], eva1[1], sel1, eva2[0]);
    mux2_1_8b_struc eva1_23(eva1[2], eva1[3], sel1, eva2[1]);
    mux2_1_8b_struc eva1_45(eva1[4], eva1[5], sel1, eva2[2]);
    mux2_1_8b_struc eva1_67(eva1[6], eva1[7], sel1, eva2[3]);

    //3era evaluacion
    wire [7:0] eva3[1:0];
    mux2_1_8b_struc eva2_01(eva2[0], eva2[1], sel2, eva3[0]);
    mux2_1_8b_struc eva2_23(eva2[2], eva2[3], sel2, eva3[1]);

    //ultima evaluacion
    mux2_1_8b_struc eva_final(eva3[0], eva3[1], sel3, out);
    
endmodule