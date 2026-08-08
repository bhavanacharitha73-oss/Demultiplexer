`timescale 1ns/1ps

module demux1x4_tb;

reg D;
reg S1;
reg S0;

wire Y0;
wire Y1;
wire Y2;
wire Y3;


demux1x4 uut(
    .D(D),
    .S1(S1),
    .S0(S0),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);


initial
begin

    $display("S1 S0 | Y0 Y1 Y2 Y3");
    $display("-------------------");

    D = 1;


    S1=0; S0=0;
    #10;
    $display("%b  %b  | %b  %b  %b  %b",
             S1,S0,Y0,Y1,Y2,Y3);


    S1=0; S0=1;
    #10;
    $display("%b  %b  | %b  %b  %b  %b",
             S1,S0,Y0,Y1,Y2,Y3);


    S1=1; S0=0;
    #10;
    $display("%b  %b  | %b  %b  %b  %b",
             S1,S0,Y0,Y1,Y2,Y3);


    S1=1; S0=1;
    #10;
    $display("%b  %b  | %b  %b  %b  %b",
             S1,S0,Y0,Y1,Y2,Y3);


    $finish;

end

endmodule