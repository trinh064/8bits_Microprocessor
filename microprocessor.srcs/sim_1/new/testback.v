`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2019 08:13:50 PM
// Design Name: 
// Module Name: testback
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


module testback(

    );

      reg [2:0] command;
      wire [7:0] key;
      backward bw (
      .key(key),
      .cd(command),
      .sky(1)
      );
      
    initial 
         begin
        
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
