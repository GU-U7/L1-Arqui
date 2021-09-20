module comparator_2b2b_behav (
    input A, input B, input C, input D, output F1, output F2, output F3
);
    assign F1 = ~A&~B&~C&~D | ~A&B&~C&D | A&B&C&D | A&~B&C&~D;
    assign F2 = ~A&C | ~A&~B&D | ~B&C&D;
    assign F3 = ~C&A | A&B&~D | B&~C&~D;
endmodule