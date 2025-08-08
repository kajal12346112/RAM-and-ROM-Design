module dual_port_ram(
    input[7:0] data_a,
    input[7:0] data_b,
    input[5:0] addr_a,
    input[5:0] addr_b,
    input we_a,
    input we_b,
    input clk,
    output reg [7:0]q_a,
    output reg [7:0] q_b
    );
   reg [7:0] ram[63:0];
   always @ (posedge clk)
   begin
   if(we_a)
   ram[addr_a] <=data_a;
   else
  q_a <= ram[addr_a];
  end
  always @ (posedge clk)
     begin
   if(we_b)
   ram[addr_b] <=data_b;
   else
  q_b <= ram[addr_b];
  end   
endmodule