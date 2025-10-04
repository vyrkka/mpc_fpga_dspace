  module mpc_mul_mul_21s_8s_29_4_1_DSP48_14(clk, rst, ce, a, b, p);
input clk;
input rst;
input ce;
input signed [21 - 1 : 0] a;
input signed [8 - 1 : 0] b;
output signed [29 - 1 : 0] p;

reg signed [29 - 1 : 0] p_reg; 

reg signed [21 - 1 : 0] a_reg; 
reg signed [8 - 1 : 0] b_reg; 

reg signed [29 - 1 : 0] p_reg_tmp; 

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
