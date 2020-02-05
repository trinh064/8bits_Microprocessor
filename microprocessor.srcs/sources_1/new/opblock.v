`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2019 11:13:46 PM
// Design Name: 
// Module Name: opblock
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


module Mblock(
input [7:0]in,
input [7:0] add,
input saveM,
input clk,
input clr,
output [7:0] out,
output [1023:0] Mreg
    );
   
    
   wire [7:0] sum;
   wire [7:0] empty;
    
     RAM128_8 rambo(
      .in(in),
      .mem(Mreg),
      .add(add),
      .save(saveM),
      .clr(clr),
      .sky(1),
      .clk(clk) );
    FA16 adder (Mreg[15:8],Mreg[23:16],sum);
    mux muxu(Mreg[7:0],sum,add[0],out);
endmodule
