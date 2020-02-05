`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2019 12:20:00 AM
// Design Name: 
// Module Name: RMblock
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


module RMblock(
    input [7:0] valueR,
    input [7:0] addR,
    input saveR,
    input hjR,
    input [7:0] valueM,
    input [7:0] addM,
    input saveM,
    input hjM, 
    input clk,
    input clr,
    output [1023:0]Mreg ,
    output [1023:0]Rreg ,
    output [7:0] report ,
    output [7:0] Mout
    );
    wire[7:0] rout;
    wire[7:0] rin;
    wire[7:0] mout;
    wire[7:0] min;
    assign report=saveR;
    assign Mout=mout;
    RAM128_8 R(
    .sky(1),
    .in(rin),
    .out(rout),
     .mem(Rreg),//edit
    .add(addR), //edit
    .save(saveR),
    .clk(clk),
    .clr(clr)
    );
    Mblock M(
    .in(min),
    .add(addM),
    .saveM(saveM),
    .clk(clk),
    .clr(clr),
    .out(mout),
    .Mreg(Mreg));
    mux mR(rout,valueR,hjR,min);
    mux mM(mout,valueM,hjM,rin);
endmodule
