`timescale 1ns/1ns
module comparator_tb;

    reg A, B, C, D;
    wire oF1, oF2, oF3;

    comparator compPrueba(.A(A), .B(B), .C(D), .D(D), .F1(oF1), .F2(oF2), .F3(oF3));

    initial begin
        A=1;
        B=1;
        C=1;
        D=1;
        $display("AB: %b%b\tCD: %b%b", A, B, C, D);
        #1
        $display("F1(AB = CD): %b \t F2(AB < CD): %b \t F3(AB > CD): %b", oF1, oF2, oF3);
        #1
        A=0;
        B=0;
        C=0;
        D=1;
        $display("AB: %b%b\tCD: %b%b", A, B, C, D);
        #1
        $display("F1(AB = CD): %b \t F2(AB < CD): %b \t F3(AB > CD): %b", oF1, oF2, oF3);
        #1
        A=1;
        B=1;
        C=1;
        D=0;
        $display("AB: %b%b\tCD: %b%b", A, B, C, D);
        #1
        $display("F1(AB = CD): %b \t F2(AB < CD): %b \t F3(AB > CD): %b", oF1, oF2, oF3);
    end

    initial begin
        $dumpfile("comparator.vcd");
        $dumpvars;
    end
endmodule