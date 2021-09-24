`timescale 1ns/1ns
module BCD_tb;
    reg A, B, C, D;
    wire oW, oX, oY, oZ;
    
    BCD testBCD(.in_A(A), .in_B(B), .in_C(C), .in_D(D), .out_W(oW), .out_X(oX), .out_Y(oY), .out_Z(oZ));
    initial begin
        A=0;
        B=0;
        C=0;
        D=0;
        $display("ABCD: %b%b%b%b", A, B, C, D);
        #1
        $display("ABCD: %b%b%b%b -> WXYZ: %b%b%b%b", A, B, C, D, oW, oX, oY, oZ);
        #1    
        A=0;
        B=0;
        C=0;
        D=1;
        $display("ABCD: %b%b%b%b", A, B, C, D);
        #1
        $display("ABCD: %b%b%b%b -> WXYZ: %b%b%b%b", A, B, C, D, oW, oX, oY, oZ);
        #1    
        A=0;
        B=0;
        C=1;
        D=0;
        $display("ABCD: %b%b%b%b", A, B, C, D);
        #1
        $display("ABCD: %b%b%b%b -> WXYZ: %b%b%b%b", A, B, C, D, oW, oX, oY, oZ);
        #1    
        A=0;
        B=0;
        C=1;
        D=1;
        $display("ABCD: %b%b%b%b", A, B, C, D);
        #1
        $display("ABCD: %b%b%b%b -> WXYZ: %b%b%b%b", A, B, C, D, oW, oX, oY, oZ);
        #1    
        A=0;
        B=1;
        C=0;
        D=0;
        $display("ABCD: %b%b%b%b", A, B, C, D);
        #1
        $display("ABCD: %b%b%b%b -> WXYZ: %b%b%b%b", A, B, C, D, oW, oX, oY, oZ);
        #1    
        A=0;
        B=1;
        C=0;
        D=1;
        $display("ABCD: %b%b%b%b", A, B, C, D);
        #1
        $display("ABCD: %b%b%b%b -> WXYZ: %b%b%b%b", A, B, C, D, oW, oX, oY, oZ);
        #1    
        A=0;
        B=1;
        C=1;
        D=0;
        $display("ABCD: %b%b%b%b", A, B, C, D);
        #1
        $display("ABCD: %b%b%b%b -> WXYZ: %b%b%b%b", A, B, C, D, oW, oX, oY, oZ);
        #1    
        A=0;
        B=1;
        C=1;
        D=1;
        $display("ABCD: %b%b%b%b", A, B, C, D);
        #1
        $display("ABCD: %b%b%b%b -> WXYZ: %b%b%b%b", A, B, C, D, oW, oX, oY, oZ);
        #1
        A=1;
        B=0;
        C=0;
        D=0;
        $display("ABCD: %b%b%b%b", A, B, C, D);
        #1
        $display("ABCD: %b%b%b%b -> WXYZ: %b%b%b%b", A, B, C, D, oW, oX, oY, oZ);
        #1    
        A=1;
        B=0;
        C=0;
        D=1;
        $display("ABCD: %b%b%b%b", A, B, C, D);
        #1
        $display("ABCD: %b%b%b%b -> WXYZ: %b%b%b%b", A, B, C, D, oW, oX, oY, oZ);
    end
    initial begin
        $dumpfile("BCD.vcd");
        $dumpvars;
    end
endmodule