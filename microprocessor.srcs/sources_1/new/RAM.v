`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2019 06:03:53 PM
// Design Name: 
// Module Name: RAM
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


module RAM88(
    input [7:0]INPUT,
    input [2:0]ADDRESS,
    input save,
    input clear,
    input sky,         
    output [7:0]OUTPUT,
    output [63:0]memory,
    output [7:0]key
    );
    wire [7:0]wka;
    wire [7:0]wkb;
   
   
    assign wkb[0]=wka[0]&save;
    assign wkb[1]=wka[1]&save;
    assign wkb[2]=wka[2]&save;
    assign wkb[3]=wka[3]&save;
    
    assign wkb[4]=wka[4]&save;
    assign wkb[5]=wka[5]&save;
    assign wkb[6]=wka[6]&save;
    assign wkb[7]=wka[7]&save;
    
  
    assign key=wkb;
     backward back(
       .key(wka),
       .cd(ADDRESS),
       .sky(sky)
       );
       
        register MEMORY(
          .in(INPUT),
         .out(memory),
          .key(wkb),
          .clr(clear)
          );
          
          forward front(
              .mem(memory),
              .cd(ADDRESS),
              .out(OUTPUT)
              );
endmodule
