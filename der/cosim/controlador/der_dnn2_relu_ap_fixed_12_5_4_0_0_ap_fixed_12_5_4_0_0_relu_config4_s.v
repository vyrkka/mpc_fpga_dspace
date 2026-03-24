module der_dnn2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s (
        ap_ready,
        p_read1,
        p_read2,
        p_read4,
        p_read6,
        p_read9,
        p_read12,
        p_read14,
        p_read15,
        p_read17,
        p_read18,
        p_read19,
        p_read20,
        p_read21,
        p_read24,
        p_read25,
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
input  [11:0] p_read1;
input  [11:0] p_read2;
input  [11:0] p_read4;
input  [11:0] p_read6;
input  [11:0] p_read9;
input  [11:0] p_read12;
input  [11:0] p_read14;
input  [11:0] p_read15;
input  [11:0] p_read17;
input  [11:0] p_read18;
input  [11:0] p_read19;
input  [11:0] p_read20;
input  [11:0] p_read21;
input  [11:0] p_read24;
input  [11:0] p_read25;
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

wire   [0:0] icmp_ln1649_fu_196_p2;
wire   [10:0] trunc_ln40_31_fu_192_p1;
wire   [10:0] datareg_V_fu_202_p3;
wire   [0:0] icmp_ln1649_18_fu_214_p2;
wire   [10:0] trunc_ln40_30_fu_188_p1;
wire   [10:0] datareg_V_18_fu_220_p3;
wire   [0:0] icmp_ln1649_19_fu_232_p2;
wire   [10:0] trunc_ln40_29_fu_184_p1;
wire   [10:0] datareg_V_19_fu_238_p3;
wire   [0:0] icmp_ln1649_20_fu_250_p2;
wire   [10:0] trunc_ln40_28_fu_180_p1;
wire   [10:0] datareg_V_20_fu_256_p3;
wire   [0:0] icmp_ln1649_21_fu_268_p2;
wire   [10:0] trunc_ln40_27_fu_176_p1;
wire   [10:0] datareg_V_21_fu_274_p3;
wire   [0:0] icmp_ln1649_22_fu_286_p2;
wire   [10:0] trunc_ln40_26_fu_172_p1;
wire   [10:0] datareg_V_22_fu_292_p3;
wire   [0:0] icmp_ln1649_23_fu_304_p2;
wire   [10:0] trunc_ln40_25_fu_168_p1;
wire   [10:0] datareg_V_23_fu_310_p3;
wire   [0:0] icmp_ln1649_24_fu_322_p2;
wire   [10:0] trunc_ln40_24_fu_164_p1;
wire   [10:0] datareg_V_24_fu_328_p3;
wire   [0:0] icmp_ln1649_25_fu_340_p2;
wire   [10:0] trunc_ln40_23_fu_160_p1;
wire   [10:0] datareg_V_25_fu_346_p3;
wire   [0:0] icmp_ln1649_26_fu_358_p2;
wire   [10:0] trunc_ln40_22_fu_156_p1;
wire   [10:0] datareg_V_26_fu_364_p3;
wire   [0:0] icmp_ln1649_27_fu_376_p2;
wire   [10:0] trunc_ln40_21_fu_152_p1;
wire   [10:0] datareg_V_27_fu_382_p3;
wire   [0:0] icmp_ln1649_28_fu_394_p2;
wire   [10:0] trunc_ln40_20_fu_148_p1;
wire   [10:0] datareg_V_28_fu_400_p3;
wire   [0:0] icmp_ln1649_29_fu_412_p2;
wire   [10:0] trunc_ln40_19_fu_144_p1;
wire   [10:0] datareg_V_29_fu_418_p3;
wire   [0:0] icmp_ln1649_30_fu_430_p2;
wire   [10:0] trunc_ln40_18_fu_140_p1;
wire   [10:0] datareg_V_30_fu_436_p3;
wire   [0:0] icmp_ln1649_31_fu_448_p2;
wire   [10:0] trunc_ln40_fu_136_p1;
wire   [10:0] datareg_V_31_fu_454_p3;
wire   [11:0] zext_ln45_fu_210_p1;
wire   [11:0] zext_ln45_18_fu_228_p1;
wire   [11:0] zext_ln45_19_fu_246_p1;
wire   [11:0] zext_ln45_20_fu_264_p1;
wire   [11:0] zext_ln45_21_fu_282_p1;
wire   [11:0] zext_ln45_22_fu_300_p1;
wire   [11:0] zext_ln45_23_fu_318_p1;
wire   [11:0] zext_ln45_24_fu_336_p1;
wire   [11:0] zext_ln45_25_fu_354_p1;
wire   [11:0] zext_ln45_26_fu_372_p1;
wire   [11:0] zext_ln45_27_fu_390_p1;
wire   [11:0] zext_ln45_28_fu_408_p1;
wire   [11:0] zext_ln45_29_fu_426_p1;
wire   [11:0] zext_ln45_30_fu_444_p1;
wire   [11:0] zext_ln45_31_fu_462_p1;

assign ap_ready = 1'b1;

assign datareg_V_18_fu_220_p3 = ((icmp_ln1649_18_fu_214_p2[0:0] == 1'b1) ? trunc_ln40_30_fu_188_p1 : 11'd0);

assign datareg_V_19_fu_238_p3 = ((icmp_ln1649_19_fu_232_p2[0:0] == 1'b1) ? trunc_ln40_29_fu_184_p1 : 11'd0);

assign datareg_V_20_fu_256_p3 = ((icmp_ln1649_20_fu_250_p2[0:0] == 1'b1) ? trunc_ln40_28_fu_180_p1 : 11'd0);

assign datareg_V_21_fu_274_p3 = ((icmp_ln1649_21_fu_268_p2[0:0] == 1'b1) ? trunc_ln40_27_fu_176_p1 : 11'd0);

assign datareg_V_22_fu_292_p3 = ((icmp_ln1649_22_fu_286_p2[0:0] == 1'b1) ? trunc_ln40_26_fu_172_p1 : 11'd0);

assign datareg_V_23_fu_310_p3 = ((icmp_ln1649_23_fu_304_p2[0:0] == 1'b1) ? trunc_ln40_25_fu_168_p1 : 11'd0);

assign datareg_V_24_fu_328_p3 = ((icmp_ln1649_24_fu_322_p2[0:0] == 1'b1) ? trunc_ln40_24_fu_164_p1 : 11'd0);

assign datareg_V_25_fu_346_p3 = ((icmp_ln1649_25_fu_340_p2[0:0] == 1'b1) ? trunc_ln40_23_fu_160_p1 : 11'd0);

assign datareg_V_26_fu_364_p3 = ((icmp_ln1649_26_fu_358_p2[0:0] == 1'b1) ? trunc_ln40_22_fu_156_p1 : 11'd0);

assign datareg_V_27_fu_382_p3 = ((icmp_ln1649_27_fu_376_p2[0:0] == 1'b1) ? trunc_ln40_21_fu_152_p1 : 11'd0);

assign datareg_V_28_fu_400_p3 = ((icmp_ln1649_28_fu_394_p2[0:0] == 1'b1) ? trunc_ln40_20_fu_148_p1 : 11'd0);

assign datareg_V_29_fu_418_p3 = ((icmp_ln1649_29_fu_412_p2[0:0] == 1'b1) ? trunc_ln40_19_fu_144_p1 : 11'd0);

assign datareg_V_30_fu_436_p3 = ((icmp_ln1649_30_fu_430_p2[0:0] == 1'b1) ? trunc_ln40_18_fu_140_p1 : 11'd0);

assign datareg_V_31_fu_454_p3 = ((icmp_ln1649_31_fu_448_p2[0:0] == 1'b1) ? trunc_ln40_fu_136_p1 : 11'd0);

assign datareg_V_fu_202_p3 = ((icmp_ln1649_fu_196_p2[0:0] == 1'b1) ? trunc_ln40_31_fu_192_p1 : 11'd0);

assign trunc_ln40_18_fu_140_p1 = p_read24[10:0];

assign trunc_ln40_19_fu_144_p1 = p_read21[10:0];

assign trunc_ln40_20_fu_148_p1 = p_read20[10:0];

assign trunc_ln40_21_fu_152_p1 = p_read19[10:0];

assign trunc_ln40_22_fu_156_p1 = p_read18[10:0];

assign trunc_ln40_23_fu_160_p1 = p_read17[10:0];

assign trunc_ln40_24_fu_164_p1 = p_read15[10:0];

assign trunc_ln40_25_fu_168_p1 = p_read14[10:0];

assign trunc_ln40_26_fu_172_p1 = p_read12[10:0];

assign trunc_ln40_27_fu_176_p1 = p_read9[10:0];

assign trunc_ln40_28_fu_180_p1 = p_read6[10:0];

assign trunc_ln40_29_fu_184_p1 = p_read4[10:0];

assign trunc_ln40_30_fu_188_p1 = p_read2[10:0];

assign trunc_ln40_31_fu_192_p1 = p_read1[10:0];

assign trunc_ln40_fu_136_p1 = p_read25[10:0];

assign zext_ln45_18_fu_228_p1 = datareg_V_18_fu_220_p3;

assign zext_ln45_19_fu_246_p1 = datareg_V_19_fu_238_p3;

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

assign zext_ln45_fu_210_p1 = datareg_V_fu_202_p3;

assign ap_return_0 = zext_ln45_fu_210_p1;

assign ap_return_1 = zext_ln45_18_fu_228_p1;

assign ap_return_10 = zext_ln45_27_fu_390_p1;

assign ap_return_11 = zext_ln45_28_fu_408_p1;

assign ap_return_12 = zext_ln45_29_fu_426_p1;

assign ap_return_13 = zext_ln45_30_fu_444_p1;

assign ap_return_14 = zext_ln45_31_fu_462_p1;

assign ap_return_2 = zext_ln45_19_fu_246_p1;

assign ap_return_3 = zext_ln45_20_fu_264_p1;

assign ap_return_4 = zext_ln45_21_fu_282_p1;

assign ap_return_5 = zext_ln45_22_fu_300_p1;

assign ap_return_6 = zext_ln45_23_fu_318_p1;

assign ap_return_7 = zext_ln45_24_fu_336_p1;

assign ap_return_8 = zext_ln45_25_fu_354_p1;

assign ap_return_9 = zext_ln45_26_fu_372_p1;

assign icmp_ln1649_18_fu_214_p2 = (($signed(p_read2) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_19_fu_232_p2 = (($signed(p_read4) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_20_fu_250_p2 = (($signed(p_read6) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_21_fu_268_p2 = (($signed(p_read9) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_22_fu_286_p2 = (($signed(p_read12) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_23_fu_304_p2 = (($signed(p_read14) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_24_fu_322_p2 = (($signed(p_read15) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_25_fu_340_p2 = (($signed(p_read17) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_26_fu_358_p2 = (($signed(p_read18) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_27_fu_376_p2 = (($signed(p_read19) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_28_fu_394_p2 = (($signed(p_read20) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_29_fu_412_p2 = (($signed(p_read21) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_30_fu_430_p2 = (($signed(p_read24) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_31_fu_448_p2 = (($signed(p_read25) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_fu_196_p2 = (($signed(p_read1) > $signed(12'd0)) ? 1'b1 : 1'b0);

endmodule //der_dnn2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s
