`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2024 05:59:16 PM
// Design Name: 
// Module Name: lab4_task2_tb
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


module lab4_task2_tb;
logic [3:0]nu_m;
logic [2:0]se_l;

logic A_; 
logic B_; 
logic C_; 
logic D_; 
logic E_; 
logic F_; 
logic G_;

logic AN_0; 
logic AN_1; 
logic AN_2; 
logic AN_3; 
logic AN_4; 
logic AN_5; 
logic AN_6; 
logic AN_7;

Lab4_t2_source DUT(
                  .num(nu_m),
                  .sel(se_l),
                  .A(A_),
                  .B(B_),
                  .C(C_),
                  .D(D_),
                  .E(E_),
                  .F(F_),
                  .G(G_),
                  .AN0(AN_0),
                  .AN1(AN_1),
                  .AN2(AN_2),
                  .AN3(AN_3),
                  .AN4(AN_4),
                  .AN5(AN_5),
                  .AN6(AN_6),
                  .AN7(AN_7)
                  );
    initial begin
        se_l = 3'b000;
        #160;
        se_l = 3'b001;
        #160;
        se_l = 3'b010;
        #160;
        se_l = 3'b011;
        #160;
        se_l = 3'b100;
        #160;
        se_l = 3'b101;
        #160;
        se_l = 3'b110;
        #160;
        se_l = 3'b111;
        #160;
    $stop;
    end
    initial begin
        nu_m = 4'b0000;
        #10;
        nu_m = 4'b0001;
        #10;
        nu_m = 4'b0010;
        #10;
        nu_m = 4'b0011;
        #10;
        nu_m = 4'b0100;
        #10;
        nu_m = 4'b0101;
        #10;
        nu_m = 4'b0110;
        #10;
        nu_m = 4'b0111;
        #10;
        nu_m = 4'b1000;
        #10;
        nu_m = 4'b1001;
        #10;
        nu_m = 4'b1010;
        #10;
        nu_m = 4'b1011;
        #10;
        nu_m = 4'b1100;
        #10;
        nu_m = 4'b1101;
        #10;
        nu_m = 4'b1110;
        #10;
        nu_m = 4'b1111;
        #10;
    $stop;
    end
endmodule
