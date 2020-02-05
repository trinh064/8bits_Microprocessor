`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2019 01:10:57 AM
// Design Name: 
// Module Name: CPU
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


module CPU(
    input [607:0] instructions,
    input clk,
    input clr,
    output [127:0] Rreg,
    output [127:0] Mreg,
    output [7:0] report
    //output [7:0] aa,
    //output [7:0] bb
    );
    wire [7:0] cterin;
    wire hjct;
    wire [7:0] PC; 
    wire[18:0] ins;
    wire [7:0]A;
    wire [7:0]B;
    wire saveR, hjR, saveM,hjM;
    cter COUNTER(
    .cterin(cterin),
        .hj(hjct),
        .clk(clk),
        .clr(clr),
        .out(PC));
    muxx32 FILE(
     .in(instructions),//edit
     .out(ins),
     .add(PC[4:0])//edit
    ); 
    Dcode DECODE(
    .op(ins[18:16]),
     .a(ins[15:8]),
      .b(ins[7:0]),
      .ct(PC),
      .A(A),
      .B(B),
      .saveR(saveR),
      .saveM(saveM),
      .hjR(hjR),
      .hjM(hjM),
      .hjCT(hjct));
    RMblock RM(
    .valueR(A),
    .addR(A),
    .saveR(saveR),
    .hjR(hjR),
    .valueM(B),
    .addM(B),
    .saveM(saveM),
    .hjM(hjM), 
    .clk(clk),
    .clr(clr),
    .Mreg(Mreg),
    .Rreg(Rreg),
    .report(report),
    .Mout(cterin) 
    );
    
endmodule
