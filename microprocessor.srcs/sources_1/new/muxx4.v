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


module muxx4(
    input [75:0] in,
    output [18:0] out,
    input [1:0] add
    );
    wire [18:0] w0;
    wire [18:0] w1;
    muxx m0(in[18:0],in[37:19],add[0],w0);
    muxx m1(in[56:38],in[75:57],add[0],w1);
    muxx m(w0,w1,add[1],out);
endmodule
