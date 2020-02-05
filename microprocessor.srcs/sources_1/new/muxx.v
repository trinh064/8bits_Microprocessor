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


module muxx(
    input [18:0] in0,
    input [18:0] in1,
    input cd,
    output [18:0] out
    );
    
   assign out[0]=(cd&in1[0])|(!cd&in0[0]);
   assign out[1]=(cd&in1[1])|(!cd&in0[1]);
   assign out[2]=(cd&in1[2])|(!cd&in0[2]);
   assign out[3]=(cd&in1[3])|(!cd&in0[3]);
   
   assign out[4]=(cd&in1[4])|(!cd&in0[4]);
   assign out[5]=(cd&in1[5])|(!cd&in0[5]);
   assign out[6]=(cd&in1[6])|(!cd&in0[6]);
   assign out[7]=(cd&in1[7])|(!cd&in0[7]);

   assign out[8]=(cd&in1[8])|(!cd&in0[8]);
   assign out[9]=(cd&in1[9])|(!cd&in0[9]);
   assign out[10]=(cd&in1[10])|(!cd&in0[10]);
   assign out[11]=(cd&in1[11])|(!cd&in0[11]);

   assign out[12]=(cd&in1[12])|(!cd&in0[12]);
   assign out[13]=(cd&in1[13])|(!cd&in0[13]);
   assign out[14]=(cd&in1[14])|(!cd&in0[14]);
   assign out[15]=(cd&in1[15])|(!cd&in0[15]);

   assign out[16]=(cd&in1[16])|(!cd&in0[16]);
   assign out[17]=(cd&in1[17])|(!cd&in0[17]);
   assign out[18]=(cd&in1[18])|(!cd&in0[18]);
   
endmodule
