module comparator_2b2b_struc_tb;
    reg A,B,C,D;
    wire F1, F2, F3;

    comparator_2b2b_struc comparatorTest (.A(A), .B(B), .C(C), .D(D), .F1(F1), .F2(F2), .F3(F3));
    initial begin
        A=0;
        B=0;
        C=0;
        D=0;
        $display("AB: %b", A, "%b\t", B, "CD: %b", C, "%b\t", D);
        #1
        $display("AB: %b", A, "%b\t", B, "CD: %b", C, "%b\t", D, "F1: %b\t", F1,"F2: %b\t", F2,"F3: %b", F3);
        #1
    end
endmodule