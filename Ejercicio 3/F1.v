module F1 (
    input A, input B, input C, input D, output out
);
    assign out = ~A&~B&~C&~D | ~A&B&~C&D | A&B&C&D | A&~B&C&~D;
endmodule