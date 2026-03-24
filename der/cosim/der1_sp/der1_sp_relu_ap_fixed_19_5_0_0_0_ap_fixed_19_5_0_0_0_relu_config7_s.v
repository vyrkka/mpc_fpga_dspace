module der1_sp_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s (
        ap_ready,
        p_read,
        p_read1,
        p_read2,
        p_read5,
        p_read7,
        p_read9,
        p_read10,
        p_read11,
        p_read12,
        p_read13,
        p_read18,
        p_read21,
        p_read22,
        p_read27,
        p_read28,
        p_read29,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5,
        ap_return_6,
        ap_return_7,
        ap_return_8,
        ap_return_9,
        ap_return_10,
        ap_return_11,
        ap_return_12,
        ap_return_13,
        ap_return_14,
        ap_return_15
);


output   ap_ready;
input  [18:0] p_read;
input  [18:0] p_read1;
input  [18:0] p_read2;
input  [18:0] p_read5;
input  [18:0] p_read7;
input  [18:0] p_read9;
input  [18:0] p_read10;
input  [18:0] p_read11;
input  [18:0] p_read12;
input  [18:0] p_read13;
input  [18:0] p_read18;
input  [18:0] p_read21;
input  [18:0] p_read22;
input  [18:0] p_read27;
input  [18:0] p_read28;
input  [18:0] p_read29;
output  [18:0] ap_return_0;
output  [18:0] ap_return_1;
output  [18:0] ap_return_2;
output  [18:0] ap_return_3;
output  [18:0] ap_return_4;
output  [18:0] ap_return_5;
output  [18:0] ap_return_6;
output  [18:0] ap_return_7;
output  [18:0] ap_return_8;
output  [18:0] ap_return_9;
output  [18:0] ap_return_10;
output  [18:0] ap_return_11;
output  [18:0] ap_return_12;
output  [18:0] ap_return_13;
output  [18:0] ap_return_14;
output  [18:0] ap_return_15;

wire   [0:0] icmp_ln1649_fu_208_p2;
wire   [17:0] trunc_ln40_15_fu_204_p1;
wire   [17:0] datareg_V_fu_214_p3;
wire   [0:0] icmp_ln1649_1_fu_226_p2;
wire   [17:0] trunc_ln40_14_fu_200_p1;
wire   [17:0] datareg_V_1_fu_232_p3;
wire   [0:0] icmp_ln1649_2_fu_244_p2;
wire   [17:0] trunc_ln40_13_fu_196_p1;
wire   [17:0] datareg_V_2_fu_250_p3;
wire   [0:0] icmp_ln1649_3_fu_262_p2;
wire   [17:0] trunc_ln40_12_fu_192_p1;
wire   [17:0] datareg_V_3_fu_268_p3;
wire   [0:0] icmp_ln1649_4_fu_280_p2;
wire   [17:0] trunc_ln40_11_fu_188_p1;
wire   [17:0] datareg_V_4_fu_286_p3;
wire   [0:0] icmp_ln1649_5_fu_298_p2;
wire   [17:0] trunc_ln40_10_fu_184_p1;
wire   [17:0] datareg_V_5_fu_304_p3;
wire   [0:0] icmp_ln1649_6_fu_316_p2;
wire   [17:0] trunc_ln40_9_fu_180_p1;
wire   [17:0] datareg_V_6_fu_322_p3;
wire   [0:0] icmp_ln1649_7_fu_334_p2;
wire   [17:0] trunc_ln40_8_fu_176_p1;
wire   [17:0] datareg_V_7_fu_340_p3;
wire   [0:0] icmp_ln1649_8_fu_352_p2;
wire   [17:0] trunc_ln40_7_fu_172_p1;
wire   [17:0] datareg_V_8_fu_358_p3;
wire   [0:0] icmp_ln1649_9_fu_370_p2;
wire   [17:0] trunc_ln40_6_fu_168_p1;
wire   [17:0] datareg_V_9_fu_376_p3;
wire   [0:0] icmp_ln1649_10_fu_388_p2;
wire   [17:0] trunc_ln40_5_fu_164_p1;
wire   [17:0] datareg_V_10_fu_394_p3;
wire   [0:0] icmp_ln1649_11_fu_406_p2;
wire   [17:0] trunc_ln40_4_fu_160_p1;
wire   [17:0] datareg_V_11_fu_412_p3;
wire   [0:0] icmp_ln1649_12_fu_424_p2;
wire   [17:0] trunc_ln40_3_fu_156_p1;
wire   [17:0] datareg_V_12_fu_430_p3;
wire   [0:0] icmp_ln1649_13_fu_442_p2;
wire   [17:0] trunc_ln40_2_fu_152_p1;
wire   [17:0] datareg_V_13_fu_448_p3;
wire   [0:0] icmp_ln1649_14_fu_460_p2;
wire   [17:0] trunc_ln40_1_fu_148_p1;
wire   [17:0] datareg_V_14_fu_466_p3;
wire   [0:0] icmp_ln1649_15_fu_478_p2;
wire   [17:0] trunc_ln40_fu_144_p1;
wire   [17:0] datareg_V_15_fu_484_p3;
wire   [18:0] zext_ln45_fu_222_p1;
wire   [18:0] zext_ln45_1_fu_240_p1;
wire   [18:0] zext_ln45_2_fu_258_p1;
wire   [18:0] zext_ln45_3_fu_276_p1;
wire   [18:0] zext_ln45_4_fu_294_p1;
wire   [18:0] zext_ln45_5_fu_312_p1;
wire   [18:0] zext_ln45_6_fu_330_p1;
wire   [18:0] zext_ln45_7_fu_348_p1;
wire   [18:0] zext_ln45_8_fu_366_p1;
wire   [18:0] zext_ln45_9_fu_384_p1;
wire   [18:0] zext_ln45_10_fu_402_p1;
wire   [18:0] zext_ln45_11_fu_420_p1;
wire   [18:0] zext_ln45_12_fu_438_p1;
wire   [18:0] zext_ln45_13_fu_456_p1;
wire   [18:0] zext_ln45_14_fu_474_p1;
wire   [18:0] zext_ln45_15_fu_492_p1;

assign ap_ready = 1'b1;

assign datareg_V_10_fu_394_p3 = ((icmp_ln1649_10_fu_388_p2[0:0] == 1'b1) ? trunc_ln40_5_fu_164_p1 : 18'd0);

assign datareg_V_11_fu_412_p3 = ((icmp_ln1649_11_fu_406_p2[0:0] == 1'b1) ? trunc_ln40_4_fu_160_p1 : 18'd0);

assign datareg_V_12_fu_430_p3 = ((icmp_ln1649_12_fu_424_p2[0:0] == 1'b1) ? trunc_ln40_3_fu_156_p1 : 18'd0);

assign datareg_V_13_fu_448_p3 = ((icmp_ln1649_13_fu_442_p2[0:0] == 1'b1) ? trunc_ln40_2_fu_152_p1 : 18'd0);

assign datareg_V_14_fu_466_p3 = ((icmp_ln1649_14_fu_460_p2[0:0] == 1'b1) ? trunc_ln40_1_fu_148_p1 : 18'd0);

assign datareg_V_15_fu_484_p3 = ((icmp_ln1649_15_fu_478_p2[0:0] == 1'b1) ? trunc_ln40_fu_144_p1 : 18'd0);

assign datareg_V_1_fu_232_p3 = ((icmp_ln1649_1_fu_226_p2[0:0] == 1'b1) ? trunc_ln40_14_fu_200_p1 : 18'd0);

assign datareg_V_2_fu_250_p3 = ((icmp_ln1649_2_fu_244_p2[0:0] == 1'b1) ? trunc_ln40_13_fu_196_p1 : 18'd0);

assign datareg_V_3_fu_268_p3 = ((icmp_ln1649_3_fu_262_p2[0:0] == 1'b1) ? trunc_ln40_12_fu_192_p1 : 18'd0);

assign datareg_V_4_fu_286_p3 = ((icmp_ln1649_4_fu_280_p2[0:0] == 1'b1) ? trunc_ln40_11_fu_188_p1 : 18'd0);

assign datareg_V_5_fu_304_p3 = ((icmp_ln1649_5_fu_298_p2[0:0] == 1'b1) ? trunc_ln40_10_fu_184_p1 : 18'd0);

assign datareg_V_6_fu_322_p3 = ((icmp_ln1649_6_fu_316_p2[0:0] == 1'b1) ? trunc_ln40_9_fu_180_p1 : 18'd0);

assign datareg_V_7_fu_340_p3 = ((icmp_ln1649_7_fu_334_p2[0:0] == 1'b1) ? trunc_ln40_8_fu_176_p1 : 18'd0);

assign datareg_V_8_fu_358_p3 = ((icmp_ln1649_8_fu_352_p2[0:0] == 1'b1) ? trunc_ln40_7_fu_172_p1 : 18'd0);

assign datareg_V_9_fu_376_p3 = ((icmp_ln1649_9_fu_370_p2[0:0] == 1'b1) ? trunc_ln40_6_fu_168_p1 : 18'd0);

assign datareg_V_fu_214_p3 = ((icmp_ln1649_fu_208_p2[0:0] == 1'b1) ? trunc_ln40_15_fu_204_p1 : 18'd0);

assign trunc_ln40_10_fu_184_p1 = p_read9[17:0];

assign trunc_ln40_11_fu_188_p1 = p_read7[17:0];

assign trunc_ln40_12_fu_192_p1 = p_read5[17:0];

assign trunc_ln40_13_fu_196_p1 = p_read2[17:0];

assign trunc_ln40_14_fu_200_p1 = p_read1[17:0];

assign trunc_ln40_15_fu_204_p1 = p_read[17:0];

assign trunc_ln40_1_fu_148_p1 = p_read28[17:0];

assign trunc_ln40_2_fu_152_p1 = p_read27[17:0];

assign trunc_ln40_3_fu_156_p1 = p_read22[17:0];

assign trunc_ln40_4_fu_160_p1 = p_read21[17:0];

assign trunc_ln40_5_fu_164_p1 = p_read18[17:0];

assign trunc_ln40_6_fu_168_p1 = p_read13[17:0];

assign trunc_ln40_7_fu_172_p1 = p_read12[17:0];

assign trunc_ln40_8_fu_176_p1 = p_read11[17:0];

assign trunc_ln40_9_fu_180_p1 = p_read10[17:0];

assign trunc_ln40_fu_144_p1 = p_read29[17:0];

assign zext_ln45_10_fu_402_p1 = datareg_V_10_fu_394_p3;

assign zext_ln45_11_fu_420_p1 = datareg_V_11_fu_412_p3;

assign zext_ln45_12_fu_438_p1 = datareg_V_12_fu_430_p3;

assign zext_ln45_13_fu_456_p1 = datareg_V_13_fu_448_p3;

assign zext_ln45_14_fu_474_p1 = datareg_V_14_fu_466_p3;

assign zext_ln45_15_fu_492_p1 = datareg_V_15_fu_484_p3;

assign zext_ln45_1_fu_240_p1 = datareg_V_1_fu_232_p3;

assign zext_ln45_2_fu_258_p1 = datareg_V_2_fu_250_p3;

assign zext_ln45_3_fu_276_p1 = datareg_V_3_fu_268_p3;

assign zext_ln45_4_fu_294_p1 = datareg_V_4_fu_286_p3;

assign zext_ln45_5_fu_312_p1 = datareg_V_5_fu_304_p3;

assign zext_ln45_6_fu_330_p1 = datareg_V_6_fu_322_p3;

assign zext_ln45_7_fu_348_p1 = datareg_V_7_fu_340_p3;

assign zext_ln45_8_fu_366_p1 = datareg_V_8_fu_358_p3;

assign zext_ln45_9_fu_384_p1 = datareg_V_9_fu_376_p3;

assign zext_ln45_fu_222_p1 = datareg_V_fu_214_p3;

assign ap_return_0 = zext_ln45_fu_222_p1;

assign ap_return_1 = zext_ln45_1_fu_240_p1;

assign ap_return_10 = zext_ln45_10_fu_402_p1;

assign ap_return_11 = zext_ln45_11_fu_420_p1;

assign ap_return_12 = zext_ln45_12_fu_438_p1;

assign ap_return_13 = zext_ln45_13_fu_456_p1;

assign ap_return_14 = zext_ln45_14_fu_474_p1;

assign ap_return_15 = zext_ln45_15_fu_492_p1;

assign ap_return_2 = zext_ln45_2_fu_258_p1;

assign ap_return_3 = zext_ln45_3_fu_276_p1;

assign ap_return_4 = zext_ln45_4_fu_294_p1;

assign ap_return_5 = zext_ln45_5_fu_312_p1;

assign ap_return_6 = zext_ln45_6_fu_330_p1;

assign ap_return_7 = zext_ln45_7_fu_348_p1;

assign ap_return_8 = zext_ln45_8_fu_366_p1;

assign ap_return_9 = zext_ln45_9_fu_384_p1;

assign icmp_ln1649_10_fu_388_p2 = (($signed(p_read18) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_11_fu_406_p2 = (($signed(p_read21) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_12_fu_424_p2 = (($signed(p_read22) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_13_fu_442_p2 = (($signed(p_read27) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_14_fu_460_p2 = (($signed(p_read28) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_15_fu_478_p2 = (($signed(p_read29) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_1_fu_226_p2 = (($signed(p_read1) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_2_fu_244_p2 = (($signed(p_read2) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_3_fu_262_p2 = (($signed(p_read5) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_4_fu_280_p2 = (($signed(p_read7) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_5_fu_298_p2 = (($signed(p_read9) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_6_fu_316_p2 = (($signed(p_read10) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_7_fu_334_p2 = (($signed(p_read11) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_8_fu_352_p2 = (($signed(p_read12) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_9_fu_370_p2 = (($signed(p_read13) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_fu_208_p2 = (($signed(p_read) > $signed(19'd0)) ? 1'b1 : 1'b0);

endmodule //der1_sp_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s
