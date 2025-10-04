module mpc_mpc_dense_constraint_Pipeline_mvmult_row_D_V_0_ROM_AUTO_1R (
    address0, ce0, q0, 
    reset, clk);

parameter DataWidth = 16;
parameter AddressWidth = 3;
parameter AddressRange = 8;
 
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;

input reset;
input clk;

 
reg [DataWidth-1:0] rom0[0:AddressRange-1];


initial begin
     
rom0[0] = 'h8FBE;
rom0[1] = 'h03E4;
rom0[2] = 'h50B5;
rom0[3] = 'h0613;
rom0[4] = 'h2D51;
rom0[5] = 'h074D;
rom0[6] = 'h1972;
rom0[7] = 'h07FD;
end

  
always @(posedge clk) 
begin 
    if (ce0) 
    begin
        q0 <= rom0[address0];
    end
end


endmodule
