`timescale 1ns/1ps
module test;
    reg clk, rst, coin_10, coin_50;
    wire item;
    wire [6:0] change;
    vending x(clk, rst, coin_10, coin_50, item, change);
    always #5 clk =~clk;
    initial begin
        clk = 1;
        rst = 0;
        coin_10=0;
        coin_50=0;
        $dumpfile("vending.vcd");
        $dumpvars(0, test);
        rst = 1;
        #100;
        rst = 0;
        #100;
        coin_10 = 1;
        #20;
        coin_10=0;
        coin_50=1;
        #10;
        coin_50=0;
        #100;
        $finish;
    end
endmodule

