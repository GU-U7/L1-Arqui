module or_4 (
    input i1, input i2, input i3, input i4, output o
);
    wire temp[1:0];
    or or1(temp[0], i1, i2);
    or or2(temp[1], temp[0], i3);
    or orSalida(o, temp[1], i4);
endmodule

module or_3 (
    input i1, input i2, input i3, output o
);
    wire temp;
    or or1(temp, i1, i2);
    or orSalida(o, temp, i3);
endmodule