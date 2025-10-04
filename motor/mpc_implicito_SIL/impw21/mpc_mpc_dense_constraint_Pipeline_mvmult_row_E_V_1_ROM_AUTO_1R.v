module mpc_mpc_dense_constraint_Pipeline_mvmult_row_E_V_1_ROM_AUTO_1R (
    address0, ce0, q0, 
    reset, clk);

parameter DataWidth = 15;
parameter AddressWidth = 3;
parameter AddressRange = 6;
 
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;

input reset;
input clk;

 
reg [DataWidth-1:0] rom0[0:AddressRange-1];


initial begin
     
rom0[0] = 'h0000;
rom0[1] = 'h4000;
rom0[2] = 'h0000;
rom0[3] = 'h4000;
rom0[4] = 'h0000;
rom0[5] = 'h4000;
end

  
always @(posedge clk) 
begin 
    if (ce0) 
    begin
        q0 <= rom0[address0];
    end
end


endmodule
