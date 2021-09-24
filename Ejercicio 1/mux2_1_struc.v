module mux2_1_struc (
    input  in0, input  in1, input sel, output  out
);
    wire sel_not, op_in0, op_in1;
    not invert_sel(sel_not, sel);

    and choose_in0(op_in0, sel_not, in0);
    and choose_in1(op_in1, sel, in1);

    or salida(out, op_in1, op_in0);  
endmodule