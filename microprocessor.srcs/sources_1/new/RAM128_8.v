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


module RAM128_8(
    input sky,
    input [7:0] in,
    output [7:0] out,
    output [1023:0] mem, //edit
    input [6:0]add, //edit
    input save,
    input clr,
    input clk
    );
    wire w0,w1;
    wire [7:0] o0;
    wire [7:0] o1;
    dmux dmux(sky,add[6],w0,w1);//msb add 
    RAM64_8 rambaby0(w0,in,o0,mem[511:0],add[5:0],save,clr,clk); //edit mem , add
    RAM64_8 rambaby1(w1,in,o1,mem[1023:512],add[5:0],save,clr,clk);    //edit mem, add
    mux mux(o0,o1,add[6],out);//msb add

endmodule
