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


module reg2_19(
    input [37:0] in,
    output [37:0] out,
    input save,
    input clr,
    input clk
    );
    
    
    dff19 reg0(
        .i(in[18:0]),
        .e(save),
        .c(clr),
        .o(out[18:0])
        );
    dff19 reg1(
                .i(in[37:19]),
                .e(save),
                .c(clr),
                .o(out[37:19])
                );
   
endmodule
