`timescale 1ns/1ns

module igual_2b2b_tb;
    reg a,b,c,d;
    wire o;
    igual_2b2b prueba(.A(a), .B(b), .C(c), .D(d), .out(o));
    initial begin
        a=0;
        b=0;
        c=0;
        d=0;
        #1
        $display("%b%b =? %b%b -> %b",a,b,c,d,o);
    end
endmodule