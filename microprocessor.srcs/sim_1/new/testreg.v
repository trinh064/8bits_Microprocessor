`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2019 04:45:47 PM
// Design Name: 
// Module Name: testreg
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


module testreg(
    );
    
        
        reg [7:0] memory;
    
        reg clear;
        reg [1:0]key;
        wire [15:0]out;
        reg2_8 getreg(
        .in(memory),
         .out(out),
        .key(key),
        .clr(clear)
       
        );
        
      initial 
           begin
           memory<=1;
           //11111111 00000000 01010101 11110000 00001111 10101010 11111110 00000001
         key<=0;
         clear<=1;  
         #50
         clear=0;
         memory=125;
         key=1;
         #50
                  
                  memory=32;
                  key=0'b10;
         
           end
endmodule
