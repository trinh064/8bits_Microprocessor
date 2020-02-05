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


module muxx32(
    input [607:0] in,//edit
    output [18:0] out,
    input [4:0] add//edit
    );
    wire [18:0] w0;
    wire [18:0] w1;
    muxx16 m0(in[303:0],w0,add[3:0]);//edit range, add
    muxx16 m1(in[607:304],w1,add[3:0]);//edit range,add
    muxx m(w0,w1,add[4],out);//edit add
endmodule
