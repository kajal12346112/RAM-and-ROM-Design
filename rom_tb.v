`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2025 00:13:40
// Design Name: 
// Module Name: rom_tb
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


module rom_tb;
    reg clk;
    reg en;
    reg [3:0] addr;
    wire [3:0] data;
    rom uut (
        .en(en),
        .clk(clk),
        .addr(addr),
        .data(data)
    );

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

    initial begin
        en = 0;
        addr = 0;
        #10 en = 1;
        repeat (16) begin
            #10 addr = addr + 1;
        end
        #10 en = 0;
        #20 $stop;
    end
endmodule


