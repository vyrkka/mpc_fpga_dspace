module der2_sp_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s (
        ap_ready,
        p_read,
        p_read20,
        p_read21,
        p_read22,
        p_read23,
        p_read24,
        p_read26,
        p_read29,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5,
        ap_return_6,
        ap_return_7
);


output   ap_ready;
input  [18:0] p_read;
input  [18:0] p_read20;
input  [18:0] p_read21;
input  [18:0] p_read22;
input  [18:0] p_read23;
input  [18:0] p_read24;
input  [18:0] p_read26;
input  [18:0] p_read29;
output  [18:0] ap_return_0;
output  [18:0] ap_return_1;
output  [18:0] ap_return_2;
output  [18:0] ap_return_3;
output  [18:0] ap_return_4;
output  [18:0] ap_return_5;
output  [18:0] ap_return_6;
output  [18:0] ap_return_7;

wire   [0:0] icmp_ln1649_fu_112_p2;
wire   [17:0] trunc_ln40_14_fu_108_p1;
wire   [17:0] datareg_V_fu_118_p3;
wire   [0:0] icmp_ln1649_8_fu_130_p2;
wire   [17:0] trunc_ln40_13_fu_104_p1;
wire   [17:0] datareg_V_8_fu_136_p3;
wire   [0:0] icmp_ln1649_9_fu_148_p2;
wire   [17:0] trunc_ln40_12_fu_100_p1;
wire   [17:0] datareg_V_9_fu_154_p3;
wire   [0:0] icmp_ln1649_10_fu_166_p2;
wire   [17:0] trunc_ln40_11_fu_96_p1;
wire   [17:0] datareg_V_10_fu_172_p3;
wire   [0:0] icmp_ln1649_11_fu_184_p2;
wire   [17:0] trunc_ln40_10_fu_92_p1;
wire   [17:0] datareg_V_11_fu_190_p3;
wire   [0:0] icmp_ln1649_12_fu_202_p2;
wire   [17:0] trunc_ln40_9_fu_88_p1;
wire   [17:0] datareg_V_12_fu_208_p3;
wire   [0:0] icmp_ln1649_13_fu_220_p2;
wire   [17:0] trunc_ln40_8_fu_84_p1;
wire   [17:0] datareg_V_13_fu_226_p3;
wire   [0:0] icmp_ln1649_14_fu_238_p2;
wire   [17:0] trunc_ln40_fu_80_p1;
wire   [17:0] datareg_V_14_fu_244_p3;
wire   [18:0] zext_ln45_fu_126_p1;
wire   [18:0] zext_ln45_8_fu_144_p1;
wire   [18:0] zext_ln45_9_fu_162_p1;
wire   [18:0] zext_ln45_10_fu_180_p1;
wire   [18:0] zext_ln45_11_fu_198_p1;
wire   [18:0] zext_ln45_12_fu_216_p1;
wire   [18:0] zext_ln45_13_fu_234_p1;
wire   [18:0] zext_ln45_14_fu_252_p1;

assign ap_ready = 1'b1;

assign datareg_V_10_fu_172_p3 = ((icmp_ln1649_10_fu_166_p2[0:0] == 1'b1) ? trunc_ln40_11_fu_96_p1 : 18'd0);

assign datareg_V_11_fu_190_p3 = ((icmp_ln1649_11_fu_184_p2[0:0] == 1'b1) ? trunc_ln40_10_fu_92_p1 : 18'd0);

assign datareg_V_12_fu_208_p3 = ((icmp_ln1649_12_fu_202_p2[0:0] == 1'b1) ? trunc_ln40_9_fu_88_p1 : 18'd0);

assign datareg_V_13_fu_226_p3 = ((icmp_ln1649_13_fu_220_p2[0:0] == 1'b1) ? trunc_ln40_8_fu_84_p1 : 18'd0);

assign datareg_V_14_fu_244_p3 = ((icmp_ln1649_14_fu_238_p2[0:0] == 1'b1) ? trunc_ln40_fu_80_p1 : 18'd0);

assign datareg_V_8_fu_136_p3 = ((icmp_ln1649_8_fu_130_p2[0:0] == 1'b1) ? trunc_ln40_13_fu_104_p1 : 18'd0);

assign datareg_V_9_fu_154_p3 = ((icmp_ln1649_9_fu_148_p2[0:0] == 1'b1) ? trunc_ln40_12_fu_100_p1 : 18'd0);

assign datareg_V_fu_118_p3 = ((icmp_ln1649_fu_112_p2[0:0] == 1'b1) ? trunc_ln40_14_fu_108_p1 : 18'd0);

assign trunc_ln40_10_fu_92_p1 = p_read23[17:0];

assign trunc_ln40_11_fu_96_p1 = p_read22[17:0];

assign trunc_ln40_12_fu_100_p1 = p_read21[17:0];

assign trunc_ln40_13_fu_104_p1 = p_read20[17:0];

assign trunc_ln40_14_fu_108_p1 = p_read[17:0];

assign trunc_ln40_8_fu_84_p1 = p_read26[17:0];

assign trunc_ln40_9_fu_88_p1 = p_read24[17:0];

assign trunc_ln40_fu_80_p1 = p_read29[17:0];

assign zext_ln45_10_fu_180_p1 = datareg_V_10_fu_172_p3;

assign zext_ln45_11_fu_198_p1 = datareg_V_11_fu_190_p3;

assign zext_ln45_12_fu_216_p1 = datareg_V_12_fu_208_p3;

assign zext_ln45_13_fu_234_p1 = datareg_V_13_fu_226_p3;

assign zext_ln45_14_fu_252_p1 = datareg_V_14_fu_244_p3;

assign zext_ln45_8_fu_144_p1 = datareg_V_8_fu_136_p3;

assign zext_ln45_9_fu_162_p1 = datareg_V_9_fu_154_p3;

assign zext_ln45_fu_126_p1 = datareg_V_fu_118_p3;

assign ap_return_0 = zext_ln45_fu_126_p1;

assign ap_return_1 = zext_ln45_8_fu_144_p1;

assign ap_return_2 = zext_ln45_9_fu_162_p1;

assign ap_return_3 = zext_ln45_10_fu_180_p1;

assign ap_return_4 = zext_ln45_11_fu_198_p1;

assign ap_return_5 = zext_ln45_12_fu_216_p1;

assign ap_return_6 = zext_ln45_13_fu_234_p1;

assign ap_return_7 = zext_ln45_14_fu_252_p1;

assign icmp_ln1649_10_fu_166_p2 = (($signed(p_read22) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_11_fu_184_p2 = (($signed(p_read23) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_12_fu_202_p2 = (($signed(p_read24) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_13_fu_220_p2 = (($signed(p_read26) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_14_fu_238_p2 = (($signed(p_read29) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_8_fu_130_p2 = (($signed(p_read20) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_9_fu_148_p2 = (($signed(p_read21) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_fu_112_p2 = (($signed(p_read) > $signed(19'd0)) ? 1'b1 : 1'b0);

endmodule //der2_sp_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s
