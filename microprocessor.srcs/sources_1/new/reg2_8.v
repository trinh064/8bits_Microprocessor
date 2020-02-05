`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2019 04:24:34 PM
// Design Name: 
// Module Name: register
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


module reg2_8(
    input [7:0] in,
    output [15:0] out,
    input [1:0] key,
    input clr
    );
   
    dff8 reg0(
        .i(in),
        .e(key[0]),
        .c(clr),
        .o(out[7:0])
        //.save(key[0])
        );
    dff8 reg1(
                .i(in),
                .e(key[1]),
                .c(clr),
                .o(out[15:8])
                //.save(key[1])
                );
   
endmodule
