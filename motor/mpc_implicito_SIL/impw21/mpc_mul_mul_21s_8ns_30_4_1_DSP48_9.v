  module mpc_mul_mul_21s_8ns_30_4_1_DSP48_9(clk, rst, ce, a, b, p);
input clk;
input rst;
input ce;
input signed [21 - 1 : 0] a;
input [8 - 1 : 0] b;
output signed [30 - 1 : 0] p;

reg signed [30 - 1 : 0] p_reg; 

reg signed [21 - 1 : 0] a_reg; 
reg [8 - 1 : 0] b_reg; 

reg signed [30 - 1 : 0] p_reg_tmp; 

always @ (posedge clk) begin
    if (ce) begin
        a_reg <= a;
        b_reg <= b;
        p_reg_tmp <= a_reg * $signed({1'b0, b_reg});
        p_reg <= p_reg_tmp;
    end
end

assign p = p_reg;

endmodule
