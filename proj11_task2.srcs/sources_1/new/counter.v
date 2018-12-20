`timescale 1ns / 1ps

module counter(
    input cen,
    input clk,
    input rst,
    
    output [3:0] wire0,
    output [3:0] wire1,
    output [3:0] wire2,
    output [3:0] wire3
    );
    
wire [3:0] TC;

BCD_counter counter0(
    .cen(cen),
    .clk(clk),
    .rst(rst),
    .Q(wire0),
    .TC(TC[0])
    );
    
wire nextin1 = TC[0] & cen;
    
BCD_counter counter1(
    .cen(nextin1),
    .clk(clk),
    .rst(rst),
    .Q(wire1),
    .TC(TC[1])
    );

wire nextin2 = TC[0] & TC[1] & cen;
    
BCD_counter counter2(
    .cen(nextin2),
    .clk(clk),
    .rst(rst),
    .Q(wire2),
    .TC(TC[2])
    );

wire nextin3 = TC[0] & TC[1] & TC[2] & cen;

BCD_counter counter3(
    .cen(nextin3),
    .clk(clk),
    .rst(rst),
    .Q(wire3),
    .TC(TC[3])
    );
    
endmodule