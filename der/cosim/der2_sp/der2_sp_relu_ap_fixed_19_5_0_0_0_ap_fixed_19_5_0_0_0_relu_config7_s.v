module der2_sp_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s (
        ap_ready,
        p_read2,
        p_read4,
        p_read5,
        p_read13,
        p_read16,
        p_read18,
        p_read20,
        p_read21,
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
input  [18:0] p_read2;
input  [18:0] p_read4;
input  [18:0] p_read5;
input  [18:0] p_read13;
input  [18:0] p_read16;
input  [18:0] p_read18;
input  [18:0] p_read20;
input  [18:0] p_read21;
output  [18:0] ap_return_0;
output  [18:0] ap_return_1;
output  [18:0] ap_return_2;
output  [18:0] ap_return_3;
output  [18:0] ap_return_4;
output  [18:0] ap_return_5;
output  [18:0] ap_return_6;
output  [18:0] ap_return_7;

wire   [0:0] icmp_ln1649_fu_112_p2;
wire   [17:0] trunc_ln40_7_fu_108_p1;
wire   [17:0] datareg_V_fu_118_p3;
wire   [0:0] icmp_ln1649_1_fu_130_p2;
wire   [17:0] trunc_ln40_6_fu_104_p1;
wire   [17:0] datareg_V_1_fu_136_p3;
wire   [0:0] icmp_ln1649_2_fu_148_p2;
wire   [17:0] trunc_ln40_5_fu_100_p1;
wire   [17:0] datareg_V_2_fu_154_p3;
wire   [0:0] icmp_ln1649_3_fu_166_p2;
wire   [17:0] trunc_ln40_4_fu_96_p1;
wire   [17:0] datareg_V_3_fu_172_p3;
wire   [0:0] icmp_ln1649_4_fu_184_p2;
wire   [17:0] trunc_ln40_3_fu_92_p1;
wire   [17:0] datareg_V_4_fu_190_p3;
wire   [0:0] icmp_ln1649_5_fu_202_p2;
wire   [17:0] trunc_ln40_2_fu_88_p1;
wire   [17:0] datareg_V_5_fu_208_p3;
wire   [0:0] icmp_ln1649_6_fu_220_p2;
wire   [17:0] trunc_ln40_1_fu_84_p1;
wire   [17:0] datareg_V_6_fu_226_p3;
wire   [0:0] icmp_ln1649_7_fu_238_p2;
wire   [17:0] trunc_ln40_fu_80_p1;
wire   [17:0] datareg_V_7_fu_244_p3;
wire   [18:0] zext_ln45_fu_126_p1;
wire   [18:0] zext_ln45_1_fu_144_p1;
wire   [18:0] zext_ln45_2_fu_162_p1;
wire   [18:0] zext_ln45_3_fu_180_p1;
wire   [18:0] zext_ln45_4_fu_198_p1;
wire   [18:0] zext_ln45_5_fu_216_p1;
wire   [18:0] zext_ln45_6_fu_234_p1;
wire   [18:0] zext_ln45_7_fu_252_p1;

assign ap_ready = 1'b1;

assign datareg_V_1_fu_136_p3 = ((icmp_ln1649_1_fu_130_p2[0:0] == 1'b1) ? trunc_ln40_6_fu_104_p1 : 18'd0);

assign datareg_V_2_fu_154_p3 = ((icmp_ln1649_2_fu_148_p2[0:0] == 1'b1) ? trunc_ln40_5_fu_100_p1 : 18'd0);

assign datareg_V_3_fu_172_p3 = ((icmp_ln1649_3_fu_166_p2[0:0] == 1'b1) ? trunc_ln40_4_fu_96_p1 : 18'd0);

assign datareg_V_4_fu_190_p3 = ((icmp_ln1649_4_fu_184_p2[0:0] == 1'b1) ? trunc_ln40_3_fu_92_p1 : 18'd0);

assign datareg_V_5_fu_208_p3 = ((icmp_ln1649_5_fu_202_p2[0:0] == 1'b1) ? trunc_ln40_2_fu_88_p1 : 18'd0);

assign datareg_V_6_fu_226_p3 = ((icmp_ln1649_6_fu_220_p2[0:0] == 1'b1) ? trunc_ln40_1_fu_84_p1 : 18'd0);

assign datareg_V_7_fu_244_p3 = ((icmp_ln1649_7_fu_238_p2[0:0] == 1'b1) ? trunc_ln40_fu_80_p1 : 18'd0);

assign datareg_V_fu_118_p3 = ((icmp_ln1649_fu_112_p2[0:0] == 1'b1) ? trunc_ln40_7_fu_108_p1 : 18'd0);

assign trunc_ln40_1_fu_84_p1 = p_read20[17:0];

assign trunc_ln40_2_fu_88_p1 = p_read18[17:0];

assign trunc_ln40_3_fu_92_p1 = p_read16[17:0];

assign trunc_ln40_4_fu_96_p1 = p_read13[17:0];

assign trunc_ln40_5_fu_100_p1 = p_read5[17:0];

assign trunc_ln40_6_fu_104_p1 = p_read4[17:0];

assign trunc_ln40_7_fu_108_p1 = p_read2[17:0];

assign trunc_ln40_fu_80_p1 = p_read21[17:0];

assign zext_ln45_1_fu_144_p1 = datareg_V_1_fu_136_p3;

assign zext_ln45_2_fu_162_p1 = datareg_V_2_fu_154_p3;

assign zext_ln45_3_fu_180_p1 = datareg_V_3_fu_172_p3;

assign zext_ln45_4_fu_198_p1 = datareg_V_4_fu_190_p3;

assign zext_ln45_5_fu_216_p1 = datareg_V_5_fu_208_p3;

assign zext_ln45_6_fu_234_p1 = datareg_V_6_fu_226_p3;

assign zext_ln45_7_fu_252_p1 = datareg_V_7_fu_244_p3;

assign zext_ln45_fu_126_p1 = datareg_V_fu_118_p3;

assign ap_return_0 = zext_ln45_fu_126_p1;

assign ap_return_1 = zext_ln45_1_fu_144_p1;

assign ap_return_2 = zext_ln45_2_fu_162_p1;

assign ap_return_3 = zext_ln45_3_fu_180_p1;

assign ap_return_4 = zext_ln45_4_fu_198_p1;

assign ap_return_5 = zext_ln45_5_fu_216_p1;

assign ap_return_6 = zext_ln45_6_fu_234_p1;

assign ap_return_7 = zext_ln45_7_fu_252_p1;

assign icmp_ln1649_1_fu_130_p2 = (($signed(p_read4) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_2_fu_148_p2 = (($signed(p_read5) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_3_fu_166_p2 = (($signed(p_read13) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_4_fu_184_p2 = (($signed(p_read16) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_5_fu_202_p2 = (($signed(p_read18) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_6_fu_220_p2 = (($signed(p_read20) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_7_fu_238_p2 = (($signed(p_read21) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_fu_112_p2 = (($signed(p_read2) > $signed(19'd0)) ? 1'b1 : 1'b0);

endmodule //der2_sp_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s
