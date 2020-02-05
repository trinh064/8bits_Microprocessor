`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2019 09:15:57 PM
// Design Name: 
// Module Name: 8bitscter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module cter(
    input[7:0] cterin,
    input hj,
    input clk,
    input clr,
    output [7:0] out
    );
  
   wire [7:0] ctrego,addo,muxo;
    
   FA16 add(1,ctrego,addo);
   mux mu(addo,cterin,hj,muxo);
   dff8 ctreg(muxo,clk,clr,ctrego);
    assign out=ctrego;
endmodule
