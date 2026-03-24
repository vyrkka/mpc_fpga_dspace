module der_relu_ap_fixed_22_8_0_0_0_ap_fixed_22_8_0_0_0_relu_config13_s (
        ap_ready,
        p_read7,
        p_read12,
        p_read13,
        p_read24,
        p_read27,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4
);


output   ap_ready;
input  [21:0] p_read7;
input  [21:0] p_read12;
input  [21:0] p_read13;
input  [21:0] p_read24;
input  [21:0] p_read27;
output  [21:0] ap_return_0;
output  [21:0] ap_return_1;
output  [21:0] ap_return_2;
output  [21:0] ap_return_3;
output  [21:0] ap_return_4;

wire   [0:0] icmp_ln1649_fu_76_p2;
wire   [20:0] trunc_ln40_39_fu_72_p1;
wire   [20:0] datareg_V_fu_82_p3;
wire   [0:0] icmp_ln1649_36_fu_94_p2;
wire   [20:0] trunc_ln40_38_fu_68_p1;
wire   [20:0] datareg_V_36_fu_100_p3;
wire   [0:0] icmp_ln1649_37_fu_112_p2;
wire   [20:0] trunc_ln40_37_fu_64_p1;
wire   [20:0] datareg_V_37_fu_118_p3;
wire   [0:0] icmp_ln1649_38_fu_130_p2;
wire   [20:0] trunc_ln40_36_fu_60_p1;
wire   [20:0] datareg_V_38_fu_136_p3;
wire   [0:0] icmp_ln1649_39_fu_148_p2;
wire   [20:0] trunc_ln40_fu_56_p1;
wire   [20:0] datareg_V_39_fu_154_p3;
wire   [21:0] zext_ln45_fu_90_p1;
wire   [21:0] zext_ln45_36_fu_108_p1;
wire   [21:0] zext_ln45_37_fu_126_p1;
wire   [21:0] zext_ln45_38_fu_144_p1;
wire   [21:0] zext_ln45_39_fu_162_p1;

assign ap_ready = 1'b1;

assign datareg_V_36_fu_100_p3 = ((icmp_ln1649_36_fu_94_p2[0:0] == 1'b1) ? trunc_ln40_38_fu_68_p1 : 21'd0);

assign datareg_V_37_fu_118_p3 = ((icmp_ln1649_37_fu_112_p2[0:0] == 1'b1) ? trunc_ln40_37_fu_64_p1 : 21'd0);

assign datareg_V_38_fu_136_p3 = ((icmp_ln1649_38_fu_130_p2[0:0] == 1'b1) ? trunc_ln40_36_fu_60_p1 : 21'd0);

assign datareg_V_39_fu_154_p3 = ((icmp_ln1649_39_fu_148_p2[0:0] == 1'b1) ? trunc_ln40_fu_56_p1 : 21'd0);

assign datareg_V_fu_82_p3 = ((icmp_ln1649_fu_76_p2[0:0] == 1'b1) ? trunc_ln40_39_fu_72_p1 : 21'd0);

assign trunc_ln40_36_fu_60_p1 = p_read24[20:0];

assign trunc_ln40_37_fu_64_p1 = p_read13[20:0];

assign trunc_ln40_38_fu_68_p1 = p_read12[20:0];

assign trunc_ln40_39_fu_72_p1 = p_read7[20:0];

assign trunc_ln40_fu_56_p1 = p_read27[20:0];

assign zext_ln45_36_fu_108_p1 = datareg_V_36_fu_100_p3;

assign zext_ln45_37_fu_126_p1 = datareg_V_37_fu_118_p3;

assign zext_ln45_38_fu_144_p1 = datareg_V_38_fu_136_p3;

assign zext_ln45_39_fu_162_p1 = datareg_V_39_fu_154_p3;

assign zext_ln45_fu_90_p1 = datareg_V_fu_82_p3;

assign ap_return_0 = zext_ln45_fu_90_p1;

assign ap_return_1 = zext_ln45_36_fu_108_p1;

assign ap_return_2 = zext_ln45_37_fu_126_p1;

assign ap_return_3 = zext_ln45_38_fu_144_p1;

assign ap_return_4 = zext_ln45_39_fu_162_p1;

assign icmp_ln1649_36_fu_94_p2 = (($signed(p_read12) > $signed(22'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_37_fu_112_p2 = (($signed(p_read13) > $signed(22'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_38_fu_130_p2 = (($signed(p_read24) > $signed(22'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_39_fu_148_p2 = (($signed(p_read27) > $signed(22'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_fu_76_p2 = (($signed(p_read7) > $signed(22'd0)) ? 1'b1 : 1'b0);

endmodule //der_relu_ap_fixed_22_8_0_0_0_ap_fixed_22_8_0_0_0_relu_config13_s
