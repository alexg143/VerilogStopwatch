`timescale 1ns / 1ps

module decoder_7_seg(
    input [3:0] I,
    output reg [6:0] cathode
  );

always @ (I)
begin
  case(I)
      4'd0: // 0 = on
          cathode =  7'b1000000;// 0
      4'd1:
          cathode = 7'b1111001; // 1
      4'd2:
          cathode = 7'b0100100; // 2
      4'd3:
          cathode = 7'b0110000; // 3
      4'd4:
          cathode = 7'b0011001; // 4
      4'd5:
          cathode = 7'b0010010; // 5
      4'd6:
          cathode = 7'b0000010; // 6
      4'd7:
          cathode = 7'b1111000; // 7
      4'd8:
          cathode = 7'b0000000; // 8
      4'd9: 
          cathode = 7'b0011000; // 9
      4'd10:
          cathode = 7'b0001000; // A
      4'd11:
          cathode = 7'b0000011; // B
      4'd12:
          cathode = 7'b1110000; // C
      4'd13:
          cathode = 7'b0100001; // D
      4'd14:
          cathode = 7'b0000110; // E
      4'd15:
          cathode = 7'b0001110; // F
  endcase
end
endmodule