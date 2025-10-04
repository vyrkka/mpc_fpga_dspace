module motor_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s (
        ap_ready,
        p_read,
        p_read7,
        p_read8,
        ap_return_0,
        ap_return_1,
        ap_return_2
);


output   ap_ready;
input  [31:0] p_read;
input  [31:0] p_read7;
input  [31:0] p_read8;
output  [31:0] ap_return_0;
output  [31:0] ap_return_1;
output  [31:0] ap_return_2;

wire   [0:0] icmp_ln1649_fu_50_p2;
wire   [30:0] trunc_ln40_8_fu_46_p1;
wire   [30:0] datareg_V_fu_56_p3;
wire   [0:0] icmp_ln1649_7_fu_68_p2;
wire   [30:0] trunc_ln40_7_fu_42_p1;
wire   [30:0] datareg_V_7_fu_74_p3;
wire   [0:0] icmp_ln1649_8_fu_86_p2;
wire   [30:0] trunc_ln40_fu_38_p1;
wire   [30:0] datareg_V_8_fu_92_p3;
wire   [31:0] zext_ln45_fu_64_p1;
wire   [31:0] zext_ln45_7_fu_82_p1;
wire   [31:0] zext_ln45_8_fu_100_p1;

assign ap_ready = 1'b1;

assign datareg_V_7_fu_74_p3 = ((icmp_ln1649_7_fu_68_p2[0:0] == 1'b1) ? trunc_ln40_7_fu_42_p1 : 31'd0);

assign datareg_V_8_fu_92_p3 = ((icmp_ln1649_8_fu_86_p2[0:0] == 1'b1) ? trunc_ln40_fu_38_p1 : 31'd0);

assign datareg_V_fu_56_p3 = ((icmp_ln1649_fu_50_p2[0:0] == 1'b1) ? trunc_ln40_8_fu_46_p1 : 31'd0);

assign trunc_ln40_7_fu_42_p1 = p_read7[30:0];

assign trunc_ln40_8_fu_46_p1 = p_read[30:0];

assign trunc_ln40_fu_38_p1 = p_read8[30:0];

assign zext_ln45_7_fu_82_p1 = datareg_V_7_fu_74_p3;

assign zext_ln45_8_fu_100_p1 = datareg_V_8_fu_92_p3;

assign zext_ln45_fu_64_p1 = datareg_V_fu_56_p3;

assign ap_return_0 = zext_ln45_fu_64_p1;

assign ap_return_1 = zext_ln45_7_fu_82_p1;

assign ap_return_2 = zext_ln45_8_fu_100_p1;

assign icmp_ln1649_7_fu_68_p2 = (($signed(p_read7) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_8_fu_86_p2 = (($signed(p_read8) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_fu_50_p2 = (($signed(p_read) > $signed(32'd0)) ? 1'b1 : 1'b0);

endmodule //motor_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s
