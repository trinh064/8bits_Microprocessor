`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2019 09:22:29 PM
// Design Name: 
// Module Name: testcter
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


module testcter(

    );
    reg clk;
    reg clr;
    reg [7:0]cterin;
    reg hj;
    wire [7:0] out;
    cter ct(cterin,hj,clk,clr,out);
    initial
    begin
    clr=1;
    clk=0;
    hj=0;
    #50 
    clr=0;  
    clk=1;
    #50
    clk=0;
    
    #50
    clk=1;
        #50
    clk=0;
    #50
    clk=1;
    #50
    clk=0;
   
    #50
    clk<=1;
    cterin=100;
    #50
    clk=0;
    hj<=1;
    #50
    clk=1;
    #1
    hj=0;
    #50
    clk=0;
    #50
    clk=1;
end
endmodule
