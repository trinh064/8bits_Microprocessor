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


module testmuxx(
    );
    reg [151:0] inp;
    reg [3:0]cd;
    wire [18:0] out;
    muxx32 yolo (
    .in(inp),
    .add(cd),
    .out(out)
    );
   
    initial 
    begin
    inp[170:152]=8;
    inp[151:133]=7;
    inp[132:114]=6;
    inp[113:95]=5;
    inp[94:76]=4;
    inp[75:57]=3;
    inp[56:38]=2;
    inp[37:19]=1;
    inp[18:0]=0;                            
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
     #50
     cd=
    
    end
endmodule
