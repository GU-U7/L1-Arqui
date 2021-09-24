module F3 (
    input A, input B, input C, input D, output out
);
    assign out = ~C&A | A&B&~D | B&~C&~D;
endmodule