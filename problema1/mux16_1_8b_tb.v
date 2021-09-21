`timescale 1ns/1ns

module mux16_1_8b_tb;
    reg [7:0] A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P;
    reg S3, S2, S1, S0;
    wire [7:0] Salida;
    mux16_1_8b_struc multix(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, S3, S2, S1, S0, Salida);
    initial begin
        A=8'b00000000;
        B=8'b00000001;
        C=8'b11111111;
        D=8'b11111110;
        E=8'b11111101;
        F=8'b11111100;
        G=8'b00000010;
        H=8'b00000011;
        I=8'b01100001;
        J=8'b01100010;
        K=8'b01100011;
        L=8'b10010000;
        M=8'b10010001;
        N=8'b10010010;
        O=8'b10010011;
        P=8'b11110000;

        S0=0;
        S1=1;
        S2=1;
        S3=1;
        
        #1
        $display("%b", Salida);

    end
    initial begin
        $dumpfile("mux16_1_8b.vcd");
        $dumpvars;
    end
endmodule