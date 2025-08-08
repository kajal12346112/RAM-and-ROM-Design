`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2025 15:59:26
// Design Name: 
// Module Name: single_port_RAM
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


module single_port_RAM(
input[7:0] data,
input[5:0] addr,
input we,
input clk,
 output[7:0]out
 
    );
 reg[7:0] ram[63:0];
 reg[5:0] addr_reg;
 always@(posedge clk)
 
 begin
 if (we)
 ram[addr]<=data;
 else
 addr_reg<=addr;
 end
 
 assign out=ram[addr_reg];
 
 
    
    
    
    
    
    
    
    
    
    
    
    
endmodule
