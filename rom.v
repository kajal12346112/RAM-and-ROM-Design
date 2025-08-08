`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2025 00:03:23
// Design Name: 
// Module Name: rom
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


module rom(
    input en,
    input clk,
    input [3:0] addr,
    output reg [3:0] data
    );
 reg [3:0] mem[15:0];
 always @ (posedge clk)
 begin
 if(en)
 data <= mem[addr];
 else
 data <= 4'bxxxx;
 end   
 
 initial 
 begin
 mem[0]=4'b1001;
 mem[1]=4'b1000;
 mem[2]=4'b0001;
 mem[3]=4'b0101;
 mem[4]=4'b1101;
 mem[5]=4'b1011;
 mem[6]=4'b1111;
 mem[7]=4'b1011;
 mem[8]=4'b1100;
 mem[9]=4'b0101;
 mem[10]=4'b0110;
 mem[11]=4'b0011;
 mem[12]=4'b1001;
 mem[13]=4'b1010;
 mem[14]=4'b1011;
 mem[15]=4'b0000;
 end   
endmodule
