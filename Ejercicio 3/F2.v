module F2 (
    input A, input B, input C, input D, output out
);
    assign out = ~A&C | ~A&~B&D | ~B&C&D;
endmodule