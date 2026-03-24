module der_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config13_s (
        ap_ready,
        p_read11,
        p_read12,
        p_read15,
        p_read29,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3
);


output   ap_ready;
input  [14:0] p_read11;
input  [14:0] p_read12;
input  [14:0] p_read15;
input  [14:0] p_read29;
output  [14:0] ap_return_0;
output  [14:0] ap_return_1;
output  [14:0] ap_return_2;
output  [14:0] ap_return_3;

wire   [0:0] icmp_ln1649_fu_64_p2;
wire   [13:0] trunc_ln40_40_fu_60_p1;
wire   [13:0] datareg_V_fu_70_p3;
wire   [0:0] icmp_ln1649_38_fu_82_p2;
wire   [13:0] trunc_ln40_39_fu_56_p1;
wire   [13:0] datareg_V_38_fu_88_p3;
wire   [0:0] icmp_ln1649_39_fu_100_p2;
wire   [13:0] trunc_ln40_38_fu_52_p1;
wire   [13:0] datareg_V_39_fu_106_p3;
wire   [0:0] icmp_ln1649_40_fu_118_p2;
wire   [13:0] trunc_ln40_fu_48_p1;
wire   [13:0] datareg_V_40_fu_124_p3;
wire   [14:0] zext_ln45_fu_78_p1;
wire   [14:0] zext_ln45_38_fu_96_p1;
wire   [14:0] zext_ln45_39_fu_114_p1;
wire   [14:0] zext_ln45_40_fu_132_p1;

assign ap_ready = 1'b1;

assign datareg_V_38_fu_88_p3 = ((icmp_ln1649_38_fu_82_p2[0:0] == 1'b1) ? trunc_ln40_39_fu_56_p1 : 14'd0);

assign datareg_V_39_fu_106_p3 = ((icmp_ln1649_39_fu_100_p2[0:0] == 1'b1) ? trunc_ln40_38_fu_52_p1 : 14'd0);

assign datareg_V_40_fu_124_p3 = ((icmp_ln1649_40_fu_118_p2[0:0] == 1'b1) ? trunc_ln40_fu_48_p1 : 14'd0);

assign datareg_V_fu_70_p3 = ((icmp_ln1649_fu_64_p2[0:0] == 1'b1) ? trunc_ln40_40_fu_60_p1 : 14'd0);

assign trunc_ln40_38_fu_52_p1 = p_read15[13:0];

assign trunc_ln40_39_fu_56_p1 = p_read12[13:0];

assign trunc_ln40_40_fu_60_p1 = p_read11[13:0];

assign trunc_ln40_fu_48_p1 = p_read29[13:0];

assign zext_ln45_38_fu_96_p1 = datareg_V_38_fu_88_p3;

assign zext_ln45_39_fu_114_p1 = datareg_V_39_fu_106_p3;

assign zext_ln45_40_fu_132_p1 = datareg_V_40_fu_124_p3;

assign zext_ln45_fu_78_p1 = datareg_V_fu_70_p3;

assign ap_return_0 = zext_ln45_fu_78_p1;

assign ap_return_1 = zext_ln45_38_fu_96_p1;

assign ap_return_2 = zext_ln45_39_fu_114_p1;

assign ap_return_3 = zext_ln45_40_fu_132_p1;

assign icmp_ln1649_38_fu_82_p2 = (($signed(p_read12) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_39_fu_100_p2 = (($signed(p_read15) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_40_fu_118_p2 = (($signed(p_read29) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_fu_64_p2 = (($signed(p_read11) > $signed(15'd0)) ? 1'b1 : 1'b0);

endmodule //der_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config13_s
