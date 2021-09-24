module demux1_2 (
    input i_Y, input i_Sel,  output o_X0, output o_X1
);
    assign o_X1 = ~i_Sel & i_Y;
    assign o_X0 = i_Sel & i_Y;
    
endmodule