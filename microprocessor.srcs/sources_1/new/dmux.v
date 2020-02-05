`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2019 05:23:46 PM
// Design Name: 
// Module Name: dmux
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


module dmux(
    input in,
    input cd,
    output out0,
    output out1
    );
    
assign out0=(!cd)&in;
assign out1=cd&in;
endmodule
