  module mpc_mul_mul_21s_14ns_36_4_1_DSP48_11(clk, rst, ce, a, b, p);
input clk;
input rst;
input ce;
input signed [21 - 1 : 0] a;
input [14 - 1 : 0] b;
output signed [36 - 1 : 0] p;

reg signed [36 - 1 : 0] p_reg; 

reg signed [21 - 1 : 0] a_reg; 
reg [14 - 1 : 0] b_reg; 

reg signed [36 - 1 : 0] p_reg_tmp; 

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
