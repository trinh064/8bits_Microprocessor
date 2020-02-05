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


module muxx16(
    input [303:0] in,//edit
    output [18:0] out,
    input [3:0] add//edit
    );
    wire [18:0] w0;
    wire [18:0] w1;
    muxx8 m0(in[151:0],w0,add[2:0]);//edit range, add
    muxx8 m1(in[303:152],w1,add[2:0]);//edit range,add
    muxx m(w0,w1,add[3],out);//edit add
endmodule
