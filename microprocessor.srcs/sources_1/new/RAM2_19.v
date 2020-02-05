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


module RAM2_19(
    input [37:0] in,
    output [18:0] out,
    output [37:0] mem,
    input add,
    input save,
    input clr,
    input clk
    );
    reg2_19 rekt(in,mem,save,clr,clk);
    muxx mux(mem[18:0],mem[37:19],add,out);

endmodule
