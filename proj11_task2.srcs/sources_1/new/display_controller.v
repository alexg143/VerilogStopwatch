`timescale 1ns / 1ps

module display_controller(
    input [3:0] wire0,
    input [3:0] wire1,
    input [3:0] wire2,
    input [3:0] wire3,
    input clk,
    input rst,
    
    output [6:0] cathode,
    output [3:0] anode
    );

wire [1:0] countWire;
wire [3:0] displayWire;

counter_2bit count2bit(
    .clk(clk),
    .rst(rst),
    .Q(countWire)
    );
    
decoder_2_4 anode_decoder(
    .S(countWire),
    .Y(anode)
    );
    
mux_4_1 wire_select_mux(
    .Sel(countWire),
    .I0(wire0),
    .I1(wire1),
    .I2(wire2),
    .I3(wire3),
    .Y(displayWire)
    );
   
decoder_7_seg seg_decoder(
    .I(displayWire),
    .cathode(cathode)
    );
    
endmodule