`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2019 11:34:08 PM
// Design Name: 
// Module Name: opblocktest
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


module Mblocktest(

    );
reg [7:0]address;
reg [7:0] in ;
reg save,clk,clear;
wire [7:0] out;   
wire [64:0] M;
    Mblock op(
    .in(in),
    .add(address),
    .saveM(save),
    .clk(clk),
    .clr(clear),
    .out(out),
    .Mreg(M));

initial 
  begin
  clk=0;
  clear=1;
  save=0;
  #50
  clk=1;
  #50
  clear=0;
  save=1;
  address=0;
  in=6;
  clk=0;
  #50
  clk=1; 
  #50
  address=1;
  in=3;
  clk=0; 
  #50
  clk=1; 
  #50
  address=2;
  in=5;
  clk=0; 
  #50
  clk=1; 
  #50
  save=0;
  address=0;
  in=4;  
  clk=0; 
  #50
  clk=1; 
  #50
  address=1;
  in=5;
  clk=0; 
  #50
  clk=1; 
  #50
  address=5;
  in=6;
  clk=0; 
  #50
  clk=1; 
  #50
  address=6;
  in=7;  
  clk=0; 
  #50
  clk=1; 
  #50
  address=7;
  in=8;  
  clk=0;    
  #50
  clk=1;     
  #50
  clear=0;
  address=8;
  in=1;
  clk=0;
  #50
  clk=1; 
  #50
  address=9;
  in=2;
  clk=0; 
  #50
  clk=1; 
  #50
  address=10;
  in=3;
  clk=0; 
  #50
  clk=1; 
  #50
  address=11;
  in=4;  
  clk=0; 
  #50
  clk=1; 
  #50
  address=12;
  in=5;
  clk=0; 
  #50
  clk=1; 
  #50
  address=13;
  in=6;
  clk=0; 
  #50
  clk=1; 
  #50
  address=14;
  in=7;  
  clk=0; 
  #50
  clk=1; 
  #50
  address=15;
  in=8;  
  clk=0;    
  #50
  clk=1;     
 end   
endmodule
