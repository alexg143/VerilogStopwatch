`timescale 1ns / 1ps

module counter_2bit(
   input clk,
   input rst,
   output reg [1:0] Q
   );

always @ (posedge(clk), posedge(rst))
begin
   if (rst == 1'b1)
       Q <= 2'b0;
   else
       Q <= Q + 1'b1;
end
endmodule