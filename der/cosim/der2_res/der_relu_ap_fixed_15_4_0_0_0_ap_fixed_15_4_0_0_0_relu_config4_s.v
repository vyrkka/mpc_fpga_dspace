module der_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s (
        ap_ready,
        p_read,
        p_read1,
        p_read2,
        p_read3,
        p_read8,
        p_read9,
        p_read11,
        p_read13,
        p_read15,
        p_read17,
        p_read18,
        p_read20,
        p_read21,
        p_read22,
        p_read24,
        p_read26,
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
input  [14:0] p_read;
input  [14:0] p_read1;
input  [14:0] p_read2;
input  [14:0] p_read3;
input  [14:0] p_read8;
input  [14:0] p_read9;
input  [14:0] p_read11;
input  [14:0] p_read13;
input  [14:0] p_read15;
input  [14:0] p_read17;
input  [14:0] p_read18;
input  [14:0] p_read20;
input  [14:0] p_read21;
input  [14:0] p_read22;
input  [14:0] p_read24;
input  [14:0] p_read26;
input  [14:0] p_read28;
input  [14:0] p_read29;
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

wire   [0:0] icmp_ln1649_fu_232_p2;
wire   [13:0] trunc_ln40_36_fu_228_p1;
wire   [13:0] datareg_V_fu_238_p3;
wire   [0:0] icmp_ln1649_20_fu_250_p2;
wire   [13:0] trunc_ln40_35_fu_224_p1;
wire   [13:0] datareg_V_20_fu_256_p3;
wire   [0:0] icmp_ln1649_21_fu_268_p2;
wire   [13:0] trunc_ln40_34_fu_220_p1;
wire   [13:0] datareg_V_21_fu_274_p3;
wire   [0:0] icmp_ln1649_22_fu_286_p2;
wire   [13:0] trunc_ln40_33_fu_216_p1;
wire   [13:0] datareg_V_22_fu_292_p3;
wire   [0:0] icmp_ln1649_23_fu_304_p2;
wire   [13:0] trunc_ln40_32_fu_212_p1;
wire   [13:0] datareg_V_23_fu_310_p3;
wire   [0:0] icmp_ln1649_24_fu_322_p2;
wire   [13:0] trunc_ln40_31_fu_208_p1;
wire   [13:0] datareg_V_24_fu_328_p3;
wire   [0:0] icmp_ln1649_25_fu_340_p2;
wire   [13:0] trunc_ln40_30_fu_204_p1;
wire   [13:0] datareg_V_25_fu_346_p3;
wire   [0:0] icmp_ln1649_26_fu_358_p2;
wire   [13:0] trunc_ln40_29_fu_200_p1;
wire   [13:0] datareg_V_26_fu_364_p3;
wire   [0:0] icmp_ln1649_27_fu_376_p2;
wire   [13:0] trunc_ln40_28_fu_196_p1;
wire   [13:0] datareg_V_27_fu_382_p3;
wire   [0:0] icmp_ln1649_28_fu_394_p2;
wire   [13:0] trunc_ln40_27_fu_192_p1;
wire   [13:0] datareg_V_28_fu_400_p3;
wire   [0:0] icmp_ln1649_29_fu_412_p2;
wire   [13:0] trunc_ln40_26_fu_188_p1;
wire   [13:0] datareg_V_29_fu_418_p3;
wire   [0:0] icmp_ln1649_30_fu_430_p2;
wire   [13:0] trunc_ln40_25_fu_184_p1;
wire   [13:0] datareg_V_30_fu_436_p3;
wire   [0:0] icmp_ln1649_31_fu_448_p2;
wire   [13:0] trunc_ln40_24_fu_180_p1;
wire   [13:0] datareg_V_31_fu_454_p3;
wire   [0:0] icmp_ln1649_32_fu_466_p2;
wire   [13:0] trunc_ln40_23_fu_176_p1;
wire   [13:0] datareg_V_32_fu_472_p3;
wire   [0:0] icmp_ln1649_33_fu_484_p2;
wire   [13:0] trunc_ln40_22_fu_172_p1;
wire   [13:0] datareg_V_33_fu_490_p3;
wire   [0:0] icmp_ln1649_34_fu_502_p2;
wire   [13:0] trunc_ln40_21_fu_168_p1;
wire   [13:0] datareg_V_34_fu_508_p3;
wire   [0:0] icmp_ln1649_35_fu_520_p2;
wire   [13:0] trunc_ln40_20_fu_164_p1;
wire   [13:0] datareg_V_35_fu_526_p3;
wire   [0:0] icmp_ln1649_36_fu_538_p2;
wire   [13:0] trunc_ln40_fu_160_p1;
wire   [13:0] datareg_V_36_fu_544_p3;
wire   [14:0] zext_ln45_fu_246_p1;
wire   [14:0] zext_ln45_20_fu_264_p1;
wire   [14:0] zext_ln45_21_fu_282_p1;
wire   [14:0] zext_ln45_22_fu_300_p1;
wire   [14:0] zext_ln45_23_fu_318_p1;
wire   [14:0] zext_ln45_24_fu_336_p1;
wire   [14:0] zext_ln45_25_fu_354_p1;
wire   [14:0] zext_ln45_26_fu_372_p1;
wire   [14:0] zext_ln45_27_fu_390_p1;
wire   [14:0] zext_ln45_28_fu_408_p1;
wire   [14:0] zext_ln45_29_fu_426_p1;
wire   [14:0] zext_ln45_30_fu_444_p1;
wire   [14:0] zext_ln45_31_fu_462_p1;
wire   [14:0] zext_ln45_32_fu_480_p1;
wire   [14:0] zext_ln45_33_fu_498_p1;
wire   [14:0] zext_ln45_34_fu_516_p1;
wire   [14:0] zext_ln45_35_fu_534_p1;
wire   [14:0] zext_ln45_36_fu_552_p1;

assign ap_ready = 1'b1;

assign datareg_V_20_fu_256_p3 = ((icmp_ln1649_20_fu_250_p2[0:0] == 1'b1) ? trunc_ln40_35_fu_224_p1 : 14'd0);

assign datareg_V_21_fu_274_p3 = ((icmp_ln1649_21_fu_268_p2[0:0] == 1'b1) ? trunc_ln40_34_fu_220_p1 : 14'd0);

assign datareg_V_22_fu_292_p3 = ((icmp_ln1649_22_fu_286_p2[0:0] == 1'b1) ? trunc_ln40_33_fu_216_p1 : 14'd0);

assign datareg_V_23_fu_310_p3 = ((icmp_ln1649_23_fu_304_p2[0:0] == 1'b1) ? trunc_ln40_32_fu_212_p1 : 14'd0);

assign datareg_V_24_fu_328_p3 = ((icmp_ln1649_24_fu_322_p2[0:0] == 1'b1) ? trunc_ln40_31_fu_208_p1 : 14'd0);

assign datareg_V_25_fu_346_p3 = ((icmp_ln1649_25_fu_340_p2[0:0] == 1'b1) ? trunc_ln40_30_fu_204_p1 : 14'd0);

assign datareg_V_26_fu_364_p3 = ((icmp_ln1649_26_fu_358_p2[0:0] == 1'b1) ? trunc_ln40_29_fu_200_p1 : 14'd0);

assign datareg_V_27_fu_382_p3 = ((icmp_ln1649_27_fu_376_p2[0:0] == 1'b1) ? trunc_ln40_28_fu_196_p1 : 14'd0);

assign datareg_V_28_fu_400_p3 = ((icmp_ln1649_28_fu_394_p2[0:0] == 1'b1) ? trunc_ln40_27_fu_192_p1 : 14'd0);

assign datareg_V_29_fu_418_p3 = ((icmp_ln1649_29_fu_412_p2[0:0] == 1'b1) ? trunc_ln40_26_fu_188_p1 : 14'd0);

assign datareg_V_30_fu_436_p3 = ((icmp_ln1649_30_fu_430_p2[0:0] == 1'b1) ? trunc_ln40_25_fu_184_p1 : 14'd0);

assign datareg_V_31_fu_454_p3 = ((icmp_ln1649_31_fu_448_p2[0:0] == 1'b1) ? trunc_ln40_24_fu_180_p1 : 14'd0);

assign datareg_V_32_fu_472_p3 = ((icmp_ln1649_32_fu_466_p2[0:0] == 1'b1) ? trunc_ln40_23_fu_176_p1 : 14'd0);

assign datareg_V_33_fu_490_p3 = ((icmp_ln1649_33_fu_484_p2[0:0] == 1'b1) ? trunc_ln40_22_fu_172_p1 : 14'd0);

assign datareg_V_34_fu_508_p3 = ((icmp_ln1649_34_fu_502_p2[0:0] == 1'b1) ? trunc_ln40_21_fu_168_p1 : 14'd0);

assign datareg_V_35_fu_526_p3 = ((icmp_ln1649_35_fu_520_p2[0:0] == 1'b1) ? trunc_ln40_20_fu_164_p1 : 14'd0);

assign datareg_V_36_fu_544_p3 = ((icmp_ln1649_36_fu_538_p2[0:0] == 1'b1) ? trunc_ln40_fu_160_p1 : 14'd0);

assign datareg_V_fu_238_p3 = ((icmp_ln1649_fu_232_p2[0:0] == 1'b1) ? trunc_ln40_36_fu_228_p1 : 14'd0);

assign trunc_ln40_20_fu_164_p1 = p_read28[13:0];

assign trunc_ln40_21_fu_168_p1 = p_read26[13:0];

assign trunc_ln40_22_fu_172_p1 = p_read24[13:0];

assign trunc_ln40_23_fu_176_p1 = p_read22[13:0];

assign trunc_ln40_24_fu_180_p1 = p_read21[13:0];

assign trunc_ln40_25_fu_184_p1 = p_read20[13:0];

assign trunc_ln40_26_fu_188_p1 = p_read18[13:0];

assign trunc_ln40_27_fu_192_p1 = p_read17[13:0];

assign trunc_ln40_28_fu_196_p1 = p_read15[13:0];

assign trunc_ln40_29_fu_200_p1 = p_read13[13:0];

assign trunc_ln40_30_fu_204_p1 = p_read11[13:0];

assign trunc_ln40_31_fu_208_p1 = p_read9[13:0];

assign trunc_ln40_32_fu_212_p1 = p_read8[13:0];

assign trunc_ln40_33_fu_216_p1 = p_read3[13:0];

assign trunc_ln40_34_fu_220_p1 = p_read2[13:0];

assign trunc_ln40_35_fu_224_p1 = p_read1[13:0];

assign trunc_ln40_36_fu_228_p1 = p_read[13:0];

assign trunc_ln40_fu_160_p1 = p_read29[13:0];

assign zext_ln45_20_fu_264_p1 = datareg_V_20_fu_256_p3;

assign zext_ln45_21_fu_282_p1 = datareg_V_21_fu_274_p3;

assign zext_ln45_22_fu_300_p1 = datareg_V_22_fu_292_p3;

assign zext_ln45_23_fu_318_p1 = datareg_V_23_fu_310_p3;

assign zext_ln45_24_fu_336_p1 = datareg_V_24_fu_328_p3;

assign zext_ln45_25_fu_354_p1 = datareg_V_25_fu_346_p3;

assign zext_ln45_26_fu_372_p1 = datareg_V_26_fu_364_p3;

assign zext_ln45_27_fu_390_p1 = datareg_V_27_fu_382_p3;

assign zext_ln45_28_fu_408_p1 = datareg_V_28_fu_400_p3;

assign zext_ln45_29_fu_426_p1 = datareg_V_29_fu_418_p3;

assign zext_ln45_30_fu_444_p1 = datareg_V_30_fu_436_p3;

assign zext_ln45_31_fu_462_p1 = datareg_V_31_fu_454_p3;

assign zext_ln45_32_fu_480_p1 = datareg_V_32_fu_472_p3;

assign zext_ln45_33_fu_498_p1 = datareg_V_33_fu_490_p3;

assign zext_ln45_34_fu_516_p1 = datareg_V_34_fu_508_p3;

assign zext_ln45_35_fu_534_p1 = datareg_V_35_fu_526_p3;

assign zext_ln45_36_fu_552_p1 = datareg_V_36_fu_544_p3;

assign zext_ln45_fu_246_p1 = datareg_V_fu_238_p3;

assign ap_return_0 = zext_ln45_fu_246_p1;

assign ap_return_1 = zext_ln45_20_fu_264_p1;

assign ap_return_10 = zext_ln45_29_fu_426_p1;

assign ap_return_11 = zext_ln45_30_fu_444_p1;

assign ap_return_12 = zext_ln45_31_fu_462_p1;

assign ap_return_13 = zext_ln45_32_fu_480_p1;

assign ap_return_14 = zext_ln45_33_fu_498_p1;

assign ap_return_15 = zext_ln45_34_fu_516_p1;

assign ap_return_16 = zext_ln45_35_fu_534_p1;

assign ap_return_17 = zext_ln45_36_fu_552_p1;

assign ap_return_2 = zext_ln45_21_fu_282_p1;

assign ap_return_3 = zext_ln45_22_fu_300_p1;

assign ap_return_4 = zext_ln45_23_fu_318_p1;

assign ap_return_5 = zext_ln45_24_fu_336_p1;

assign ap_return_6 = zext_ln45_25_fu_354_p1;

assign ap_return_7 = zext_ln45_26_fu_372_p1;

assign ap_return_8 = zext_ln45_27_fu_390_p1;

assign ap_return_9 = zext_ln45_28_fu_408_p1;

assign icmp_ln1649_20_fu_250_p2 = (($signed(p_read1) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_21_fu_268_p2 = (($signed(p_read2) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_22_fu_286_p2 = (($signed(p_read3) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_23_fu_304_p2 = (($signed(p_read8) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_24_fu_322_p2 = (($signed(p_read9) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_25_fu_340_p2 = (($signed(p_read11) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_26_fu_358_p2 = (($signed(p_read13) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_27_fu_376_p2 = (($signed(p_read15) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_28_fu_394_p2 = (($signed(p_read17) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_29_fu_412_p2 = (($signed(p_read18) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_30_fu_430_p2 = (($signed(p_read20) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_31_fu_448_p2 = (($signed(p_read21) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_32_fu_466_p2 = (($signed(p_read22) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_33_fu_484_p2 = (($signed(p_read24) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_34_fu_502_p2 = (($signed(p_read26) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_35_fu_520_p2 = (($signed(p_read28) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_36_fu_538_p2 = (($signed(p_read29) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_fu_232_p2 = (($signed(p_read) > $signed(15'd0)) ? 1'b1 : 1'b0);

endmodule //der_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s
