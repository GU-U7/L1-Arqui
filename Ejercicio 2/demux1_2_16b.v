//`include "demux1_2.v"

module demux1_2_16b (
    input [15:0] i_Y, input i_Sel,  output [15:0] o_X0, output [15:0] o_X1
);
    demux1_2 demuxSingular1(i_Y[0], i_Sel, o_X0[0], o_X1[0]);
    demux1_2 demuxSingular2(i_Y[1], i_Sel, o_X0[1], o_X1[1]);
    demux1_2 demuxSingular3(i_Y[2], i_Sel, o_X0[2], o_X1[2]);
    demux1_2 demuxSingular4(i_Y[3], i_Sel, o_X0[3], o_X1[3]);
    demux1_2 demuxSingular5(i_Y[4], i_Sel, o_X0[4], o_X1[4]);
    demux1_2 demuxSingular6(i_Y[5], i_Sel, o_X0[5], o_X1[5]);
    demux1_2 demuxSingular7(i_Y[6], i_Sel, o_X0[6], o_X1[6]);
    demux1_2 demuxSingular8(i_Y[7], i_Sel, o_X0[7], o_X1[7]);
    demux1_2 demuxSingular9(i_Y[8], i_Sel, o_X0[8], o_X1[8]);
    demux1_2 demuxSingular10(i_Y[9], i_Sel, o_X0[9], o_X1[9]);
    demux1_2 demuxSingular11(i_Y[10], i_Sel, o_X0[10], o_X1[10]);
    demux1_2 demuxSingular12(i_Y[11], i_Sel, o_X0[11], o_X1[11]);
    demux1_2 demuxSingular13(i_Y[12], i_Sel, o_X0[12], o_X1[12]);  
    demux1_2 demuxSingular14(i_Y[13], i_Sel, o_X0[13], o_X1[13]);
    demux1_2 demuxSingular15(i_Y[14], i_Sel, o_X0[14], o_X1[14]);   
    demux1_2 demuxSingular16(i_Y[15], i_Sel, o_X0[15], o_X1[15]);   
endmodule