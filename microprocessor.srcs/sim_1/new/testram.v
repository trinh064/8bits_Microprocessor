`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2019 07:30:05 PM
// Design Name: 
// Module Name: testram
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


module testram(
    );
 wire [127:0] MEM; //edit
 wire [7:0] out;
 reg [7:0]address;
 reg [7:0] in;
 reg clear;
 reg save;
 reg clk;
 wire [7:0]key;
 RAM16_8 rambo(
  .in(in),
  .add(address),
  .save(save),
  .clr(clear),
  .sky(1),
  .out(out),
  .mem(MEM),
  .clk(clk) );
  
  
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
  in=1;
  clk=0;
  #50
  clk=1; 
  #50
  address=1;
  in=2;
  clk=0; 
  #50
  clk=1; 
  #50
  address=2;
  in=3;
  clk=0; 
  #50
  clk=1; 
  #50
  address=3;
  in=4;  
  save=0;
  clk=0; 
  #50
  clk=1; 
  #50
  save=1;
  address=4;
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
  save=1;
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
  #50
  clk=0;
  #50
  clk=1;
  address=0;
  in=3;
  save=1;
  #50 
  clk=0;
  #50
  address=1;
  #1
    in=7;
  clk=1;
  
  #50
  clk=0;
  #50
  clk=1;
  address=2;
  in=3;
  #50
  clk=0;
  #50
  clk=1;
  address=3;
  in=4;
  

    end
         
endmodule
