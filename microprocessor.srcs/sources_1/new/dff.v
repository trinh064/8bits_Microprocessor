`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2019 03:54:58 PM
// Design Name: 
// Module Name: dff
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


module dff (Q,D,e,clear);    
output D;
// data output    
input Q; 
input e;
// data input 
   input clear; 
    reg D; 
    always @(posedge e, posedge clear)  
      begin     
        if
     (clear)        
       D=1'b0;       
       else 
       #60 
        D=Q; 
       end 
   
 endmodule 