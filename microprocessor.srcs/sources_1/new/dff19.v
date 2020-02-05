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


module dff19(
    input [18:0]i,
    input e,
    input c,
    output [18:0]o
    );
    dff d0(
      .Q(i[0]),
      .D(o[0]),
      .clear(c),
      .enable(e)
      );
      dff d1(
      .Q(i[1]),
      .D(o[1]),
      .clear(c),
      .enable(e)
         );
      dff d2(
      .Q(i[2]),
      .D(o[2]),
      .clear(c),
      .enable(e)
            );
      dff d3(
      .Q(i[3]),
      .D(o[3]),
      .clear(c),
      .enable(e)
       );
       
       dff d4(
          .Q(i[4]),
          .D(o[4]),
          .clear(c),
          .enable(e)
          );
          dff d5(
          .Q(i[5]),
          .D(o[5]),
          .clear(c),
          .enable(e)
             );
          dff d6(
          .Q(i[6]),
          .D(o[6]),
          .clear(c),
          .enable(e)
                );
          dff d7(
          .Q(i[7]),
          .D(o[7]),
          .clear(c),
          .enable(e)
           );
           dff d8(
           .Q(i[8]),
           .D(o[8]),
           .clear(c),
           .enable(e)
            );
          dff d9(
            .Q(i[9]),
            .D(o[9]),
            .clear(c),
            .enable(e)
             );
          dff d10(
             .Q(i[10]),
             .D(o[10]),
             .clear(c),
             .enable(e)
              );
          dff d11(
              .Q(i[11]),
              .D(o[11]),
              .clear(c),
              .enable(e)
               );
          dff d12(
               .Q(i[12]),
               .D(o[12]),
               .clear(c),
               .enable(e)
                );
          dff d13(
                .Q(i[13]),
                .D(o[13]),
                .clear(c),
                .enable(e)
                 );
          dff d14(
                 .Q(i[14]),
                 .D(o[14]),
                 .clear(c),
                 .enable(e)
                  );
          dff d15(
                  .Q(i[15]),
                  .D(o[15]),
                  .clear(c),
                  .enable(e)
                   );
          dff d16(
                   .Q(i[16]),
                   .D(o[16]),
                   .clear(c),
                   .enable(e)
                    );
          dff d17(
                    .Q(i[17]),
                    .D(o[17]),
                    .clear(c),
                    .enable(e)
                     );
          dff d18(
                     .Q(i[18]),
                     .D(o[18]),
                     .clear(c),
                     .enable(e)
                      );
     
endmodule
