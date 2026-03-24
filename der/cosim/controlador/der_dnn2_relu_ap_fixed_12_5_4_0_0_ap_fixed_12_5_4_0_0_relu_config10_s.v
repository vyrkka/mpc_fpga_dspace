module der_dnn2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s (
        ap_ready,
        p_read,
        p_read2,
        p_read4,
        p_read7,
        p_read10,
        p_read15,
        p_read17,
        p_read21,
        p_read22,
        p_read24,
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
        ap_return_12
);


output   ap_ready;
input  [11:0] p_read;
input  [11:0] p_read2;
input  [11:0] p_read4;
input  [11:0] p_read7;
input  [11:0] p_read10;
input  [11:0] p_read15;
input  [11:0] p_read17;
input  [11:0] p_read21;
input  [11:0] p_read22;
input  [11:0] p_read24;
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

wire   [0:0] icmp_ln1649_fu_172_p2;
wire   [10:0] trunc_ln40_46_fu_168_p1;
wire   [10:0] datareg_V_fu_178_p3;
wire   [0:0] icmp_ln1649_35_fu_190_p2;
wire   [10:0] trunc_ln40_45_fu_164_p1;
wire   [10:0] datareg_V_35_fu_196_p3;
wire   [0:0] icmp_ln1649_36_fu_208_p2;
wire   [10:0] trunc_ln40_44_fu_160_p1;
wire   [10:0] datareg_V_36_fu_214_p3;
wire   [0:0] icmp_ln1649_37_fu_226_p2;
wire   [10:0] trunc_ln40_43_fu_156_p1;
wire   [10:0] datareg_V_37_fu_232_p3;
wire   [0:0] icmp_ln1649_38_fu_244_p2;
wire   [10:0] trunc_ln40_42_fu_152_p1;
wire   [10:0] datareg_V_38_fu_250_p3;
wire   [0:0] icmp_ln1649_39_fu_262_p2;
wire   [10:0] trunc_ln40_41_fu_148_p1;
wire   [10:0] datareg_V_39_fu_268_p3;
wire   [0:0] icmp_ln1649_40_fu_280_p2;
wire   [10:0] trunc_ln40_40_fu_144_p1;
wire   [10:0] datareg_V_40_fu_286_p3;
wire   [0:0] icmp_ln1649_41_fu_298_p2;
wire   [10:0] trunc_ln40_39_fu_140_p1;
wire   [10:0] datareg_V_41_fu_304_p3;
wire   [0:0] icmp_ln1649_42_fu_316_p2;
wire   [10:0] trunc_ln40_38_fu_136_p1;
wire   [10:0] datareg_V_42_fu_322_p3;
wire   [0:0] icmp_ln1649_43_fu_334_p2;
wire   [10:0] trunc_ln40_37_fu_132_p1;
wire   [10:0] datareg_V_43_fu_340_p3;
wire   [0:0] icmp_ln1649_44_fu_352_p2;
wire   [10:0] trunc_ln40_36_fu_128_p1;
wire   [10:0] datareg_V_44_fu_358_p3;
wire   [0:0] icmp_ln1649_45_fu_370_p2;
wire   [10:0] trunc_ln40_35_fu_124_p1;
wire   [10:0] datareg_V_45_fu_376_p3;
wire   [0:0] icmp_ln1649_46_fu_388_p2;
wire   [10:0] trunc_ln40_fu_120_p1;
wire   [10:0] datareg_V_46_fu_394_p3;
wire   [11:0] zext_ln45_fu_186_p1;
wire   [11:0] zext_ln45_35_fu_204_p1;
wire   [11:0] zext_ln45_36_fu_222_p1;
wire   [11:0] zext_ln45_37_fu_240_p1;
wire   [11:0] zext_ln45_38_fu_258_p1;
wire   [11:0] zext_ln45_39_fu_276_p1;
wire   [11:0] zext_ln45_40_fu_294_p1;
wire   [11:0] zext_ln45_41_fu_312_p1;
wire   [11:0] zext_ln45_42_fu_330_p1;
wire   [11:0] zext_ln45_43_fu_348_p1;
wire   [11:0] zext_ln45_44_fu_366_p1;
wire   [11:0] zext_ln45_45_fu_384_p1;
wire   [11:0] zext_ln45_46_fu_402_p1;

assign ap_ready = 1'b1;

assign datareg_V_35_fu_196_p3 = ((icmp_ln1649_35_fu_190_p2[0:0] == 1'b1) ? trunc_ln40_45_fu_164_p1 : 11'd0);

assign datareg_V_36_fu_214_p3 = ((icmp_ln1649_36_fu_208_p2[0:0] == 1'b1) ? trunc_ln40_44_fu_160_p1 : 11'd0);

assign datareg_V_37_fu_232_p3 = ((icmp_ln1649_37_fu_226_p2[0:0] == 1'b1) ? trunc_ln40_43_fu_156_p1 : 11'd0);

assign datareg_V_38_fu_250_p3 = ((icmp_ln1649_38_fu_244_p2[0:0] == 1'b1) ? trunc_ln40_42_fu_152_p1 : 11'd0);

assign datareg_V_39_fu_268_p3 = ((icmp_ln1649_39_fu_262_p2[0:0] == 1'b1) ? trunc_ln40_41_fu_148_p1 : 11'd0);

assign datareg_V_40_fu_286_p3 = ((icmp_ln1649_40_fu_280_p2[0:0] == 1'b1) ? trunc_ln40_40_fu_144_p1 : 11'd0);

assign datareg_V_41_fu_304_p3 = ((icmp_ln1649_41_fu_298_p2[0:0] == 1'b1) ? trunc_ln40_39_fu_140_p1 : 11'd0);

assign datareg_V_42_fu_322_p3 = ((icmp_ln1649_42_fu_316_p2[0:0] == 1'b1) ? trunc_ln40_38_fu_136_p1 : 11'd0);

assign datareg_V_43_fu_340_p3 = ((icmp_ln1649_43_fu_334_p2[0:0] == 1'b1) ? trunc_ln40_37_fu_132_p1 : 11'd0);

assign datareg_V_44_fu_358_p3 = ((icmp_ln1649_44_fu_352_p2[0:0] == 1'b1) ? trunc_ln40_36_fu_128_p1 : 11'd0);

assign datareg_V_45_fu_376_p3 = ((icmp_ln1649_45_fu_370_p2[0:0] == 1'b1) ? trunc_ln40_35_fu_124_p1 : 11'd0);

assign datareg_V_46_fu_394_p3 = ((icmp_ln1649_46_fu_388_p2[0:0] == 1'b1) ? trunc_ln40_fu_120_p1 : 11'd0);

assign datareg_V_fu_178_p3 = ((icmp_ln1649_fu_172_p2[0:0] == 1'b1) ? trunc_ln40_46_fu_168_p1 : 11'd0);

assign trunc_ln40_35_fu_124_p1 = p_read28[10:0];

assign trunc_ln40_36_fu_128_p1 = p_read27[10:0];

assign trunc_ln40_37_fu_132_p1 = p_read24[10:0];

assign trunc_ln40_38_fu_136_p1 = p_read22[10:0];

assign trunc_ln40_39_fu_140_p1 = p_read21[10:0];

assign trunc_ln40_40_fu_144_p1 = p_read17[10:0];

assign trunc_ln40_41_fu_148_p1 = p_read15[10:0];

assign trunc_ln40_42_fu_152_p1 = p_read10[10:0];

assign trunc_ln40_43_fu_156_p1 = p_read7[10:0];

assign trunc_ln40_44_fu_160_p1 = p_read4[10:0];

assign trunc_ln40_45_fu_164_p1 = p_read2[10:0];

assign trunc_ln40_46_fu_168_p1 = p_read[10:0];

assign trunc_ln40_fu_120_p1 = p_read29[10:0];

assign zext_ln45_35_fu_204_p1 = datareg_V_35_fu_196_p3;

assign zext_ln45_36_fu_222_p1 = datareg_V_36_fu_214_p3;

assign zext_ln45_37_fu_240_p1 = datareg_V_37_fu_232_p3;

assign zext_ln45_38_fu_258_p1 = datareg_V_38_fu_250_p3;

assign zext_ln45_39_fu_276_p1 = datareg_V_39_fu_268_p3;

assign zext_ln45_40_fu_294_p1 = datareg_V_40_fu_286_p3;

assign zext_ln45_41_fu_312_p1 = datareg_V_41_fu_304_p3;

assign zext_ln45_42_fu_330_p1 = datareg_V_42_fu_322_p3;

assign zext_ln45_43_fu_348_p1 = datareg_V_43_fu_340_p3;

assign zext_ln45_44_fu_366_p1 = datareg_V_44_fu_358_p3;

assign zext_ln45_45_fu_384_p1 = datareg_V_45_fu_376_p3;

assign zext_ln45_46_fu_402_p1 = datareg_V_46_fu_394_p3;

assign zext_ln45_fu_186_p1 = datareg_V_fu_178_p3;

assign ap_return_0 = zext_ln45_fu_186_p1;

assign ap_return_1 = zext_ln45_35_fu_204_p1;

assign ap_return_10 = zext_ln45_44_fu_366_p1;

assign ap_return_11 = zext_ln45_45_fu_384_p1;

assign ap_return_12 = zext_ln45_46_fu_402_p1;

assign ap_return_2 = zext_ln45_36_fu_222_p1;

assign ap_return_3 = zext_ln45_37_fu_240_p1;

assign ap_return_4 = zext_ln45_38_fu_258_p1;

assign ap_return_5 = zext_ln45_39_fu_276_p1;

assign ap_return_6 = zext_ln45_40_fu_294_p1;

assign ap_return_7 = zext_ln45_41_fu_312_p1;

assign ap_return_8 = zext_ln45_42_fu_330_p1;

assign ap_return_9 = zext_ln45_43_fu_348_p1;

assign icmp_ln1649_35_fu_190_p2 = (($signed(p_read2) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_36_fu_208_p2 = (($signed(p_read4) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_37_fu_226_p2 = (($signed(p_read7) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_38_fu_244_p2 = (($signed(p_read10) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_39_fu_262_p2 = (($signed(p_read15) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_40_fu_280_p2 = (($signed(p_read17) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_41_fu_298_p2 = (($signed(p_read21) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_42_fu_316_p2 = (($signed(p_read22) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_43_fu_334_p2 = (($signed(p_read24) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_44_fu_352_p2 = (($signed(p_read27) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_45_fu_370_p2 = (($signed(p_read28) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_46_fu_388_p2 = (($signed(p_read29) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_fu_172_p2 = (($signed(p_read) > $signed(12'd0)) ? 1'b1 : 1'b0);

endmodule //der_dnn2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s
