`timescale 1ns/1ps
module  Lab6_1131417(load, Da, Db, en, clrn, clk, qa, qb, Co);
    input load, en, clrn, clk;
    input [3:0] Da;
    input [2:0] Db;
    output [3:0] qa;
    output [2:0] qb;
    output Co;

    wire Co10;

    counter10 u0 (
        .load(load),
        .D(Da),
        .en(en),
        .clrn(clrn),
        .clk(clk),
        .Q(qa),
        .Co(Co10)
    );

    counter6 u1 (
        .load(load),
        .D(Db),
        .en(Co10),
        .clrn(clrn),
        .clk(clk),
        .Q(qb),
        .Co(Co)
    );
endmodule
