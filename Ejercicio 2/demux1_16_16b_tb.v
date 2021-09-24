module demux1_16_16b_tb;

    reg [15:0] Y;
    reg sel3, sel2, sel1, sel0;
    wire [15:0] X_0, X_1, X_2, X_3, X_4, X_5, X_6, X_7, X_8, X_9, X_10, X_11, X_12, X_13, X_14, X_15;

    demux1_16_16b demux1_16Prueba(Y, sel3, sel2, sel1, sel0, X_0, X_1, X_2, X_3, X_4, X_5, X_6, X_7, X_8, X_9, X_10, X_11, X_12, X_13, X_14, X_15);

    initial begin
        Y = 16'b111101001;//%H
        sel3 = 1;
        sel2 = 0;
        sel1 = 1;
        sel0 = 1;
        $display("input: %H, s3: %b, s2: %b, s1: %b, s0: %b", Y, sel3, sel2, sel1, sel0);
        #1
        $display("x0: %h, x1: %h, x2: %h, x3: %h, x4: %h, x5: %h, x6: %h, x7: %h, x8: %h, x9: %h, x10: %h, x11: %h, x12: %h, x13: %h, x14: %h, x15: %h", X_0, X_1, X_2, X_3, X_4, X_5, X_6, X_7, X_8, X_9, X_10, X_11, X_12, X_13, X_14, X_15);
        #1
        sel3 = 0;
        sel2 = 1;
        sel1 = 0;
        sel0 = 1;
        $display("input: %H, s3: %b, s2: %b, s1: %b, s0: %b", Y, sel3, sel2, sel1, sel0);
        #1
        $display("x0: %h, x1: %h, x2: %h, x3: %h, x4: %h, x5: %h, x6: %h, x7: %h, x8: %h, x9: %h, x10: %h, x11: %h, x12: %h, x13: %h, x14: %h, x15: %h", X_0, X_1, X_2, X_3, X_4, X_5, X_6, X_7, X_8, X_9, X_10, X_11, X_12, X_13, X_14, X_15);
    end
    initial begin
        
        $dumpfile("demux1_16_16b.vcd");
        $dumpvars;
    end

    
endmodule