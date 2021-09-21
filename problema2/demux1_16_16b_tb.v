`timescale 1ns/1ns
module demux1_16_16b_tb;
    reg [15:0] y;
    reg sel0,sel1, sel2, sel3;
    wire [15:0] x_0, x_1, x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15;

    demux1_16_16b prueba(.Y(y), .Sel3(sel3), .Sel2(sel2), .Sel1(sel1), .Sel0(sel0), .x_0(x_0), .x_1(x_1), .x_2(x_2), .x_3(x_3), .x_4(x_4), .x_5(x_5), .x_6(x_6), .x_7(x_7), .x_8(x_8), .x_9(x_9), .x_10(x_10), .x_11(x_11), .x_12(x_12), .x_13(x_13), .x_14(x_14), .x_15(x_15));
    initial begin
        y = 16'b1111100100011101;
        sel0 = 0;
        sel1 = 0;
        sel2 = 0;
        sel3 = 0;
        #1
        $display("--Prueba--\nY:\t%b",y,"\nSeleccion(S3, S2, S1, S0): ", sel3,sel2,sel1, sel0,"\nX0:\t%b\nX1:\t%b\nX2:\t%b\nX3:\t%b\nX4:\t%b\nX5:\t%b\nX6:\t%b\nX7:\t%b\nX8:\t%b\nX9:\t%b\nX10:\t%b\nX11:\t%b\nX12:\t%b\nX13:\t%b\nX14:\t%b\nX15:\t%b",x_0, x_1, x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15);
        #1
        sel0 = 1;
        sel1 = 1;
        sel2 = 0;
        sel3 = 1;
        #1
        $display("--Prueba--\nY:\t%b",y,"\nSeleccion(S3, S2, S1, S0): ", sel3,sel2,sel1, sel0,"\nX0:\t%b\nX1:\t%b\nX2:\t%b\nX3:\t%b\nX4:\t%b\nX5:\t%b\nX6:\t%b\nX7:\t%b\nX8:\t%b\nX9:\t%b\nX10:\t%b\nX11:\t%b\nX12:\t%b\nX13:\t%b\nX14:\t%b\nX15:\t%b",x_0, x_1, x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15);
        #1
        sel0 = 0;
        sel1 = 1;
        sel2 = 1;
        sel3 = 0;
        #1
        $display("--Prueba--\nY:\t%b",y,"\nSeleccion(S3, S2, S1, S0): ", sel3,sel2,sel1, sel0,"\nX0:\t%b\nX1:\t%b\nX2:\t%b\nX3:\t%b\nX4:\t%b\nX5:\t%b\nX6:\t%b\nX7:\t%b\nX8:\t%b\nX9:\t%b\nX10:\t%b\nX11:\t%b\nX12:\t%b\nX13:\t%b\nX14:\t%b\nX15:\t%b",x_0, x_1, x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15);
        #1
        sel0 = 1;
        sel1 = 1;
        sel2 = 1;
        sel3 = 1;
        #1
        $display("--Prueba--\nY:\t%b",y,"\nSeleccion(S3, S2, S1, S0): ", sel3,sel2,sel1, sel0,"\nX0:\t%b\nX1:\t%b\nX2:\t%b\nX3:\t%b\nX4:\t%b\nX5:\t%b\nX6:\t%b\nX7:\t%b\nX8:\t%b\nX9:\t%b\nX10:\t%b\nX11:\t%b\nX12:\t%b\nX13:\t%b\nX14:\t%b\nX15:\t%b",x_0, x_1, x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15);

    end
endmodule