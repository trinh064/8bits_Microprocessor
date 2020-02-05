`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2019 09:47:07 PM
// Design Name: 
// Module Name: muxx4
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


module mux4(
    input [31:0] in,
    output [7:0] out,
    input [1:0] add
    );
    wire [7:0] w0;
    wire [7:0] w1;
    mux m0(in[7:0],in[15:8],add[0],w0);
    mux m1(in[23:16],in[31:24],add[0],w1);
    mux m(w0,w1,add[1],out);
endmodule
