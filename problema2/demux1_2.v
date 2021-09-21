module demux1_2 (
    input i_Y, input i_Sel,  output o_X0, output o_X1
);

    wire Sel_not;
    not nSel(Sel_not, i_Sel);
    
    and salida_x0(o_X0, Sel_not, i_Y);
    and salida_x1(o_X1, i_Sel, i_Y);
    
endmodule