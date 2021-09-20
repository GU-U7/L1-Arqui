module mayor_2b2b_tb;
    reg a,b,c,d;
    wire o;
    mayor_2b2b prueba(.A(a), .B(b), .C(c), .D(d), .out(o));
    initial begin
        a=1;
        b=0;
        c=1;
        d=1;
        #1
        $display("%b%b >? %b%b -> %b",a,b,c,d,o);
    end

endmodule