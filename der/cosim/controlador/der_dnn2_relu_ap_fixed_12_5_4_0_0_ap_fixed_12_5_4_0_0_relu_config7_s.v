module der_dnn2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s (
        ap_ready,
        p_read,
        p_read1,
        p_read5,
        p_read6,
        p_read7,
        p_read10,
        p_read12,
        p_read14,
        p_read15,
        p_read17,
        p_read20,
        p_read21,
        p_read22,
        p_read24,
        p_read25,
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
        ap_return_15,
        ap_return_16,
        ap_return_17
);


output   ap_ready;
input  [11:0] p_read;
input  [11:0] p_read1;
input  [11:0] p_read5;
input  [11:0] p_read6;
input  [11:0] p_read7;
input  [11:0] p_read10;
input  [11:0] p_read12;
input  [11:0] p_read14;
input  [11:0] p_read15;
input  [11:0] p_read17;
input  [11:0] p_read20;
input  [11:0] p_read21;
input  [11:0] p_read22;
input  [11:0] p_read24;
input  [11:0] p_read25;
input  [11:0] p_read27;
input  [11:0] p_read28;
input  [11:0] p_read29;
output  [11:0] ap_return_0;
output  [11:0] ap_return_1;
output  [11:0] ap_return_2;
output  [11:0] ap_return_3;
output  [11:0] ap_return_4;
output  [11:0] ap_return_5;
output  [11:0] ap_return_6;
output  [11:0] ap_return_7;
output  [11:0] ap_return_8;
output  [11:0] ap_return_9;
output  [11:0] ap_return_10;
output  [11:0] ap_return_11;
output  [11:0] ap_return_12;
output  [11:0] ap_return_13;
output  [11:0] ap_return_14;
output  [11:0] ap_return_15;
output  [11:0] ap_return_16;
output  [11:0] ap_return_17;

wire   [0:0] icmp_ln1649_fu_232_p2;
wire   [10:0] trunc_ln40_17_fu_228_p1;
wire   [10:0] datareg_V_fu_238_p3;
wire   [0:0] icmp_ln1649_1_fu_250_p2;
wire   [10:0] trunc_ln40_16_fu_224_p1;
wire   [10:0] datareg_V_1_fu_256_p3;
wire   [0:0] icmp_ln1649_2_fu_268_p2;
wire   [10:0] trunc_ln40_15_fu_220_p1;
wire   [10:0] datareg_V_2_fu_274_p3;
wire   [0:0] icmp_ln1649_3_fu_286_p2;
wire   [10:0] trunc_ln40_14_fu_216_p1;
wire   [10:0] datareg_V_3_fu_292_p3;
wire   [0:0] icmp_ln1649_4_fu_304_p2;
wire   [10:0] trunc_ln40_13_fu_212_p1;
wire   [10:0] datareg_V_4_fu_310_p3;
wire   [0:0] icmp_ln1649_5_fu_322_p2;
wire   [10:0] trunc_ln40_12_fu_208_p1;
wire   [10:0] datareg_V_5_fu_328_p3;
wire   [0:0] icmp_ln1649_6_fu_340_p2;
wire   [10:0] trunc_ln40_11_fu_204_p1;
wire   [10:0] datareg_V_6_fu_346_p3;
wire   [0:0] icmp_ln1649_7_fu_358_p2;
wire   [10:0] trunc_ln40_10_fu_200_p1;
wire   [10:0] datareg_V_7_fu_364_p3;
wire   [0:0] icmp_ln1649_8_fu_376_p2;
wire   [10:0] trunc_ln40_9_fu_196_p1;
wire   [10:0] datareg_V_8_fu_382_p3;
wire   [0:0] icmp_ln1649_9_fu_394_p2;
wire   [10:0] trunc_ln40_8_fu_192_p1;
wire   [10:0] datareg_V_9_fu_400_p3;
wire   [0:0] icmp_ln1649_10_fu_412_p2;
wire   [10:0] trunc_ln40_7_fu_188_p1;
wire   [10:0] datareg_V_10_fu_418_p3;
wire   [0:0] icmp_ln1649_11_fu_430_p2;
wire   [10:0] trunc_ln40_6_fu_184_p1;
wire   [10:0] datareg_V_11_fu_436_p3;
wire   [0:0] icmp_ln1649_12_fu_448_p2;
wire   [10:0] trunc_ln40_5_fu_180_p1;
wire   [10:0] datareg_V_12_fu_454_p3;
wire   [0:0] icmp_ln1649_13_fu_466_p2;
wire   [10:0] trunc_ln40_4_fu_176_p1;
wire   [10:0] datareg_V_13_fu_472_p3;
wire   [0:0] icmp_ln1649_14_fu_484_p2;
wire   [10:0] trunc_ln40_3_fu_172_p1;
wire   [10:0] datareg_V_14_fu_490_p3;
wire   [0:0] icmp_ln1649_15_fu_502_p2;
wire   [10:0] trunc_ln40_2_fu_168_p1;
wire   [10:0] datareg_V_15_fu_508_p3;
wire   [0:0] icmp_ln1649_16_fu_520_p2;
wire   [10:0] trunc_ln40_1_fu_164_p1;
wire   [10:0] datareg_V_16_fu_526_p3;
wire   [0:0] icmp_ln1649_17_fu_538_p2;
wire   [10:0] trunc_ln40_fu_160_p1;
wire   [10:0] datareg_V_17_fu_544_p3;
wire   [11:0] zext_ln45_fu_246_p1;
wire   [11:0] zext_ln45_1_fu_264_p1;
wire   [11:0] zext_ln45_2_fu_282_p1;
wire   [11:0] zext_ln45_3_fu_300_p1;
wire   [11:0] zext_ln45_4_fu_318_p1;
wire   [11:0] zext_ln45_5_fu_336_p1;
wire   [11:0] zext_ln45_6_fu_354_p1;
wire   [11:0] zext_ln45_7_fu_372_p1;
wire   [11:0] zext_ln45_8_fu_390_p1;
wire   [11:0] zext_ln45_9_fu_408_p1;
wire   [11:0] zext_ln45_10_fu_426_p1;
wire   [11:0] zext_ln45_11_fu_444_p1;
wire   [11:0] zext_ln45_12_fu_462_p1;
wire   [11:0] zext_ln45_13_fu_480_p1;
wire   [11:0] zext_ln45_14_fu_498_p1;
wire   [11:0] zext_ln45_15_fu_516_p1;
wire   [11:0] zext_ln45_16_fu_534_p1;
wire   [11:0] zext_ln45_17_fu_552_p1;

assign ap_ready = 1'b1;

assign datareg_V_10_fu_418_p3 = ((icmp_ln1649_10_fu_412_p2[0:0] == 1'b1) ? trunc_ln40_7_fu_188_p1 : 11'd0);

assign datareg_V_11_fu_436_p3 = ((icmp_ln1649_11_fu_430_p2[0:0] == 1'b1) ? trunc_ln40_6_fu_184_p1 : 11'd0);

assign datareg_V_12_fu_454_p3 = ((icmp_ln1649_12_fu_448_p2[0:0] == 1'b1) ? trunc_ln40_5_fu_180_p1 : 11'd0);

assign datareg_V_13_fu_472_p3 = ((icmp_ln1649_13_fu_466_p2[0:0] == 1'b1) ? trunc_ln40_4_fu_176_p1 : 11'd0);

assign datareg_V_14_fu_490_p3 = ((icmp_ln1649_14_fu_484_p2[0:0] == 1'b1) ? trunc_ln40_3_fu_172_p1 : 11'd0);

assign datareg_V_15_fu_508_p3 = ((icmp_ln1649_15_fu_502_p2[0:0] == 1'b1) ? trunc_ln40_2_fu_168_p1 : 11'd0);

assign datareg_V_16_fu_526_p3 = ((icmp_ln1649_16_fu_520_p2[0:0] == 1'b1) ? trunc_ln40_1_fu_164_p1 : 11'd0);

assign datareg_V_17_fu_544_p3 = ((icmp_ln1649_17_fu_538_p2[0:0] == 1'b1) ? trunc_ln40_fu_160_p1 : 11'd0);

assign datareg_V_1_fu_256_p3 = ((icmp_ln1649_1_fu_250_p2[0:0] == 1'b1) ? trunc_ln40_16_fu_224_p1 : 11'd0);

assign datareg_V_2_fu_274_p3 = ((icmp_ln1649_2_fu_268_p2[0:0] == 1'b1) ? trunc_ln40_15_fu_220_p1 : 11'd0);

assign datareg_V_3_fu_292_p3 = ((icmp_ln1649_3_fu_286_p2[0:0] == 1'b1) ? trunc_ln40_14_fu_216_p1 : 11'd0);

assign datareg_V_4_fu_310_p3 = ((icmp_ln1649_4_fu_304_p2[0:0] == 1'b1) ? trunc_ln40_13_fu_212_p1 : 11'd0);

assign datareg_V_5_fu_328_p3 = ((icmp_ln1649_5_fu_322_p2[0:0] == 1'b1) ? trunc_ln40_12_fu_208_p1 : 11'd0);

assign datareg_V_6_fu_346_p3 = ((icmp_ln1649_6_fu_340_p2[0:0] == 1'b1) ? trunc_ln40_11_fu_204_p1 : 11'd0);

assign datareg_V_7_fu_364_p3 = ((icmp_ln1649_7_fu_358_p2[0:0] == 1'b1) ? trunc_ln40_10_fu_200_p1 : 11'd0);

assign datareg_V_8_fu_382_p3 = ((icmp_ln1649_8_fu_376_p2[0:0] == 1'b1) ? trunc_ln40_9_fu_196_p1 : 11'd0);

assign datareg_V_9_fu_400_p3 = ((icmp_ln1649_9_fu_394_p2[0:0] == 1'b1) ? trunc_ln40_8_fu_192_p1 : 11'd0);

assign datareg_V_fu_238_p3 = ((icmp_ln1649_fu_232_p2[0:0] == 1'b1) ? trunc_ln40_17_fu_228_p1 : 11'd0);

assign trunc_ln40_10_fu_200_p1 = p_read14[10:0];

assign trunc_ln40_11_fu_204_p1 = p_read12[10:0];

assign trunc_ln40_12_fu_208_p1 = p_read10[10:0];

assign trunc_ln40_13_fu_212_p1 = p_read7[10:0];

assign trunc_ln40_14_fu_216_p1 = p_read6[10:0];

assign trunc_ln40_15_fu_220_p1 = p_read5[10:0];

assign trunc_ln40_16_fu_224_p1 = p_read1[10:0];

assign trunc_ln40_17_fu_228_p1 = p_read[10:0];

assign trunc_ln40_1_fu_164_p1 = p_read28[10:0];

assign trunc_ln40_2_fu_168_p1 = p_read27[10:0];

assign trunc_ln40_3_fu_172_p1 = p_read25[10:0];

assign trunc_ln40_4_fu_176_p1 = p_read24[10:0];

assign trunc_ln40_5_fu_180_p1 = p_read22[10:0];

assign trunc_ln40_6_fu_184_p1 = p_read21[10:0];

assign trunc_ln40_7_fu_188_p1 = p_read20[10:0];

assign trunc_ln40_8_fu_192_p1 = p_read17[10:0];

assign trunc_ln40_9_fu_196_p1 = p_read15[10:0];

assign trunc_ln40_fu_160_p1 = p_read29[10:0];

assign zext_ln45_10_fu_426_p1 = datareg_V_10_fu_418_p3;

assign zext_ln45_11_fu_444_p1 = datareg_V_11_fu_436_p3;

assign zext_ln45_12_fu_462_p1 = datareg_V_12_fu_454_p3;

assign zext_ln45_13_fu_480_p1 = datareg_V_13_fu_472_p3;

assign zext_ln45_14_fu_498_p1 = datareg_V_14_fu_490_p3;

assign zext_ln45_15_fu_516_p1 = datareg_V_15_fu_508_p3;

assign zext_ln45_16_fu_534_p1 = datareg_V_16_fu_526_p3;

assign zext_ln45_17_fu_552_p1 = datareg_V_17_fu_544_p3;

assign zext_ln45_1_fu_264_p1 = datareg_V_1_fu_256_p3;

assign zext_ln45_2_fu_282_p1 = datareg_V_2_fu_274_p3;

assign zext_ln45_3_fu_300_p1 = datareg_V_3_fu_292_p3;

assign zext_ln45_4_fu_318_p1 = datareg_V_4_fu_310_p3;

assign zext_ln45_5_fu_336_p1 = datareg_V_5_fu_328_p3;

assign zext_ln45_6_fu_354_p1 = datareg_V_6_fu_346_p3;

assign zext_ln45_7_fu_372_p1 = datareg_V_7_fu_364_p3;

assign zext_ln45_8_fu_390_p1 = datareg_V_8_fu_382_p3;

assign zext_ln45_9_fu_408_p1 = datareg_V_9_fu_400_p3;

assign zext_ln45_fu_246_p1 = datareg_V_fu_238_p3;

assign ap_return_0 = zext_ln45_fu_246_p1;

assign ap_return_1 = zext_ln45_1_fu_264_p1;

assign ap_return_10 = zext_ln45_10_fu_426_p1;

assign ap_return_11 = zext_ln45_11_fu_444_p1;

assign ap_return_12 = zext_ln45_12_fu_462_p1;

assign ap_return_13 = zext_ln45_13_fu_480_p1;

assign ap_return_14 = zext_ln45_14_fu_498_p1;

assign ap_return_15 = zext_ln45_15_fu_516_p1;

assign ap_return_16 = zext_ln45_16_fu_534_p1;

assign ap_return_17 = zext_ln45_17_fu_552_p1;

assign ap_return_2 = zext_ln45_2_fu_282_p1;

assign ap_return_3 = zext_ln45_3_fu_300_p1;

assign ap_return_4 = zext_ln45_4_fu_318_p1;

assign ap_return_5 = zext_ln45_5_fu_336_p1;

assign ap_return_6 = zext_ln45_6_fu_354_p1;

assign ap_return_7 = zext_ln45_7_fu_372_p1;

assign ap_return_8 = zext_ln45_8_fu_390_p1;

assign ap_return_9 = zext_ln45_9_fu_408_p1;

assign icmp_ln1649_10_fu_412_p2 = (($signed(p_read20) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_11_fu_430_p2 = (($signed(p_read21) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_12_fu_448_p2 = (($signed(p_read22) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_13_fu_466_p2 = (($signed(p_read24) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_14_fu_484_p2 = (($signed(p_read25) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_15_fu_502_p2 = (($signed(p_read27) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_16_fu_520_p2 = (($signed(p_read28) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_17_fu_538_p2 = (($signed(p_read29) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_1_fu_250_p2 = (($signed(p_read1) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_2_fu_268_p2 = (($signed(p_read5) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_3_fu_286_p2 = (($signed(p_read6) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_4_fu_304_p2 = (($signed(p_read7) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_5_fu_322_p2 = (($signed(p_read10) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_6_fu_340_p2 = (($signed(p_read12) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_7_fu_358_p2 = (($signed(p_read14) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_8_fu_376_p2 = (($signed(p_read15) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_9_fu_394_p2 = (($signed(p_read17) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_fu_232_p2 = (($signed(p_read) > $signed(12'd0)) ? 1'b1 : 1'b0);

endmodule //der_dnn2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s
