`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2019 03:01:37 PM
// Design Name: 
// Module Name: testforward
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


module testforward(
    );
    
    reg [63:0] memory;
    reg [2:0] command;
    wire [7:0]out;
    forward fw (
    .mem(memory),
    .cd(command),
    .out(out)
    );
    
  initial 
       begin
       memory=64'b1111111100000000010101011111000000001111101010101111111000000001;
       //11111111 00000000 01010101 11110000 00001111 10101010 11111110 00000001
       command=3'b000;
       #50
       command=3'b001;
       #50
       command=3'b010;
              #50
       command=3'b011;
       #50
       command=3'b100;
       #50
        command=3'b101;
       #50
       command=3'b110;
       #50
       command=3'b111;                       
       
       end
    
endmodule
