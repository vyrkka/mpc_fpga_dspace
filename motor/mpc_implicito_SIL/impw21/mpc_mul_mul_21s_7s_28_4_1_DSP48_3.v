  module mpc_mul_mul_21s_7s_28_4_1_DSP48_3(clk, rst, ce, a, b, p);
input clk;
input rst;
input ce;
input signed [21 - 1 : 0] a;
input signed [7 - 1 : 0] b;
output signed [28 - 1 : 0] p;

reg signed [28 - 1 : 0] p_reg; 

reg signed [21 - 1 : 0] a_reg; 
reg signed [7 - 1 : 0] b_reg; 

reg signed [28 - 1 : 0] p_reg_tmp; 

always @ (posedge clk) begin
    if (ce) begin
        a_reg <= a;
        b_reg <= b;
        p_reg_tmp <= a_reg * b_reg;
        p_reg <= p_reg_tmp;
    end
end

assign p = p_reg;

endmodule
