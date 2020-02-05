`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2019 02:18:50 PM
// Design Name: 
// Module Name: testdff
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


module testdff(

    );
    reg Q,clk,save,clr;
    wire D;
   dff bitmem(Q,D,save,clk,clr);
   initial begin
   clr=1;
   #50
   clr=0;
   Q=1;
   save=1;
   clk=1;
   #10
   save=0;
   #10
   save=1;
   Q=0;
   #50
   clk=0;
   #50
   Q=1;
   save=0;
   clk=1;
   #50
   clk=0;
   #50
   clk=1;
   save=1;
   Q=0;
   end
endmodule
