`timescale 1ns / 1ps

module state_machine(
    input start,
    input stop,
    input inc,
    input clk,
    input rst,
    
    output cen
    );
    
localparam init = 2'b00;
localparam left = 2'b10;
localparam right = 2'b11;
localparam right2 = 2'b01;

reg [1:0] ps;
reg [1:0] ns;

always @ (start, stop, inc, ps)
begin
    case(ps)
        init:
            if (start)
                ns = left;
            else if (inc && ~start)
                ns = right;
            else
                ns = init;
        left:
            if (stop)
                ns = init;
            else
                ns = left;
        right:
            ns = right2;
        right2:
            if (inc)
                ns = right2;
            else
                ns = init;
        default:
            ns = init;
    endcase
end

always @ (posedge(clk), posedge(rst))
begin
    if(rst == 1)
        ps <= 0;
    else
        ps <= ns;
end

assign cen = ((ps == left) || (ps == right));
    
endmodule