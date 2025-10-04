module motorB_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s (
        ap_ready,
        p_read,
        p_read1,
        p_read2,
        p_read3,
        p_read4,
        p_read5,
        p_read6,
        p_read7,
        p_read8,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5,
        ap_return_6,
        ap_return_7,
        ap_return_8
);


output   ap_ready;
input  [31:0] p_read;
input  [31:0] p_read1;
input  [31:0] p_read2;
input  [31:0] p_read3;
input  [31:0] p_read4;
input  [31:0] p_read5;
input  [31:0] p_read6;
input  [31:0] p_read7;
input  [31:0] p_read8;
output  [31:0] ap_return_0;
output  [31:0] ap_return_1;
output  [31:0] ap_return_2;
output  [31:0] ap_return_3;
output  [31:0] ap_return_4;
output  [31:0] ap_return_5;
output  [31:0] ap_return_6;
output  [31:0] ap_return_7;
output  [31:0] ap_return_8;

wire   [0:0] icmp_ln1649_fu_122_p2;
wire   [30:0] trunc_ln40_24_fu_118_p1;
wire   [30:0] datareg_V_fu_128_p3;
wire   [0:0] icmp_ln1649_17_fu_140_p2;
wire   [30:0] trunc_ln40_23_fu_114_p1;
wire   [30:0] datareg_V_17_fu_146_p3;
wire   [0:0] icmp_ln1649_18_fu_158_p2;
wire   [30:0] trunc_ln40_22_fu_110_p1;
wire   [30:0] datareg_V_18_fu_164_p3;
wire   [0:0] icmp_ln1649_19_fu_176_p2;
wire   [30:0] trunc_ln40_21_fu_106_p1;
wire   [30:0] datareg_V_19_fu_182_p3;
wire   [0:0] icmp_ln1649_20_fu_194_p2;
wire   [30:0] trunc_ln40_20_fu_102_p1;
wire   [30:0] datareg_V_20_fu_200_p3;
wire   [0:0] icmp_ln1649_21_fu_212_p2;
wire   [30:0] trunc_ln40_19_fu_98_p1;
wire   [30:0] datareg_V_21_fu_218_p3;
wire   [0:0] icmp_ln1649_22_fu_230_p2;
wire   [30:0] trunc_ln40_18_fu_94_p1;
wire   [30:0] datareg_V_22_fu_236_p3;
wire   [0:0] icmp_ln1649_23_fu_248_p2;
wire   [30:0] trunc_ln40_17_fu_90_p1;
wire   [30:0] datareg_V_23_fu_254_p3;
wire   [0:0] icmp_ln1649_24_fu_266_p2;
wire   [30:0] trunc_ln40_fu_86_p1;
wire   [30:0] datareg_V_24_fu_272_p3;
wire   [31:0] zext_ln45_fu_136_p1;
wire   [31:0] zext_ln45_17_fu_154_p1;
wire   [31:0] zext_ln45_18_fu_172_p1;
wire   [31:0] zext_ln45_19_fu_190_p1;
wire   [31:0] zext_ln45_20_fu_208_p1;
wire   [31:0] zext_ln45_21_fu_226_p1;
wire   [31:0] zext_ln45_22_fu_244_p1;
wire   [31:0] zext_ln45_23_fu_262_p1;
wire   [31:0] zext_ln45_24_fu_280_p1;

assign ap_ready = 1'b1;

assign datareg_V_17_fu_146_p3 = ((icmp_ln1649_17_fu_140_p2[0:0] == 1'b1) ? trunc_ln40_23_fu_114_p1 : 31'd0);

assign datareg_V_18_fu_164_p3 = ((icmp_ln1649_18_fu_158_p2[0:0] == 1'b1) ? trunc_ln40_22_fu_110_p1 : 31'd0);

assign datareg_V_19_fu_182_p3 = ((icmp_ln1649_19_fu_176_p2[0:0] == 1'b1) ? trunc_ln40_21_fu_106_p1 : 31'd0);

assign datareg_V_20_fu_200_p3 = ((icmp_ln1649_20_fu_194_p2[0:0] == 1'b1) ? trunc_ln40_20_fu_102_p1 : 31'd0);

assign datareg_V_21_fu_218_p3 = ((icmp_ln1649_21_fu_212_p2[0:0] == 1'b1) ? trunc_ln40_19_fu_98_p1 : 31'd0);

assign datareg_V_22_fu_236_p3 = ((icmp_ln1649_22_fu_230_p2[0:0] == 1'b1) ? trunc_ln40_18_fu_94_p1 : 31'd0);

assign datareg_V_23_fu_254_p3 = ((icmp_ln1649_23_fu_248_p2[0:0] == 1'b1) ? trunc_ln40_17_fu_90_p1 : 31'd0);

assign datareg_V_24_fu_272_p3 = ((icmp_ln1649_24_fu_266_p2[0:0] == 1'b1) ? trunc_ln40_fu_86_p1 : 31'd0);

assign datareg_V_fu_128_p3 = ((icmp_ln1649_fu_122_p2[0:0] == 1'b1) ? trunc_ln40_24_fu_118_p1 : 31'd0);

assign trunc_ln40_17_fu_90_p1 = p_read7[30:0];

assign trunc_ln40_18_fu_94_p1 = p_read6[30:0];

assign trunc_ln40_19_fu_98_p1 = p_read5[30:0];

assign trunc_ln40_20_fu_102_p1 = p_read4[30:0];

assign trunc_ln40_21_fu_106_p1 = p_read3[30:0];

assign trunc_ln40_22_fu_110_p1 = p_read2[30:0];

assign trunc_ln40_23_fu_114_p1 = p_read1[30:0];

assign trunc_ln40_24_fu_118_p1 = p_read[30:0];

assign trunc_ln40_fu_86_p1 = p_read8[30:0];

assign zext_ln45_17_fu_154_p1 = datareg_V_17_fu_146_p3;

assign zext_ln45_18_fu_172_p1 = datareg_V_18_fu_164_p3;

assign zext_ln45_19_fu_190_p1 = datareg_V_19_fu_182_p3;

assign zext_ln45_20_fu_208_p1 = datareg_V_20_fu_200_p3;

assign zext_ln45_21_fu_226_p1 = datareg_V_21_fu_218_p3;

assign zext_ln45_22_fu_244_p1 = datareg_V_22_fu_236_p3;

assign zext_ln45_23_fu_262_p1 = datareg_V_23_fu_254_p3;

assign zext_ln45_24_fu_280_p1 = datareg_V_24_fu_272_p3;

assign zext_ln45_fu_136_p1 = datareg_V_fu_128_p3;

assign ap_return_0 = zext_ln45_fu_136_p1;

assign ap_return_1 = zext_ln45_17_fu_154_p1;

assign ap_return_2 = zext_ln45_18_fu_172_p1;

assign ap_return_3 = zext_ln45_19_fu_190_p1;

assign ap_return_4 = zext_ln45_20_fu_208_p1;

assign ap_return_5 = zext_ln45_21_fu_226_p1;

assign ap_return_6 = zext_ln45_22_fu_244_p1;

assign ap_return_7 = zext_ln45_23_fu_262_p1;

assign ap_return_8 = zext_ln45_24_fu_280_p1;

assign icmp_ln1649_17_fu_140_p2 = (($signed(p_read1) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_18_fu_158_p2 = (($signed(p_read2) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_19_fu_176_p2 = (($signed(p_read3) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_20_fu_194_p2 = (($signed(p_read4) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_21_fu_212_p2 = (($signed(p_read5) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_22_fu_230_p2 = (($signed(p_read6) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_23_fu_248_p2 = (($signed(p_read7) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_24_fu_266_p2 = (($signed(p_read8) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_fu_122_p2 = (($signed(p_read) > $signed(32'd0)) ? 1'b1 : 1'b0);

endmodule //motorB_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s
