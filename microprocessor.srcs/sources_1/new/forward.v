`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2019 02:22:34 PM
// Design Name: 
// Module Name: forward
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


module forward(
    input [63:0] mem,
    input [2:0] cd,
    output [7:0] out
    );
    wire [7:0] w1;
    wire [7:0] w0;
    wire [7:0] w11;
    wire [7:0] w10;
    wire [7:0] w01;
    wire [7:0] w00;
 
    mux mux0(
    .cd(cd[2]),
    .in1(w1),
    .in0(w0),
    .out(out)
    );
    
    mux mux00(
        .cd(cd[1]),
        .in1(w01),
        .in0(w00),
        .out(w0)
        );
        
     mux mux01(
            .cd(cd[1]),
            .in1(w11),
            .in0(w10),
            .out(w1)
            );
     mux mux000(
                   .cd(cd[0]),
                   .in0(mem[7:0]),
                   .in1(mem[15:8]),
                   .out(w00)
                   );
     mux mux001(
.cd(cd[0]),
.in0(mem[23:16]),
.in1(mem[31:24]),
.out(w01)
                             ); 
     mux mux010(
.cd(cd[0]),
.in0(mem[39:32]),
.in1(mem[47:40]),
 .out(w10)
); 
     mux mux011(
 .cd(cd[0]),
 .in0(mem[55:48]),
.in1(mem[63:56]),
.out(w11)
);      
      
endmodule
