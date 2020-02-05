`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2019 11:21:01 AM
// Design Name: 
// Module Name: RAM2-8
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


module RAM8_8(
    input sky,
    input [7:0] in,
    output [7:0] out,
    output [63:0] mem,
    input [2:0]add, //edit
    input save,
    input clr,
    input clk
    );
    wire w0,w1;
    wire [7:0] o0;
    wire [7:0] o1;
    dmux dmux(sky,add[2],w0,w1);//msb add 
    RAM4_8 rambaby0(w0,in,o0,mem[31:0],add[1:0],save,clr,clk); //edit mem , add
    RAM4_8 rambaby1(w1,in,o1,mem[63:32],add[1:0],save,clr,clk);    //edit mem, add
    mux mux(o0,o1,add[2],out);

endmodule
