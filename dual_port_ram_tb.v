`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2025 23:40:24
// Design Name: 
// Module Name: dual_port_ram_tb
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


module dual_port_ram_tb;
reg[7:0] data_a,data_b;
reg [5:0] addr_a, addr_b;
reg we_a,we_b;
reg clk;
wire [7:0] q_a,q_b;

dual_port_ram dpr1(.data_a(data_a),.data_b(data_b),.addr_a(addr_a),.addr_b(addr_b),.clk(clk),
                   .we_a(we_a),.we_b(we_b),.q_a(q_a),.q_b(q_b)
                   );

initial
begin
clk = 1'b1;
forever #10 clk=~clk;
end  
initial
begin
data_a=8'h33;
addr_a=6'h01;
data_b=8'h44;
addr_b=6'h02;
we_a =1'b1;
we_b =1'b1;
#15
data_a=8'h55;
addr_a=6'h03;
data_b=8'h66;
addr_b=6'h04;
we_a =1'b1;
we_b =1'b1;
#15
data_a=8'h72;
addr_a=6'h05;
data_b=8'h41;
addr_b=6'h06;
we_a =1'b0;
we_b =1'b1;
#15
data_a=8'h63;
addr_a=6'h07;
data_b=8'h24;
addr_b=6'h08;
we_a =1'b1;
we_b =1'b0;

end

endmodule
