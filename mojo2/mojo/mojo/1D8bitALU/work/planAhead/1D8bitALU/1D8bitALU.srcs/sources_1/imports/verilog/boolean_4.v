/*
   This file was generated automatically by the Mojo IDE version B1.3.3.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module boolean_4 (
    input [7:0] a,
    input [7:0] b,
    input [5:0] alufn,
    output reg [7:0] out
  );
  
  
  
  integer i;
  
  reg [0:0] ai;
  
  reg [0:0] bi;
  
  reg [1:0] select;
  
  reg [7:0] preout;
  
  always @* begin
    for (i = 1'h0; i < 7; i = i + 1) begin
      ai = a[(i)*1+0-:1];
      bi = b[(i)*1+0-:1];
      select = {bi, ai};
      
      case (select)
        2'h3: begin
          preout[(i)*1+0-:1] = alufn[3+0-:1];
        end
        2'h2: begin
          preout[(i)*1+0-:1] = alufn[2+0-:1];
        end
        2'h1: begin
          preout[(i)*1+0-:1] = alufn[1+0-:1];
        end
        2'h0: begin
          preout[(i)*1+0-:1] = alufn[0+0-:1];
        end
        default: begin
          preout[(i)*1+0-:1] = 1'bx;
        end
      endcase
    end
    out = preout;
  end
endmodule
