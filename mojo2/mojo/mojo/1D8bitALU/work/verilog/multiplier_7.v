/*
   This file was generated automatically by the Mojo IDE version B1.3.3.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module multiplier_7 (
    input [7:0] a,
    input [7:0] b,
    input [7:0] alufn,
    output reg [7:0] out
  );
  
  
  
  reg [7:0] shiftvalue;
  
  integer i;
  
  reg [63:0] sum;
  
  reg [7:0] sumofsum;
  
  always @* begin
    for (i = 1'h0; i < 7; i = i + 1) begin
      sum[(i)*8+7-:8] = 8'h00;
    end
    sumofsum = 8'h00;
    for (i = 1'h0; i < 7; i = i + 1) begin
      if (b[(i)*1+0-:1] == 1'h1) begin
        shiftvalue = i;
        sum[(i)*8+7-:8] = a << shiftvalue;
      end else begin
        shiftvalue = 1'h0;
      end
    end
    for (i = 1'h0; i <= 7; i = i + 1) begin
      sumofsum = sumofsum + sum[(i)*8+7-:8];
    end
    out = sumofsum;
  end
endmodule