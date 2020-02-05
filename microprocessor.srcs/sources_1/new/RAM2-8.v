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


module RAM2_8(
    input sky,
    input [7:0] in,
    output [7:0] out,
    output [15:0] mem,
    input add,
    input save,
    input clr,
    input clk
    );
    wire w0,w1;
    wire [1:0] key;
        
    dmux dmux(sky,add,w0,w1);
assign key[0]=save&w0&clk;
assign key[1]=save&w1&clk;
    
    reg2_8 rekt(in,mem,key,clr);
    mux mux(mem[7:0],mem[15:8],add,out);

endmodule
