`timescale 1ns / 1ps

module stopwatch(
    input [3:0] btn, // btn[0] = start, btn[1] = stop, btn[2] = inc, btn[3] = rst
    input clk,
    
    output [3:0] anode,
    output [6:0] cathode
    );
    
wire new_clk;
wire cenWire;
wire [3:0] wire0;
wire [3:0] wire1;
wire [3:0] wire2;
wire [3:0] wire3;

clk_divider div_clk(
    .clk(clk),
    .rst(0),//.rst(btn[3]),
    .clk_div(new_clk)
    );
    
state_machine state(
    .start(btn[0]),
    .stop(btn[1]),
    .inc(btn[2]),
    .rst(btn[3]),
    .clk(new_clk),
    .cen(cenWire)
    );
    
counter count(
    .cen(cenWire),
    .clk(new_clk),
    .rst(0),//.rst(btn[3]),
    .wire0(wire0),
    .wire1(wire1),
    .wire2(wire2),
    .wire3(wire3)
    );
    
display_controller display(
    .clk(new_clk),
    .rst(btn[3]),
    .wire0(wire0),
    .wire1(wire1),
    .wire2(wire2),
    .wire3(wire3),
    .anode(anode),
    .cathode(cathode)
    );
    
endmodule