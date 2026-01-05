`timescale 1ns/1ps
module test;
    reg clk;
    reg clrn;
    reg load;
    reg en;
    reg [3:0] Da;
    reg [2:0] Db;
    wire [3:0] qa;
    wire [2:0] qb;
    wire Co;

    Lab6_1131417 DUT (
        .clk(clk),
        .clrn(clrn),
        .load(load),
        .en(en),
        .Da(Da),
        .Db(Db),
        .qa(qa),
        .qb(qb),
        .Co(Co)
    );

    initial
    begin
    en = 1'b1;
    load = 1'b1;
    clrn = 1'b0;
    Da = 4'd7;
    Db = 3'd5;
    #100 load = 1'b0;
    #700 en = 1'b0;
    #200 en = 1'b1;
    #1500 clrn = 1'b1;
    #200 clrn = 1'b0;
    
    #3000 $finish;
    end
    
    initial
    begin
    clk = 1'b0;
    forever #50 clk = ~clk;
    end
endmodule
