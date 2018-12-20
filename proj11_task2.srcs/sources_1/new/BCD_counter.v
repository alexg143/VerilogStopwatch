`timescale 1ns / 1ps


module BCD_counter(
   input cen,
   input clk,
   input rst,
   output reg [3:0] Q,
   output TC
   );

assign TC = Q[0] & ~Q[1] & ~Q[2] & Q[3]; // TC equals 1 when Q is 9

always @ (posedge(clk), posedge(rst), posedge(cen)) // reset after 9
begin
   if (rst == 1'b1)
       Q <= 4'b0;
   else if (cen == 1'b0)
       ; // do nothing, ignores clk
   else
       if (Q == 4'd9) // only will count 0-9
           Q <= 4'b0;
       else
           Q <= Q + 1'b1; // increment
end
endmodule