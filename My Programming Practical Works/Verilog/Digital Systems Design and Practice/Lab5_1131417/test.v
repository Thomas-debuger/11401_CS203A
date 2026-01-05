`timescale 1ns/1ps

module test;
    reg [3:0] A, B;
    reg [1:0] sel;
    wire [4:0] aluo;

    Lab5_1131417 DUT (
        .A(A),
        .B(B),
        .sel(sel),
        .aluo(aluo)
    );

    initial begin
        $dumpfile("ALU_wave.vcd");
        $dumpvars(0, test);

        $display("time(ns)\tsel\tA\tB\taluo");
        $monitor("%d\t%b\t%b\t%b\t%b", $time, sel, A, B, aluo);

        A = 4'b0111; B = 4'b1000; sel = 2'b00; #100;  // 加法 → 01111
        A = 4'b1000; B = 4'b1001; sel = 2'b01; #100;  // 減法 → 01000
        A = 4'b1001; B = 4'b1010; sel = 2'b10; #100;  // AND → 11111
        A = 4'b1010; B = 4'b1011; sel = 2'b11; #100;  // OR → 10101
        A = 4'b1011; B = 4'b1100; sel = 2'b00; #100;  // 加法 → 01111
  #10;
        $finish;
    end
endmodule