module mpc_mpc_dense_constraint_Pipeline_vsub_row6_d_V_ROM_AUTO_1R (
    address0, ce0, q0, 
    reset, clk);

parameter DataWidth = 21;
parameter AddressWidth = 3;
parameter AddressRange = 8;
 
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;

input reset;
input clk;

 
reg [DataWidth-1:0] rom0[0:AddressRange-1];


initial begin
     
rom0[0] = 'h160000;
rom0[1] = 'h19B781;
rom0[2] = 'h160000;
rom0[3] = 'h19B781;
rom0[4] = 'h160000;
rom0[5] = 'h19B781;
rom0[6] = 'h160000;
rom0[7] = 'h19B781;
end

  
always @(posedge clk) 
begin 
    if (ce0) 
    begin
        q0 <= rom0[address0];
    end
end


endmodule
