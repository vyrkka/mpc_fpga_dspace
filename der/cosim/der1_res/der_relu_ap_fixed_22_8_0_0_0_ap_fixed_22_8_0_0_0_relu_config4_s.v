module der_relu_ap_fixed_22_8_0_0_0_ap_fixed_22_8_0_0_0_relu_config4_s (
        ap_ready,
        p_read,
        p_read1,
        p_read2,
        p_read3,
        p_read5,
        p_read7,
        p_read8,
        p_read9,
        p_read11,
        p_read12,
        p_read16,
        p_read17,
        p_read20,
        p_read21,
        p_read22,
        p_read23,
        p_read24,
        p_read25,
        p_read27,
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
        ap_return_15,
        ap_return_16,
        ap_return_17,
        ap_return_18,
        ap_return_19
);


output   ap_ready;
input  [21:0] p_read;
input  [21:0] p_read1;
input  [21:0] p_read2;
input  [21:0] p_read3;
input  [21:0] p_read5;
input  [21:0] p_read7;
input  [21:0] p_read8;
input  [21:0] p_read9;
input  [21:0] p_read11;
input  [21:0] p_read12;
input  [21:0] p_read16;
input  [21:0] p_read17;
input  [21:0] p_read20;
input  [21:0] p_read21;
input  [21:0] p_read22;
input  [21:0] p_read23;
input  [21:0] p_read24;
input  [21:0] p_read25;
input  [21:0] p_read27;
input  [21:0] p_read29;
output  [21:0] ap_return_0;
output  [21:0] ap_return_1;
output  [21:0] ap_return_2;
output  [21:0] ap_return_3;
output  [21:0] ap_return_4;
output  [21:0] ap_return_5;
output  [21:0] ap_return_6;
output  [21:0] ap_return_7;
output  [21:0] ap_return_8;
output  [21:0] ap_return_9;
output  [21:0] ap_return_10;
output  [21:0] ap_return_11;
output  [21:0] ap_return_12;
output  [21:0] ap_return_13;
output  [21:0] ap_return_14;
output  [21:0] ap_return_15;
output  [21:0] ap_return_16;
output  [21:0] ap_return_17;
output  [21:0] ap_return_18;
output  [21:0] ap_return_19;

wire   [0:0] icmp_ln1649_fu_256_p2;
wire   [20:0] trunc_ln40_34_fu_252_p1;
wire   [20:0] datareg_V_fu_262_p3;
wire   [0:0] icmp_ln1649_16_fu_274_p2;
wire   [20:0] trunc_ln40_33_fu_248_p1;
wire   [20:0] datareg_V_16_fu_280_p3;
wire   [0:0] icmp_ln1649_17_fu_292_p2;
wire   [20:0] trunc_ln40_32_fu_244_p1;
wire   [20:0] datareg_V_17_fu_298_p3;
wire   [0:0] icmp_ln1649_18_fu_310_p2;
wire   [20:0] trunc_ln40_31_fu_240_p1;
wire   [20:0] datareg_V_18_fu_316_p3;
wire   [0:0] icmp_ln1649_19_fu_328_p2;
wire   [20:0] trunc_ln40_30_fu_236_p1;
wire   [20:0] datareg_V_19_fu_334_p3;
wire   [0:0] icmp_ln1649_20_fu_346_p2;
wire   [20:0] trunc_ln40_29_fu_232_p1;
wire   [20:0] datareg_V_20_fu_352_p3;
wire   [0:0] icmp_ln1649_21_fu_364_p2;
wire   [20:0] trunc_ln40_28_fu_228_p1;
wire   [20:0] datareg_V_21_fu_370_p3;
wire   [0:0] icmp_ln1649_22_fu_382_p2;
wire   [20:0] trunc_ln40_27_fu_224_p1;
wire   [20:0] datareg_V_22_fu_388_p3;
wire   [0:0] icmp_ln1649_23_fu_400_p2;
wire   [20:0] trunc_ln40_26_fu_220_p1;
wire   [20:0] datareg_V_23_fu_406_p3;
wire   [0:0] icmp_ln1649_24_fu_418_p2;
wire   [20:0] trunc_ln40_25_fu_216_p1;
wire   [20:0] datareg_V_24_fu_424_p3;
wire   [0:0] icmp_ln1649_25_fu_436_p2;
wire   [20:0] trunc_ln40_24_fu_212_p1;
wire   [20:0] datareg_V_25_fu_442_p3;
wire   [0:0] icmp_ln1649_26_fu_454_p2;
wire   [20:0] trunc_ln40_23_fu_208_p1;
wire   [20:0] datareg_V_26_fu_460_p3;
wire   [0:0] icmp_ln1649_27_fu_472_p2;
wire   [20:0] trunc_ln40_22_fu_204_p1;
wire   [20:0] datareg_V_27_fu_478_p3;
wire   [0:0] icmp_ln1649_28_fu_490_p2;
wire   [20:0] trunc_ln40_21_fu_200_p1;
wire   [20:0] datareg_V_28_fu_496_p3;
wire   [0:0] icmp_ln1649_29_fu_508_p2;
wire   [20:0] trunc_ln40_20_fu_196_p1;
wire   [20:0] datareg_V_29_fu_514_p3;
wire   [0:0] icmp_ln1649_30_fu_526_p2;
wire   [20:0] trunc_ln40_19_fu_192_p1;
wire   [20:0] datareg_V_30_fu_532_p3;
wire   [0:0] icmp_ln1649_31_fu_544_p2;
wire   [20:0] trunc_ln40_18_fu_188_p1;
wire   [20:0] datareg_V_31_fu_550_p3;
wire   [0:0] icmp_ln1649_32_fu_562_p2;
wire   [20:0] trunc_ln40_17_fu_184_p1;
wire   [20:0] datareg_V_32_fu_568_p3;
wire   [0:0] icmp_ln1649_33_fu_580_p2;
wire   [20:0] trunc_ln40_16_fu_180_p1;
wire   [20:0] datareg_V_33_fu_586_p3;
wire   [0:0] icmp_ln1649_34_fu_598_p2;
wire   [20:0] trunc_ln40_fu_176_p1;
wire   [20:0] datareg_V_34_fu_604_p3;
wire   [21:0] zext_ln45_fu_270_p1;
wire   [21:0] zext_ln45_16_fu_288_p1;
wire   [21:0] zext_ln45_17_fu_306_p1;
wire   [21:0] zext_ln45_18_fu_324_p1;
wire   [21:0] zext_ln45_19_fu_342_p1;
wire   [21:0] zext_ln45_20_fu_360_p1;
wire   [21:0] zext_ln45_21_fu_378_p1;
wire   [21:0] zext_ln45_22_fu_396_p1;
wire   [21:0] zext_ln45_23_fu_414_p1;
wire   [21:0] zext_ln45_24_fu_432_p1;
wire   [21:0] zext_ln45_25_fu_450_p1;
wire   [21:0] zext_ln45_26_fu_468_p1;
wire   [21:0] zext_ln45_27_fu_486_p1;
wire   [21:0] zext_ln45_28_fu_504_p1;
wire   [21:0] zext_ln45_29_fu_522_p1;
wire   [21:0] zext_ln45_30_fu_540_p1;
wire   [21:0] zext_ln45_31_fu_558_p1;
wire   [21:0] zext_ln45_32_fu_576_p1;
wire   [21:0] zext_ln45_33_fu_594_p1;
wire   [21:0] zext_ln45_34_fu_612_p1;

assign ap_ready = 1'b1;

assign datareg_V_16_fu_280_p3 = ((icmp_ln1649_16_fu_274_p2[0:0] == 1'b1) ? trunc_ln40_33_fu_248_p1 : 21'd0);

assign datareg_V_17_fu_298_p3 = ((icmp_ln1649_17_fu_292_p2[0:0] == 1'b1) ? trunc_ln40_32_fu_244_p1 : 21'd0);

assign datareg_V_18_fu_316_p3 = ((icmp_ln1649_18_fu_310_p2[0:0] == 1'b1) ? trunc_ln40_31_fu_240_p1 : 21'd0);

assign datareg_V_19_fu_334_p3 = ((icmp_ln1649_19_fu_328_p2[0:0] == 1'b1) ? trunc_ln40_30_fu_236_p1 : 21'd0);

assign datareg_V_20_fu_352_p3 = ((icmp_ln1649_20_fu_346_p2[0:0] == 1'b1) ? trunc_ln40_29_fu_232_p1 : 21'd0);

assign datareg_V_21_fu_370_p3 = ((icmp_ln1649_21_fu_364_p2[0:0] == 1'b1) ? trunc_ln40_28_fu_228_p1 : 21'd0);

assign datareg_V_22_fu_388_p3 = ((icmp_ln1649_22_fu_382_p2[0:0] == 1'b1) ? trunc_ln40_27_fu_224_p1 : 21'd0);

assign datareg_V_23_fu_406_p3 = ((icmp_ln1649_23_fu_400_p2[0:0] == 1'b1) ? trunc_ln40_26_fu_220_p1 : 21'd0);

assign datareg_V_24_fu_424_p3 = ((icmp_ln1649_24_fu_418_p2[0:0] == 1'b1) ? trunc_ln40_25_fu_216_p1 : 21'd0);

assign datareg_V_25_fu_442_p3 = ((icmp_ln1649_25_fu_436_p2[0:0] == 1'b1) ? trunc_ln40_24_fu_212_p1 : 21'd0);

assign datareg_V_26_fu_460_p3 = ((icmp_ln1649_26_fu_454_p2[0:0] == 1'b1) ? trunc_ln40_23_fu_208_p1 : 21'd0);

assign datareg_V_27_fu_478_p3 = ((icmp_ln1649_27_fu_472_p2[0:0] == 1'b1) ? trunc_ln40_22_fu_204_p1 : 21'd0);

assign datareg_V_28_fu_496_p3 = ((icmp_ln1649_28_fu_490_p2[0:0] == 1'b1) ? trunc_ln40_21_fu_200_p1 : 21'd0);

assign datareg_V_29_fu_514_p3 = ((icmp_ln1649_29_fu_508_p2[0:0] == 1'b1) ? trunc_ln40_20_fu_196_p1 : 21'd0);

assign datareg_V_30_fu_532_p3 = ((icmp_ln1649_30_fu_526_p2[0:0] == 1'b1) ? trunc_ln40_19_fu_192_p1 : 21'd0);

assign datareg_V_31_fu_550_p3 = ((icmp_ln1649_31_fu_544_p2[0:0] == 1'b1) ? trunc_ln40_18_fu_188_p1 : 21'd0);

assign datareg_V_32_fu_568_p3 = ((icmp_ln1649_32_fu_562_p2[0:0] == 1'b1) ? trunc_ln40_17_fu_184_p1 : 21'd0);

assign datareg_V_33_fu_586_p3 = ((icmp_ln1649_33_fu_580_p2[0:0] == 1'b1) ? trunc_ln40_16_fu_180_p1 : 21'd0);

assign datareg_V_34_fu_604_p3 = ((icmp_ln1649_34_fu_598_p2[0:0] == 1'b1) ? trunc_ln40_fu_176_p1 : 21'd0);

assign datareg_V_fu_262_p3 = ((icmp_ln1649_fu_256_p2[0:0] == 1'b1) ? trunc_ln40_34_fu_252_p1 : 21'd0);

assign trunc_ln40_16_fu_180_p1 = p_read27[20:0];

assign trunc_ln40_17_fu_184_p1 = p_read25[20:0];

assign trunc_ln40_18_fu_188_p1 = p_read24[20:0];

assign trunc_ln40_19_fu_192_p1 = p_read23[20:0];

assign trunc_ln40_20_fu_196_p1 = p_read22[20:0];

assign trunc_ln40_21_fu_200_p1 = p_read21[20:0];

assign trunc_ln40_22_fu_204_p1 = p_read20[20:0];

assign trunc_ln40_23_fu_208_p1 = p_read17[20:0];

assign trunc_ln40_24_fu_212_p1 = p_read16[20:0];

assign trunc_ln40_25_fu_216_p1 = p_read12[20:0];

assign trunc_ln40_26_fu_220_p1 = p_read11[20:0];

assign trunc_ln40_27_fu_224_p1 = p_read9[20:0];

assign trunc_ln40_28_fu_228_p1 = p_read8[20:0];

assign trunc_ln40_29_fu_232_p1 = p_read7[20:0];

assign trunc_ln40_30_fu_236_p1 = p_read5[20:0];

assign trunc_ln40_31_fu_240_p1 = p_read3[20:0];

assign trunc_ln40_32_fu_244_p1 = p_read2[20:0];

assign trunc_ln40_33_fu_248_p1 = p_read1[20:0];

assign trunc_ln40_34_fu_252_p1 = p_read[20:0];

assign trunc_ln40_fu_176_p1 = p_read29[20:0];

assign zext_ln45_16_fu_288_p1 = datareg_V_16_fu_280_p3;

assign zext_ln45_17_fu_306_p1 = datareg_V_17_fu_298_p3;

assign zext_ln45_18_fu_324_p1 = datareg_V_18_fu_316_p3;

assign zext_ln45_19_fu_342_p1 = datareg_V_19_fu_334_p3;

assign zext_ln45_20_fu_360_p1 = datareg_V_20_fu_352_p3;

assign zext_ln45_21_fu_378_p1 = datareg_V_21_fu_370_p3;

assign zext_ln45_22_fu_396_p1 = datareg_V_22_fu_388_p3;

assign zext_ln45_23_fu_414_p1 = datareg_V_23_fu_406_p3;

assign zext_ln45_24_fu_432_p1 = datareg_V_24_fu_424_p3;

assign zext_ln45_25_fu_450_p1 = datareg_V_25_fu_442_p3;

assign zext_ln45_26_fu_468_p1 = datareg_V_26_fu_460_p3;

assign zext_ln45_27_fu_486_p1 = datareg_V_27_fu_478_p3;

assign zext_ln45_28_fu_504_p1 = datareg_V_28_fu_496_p3;

assign zext_ln45_29_fu_522_p1 = datareg_V_29_fu_514_p3;

assign zext_ln45_30_fu_540_p1 = datareg_V_30_fu_532_p3;

assign zext_ln45_31_fu_558_p1 = datareg_V_31_fu_550_p3;

assign zext_ln45_32_fu_576_p1 = datareg_V_32_fu_568_p3;

assign zext_ln45_33_fu_594_p1 = datareg_V_33_fu_586_p3;

assign zext_ln45_34_fu_612_p1 = datareg_V_34_fu_604_p3;

assign zext_ln45_fu_270_p1 = datareg_V_fu_262_p3;

assign ap_return_0 = zext_ln45_fu_270_p1;

assign ap_return_1 = zext_ln45_16_fu_288_p1;

assign ap_return_10 = zext_ln45_25_fu_450_p1;

assign ap_return_11 = zext_ln45_26_fu_468_p1;

assign ap_return_12 = zext_ln45_27_fu_486_p1;

assign ap_return_13 = zext_ln45_28_fu_504_p1;

assign ap_return_14 = zext_ln45_29_fu_522_p1;

assign ap_return_15 = zext_ln45_30_fu_540_p1;

assign ap_return_16 = zext_ln45_31_fu_558_p1;

assign ap_return_17 = zext_ln45_32_fu_576_p1;

assign ap_return_18 = zext_ln45_33_fu_594_p1;

assign ap_return_19 = zext_ln45_34_fu_612_p1;

assign ap_return_2 = zext_ln45_17_fu_306_p1;

assign ap_return_3 = zext_ln45_18_fu_324_p1;

assign ap_return_4 = zext_ln45_19_fu_342_p1;

assign ap_return_5 = zext_ln45_20_fu_360_p1;

assign ap_return_6 = zext_ln45_21_fu_378_p1;

assign ap_return_7 = zext_ln45_22_fu_396_p1;

assign ap_return_8 = zext_ln45_23_fu_414_p1;

assign ap_return_9 = zext_ln45_24_fu_432_p1;

assign icmp_ln1649_16_fu_274_p2 = (($signed(p_read1) > $signed(22'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_17_fu_292_p2 = (($signed(p_read2) > $signed(22'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_18_fu_310_p2 = (($signed(p_read3) > $signed(22'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_19_fu_328_p2 = (($signed(p_read5) > $signed(22'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_20_fu_346_p2 = (($signed(p_read7) > $signed(22'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_21_fu_364_p2 = (($signed(p_read8) > $signed(22'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_22_fu_382_p2 = (($signed(p_read9) > $signed(22'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_23_fu_400_p2 = (($signed(p_read11) > $signed(22'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_24_fu_418_p2 = (($signed(p_read12) > $signed(22'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_25_fu_436_p2 = (($signed(p_read16) > $signed(22'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_26_fu_454_p2 = (($signed(p_read17) > $signed(22'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_27_fu_472_p2 = (($signed(p_read20) > $signed(22'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_28_fu_490_p2 = (($signed(p_read21) > $signed(22'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_29_fu_508_p2 = (($signed(p_read22) > $signed(22'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_30_fu_526_p2 = (($signed(p_read23) > $signed(22'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_31_fu_544_p2 = (($signed(p_read24) > $signed(22'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_32_fu_562_p2 = (($signed(p_read25) > $signed(22'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_33_fu_580_p2 = (($signed(p_read27) > $signed(22'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_34_fu_598_p2 = (($signed(p_read29) > $signed(22'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_fu_256_p2 = (($signed(p_read) > $signed(22'd0)) ? 1'b1 : 1'b0);

endmodule //der_relu_ap_fixed_22_8_0_0_0_ap_fixed_22_8_0_0_0_relu_config4_s
