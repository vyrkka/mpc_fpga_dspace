module mpc_qp_admm_Pipeline_mvmult_row3_H_V_1_ROM_AUTO_1R (
    address0, ce0, q0, 
    reset, clk);

parameter DataWidth = 18;
parameter AddressWidth = 5;
parameter AddressRange = 24;
 
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;

input reset;
input clk;

 
reg [DataWidth-1:0] rom0[0:AddressRange-1];


initial begin
     
rom0[0] = 'h00000;
rom0[1] = 'h00000;
rom0[2] = 'h0AF12;
rom0[3] = 'h001EB;
rom0[4] = 'h0624D;
rom0[5] = 'h00494;
rom0[6] = 'h03732;
rom0[7] = 'h00612;
rom0[8] = 'h00000;
rom0[9] = 'h00000;
rom0[10] = 'h350EE;
rom0[11] = 'h3FE15;
rom0[12] = 'h39DB3;
rom0[13] = 'h3FB6C;
rom0[14] = 'h3C8CE;
rom0[15] = 'h3F9EE;
rom0[16] = 'h00000;
rom0[17] = 'h10000;
rom0[18] = 'h00000;
rom0[19] = 'h00000;
rom0[20] = 'h00000;
rom0[21] = 'h30000;
rom0[22] = 'h00000;
rom0[23] = 'h00000;
end

  
always @(posedge clk) 
begin 
    if (ce0) 
    begin
        q0 <= rom0[address0];
    end
end


endmodule
