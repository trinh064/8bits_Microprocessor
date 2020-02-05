`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engieer: 
// 
// Create Date: 09/02/2019 05:30:21 PM
// Design Name: 
// Module Name: dff8
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


module dff8(
    input [7:0]i,
    input e,
    input c,
    output [7:0]o
    );
    dff d0(
      .Q(i[0]),
      .D(o[0]),
      .clear(c),
      .e(e)
    //  .save(save)
      );
      dff d1(
      .Q(i[1]),
      .D(o[1]),
      .clear(c),
       .e(e)
     //.save(save)
              );
      dff d2(
      .Q(i[2]),
      .D(o[2]),
      .clear(c),
      .e(e)
       //     .save(save)
            );
      dff d3(
      .Q(i[3]),
      .D(o[3]),
      .clear(c),
      .e(e)
            //.save(save)
       );
       
       dff d4(
          .Q(i[4]),
          .D(o[4]),
          .clear(c),
          .e(e)
              //  .save(save)
          );
          dff d5(
          .Q(i[5]),
          .D(o[5]),
          .clear(c),
          .e(e)
                //.save(save)
             );
          dff d6(
          .Q(i[6]),
          .D(o[6]),
          .clear(c),
          .e(e)
                //.save(save)
                );
          dff d7(
          .Q(i[7]),
          .D(o[7]),
          .clear(c),
          .e(e)
                //.save(save)
           );
      
endmodule
