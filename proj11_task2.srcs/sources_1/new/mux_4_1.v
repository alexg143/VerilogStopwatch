`timescale 1ns / 1ps

module mux_4_1(
   input [1:0] Sel, 
   input [3:0] I0, 
   input [3:0] I1, 
   input [3:0] I2,
   input [3:0] I3,
   output reg [3:0] Y
   );

always @ (Sel, I0, I1)
begin
   case (Sel)
       2'd0:
           Y = I0;
       2'd1:
           Y = I1;
       2'd2:
           Y = I2;
       2'd3:
           Y = I3;
       default:
           Y = 2'd0;
   endcase
end 
endmodule