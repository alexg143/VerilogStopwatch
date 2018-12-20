`timescale 1ns / 1ps

module decoder_2_4(
    input [1:0] S,
    output reg [3:0] Y
    );

always @ (S)
begin
case (S)
    2'd0:
        Y = ~4'd1;
    2'd1:
        Y = ~4'd2;
    2'd2:
        Y = ~4'd4;
    2'd3:
        Y = ~4'd8;
    default:
        Y = ~4'd0;
endcase
end
endmodule