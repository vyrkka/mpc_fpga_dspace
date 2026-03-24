module der_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s (
        ap_ready,
        p_read5,
        p_read6,
        p_read7,
        p_read9,
        p_read10,
        p_read12,
        p_read14,
        p_read15,
        p_read17,
        p_read18,
        p_read20,
        p_read23,
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
        ap_return_14
);


output   ap_ready;
input  [14:0] p_read5;
input  [14:0] p_read6;
input  [14:0] p_read7;
input  [14:0] p_read9;
input  [14:0] p_read10;
input  [14:0] p_read12;
input  [14:0] p_read14;
input  [14:0] p_read15;
input  [14:0] p_read17;
input  [14:0] p_read18;
input  [14:0] p_read20;
input  [14:0] p_read23;
input  [14:0] p_read27;
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

wire   [0:0] icmp_ln1649_fu_196_p2;
wire   [13:0] trunc_ln40_54_fu_192_p1;
wire   [13:0] datareg_V_fu_202_p3;
wire   [0:0] icmp_ln1649_41_fu_214_p2;
wire   [13:0] trunc_ln40_53_fu_188_p1;
wire   [13:0] datareg_V_41_fu_220_p3;
wire   [0:0] icmp_ln1649_42_fu_232_p2;
wire   [13:0] trunc_ln40_52_fu_184_p1;
wire   [13:0] datareg_V_42_fu_238_p3;
wire   [0:0] icmp_ln1649_43_fu_250_p2;
wire   [13:0] trunc_ln40_51_fu_180_p1;
wire   [13:0] datareg_V_43_fu_256_p3;
wire   [0:0] icmp_ln1649_44_fu_268_p2;
wire   [13:0] trunc_ln40_50_fu_176_p1;
wire   [13:0] datareg_V_44_fu_274_p3;
wire   [0:0] icmp_ln1649_45_fu_286_p2;
wire   [13:0] trunc_ln40_49_fu_172_p1;
wire   [13:0] datareg_V_45_fu_292_p3;
wire   [0:0] icmp_ln1649_46_fu_304_p2;
wire   [13:0] trunc_ln40_48_fu_168_p1;
wire   [13:0] datareg_V_46_fu_310_p3;
wire   [0:0] icmp_ln1649_47_fu_322_p2;
wire   [13:0] trunc_ln40_47_fu_164_p1;
wire   [13:0] datareg_V_47_fu_328_p3;
wire   [0:0] icmp_ln1649_48_fu_340_p2;
wire   [13:0] trunc_ln40_46_fu_160_p1;
wire   [13:0] datareg_V_48_fu_346_p3;
wire   [0:0] icmp_ln1649_49_fu_358_p2;
wire   [13:0] trunc_ln40_45_fu_156_p1;
wire   [13:0] datareg_V_49_fu_364_p3;
wire   [0:0] icmp_ln1649_50_fu_376_p2;
wire   [13:0] trunc_ln40_44_fu_152_p1;
wire   [13:0] datareg_V_50_fu_382_p3;
wire   [0:0] icmp_ln1649_51_fu_394_p2;
wire   [13:0] trunc_ln40_43_fu_148_p1;
wire   [13:0] datareg_V_51_fu_400_p3;
wire   [0:0] icmp_ln1649_52_fu_412_p2;
wire   [13:0] trunc_ln40_42_fu_144_p1;
wire   [13:0] datareg_V_52_fu_418_p3;
wire   [0:0] icmp_ln1649_53_fu_430_p2;
wire   [13:0] trunc_ln40_41_fu_140_p1;
wire   [13:0] datareg_V_53_fu_436_p3;
wire   [0:0] icmp_ln1649_54_fu_448_p2;
wire   [13:0] trunc_ln40_fu_136_p1;
wire   [13:0] datareg_V_54_fu_454_p3;
wire   [14:0] zext_ln45_fu_210_p1;
wire   [14:0] zext_ln45_41_fu_228_p1;
wire   [14:0] zext_ln45_42_fu_246_p1;
wire   [14:0] zext_ln45_43_fu_264_p1;
wire   [14:0] zext_ln45_44_fu_282_p1;
wire   [14:0] zext_ln45_45_fu_300_p1;
wire   [14:0] zext_ln45_46_fu_318_p1;
wire   [14:0] zext_ln45_47_fu_336_p1;
wire   [14:0] zext_ln45_48_fu_354_p1;
wire   [14:0] zext_ln45_49_fu_372_p1;
wire   [14:0] zext_ln45_50_fu_390_p1;
wire   [14:0] zext_ln45_51_fu_408_p1;
wire   [14:0] zext_ln45_52_fu_426_p1;
wire   [14:0] zext_ln45_53_fu_444_p1;
wire   [14:0] zext_ln45_54_fu_462_p1;

assign ap_ready = 1'b1;

assign datareg_V_41_fu_220_p3 = ((icmp_ln1649_41_fu_214_p2[0:0] == 1'b1) ? trunc_ln40_53_fu_188_p1 : 14'd0);

assign datareg_V_42_fu_238_p3 = ((icmp_ln1649_42_fu_232_p2[0:0] == 1'b1) ? trunc_ln40_52_fu_184_p1 : 14'd0);

assign datareg_V_43_fu_256_p3 = ((icmp_ln1649_43_fu_250_p2[0:0] == 1'b1) ? trunc_ln40_51_fu_180_p1 : 14'd0);

assign datareg_V_44_fu_274_p3 = ((icmp_ln1649_44_fu_268_p2[0:0] == 1'b1) ? trunc_ln40_50_fu_176_p1 : 14'd0);

assign datareg_V_45_fu_292_p3 = ((icmp_ln1649_45_fu_286_p2[0:0] == 1'b1) ? trunc_ln40_49_fu_172_p1 : 14'd0);

assign datareg_V_46_fu_310_p3 = ((icmp_ln1649_46_fu_304_p2[0:0] == 1'b1) ? trunc_ln40_48_fu_168_p1 : 14'd0);

assign datareg_V_47_fu_328_p3 = ((icmp_ln1649_47_fu_322_p2[0:0] == 1'b1) ? trunc_ln40_47_fu_164_p1 : 14'd0);

assign datareg_V_48_fu_346_p3 = ((icmp_ln1649_48_fu_340_p2[0:0] == 1'b1) ? trunc_ln40_46_fu_160_p1 : 14'd0);

assign datareg_V_49_fu_364_p3 = ((icmp_ln1649_49_fu_358_p2[0:0] == 1'b1) ? trunc_ln40_45_fu_156_p1 : 14'd0);

assign datareg_V_50_fu_382_p3 = ((icmp_ln1649_50_fu_376_p2[0:0] == 1'b1) ? trunc_ln40_44_fu_152_p1 : 14'd0);

assign datareg_V_51_fu_400_p3 = ((icmp_ln1649_51_fu_394_p2[0:0] == 1'b1) ? trunc_ln40_43_fu_148_p1 : 14'd0);

assign datareg_V_52_fu_418_p3 = ((icmp_ln1649_52_fu_412_p2[0:0] == 1'b1) ? trunc_ln40_42_fu_144_p1 : 14'd0);

assign datareg_V_53_fu_436_p3 = ((icmp_ln1649_53_fu_430_p2[0:0] == 1'b1) ? trunc_ln40_41_fu_140_p1 : 14'd0);

assign datareg_V_54_fu_454_p3 = ((icmp_ln1649_54_fu_448_p2[0:0] == 1'b1) ? trunc_ln40_fu_136_p1 : 14'd0);

assign datareg_V_fu_202_p3 = ((icmp_ln1649_fu_196_p2[0:0] == 1'b1) ? trunc_ln40_54_fu_192_p1 : 14'd0);

assign trunc_ln40_41_fu_140_p1 = p_read28[13:0];

assign trunc_ln40_42_fu_144_p1 = p_read27[13:0];

assign trunc_ln40_43_fu_148_p1 = p_read23[13:0];

assign trunc_ln40_44_fu_152_p1 = p_read20[13:0];

assign trunc_ln40_45_fu_156_p1 = p_read18[13:0];

assign trunc_ln40_46_fu_160_p1 = p_read17[13:0];

assign trunc_ln40_47_fu_164_p1 = p_read15[13:0];

assign trunc_ln40_48_fu_168_p1 = p_read14[13:0];

assign trunc_ln40_49_fu_172_p1 = p_read12[13:0];

assign trunc_ln40_50_fu_176_p1 = p_read10[13:0];

assign trunc_ln40_51_fu_180_p1 = p_read9[13:0];

assign trunc_ln40_52_fu_184_p1 = p_read7[13:0];

assign trunc_ln40_53_fu_188_p1 = p_read6[13:0];

assign trunc_ln40_54_fu_192_p1 = p_read5[13:0];

assign trunc_ln40_fu_136_p1 = p_read29[13:0];

assign zext_ln45_41_fu_228_p1 = datareg_V_41_fu_220_p3;

assign zext_ln45_42_fu_246_p1 = datareg_V_42_fu_238_p3;

assign zext_ln45_43_fu_264_p1 = datareg_V_43_fu_256_p3;

assign zext_ln45_44_fu_282_p1 = datareg_V_44_fu_274_p3;

assign zext_ln45_45_fu_300_p1 = datareg_V_45_fu_292_p3;

assign zext_ln45_46_fu_318_p1 = datareg_V_46_fu_310_p3;

assign zext_ln45_47_fu_336_p1 = datareg_V_47_fu_328_p3;

assign zext_ln45_48_fu_354_p1 = datareg_V_48_fu_346_p3;

assign zext_ln45_49_fu_372_p1 = datareg_V_49_fu_364_p3;

assign zext_ln45_50_fu_390_p1 = datareg_V_50_fu_382_p3;

assign zext_ln45_51_fu_408_p1 = datareg_V_51_fu_400_p3;

assign zext_ln45_52_fu_426_p1 = datareg_V_52_fu_418_p3;

assign zext_ln45_53_fu_444_p1 = datareg_V_53_fu_436_p3;

assign zext_ln45_54_fu_462_p1 = datareg_V_54_fu_454_p3;

assign zext_ln45_fu_210_p1 = datareg_V_fu_202_p3;

assign ap_return_0 = zext_ln45_fu_210_p1;

assign ap_return_1 = zext_ln45_41_fu_228_p1;

assign ap_return_10 = zext_ln45_50_fu_390_p1;

assign ap_return_11 = zext_ln45_51_fu_408_p1;

assign ap_return_12 = zext_ln45_52_fu_426_p1;

assign ap_return_13 = zext_ln45_53_fu_444_p1;

assign ap_return_14 = zext_ln45_54_fu_462_p1;

assign ap_return_2 = zext_ln45_42_fu_246_p1;

assign ap_return_3 = zext_ln45_43_fu_264_p1;

assign ap_return_4 = zext_ln45_44_fu_282_p1;

assign ap_return_5 = zext_ln45_45_fu_300_p1;

assign ap_return_6 = zext_ln45_46_fu_318_p1;

assign ap_return_7 = zext_ln45_47_fu_336_p1;

assign ap_return_8 = zext_ln45_48_fu_354_p1;

assign ap_return_9 = zext_ln45_49_fu_372_p1;

assign icmp_ln1649_41_fu_214_p2 = (($signed(p_read6) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_42_fu_232_p2 = (($signed(p_read7) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_43_fu_250_p2 = (($signed(p_read9) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_44_fu_268_p2 = (($signed(p_read10) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_45_fu_286_p2 = (($signed(p_read12) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_46_fu_304_p2 = (($signed(p_read14) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_47_fu_322_p2 = (($signed(p_read15) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_48_fu_340_p2 = (($signed(p_read17) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_49_fu_358_p2 = (($signed(p_read18) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_50_fu_376_p2 = (($signed(p_read20) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_51_fu_394_p2 = (($signed(p_read23) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_52_fu_412_p2 = (($signed(p_read27) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_53_fu_430_p2 = (($signed(p_read28) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_54_fu_448_p2 = (($signed(p_read29) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_fu_196_p2 = (($signed(p_read5) > $signed(15'd0)) ? 1'b1 : 1'b0);

endmodule //der_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s
