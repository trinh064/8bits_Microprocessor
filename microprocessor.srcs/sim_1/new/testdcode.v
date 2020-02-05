`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2019 02:09:26 AM
// Design Name: 
// Module Name: testdcode
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


module testdcode(
    );
    reg [2:0]op;
    reg [7:0] a=3;
    reg [7:0] b=6;
    wire [7:0] A;
    wire [7:0] B;
    reg [7:0] ct=16;
    wire saveR;
            wire saveM;
            wire hjR;
            wire hjM;
            wire hjCT;
    Dcode dcode(
    op,
       a,
        b,
        ct,
        A,
        B,
        saveR,
        saveM,
        hjR,
        hjM,
        hjCT
      ); 
   initial 
   begin
   op=0;
   #50
   op=1;
   #50
   op=2;   
   #50
      op=3;
  #50
         op=4;    
     #50
            op=5;
            #50
               op=6;
              #50
                  op=7;
                  #50
                     op=8;
             end
endmodule
