module and_4 (
    input i1, input i2, input i3, input i4, output o
);
    wire temp[1:0];
    and and1(temp[0], i1, i2);
    and and2(temp[1], temp[0], i3);
    and andSalida(o, temp[1], i4);
endmodule

module and_3 (
    input i1, input i2, input i3, output o
);
    wire temp;
    and and1(temp, i1, i2);
    and andSalida(o, temp, i3);
endmodule