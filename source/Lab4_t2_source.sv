`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2024 09:32:45 PM
// Design Name: 
// Module Name: Lab4_t2_source
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


module Lab4_t2_source(output logic A, B, C, D, E, F, G,
                      output logic AN0, AN1, AN2, AN3, AN4, AN5, AN6, AN7,
                      input logic [3:0]num, [2:0]sel
                      );
   logic w,x,y,z,   l,m,n;
   always_comb begin
   w = num[3];
   x = num[2];
   y = num[1];
   z = num[0];
   l = sel[0];
   m = sel[1];
   n = sel[2];
   end
   assign A = ((~w&(~y))&(x^z))|((w&z)&(x^y));
   assign B = (z&((w&y)|((~w&x)&(~y))))|((x&(~z))&(y|w));
   assign C = ((w&x)&(y|(~z)))|((~w&(~x))&(y&(~z)));
   assign D = (y&((x&z)|((w&(~x))&(~z))))|((~w&(~y))&(x^z));
   assign E = (~w&(z|(x&(~y))))|((~x&(~y))&z);
   assign F = ((~w&(~x))&(z|y))|(z&((~w&y)|((w&x)&(~y))));
   assign G = ((~w&(~x))&(~y))|(x&(((w&(~y))&(~z))|(((~w)&y)&z)));
   
   assign AN7 = (~m)|(~n)|(~l);
   assign AN6 = (~m)|n|(~l);
   assign AN5 = m|(~n)|(~l);
   assign AN4 = n|(~l)|m;
   assign AN3 = (~m)|(~n)|l;
   assign AN2 = (~m)|n|l;
   assign AN1 = (~n)|l|m;
   assign AN0 = l|m|n;

endmodule
