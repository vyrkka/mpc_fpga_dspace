module motor_relu_ap_fixed_21_7_0_0_0_ap_fixed_21_7_0_0_0_relu_config4_s (
        ap_ready,
        p_read2,
        p_read4,
        p_read7,
        p_read8,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3
);


output   ap_ready;
input  [20:0] p_read2;
input  [20:0] p_read4;
input  [20:0] p_read7;
input  [20:0] p_read8;
output  [20:0] ap_return_0;
output  [20:0] ap_return_1;
output  [20:0] ap_return_2;
output  [20:0] ap_return_3;

wire   [0:0] icmp_ln1649_fu_64_p2;
wire   [19:0] trunc_ln40_5_fu_60_p1;
wire   [19:0] datareg_V_fu_70_p3;
wire   [0:0] icmp_ln1649_3_fu_82_p2;
wire   [19:0] trunc_ln40_4_fu_56_p1;
wire   [19:0] datareg_V_3_fu_88_p3;
wire   [0:0] icmp_ln1649_4_fu_100_p2;
wire   [19:0] trunc_ln40_3_fu_52_p1;
wire   [19:0] datareg_V_4_fu_106_p3;
wire   [0:0] icmp_ln1649_5_fu_118_p2;
wire   [19:0] trunc_ln40_fu_48_p1;
wire   [19:0] datareg_V_5_fu_124_p3;
wire   [20:0] zext_ln45_fu_78_p1;
wire   [20:0] zext_ln45_3_fu_96_p1;
wire   [20:0] zext_ln45_4_fu_114_p1;
wire   [20:0] zext_ln45_5_fu_132_p1;

assign ap_ready = 1'b1;

assign datareg_V_3_fu_88_p3 = ((icmp_ln1649_3_fu_82_p2[0:0] == 1'b1) ? trunc_ln40_4_fu_56_p1 : 20'd0);

assign datareg_V_4_fu_106_p3 = ((icmp_ln1649_4_fu_100_p2[0:0] == 1'b1) ? trunc_ln40_3_fu_52_p1 : 20'd0);

assign datareg_V_5_fu_124_p3 = ((icmp_ln1649_5_fu_118_p2[0:0] == 1'b1) ? trunc_ln40_fu_48_p1 : 20'd0);

assign datareg_V_fu_70_p3 = ((icmp_ln1649_fu_64_p2[0:0] == 1'b1) ? trunc_ln40_5_fu_60_p1 : 20'd0);

assign trunc_ln40_3_fu_52_p1 = p_read7[19:0];

assign trunc_ln40_4_fu_56_p1 = p_read4[19:0];

assign trunc_ln40_5_fu_60_p1 = p_read2[19:0];

assign trunc_ln40_fu_48_p1 = p_read8[19:0];

assign zext_ln45_3_fu_96_p1 = datareg_V_3_fu_88_p3;

assign zext_ln45_4_fu_114_p1 = datareg_V_4_fu_106_p3;

assign zext_ln45_5_fu_132_p1 = datareg_V_5_fu_124_p3;

assign zext_ln45_fu_78_p1 = datareg_V_fu_70_p3;

assign ap_return_0 = zext_ln45_fu_78_p1;

assign ap_return_1 = zext_ln45_3_fu_96_p1;

assign ap_return_2 = zext_ln45_4_fu_114_p1;

assign ap_return_3 = zext_ln45_5_fu_132_p1;

assign icmp_ln1649_3_fu_82_p2 = (($signed(p_read4) > $signed(21'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_4_fu_100_p2 = (($signed(p_read7) > $signed(21'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_5_fu_118_p2 = (($signed(p_read8) > $signed(21'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_fu_64_p2 = (($signed(p_read2) > $signed(21'd0)) ? 1'b1 : 1'b0);

endmodule //motor_relu_ap_fixed_21_7_0_0_0_ap_fixed_21_7_0_0_0_relu_config4_s
