module der_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s (
        ap_ready,
        p_read1,
        p_read2,
        p_read6,
        p_read7,
        p_read8,
        p_read9,
        p_read11,
        p_read12,
        p_read13,
        p_read15,
        p_read16,
        p_read17,
        p_read18,
        p_read19,
        p_read20,
        p_read22,
        p_read24,
        p_read25,
        p_read26,
        p_read28,
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
        ap_return_15,
        ap_return_16,
        ap_return_17,
        ap_return_18,
        ap_return_19
);


output   ap_ready;
input  [14:0] p_read1;
input  [14:0] p_read2;
input  [14:0] p_read6;
input  [14:0] p_read7;
input  [14:0] p_read8;
input  [14:0] p_read9;
input  [14:0] p_read11;
input  [14:0] p_read12;
input  [14:0] p_read13;
input  [14:0] p_read15;
input  [14:0] p_read16;
input  [14:0] p_read17;
input  [14:0] p_read18;
input  [14:0] p_read19;
input  [14:0] p_read20;
input  [14:0] p_read22;
input  [14:0] p_read24;
input  [14:0] p_read25;
input  [14:0] p_read26;
input  [14:0] p_read28;
output  [14:0] ap_return_0;
output  [14:0] ap_return_1;
output  [14:0] ap_return_2;
output  [14:0] ap_return_3;
output  [14:0] ap_return_4;
output  [14:0] ap_return_5;
output  [14:0] ap_return_6;
output  [14:0] ap_return_7;
output  [14:0] ap_return_8;
output  [14:0] ap_return_9;
output  [14:0] ap_return_10;
output  [14:0] ap_return_11;
output  [14:0] ap_return_12;
output  [14:0] ap_return_13;
output  [14:0] ap_return_14;
output  [14:0] ap_return_15;
output  [14:0] ap_return_16;
output  [14:0] ap_return_17;
output  [14:0] ap_return_18;
output  [14:0] ap_return_19;

wire   [0:0] icmp_ln1649_fu_256_p2;
wire   [13:0] trunc_ln40_19_fu_252_p1;
wire   [13:0] datareg_V_fu_262_p3;
wire   [0:0] icmp_ln1649_1_fu_274_p2;
wire   [13:0] trunc_ln40_18_fu_248_p1;
wire   [13:0] datareg_V_1_fu_280_p3;
wire   [0:0] icmp_ln1649_2_fu_292_p2;
wire   [13:0] trunc_ln40_17_fu_244_p1;
wire   [13:0] datareg_V_2_fu_298_p3;
wire   [0:0] icmp_ln1649_3_fu_310_p2;
wire   [13:0] trunc_ln40_16_fu_240_p1;
wire   [13:0] datareg_V_3_fu_316_p3;
wire   [0:0] icmp_ln1649_4_fu_328_p2;
wire   [13:0] trunc_ln40_15_fu_236_p1;
wire   [13:0] datareg_V_4_fu_334_p3;
wire   [0:0] icmp_ln1649_5_fu_346_p2;
wire   [13:0] trunc_ln40_14_fu_232_p1;
wire   [13:0] datareg_V_5_fu_352_p3;
wire   [0:0] icmp_ln1649_6_fu_364_p2;
wire   [13:0] trunc_ln40_13_fu_228_p1;
wire   [13:0] datareg_V_6_fu_370_p3;
wire   [0:0] icmp_ln1649_7_fu_382_p2;
wire   [13:0] trunc_ln40_12_fu_224_p1;
wire   [13:0] datareg_V_7_fu_388_p3;
wire   [0:0] icmp_ln1649_8_fu_400_p2;
wire   [13:0] trunc_ln40_11_fu_220_p1;
wire   [13:0] datareg_V_8_fu_406_p3;
wire   [0:0] icmp_ln1649_9_fu_418_p2;
wire   [13:0] trunc_ln40_10_fu_216_p1;
wire   [13:0] datareg_V_9_fu_424_p3;
wire   [0:0] icmp_ln1649_10_fu_436_p2;
wire   [13:0] trunc_ln40_9_fu_212_p1;
wire   [13:0] datareg_V_10_fu_442_p3;
wire   [0:0] icmp_ln1649_11_fu_454_p2;
wire   [13:0] trunc_ln40_8_fu_208_p1;
wire   [13:0] datareg_V_11_fu_460_p3;
wire   [0:0] icmp_ln1649_12_fu_472_p2;
wire   [13:0] trunc_ln40_7_fu_204_p1;
wire   [13:0] datareg_V_12_fu_478_p3;
wire   [0:0] icmp_ln1649_13_fu_490_p2;
wire   [13:0] trunc_ln40_6_fu_200_p1;
wire   [13:0] datareg_V_13_fu_496_p3;
wire   [0:0] icmp_ln1649_14_fu_508_p2;
wire   [13:0] trunc_ln40_5_fu_196_p1;
wire   [13:0] datareg_V_14_fu_514_p3;
wire   [0:0] icmp_ln1649_15_fu_526_p2;
wire   [13:0] trunc_ln40_4_fu_192_p1;
wire   [13:0] datareg_V_15_fu_532_p3;
wire   [0:0] icmp_ln1649_16_fu_544_p2;
wire   [13:0] trunc_ln40_3_fu_188_p1;
wire   [13:0] datareg_V_16_fu_550_p3;
wire   [0:0] icmp_ln1649_17_fu_562_p2;
wire   [13:0] trunc_ln40_2_fu_184_p1;
wire   [13:0] datareg_V_17_fu_568_p3;
wire   [0:0] icmp_ln1649_18_fu_580_p2;
wire   [13:0] trunc_ln40_1_fu_180_p1;
wire   [13:0] datareg_V_18_fu_586_p3;
wire   [0:0] icmp_ln1649_19_fu_598_p2;
wire   [13:0] trunc_ln40_fu_176_p1;
wire   [13:0] datareg_V_19_fu_604_p3;
wire   [14:0] zext_ln45_fu_270_p1;
wire   [14:0] zext_ln45_1_fu_288_p1;
wire   [14:0] zext_ln45_2_fu_306_p1;
wire   [14:0] zext_ln45_3_fu_324_p1;
wire   [14:0] zext_ln45_4_fu_342_p1;
wire   [14:0] zext_ln45_5_fu_360_p1;
wire   [14:0] zext_ln45_6_fu_378_p1;
wire   [14:0] zext_ln45_7_fu_396_p1;
wire   [14:0] zext_ln45_8_fu_414_p1;
wire   [14:0] zext_ln45_9_fu_432_p1;
wire   [14:0] zext_ln45_10_fu_450_p1;
wire   [14:0] zext_ln45_11_fu_468_p1;
wire   [14:0] zext_ln45_12_fu_486_p1;
wire   [14:0] zext_ln45_13_fu_504_p1;
wire   [14:0] zext_ln45_14_fu_522_p1;
wire   [14:0] zext_ln45_15_fu_540_p1;
wire   [14:0] zext_ln45_16_fu_558_p1;
wire   [14:0] zext_ln45_17_fu_576_p1;
wire   [14:0] zext_ln45_18_fu_594_p1;
wire   [14:0] zext_ln45_19_fu_612_p1;

assign ap_ready = 1'b1;

assign datareg_V_10_fu_442_p3 = ((icmp_ln1649_10_fu_436_p2[0:0] == 1'b1) ? trunc_ln40_9_fu_212_p1 : 14'd0);

assign datareg_V_11_fu_460_p3 = ((icmp_ln1649_11_fu_454_p2[0:0] == 1'b1) ? trunc_ln40_8_fu_208_p1 : 14'd0);

assign datareg_V_12_fu_478_p3 = ((icmp_ln1649_12_fu_472_p2[0:0] == 1'b1) ? trunc_ln40_7_fu_204_p1 : 14'd0);

assign datareg_V_13_fu_496_p3 = ((icmp_ln1649_13_fu_490_p2[0:0] == 1'b1) ? trunc_ln40_6_fu_200_p1 : 14'd0);

assign datareg_V_14_fu_514_p3 = ((icmp_ln1649_14_fu_508_p2[0:0] == 1'b1) ? trunc_ln40_5_fu_196_p1 : 14'd0);

assign datareg_V_15_fu_532_p3 = ((icmp_ln1649_15_fu_526_p2[0:0] == 1'b1) ? trunc_ln40_4_fu_192_p1 : 14'd0);

assign datareg_V_16_fu_550_p3 = ((icmp_ln1649_16_fu_544_p2[0:0] == 1'b1) ? trunc_ln40_3_fu_188_p1 : 14'd0);

assign datareg_V_17_fu_568_p3 = ((icmp_ln1649_17_fu_562_p2[0:0] == 1'b1) ? trunc_ln40_2_fu_184_p1 : 14'd0);

assign datareg_V_18_fu_586_p3 = ((icmp_ln1649_18_fu_580_p2[0:0] == 1'b1) ? trunc_ln40_1_fu_180_p1 : 14'd0);

assign datareg_V_19_fu_604_p3 = ((icmp_ln1649_19_fu_598_p2[0:0] == 1'b1) ? trunc_ln40_fu_176_p1 : 14'd0);

assign datareg_V_1_fu_280_p3 = ((icmp_ln1649_1_fu_274_p2[0:0] == 1'b1) ? trunc_ln40_18_fu_248_p1 : 14'd0);

assign datareg_V_2_fu_298_p3 = ((icmp_ln1649_2_fu_292_p2[0:0] == 1'b1) ? trunc_ln40_17_fu_244_p1 : 14'd0);

assign datareg_V_3_fu_316_p3 = ((icmp_ln1649_3_fu_310_p2[0:0] == 1'b1) ? trunc_ln40_16_fu_240_p1 : 14'd0);

assign datareg_V_4_fu_334_p3 = ((icmp_ln1649_4_fu_328_p2[0:0] == 1'b1) ? trunc_ln40_15_fu_236_p1 : 14'd0);

assign datareg_V_5_fu_352_p3 = ((icmp_ln1649_5_fu_346_p2[0:0] == 1'b1) ? trunc_ln40_14_fu_232_p1 : 14'd0);

assign datareg_V_6_fu_370_p3 = ((icmp_ln1649_6_fu_364_p2[0:0] == 1'b1) ? trunc_ln40_13_fu_228_p1 : 14'd0);

assign datareg_V_7_fu_388_p3 = ((icmp_ln1649_7_fu_382_p2[0:0] == 1'b1) ? trunc_ln40_12_fu_224_p1 : 14'd0);

assign datareg_V_8_fu_406_p3 = ((icmp_ln1649_8_fu_400_p2[0:0] == 1'b1) ? trunc_ln40_11_fu_220_p1 : 14'd0);

assign datareg_V_9_fu_424_p3 = ((icmp_ln1649_9_fu_418_p2[0:0] == 1'b1) ? trunc_ln40_10_fu_216_p1 : 14'd0);

assign datareg_V_fu_262_p3 = ((icmp_ln1649_fu_256_p2[0:0] == 1'b1) ? trunc_ln40_19_fu_252_p1 : 14'd0);

assign trunc_ln40_10_fu_216_p1 = p_read15[13:0];

assign trunc_ln40_11_fu_220_p1 = p_read13[13:0];

assign trunc_ln40_12_fu_224_p1 = p_read12[13:0];

assign trunc_ln40_13_fu_228_p1 = p_read11[13:0];

assign trunc_ln40_14_fu_232_p1 = p_read9[13:0];

assign trunc_ln40_15_fu_236_p1 = p_read8[13:0];

assign trunc_ln40_16_fu_240_p1 = p_read7[13:0];

assign trunc_ln40_17_fu_244_p1 = p_read6[13:0];

assign trunc_ln40_18_fu_248_p1 = p_read2[13:0];

assign trunc_ln40_19_fu_252_p1 = p_read1[13:0];

assign trunc_ln40_1_fu_180_p1 = p_read26[13:0];

assign trunc_ln40_2_fu_184_p1 = p_read25[13:0];

assign trunc_ln40_3_fu_188_p1 = p_read24[13:0];

assign trunc_ln40_4_fu_192_p1 = p_read22[13:0];

assign trunc_ln40_5_fu_196_p1 = p_read20[13:0];

assign trunc_ln40_6_fu_200_p1 = p_read19[13:0];

assign trunc_ln40_7_fu_204_p1 = p_read18[13:0];

assign trunc_ln40_8_fu_208_p1 = p_read17[13:0];

assign trunc_ln40_9_fu_212_p1 = p_read16[13:0];

assign trunc_ln40_fu_176_p1 = p_read28[13:0];

assign zext_ln45_10_fu_450_p1 = datareg_V_10_fu_442_p3;

assign zext_ln45_11_fu_468_p1 = datareg_V_11_fu_460_p3;

assign zext_ln45_12_fu_486_p1 = datareg_V_12_fu_478_p3;

assign zext_ln45_13_fu_504_p1 = datareg_V_13_fu_496_p3;

assign zext_ln45_14_fu_522_p1 = datareg_V_14_fu_514_p3;

assign zext_ln45_15_fu_540_p1 = datareg_V_15_fu_532_p3;

assign zext_ln45_16_fu_558_p1 = datareg_V_16_fu_550_p3;

assign zext_ln45_17_fu_576_p1 = datareg_V_17_fu_568_p3;

assign zext_ln45_18_fu_594_p1 = datareg_V_18_fu_586_p3;

assign zext_ln45_19_fu_612_p1 = datareg_V_19_fu_604_p3;

assign zext_ln45_1_fu_288_p1 = datareg_V_1_fu_280_p3;

assign zext_ln45_2_fu_306_p1 = datareg_V_2_fu_298_p3;

assign zext_ln45_3_fu_324_p1 = datareg_V_3_fu_316_p3;

assign zext_ln45_4_fu_342_p1 = datareg_V_4_fu_334_p3;

assign zext_ln45_5_fu_360_p1 = datareg_V_5_fu_352_p3;

assign zext_ln45_6_fu_378_p1 = datareg_V_6_fu_370_p3;

assign zext_ln45_7_fu_396_p1 = datareg_V_7_fu_388_p3;

assign zext_ln45_8_fu_414_p1 = datareg_V_8_fu_406_p3;

assign zext_ln45_9_fu_432_p1 = datareg_V_9_fu_424_p3;

assign zext_ln45_fu_270_p1 = datareg_V_fu_262_p3;

assign ap_return_0 = zext_ln45_fu_270_p1;

assign ap_return_1 = zext_ln45_1_fu_288_p1;

assign ap_return_10 = zext_ln45_10_fu_450_p1;

assign ap_return_11 = zext_ln45_11_fu_468_p1;

assign ap_return_12 = zext_ln45_12_fu_486_p1;

assign ap_return_13 = zext_ln45_13_fu_504_p1;

assign ap_return_14 = zext_ln45_14_fu_522_p1;

assign ap_return_15 = zext_ln45_15_fu_540_p1;

assign ap_return_16 = zext_ln45_16_fu_558_p1;

assign ap_return_17 = zext_ln45_17_fu_576_p1;

assign ap_return_18 = zext_ln45_18_fu_594_p1;

assign ap_return_19 = zext_ln45_19_fu_612_p1;

assign ap_return_2 = zext_ln45_2_fu_306_p1;

assign ap_return_3 = zext_ln45_3_fu_324_p1;

assign ap_return_4 = zext_ln45_4_fu_342_p1;

assign ap_return_5 = zext_ln45_5_fu_360_p1;

assign ap_return_6 = zext_ln45_6_fu_378_p1;

assign ap_return_7 = zext_ln45_7_fu_396_p1;

assign ap_return_8 = zext_ln45_8_fu_414_p1;

assign ap_return_9 = zext_ln45_9_fu_432_p1;

assign icmp_ln1649_10_fu_436_p2 = (($signed(p_read16) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_11_fu_454_p2 = (($signed(p_read17) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_12_fu_472_p2 = (($signed(p_read18) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_13_fu_490_p2 = (($signed(p_read19) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_14_fu_508_p2 = (($signed(p_read20) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_15_fu_526_p2 = (($signed(p_read22) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_16_fu_544_p2 = (($signed(p_read24) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_17_fu_562_p2 = (($signed(p_read25) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_18_fu_580_p2 = (($signed(p_read26) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_19_fu_598_p2 = (($signed(p_read28) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_1_fu_274_p2 = (($signed(p_read2) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_2_fu_292_p2 = (($signed(p_read6) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_3_fu_310_p2 = (($signed(p_read7) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_4_fu_328_p2 = (($signed(p_read8) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_5_fu_346_p2 = (($signed(p_read9) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_6_fu_364_p2 = (($signed(p_read11) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_7_fu_382_p2 = (($signed(p_read12) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_8_fu_400_p2 = (($signed(p_read13) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_9_fu_418_p2 = (($signed(p_read15) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_fu_256_p2 = (($signed(p_read1) > $signed(15'd0)) ? 1'b1 : 1'b0);

endmodule //der_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s
