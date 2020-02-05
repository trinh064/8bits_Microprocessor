`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2019 01:49:56 AM
// Design Name: 
// Module Name: Dcode
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


module Dcode(
    input [2:0] op,
    input [7:0] a,
    input [7:0] b,
    input[7:0] ct,
    output [7:0] A,
    output [7:0] B,
    output saveR,
    output saveM,
    output hjR,
    output hjM,
    output hjCT
    );
    wire hj;
    assign hj=(op[2])&(!op[1])&(!op[0]);
    assign A=a;
  mux cthj(b,ct,hj,B);  
  assign  saveR=(!op[0])&(!op[1])&(op[2])|(op[0])&(op[1])&(!op[2])|(!op[0])&(!op[1])&(!op[2]);
  assign saveM=(!op[2])&(!op[1])&(op[0])|(!op[2])&(op[1])&(!op[0]);
  assign hjR=(!op[2])&(!op[1])&(op[0]);  
  assign hjM=(!op[2])&(!op[1])&(!op[0])|(op[2])&(!op[1])&(!op[0]);
  assign hjCT=(op[2])&(!op[1])&(op[0])|(op[2])&(op[1])&(!op[0])|(op[2])&(op[1])&(op[0]);
  
endmodule
