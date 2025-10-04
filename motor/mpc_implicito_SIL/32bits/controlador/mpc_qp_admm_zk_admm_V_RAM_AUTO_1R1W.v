module mpc_qp_admm_zk_admm_V_RAM_AUTO_1R1W (
     
    address0, ce0,
    d0, we0, 
    q0, 
     
    reset, clk);

parameter DataWidth = 32;
parameter AddressWidth = 5;
parameter AddressRange = 24;
 
input[AddressWidth-1:0] address0;
input ce0;
input[DataWidth-1:0] d0;
input we0; 
output reg[DataWidth-1:0] q0; 

input reset;
input clk;

(* ram_style = "auto"  *)reg [DataWidth-1:0] ram[0:AddressRange-1];

initial begin
ram[0] = 'h0;
ram[1] = 'h0;
ram[2] = 'h0;
ram[3] = 'h0;
ram[4] = 'h0;
ram[5] = 'h0;
ram[6] = 'h0;
ram[7] = 'h0;
ram[8] = 'h0;
ram[9] = 'h0;
ram[10] = 'h0;
ram[11] = 'h0;
ram[12] = 'h0;
ram[13] = 'h0;
ram[14] = 'h0;
ram[15] = 'h0;
ram[16] = 'h0;
ram[17] = 'h0;
ram[18] = 'h0;
ram[19] = 'h0;
ram[20] = 'h0;
ram[21] = 'h0;
ram[22] = 'h0;
ram[23] = 'h0;
end 

 





//read first
always @(posedge clk)  
begin 
    if (ce0) begin
        if (we0) 
            ram[address0] <= d0; 
        q0 <= ram[address0];

    end
end 
 
 

endmodule
