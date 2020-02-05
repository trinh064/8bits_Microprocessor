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


module register(
    input [7:0] in,
    output [63:0] out,
    input [7:0] key,
    input clr
    );
    
    dff8 reg000(
        .i(in),
        .e(1),
        .c(clr),
        .o(out[7:0])
        );
    dff8 reg001(
                .i(in),
                .e(key[1]),
                .c(clr),
                .o(out[15:8])
                );
   dff8 reg010(
                        .i(in),
                        .e(key[2]),
                        .c(clr),
                        .o(out[23:16])
                        );
   dff8 reg011(
                                .i(in),
                                .e(key[3]),
                                .c(clr),
                                .o(out[31:24])
                                );
   dff8 reg100(
                                        .i(in),
                                        .e(key[4]),
                                        .c(clr),
                                        .o(out[39:32])
                                        );
   dff8 reg101(
                                                .i(in),
                                                .e(key[5]),
                                                .c(clr),
                                                .o(out[47:40])
                                                );
 dff8 reg110(
                                                        .i(in),
                                                        .e(key[6]),
                                                        .c(clr),
                                                        .o(out[55:48])
                                                        );
 dff8 reg111(
                                                                .i(in),
                                                                .e(key[7]),
                                                                .c(clr),
                                                                .o(out[63:56])
                                                                );   
             
        
endmodule
