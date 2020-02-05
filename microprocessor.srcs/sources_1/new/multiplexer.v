`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2019 01:20:52 PM
// Design Name: 
// Module Name: multiplexer
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


module mux(
    input [7:0] in0,
    input [7:0] in1,
    input cd,
    output [7:0] out
    );
    
   assign out[0]=(cd&in1[0])|(!cd&in0[0]);
   assign out[1]=(cd&in1[1])|(!cd&in0[1]);
   assign out[2]=(cd&in1[2])|(!cd&in0[2]);
   assign out[3]=(cd&in1[3])|(!cd&in0[3]);
   
   assign out[4]=(cd&in1[4])|(!cd&in0[4]);
   assign out[5]=(cd&in1[5])|(!cd&in0[5]);
   assign out[6]=(cd&in1[6])|(!cd&in0[6]);
   assign out[7]=(cd&in1[7])|(!cd&in0[7]);
   
endmodule
