module BCD_behav (
    input in_A, input in_B, input in_C, input in_D, output out_W, output out_X, output out_Y, output out_Z
);
    assign out_Z = ~in_D;
    assign out_Y = ~in_A & ~in_C & in_D | in_C & ~in_D;
    assign out_X = in_B & ~in_C | in_C & (in_B^in_D);
    assign out_W = in_B & in_C & in_D | in_A & ~in_C & ~in_D;
    
endmodule