`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2019 01:37:47 PM
// Design Name: 
// Module Name: testmux
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


module testmux(
    );
    reg [63:0] inp;
    reg [2:0]cd;
    wire [7:0] out;
    mux8 yolo (
    .in(inp),
    .add(cd),
    .out(out)
    );
   
    initial 
    begin
    inp[63:56]=7;
    inp[55:48]=6;
    inp[47:40]=5;
    inp[39:32]=4;
    inp[31:24]=3;
    inp[23:16]=2;
    inp[15:8]=1;
    inp[7:0]=0;                            
    cd=0;
    #50
    cd=1;
    #50
     cd=2;
    #50
    cd=3;
 
    cd=4;
     #50
     cd=5;
     #50
      cd=6;
     #50
     cd=7;
    
    end
endmodule
