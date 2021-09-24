module digito_Y (
    input A, input B, input C, input D, output oY
);
    assign oY  = ~A & ~C & D | C & ~D;

endmodule