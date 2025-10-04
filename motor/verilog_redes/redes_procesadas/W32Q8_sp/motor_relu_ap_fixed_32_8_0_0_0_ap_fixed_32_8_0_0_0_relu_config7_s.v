module motor_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s (
        ap_ready,
        p_read,
        p_read3,
        p_read4,
        p_read8,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3
);


output   ap_ready;
input  [31:0] p_read;
input  [31:0] p_read3;
input  [31:0] p_read4;
input  [31:0] p_read8;
output  [31:0] ap_return_0;
output  [31:0] ap_return_1;
output  [31:0] ap_return_2;
output  [31:0] ap_return_3;

wire   [0:0] icmp_ln1649_fu_62_p2;
wire   [30:0] trunc_ln40_3_fu_58_p1;
wire   [30:0] datareg_V_fu_68_p3;
wire   [0:0] icmp_ln1649_1_fu_80_p2;
wire   [30:0] trunc_ln40_2_fu_54_p1;
wire   [30:0] datareg_V_1_fu_86_p3;
wire   [0:0] icmp_ln1649_2_fu_98_p2;
wire   [30:0] trunc_ln40_1_fu_50_p1;
wire   [30:0] datareg_V_2_fu_104_p3;
wire   [0:0] icmp_ln1649_3_fu_116_p2;
wire   [30:0] trunc_ln40_fu_46_p1;
wire   [30:0] datareg_V_3_fu_122_p3;
wire   [31:0] zext_ln45_fu_76_p1;
wire   [31:0] zext_ln45_1_fu_94_p1;
wire   [31:0] zext_ln45_2_fu_112_p1;
wire   [31:0] zext_ln45_3_fu_130_p1;

assign ap_ready = 1'b1;

assign datareg_V_1_fu_86_p3 = ((icmp_ln1649_1_fu_80_p2[0:0] == 1'b1) ? trunc_ln40_2_fu_54_p1 : 31'd0);

assign datareg_V_2_fu_104_p3 = ((icmp_ln1649_2_fu_98_p2[0:0] == 1'b1) ? trunc_ln40_1_fu_50_p1 : 31'd0);

assign datareg_V_3_fu_122_p3 = ((icmp_ln1649_3_fu_116_p2[0:0] == 1'b1) ? trunc_ln40_fu_46_p1 : 31'd0);

assign datareg_V_fu_68_p3 = ((icmp_ln1649_fu_62_p2[0:0] == 1'b1) ? trunc_ln40_3_fu_58_p1 : 31'd0);

assign trunc_ln40_1_fu_50_p1 = p_read4[30:0];

assign trunc_ln40_2_fu_54_p1 = p_read3[30:0];

assign trunc_ln40_3_fu_58_p1 = p_read[30:0];

assign trunc_ln40_fu_46_p1 = p_read8[30:0];

assign zext_ln45_1_fu_94_p1 = datareg_V_1_fu_86_p3;

assign zext_ln45_2_fu_112_p1 = datareg_V_2_fu_104_p3;

assign zext_ln45_3_fu_130_p1 = datareg_V_3_fu_122_p3;

assign zext_ln45_fu_76_p1 = datareg_V_fu_68_p3;

assign ap_return_0 = zext_ln45_fu_76_p1;

assign ap_return_1 = zext_ln45_1_fu_94_p1;

assign ap_return_2 = zext_ln45_2_fu_112_p1;

assign ap_return_3 = zext_ln45_3_fu_130_p1;

assign icmp_ln1649_1_fu_80_p2 = (($signed(p_read3) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_2_fu_98_p2 = (($signed(p_read4) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_3_fu_116_p2 = (($signed(p_read8) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_fu_62_p2 = (($signed(p_read) > $signed(32'd0)) ? 1'b1 : 1'b0);

endmodule //motor_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s
