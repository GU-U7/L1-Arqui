`include "demux1_2.v"
`include "demux1_2_16b.v"
module demux1_16_16b (
    input [15:0] Y, input Sel3, Sel2, Sel1, Sel0, output [15:0] x_0, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14, x_15
);
    //primera evaluacion demux
    wire[15:0] y0, y1;
    demux1_2_16b eva(Y, Sel3, y0, y1);
    //segunda evaluacion ''
    wire[15:0] y00, y01, y10, y11;
    demux1_2_16b eva0(y0, Sel2, y00, y01);
    demux1_2_16b eva1(y1, Sel2, y10, y11);
    //tercera '' ''
    wire[15:0] y000, y001, y010, y011, y100, y101, y110, y111;
    demux1_2_16b eva00(y00, Sel1, y000, y001);
    demux1_2_16b eva01(y01, Sel1, y010, y011);
    demux1_2_16b eva10(y10, Sel1, y100, y101);
    demux1_2_16b eva11(y11, Sel1, y110, y111);
    //final '' ''
    demux1_2_16b eva000(y000, Sel0, x_0, x_1);
    demux1_2_16b eva001(y001, Sel0, x_2, x_3);
    demux1_2_16b eva010(y010, Sel0, x_4, x_5);
    demux1_2_16b eva011(y011, Sel0, x_6, x_7);
    demux1_2_16b eva100(y100, Sel0, x_8, x_9);
    demux1_2_16b eva101(y101, Sel0, x_10, x_11);
    demux1_2_16b eva110(y110, Sel0, x_12, x_13);
    demux1_2_16b eva111(y111, Sel0, x_14, x_15);
endmodule