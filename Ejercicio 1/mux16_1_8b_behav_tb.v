module mux16_1_8b_behav_tb;

    reg [7:0] X_0, X_1, X_2, X_3, X_4, X_5, X_6, X_7, X_8, X_9, X_10, X_11, X_12, X_13, X_14, X_15;
    reg sel3, sel2, sel1, sel0;
    wire [7:0] Y;

    mux16_1_8b_behav mux16_1Prueba(X_0, X_1, X_2, X_3, X_4, X_5, X_6, X_7, X_8, X_9, X_10, X_11, X_12, X_13, X_14, X_15, sel3, sel2, sel1, sel0, Y);

    initial begin
        X_0=8'b00000000;
        X_1=8'b00000001;
        X_2=8'b11111111;
        X_3=8'b11111110;
        X_4=8'b11111101;
        X_5=8'b11111100;
        X_6=8'b00000010;
        X_7=8'b00000011;
        X_8=8'b01100001;
        X_9=8'b01100010;
        X_10=8'b01100011;
        X_11=8'b10010000;
        X_12=8'b10010001;
        X_13=8'b10010010;
        X_14=8'b10010011;
        X_15=8'b11110000;

        $display("x0: %d, x1: %d, x2: %d, x3: %d, x4: %d, x5: %d, x6: %d, x7: %d, x8: %d, x9: %d, x10: %d, x11: %d, x12: %d, x13: %d, x14: %d, x15: %d", X_0, X_1, X_2, X_3, X_4, X_5, X_6, X_7, X_8, X_9, X_10, X_11, X_12, X_13, X_14, X_15);
        sel0=1;
        sel1=1;
        sel2=1;
        sel3=1;
        #1
        $display("S3: %b, S2: %b, S1: %b, S0: %b -> Y: %d",sel3, sel2, sel1, sel0, Y);
        #1
        sel0=1;
        sel1=0;
        sel2=1;
        sel3=1;
        #1
        $display("S3: %b, S2: %b, S1: %b, S0: %b -> Y: %d",sel3, sel2, sel1, sel0, Y);

    end
    initial begin
        $dumpfile("mux16_1_8b_behav.vcd");
        $dumpvars;
    end

    
endmodule