`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2019 05:06:57 PM
// Design Name: 
// Module Name: bckward
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


module backward(
    output [7:0] key,
    input [2:0] cd,
    input sky
    );
    wire w1;
    wire  w0;
    wire  w11;
    wire  w10;
    wire  w01;
    wire w00;
  
    dmux dmux(
    .cd(cd[2]),
    .in(sky),
    .out1(w1),
    .out0(w0)
    );
    
    dmux dmux0(
        .cd(cd[1]),
        .in(w0),
        .out1(w01),
        .out0(w00)
        );
    dmux dmux1(
            .cd(cd[1]),
            .in(w1),
            .out1(w11),
            .out0(w10)
            );
    dmux dmux00(
                .cd(cd[0]),
                .in(w00),
                .out1(key[1]),
                .out0(key[0])
                );
  
  dmux dmux01(
                   .cd(cd[0]),
                   .in(w01),
                   .out1(key[3]),
                   .out0(key[2])
                   );
                   
                   dmux dmux10(
                       .cd(cd[0]),
                       .in(w10),
                       .out1(key[5]),
                       .out0(key[4])
                       );
                   dmux dmux11(
                           .cd(cd[0]),
                           .in(w11),
                           .out1(key[7]),
                           .out0(key[6])
                           );
                 
    
   endmodule