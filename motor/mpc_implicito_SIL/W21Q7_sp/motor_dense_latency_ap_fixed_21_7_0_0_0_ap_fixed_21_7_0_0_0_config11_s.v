module motor_dense_latency_ap_fixed_21_7_0_0_0_ap_fixed_21_7_0_0_0_config11_s (
        ap_clk,
        ap_rst,
        p_read,
        p_read1,
        p_read2,
        ap_return,
        ap_ce
);


input   ap_clk;
input   ap_rst;
input  [20:0] p_read;
input  [20:0] p_read1;
input  [20:0] p_read2;
output  [20:0] ap_return;
input   ap_ce;

reg[20:0] ap_return;

reg  signed [20:0] p_read25_reg_1042;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
wire   [20:0] p_Val2_108_fu_184_p2;
reg   [20:0] p_Val2_108_reg_1047;
wire   [0:0] overflow_fu_286_p2;
reg   [0:0] overflow_reg_1052;
wire   [0:0] or_ln346_fu_316_p2;
reg   [0:0] or_ln346_reg_1057;
wire   [0:0] p_Result_100_fu_327_p3;
reg   [0:0] p_Result_100_reg_1062;
wire   [20:0] p_Val2_111_fu_365_p2;
reg   [20:0] p_Val2_111_reg_1067;
wire   [0:0] carry_40_fu_385_p2;
reg   [0:0] carry_40_reg_1072;
wire   [0:0] Range1_all_ones_38_fu_409_p2;
reg   [0:0] Range1_all_ones_38_reg_1077;
wire   [0:0] overflow_38_fu_475_p2;
reg   [0:0] overflow_38_reg_1082;
wire   [0:0] or_ln896_18_fu_487_p2;
reg   [0:0] or_ln896_18_reg_1088;
wire   [0:0] p_Result_103_fu_543_p3;
reg   [0:0] p_Result_103_reg_1093;
wire   [20:0] p_Val2_114_fu_581_p2;
reg   [20:0] p_Val2_114_reg_1098;
wire   [0:0] carry_42_fu_601_p2;
reg   [0:0] carry_42_reg_1103;
wire   [0:0] Range1_all_ones_39_fu_625_p2;
reg   [0:0] Range1_all_ones_39_reg_1108;
wire   [0:0] overflow_39_fu_691_p2;
reg   [0:0] overflow_39_reg_1113;
wire   [0:0] or_ln896_19_fu_703_p2;
reg   [0:0] or_ln896_19_reg_1119;
wire  signed [20:0] lhs_9_fu_901_p3;
reg  signed [20:0] lhs_9_reg_1124;
wire   [15:0] r_V_26_fu_88_p1;
wire    ap_block_pp0_stage0;
wire   [15:0] r_V_27_fu_89_p1;
wire  signed [14:0] r_V_fu_90_p1;
wire   [35:0] r_V_fu_90_p2;
wire   [0:0] tmp_160_fu_172_p3;
wire   [20:0] zext_ln377_fu_180_p1;
wire   [20:0] p_Val2_107_fu_154_p4;
wire   [0:0] p_Result_99_fu_190_p3;
wire   [0:0] p_Result_98_fu_164_p3;
wire   [0:0] xor_ln896_fu_198_p2;
wire   [0:0] xor_ln888_fu_218_p2;
wire   [0:0] Range2_all_ones_31_fu_210_p3;
wire   [0:0] or_ln888_fu_224_p2;
wire   [0:0] tmp_163_fu_236_p3;
wire   [0:0] xor_ln890_fu_244_p2;
wire   [0:0] or_ln890_fu_250_p2;
wire   [0:0] carry_38_fu_204_p2;
wire   [0:0] deleted_zeros_fu_230_p2;
wire   [0:0] xor_ln895_fu_268_p2;
wire   [0:0] p_Result_s_fu_146_p3;
wire   [0:0] or_ln895_fu_274_p2;
wire   [0:0] xor_ln895_58_fu_280_p2;
wire   [0:0] deleted_ones_fu_256_p2;
wire   [0:0] xor_ln896_58_fu_292_p2;
wire   [0:0] and_ln891_fu_262_p2;
wire   [0:0] or_ln896_fu_298_p2;
wire   [0:0] xor_ln896_67_fu_304_p2;
wire   [0:0] underflow_fu_310_p2;
wire   [36:0] r_V_26_fu_88_p2;
wire   [0:0] tmp_166_fu_353_p3;
wire   [20:0] zext_ln377_18_fu_361_p1;
wire   [20:0] p_Val2_110_fu_335_p4;
wire   [0:0] p_Result_102_fu_371_p3;
wire   [0:0] p_Result_101_fu_345_p3;
wire   [0:0] xor_ln896_59_fu_379_p2;
wire   [1:0] tmp_fu_399_p4;
wire   [0:0] Range1_all_zeros_fu_415_p2;
wire   [0:0] tmp_169_fu_429_p3;
wire   [0:0] Range2_all_ones_fu_391_p3;
wire   [0:0] xor_ln890_18_fu_437_p2;
wire   [0:0] and_ln890_fu_443_p2;
wire   [0:0] deleted_zeros_18_fu_421_p3;
wire   [0:0] xor_ln895_59_fu_457_p2;
wire   [0:0] or_ln895_18_fu_463_p2;
wire   [0:0] xor_ln895_60_fu_469_p2;
wire   [0:0] deleted_ones_38_fu_449_p3;
wire   [0:0] xor_ln896_60_fu_481_p2;
wire   [20:0] select_ln346_28_fu_493_p3;
wire   [0:0] and_ln891_18_fu_506_p2;
wire   [0:0] xor_ln896_68_fu_510_p2;
wire   [0:0] underflow_38_fu_515_p2;
wire   [0:0] or_ln346_18_fu_527_p2;
wire   [20:0] select_ln346_29_fu_520_p3;
wire   [36:0] r_V_27_fu_89_p2;
wire   [0:0] tmp_172_fu_569_p3;
wire   [20:0] zext_ln377_19_fu_577_p1;
wire   [20:0] p_Val2_113_fu_551_p4;
wire   [0:0] p_Result_105_fu_587_p3;
wire   [0:0] p_Result_104_fu_561_p3;
wire   [0:0] xor_ln896_61_fu_595_p2;
wire   [1:0] tmp_s_fu_615_p4;
wire   [0:0] Range1_all_zeros_1_fu_631_p2;
wire   [0:0] tmp_175_fu_645_p3;
wire   [0:0] Range2_all_ones_30_fu_607_p3;
wire   [0:0] xor_ln890_19_fu_653_p2;
wire   [0:0] and_ln890_13_fu_659_p2;
wire   [0:0] deleted_zeros_19_fu_637_p3;
wire   [0:0] xor_ln895_61_fu_673_p2;
wire   [0:0] or_ln895_19_fu_679_p2;
wire   [0:0] xor_ln895_62_fu_685_p2;
wire   [0:0] deleted_ones_39_fu_665_p3;
wire   [0:0] xor_ln896_62_fu_697_p2;
wire  signed [20:0] rhs_fu_500_p3;
wire  signed [21:0] sext_ln813_fu_709_p1;
wire   [21:0] ret_V_fu_713_p2;
wire   [20:0] p_Val2_116_fu_727_p2;
wire   [0:0] p_Result_106_fu_719_p3;
wire   [0:0] p_Result_107_fu_733_p3;
wire   [0:0] xor_ln895_63_fu_741_p2;
wire   [0:0] xor_ln896_63_fu_753_p2;
wire   [0:0] xor_ln302_fu_765_p2;
wire   [0:0] overflow_40_fu_747_p2;
wire   [0:0] xor_ln302_38_fu_771_p2;
wire   [0:0] underflow_40_fu_759_p2;
wire   [0:0] or_ln302_fu_777_p2;
wire   [20:0] select_ln302_fu_783_p3;
wire   [20:0] select_ln350_fu_791_p3;
wire  signed [20:0] p_Val2_s_fu_799_p3;
wire  signed [20:0] rhs_17_fu_532_p3;
wire  signed [21:0] sext_ln813_29_fu_811_p1;
wire  signed [21:0] sext_ln813_28_fu_807_p1;
wire   [21:0] ret_V_18_fu_815_p2;
wire   [20:0] p_Val2_119_fu_829_p2;
wire   [0:0] p_Result_108_fu_821_p3;
wire   [0:0] p_Result_109_fu_835_p3;
wire   [0:0] xor_ln895_64_fu_843_p2;
wire   [0:0] xor_ln896_64_fu_855_p2;
wire   [0:0] xor_ln302_39_fu_867_p2;
wire   [0:0] overflow_41_fu_849_p2;
wire   [0:0] xor_ln302_40_fu_873_p2;
wire   [0:0] underflow_41_fu_861_p2;
wire   [0:0] or_ln302_18_fu_879_p2;
wire   [20:0] select_ln302_39_fu_885_p3;
wire   [20:0] select_ln350_18_fu_893_p3;
wire   [0:0] and_ln891_19_fu_909_p2;
wire   [0:0] xor_ln896_69_fu_913_p2;
wire   [0:0] underflow_39_fu_918_p2;
wire   [0:0] or_ln346_19_fu_930_p2;
wire   [20:0] select_ln346_30_fu_923_p3;
wire  signed [20:0] rhs_18_fu_935_p3;
wire  signed [21:0] sext_ln813_31_fu_945_p1;
wire  signed [21:0] sext_ln813_30_fu_942_p1;
wire   [21:0] ret_V_19_fu_949_p2;
wire   [20:0] p_Val2_121_fu_963_p2;
wire   [0:0] p_Result_110_fu_955_p3;
wire   [0:0] p_Result_111_fu_968_p3;
wire   [0:0] xor_ln895_65_fu_976_p2;
wire   [0:0] xor_ln896_65_fu_988_p2;
wire   [0:0] xor_ln302_41_fu_1000_p2;
wire   [0:0] overflow_42_fu_982_p2;
wire   [0:0] xor_ln302_42_fu_1006_p2;
wire   [0:0] underflow_42_fu_994_p2;
wire   [0:0] or_ln302_19_fu_1012_p2;
wire   [20:0] select_ln302_41_fu_1018_p3;
wire   [20:0] select_ln350_19_fu_1026_p3;
wire   [20:0] select_ln302_42_fu_1034_p3;
reg    ap_ce_reg;
reg  signed [20:0] p_read_int_reg;
reg  signed [20:0] p_read1_int_reg;
reg   [20:0] p_read2_int_reg;
reg   [20:0] ap_return_int_reg;

motor_mul_21s_16ns_37_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 37 ))
mul_21s_16ns_37_1_0_U46(
    .din0(p_read1_int_reg),
    .din1(r_V_26_fu_88_p1),
    .dout(r_V_26_fu_88_p2)
);

motor_mul_21s_16ns_37_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 37 ))
mul_21s_16ns_37_1_0_U47(
    .din0(p_read25_reg_1042),
    .din1(r_V_27_fu_89_p1),
    .dout(r_V_27_fu_89_p2)
);

motor_mul_21s_15s_36_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 36 ))
mul_21s_15s_36_1_0_U48(
    .din0(p_read_int_reg),
    .din1(r_V_fu_90_p1),
    .dout(r_V_fu_90_p2)
);

always @ (posedge ap_clk) begin
    ap_ce_reg <= ap_ce;
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        Range1_all_ones_38_reg_1077 <= Range1_all_ones_38_fu_409_p2;
        Range1_all_ones_39_reg_1108 <= Range1_all_ones_39_fu_625_p2;
        carry_40_reg_1072 <= carry_40_fu_385_p2;
        carry_42_reg_1103 <= carry_42_fu_601_p2;
        lhs_9_reg_1124 <= lhs_9_fu_901_p3;
        or_ln346_reg_1057 <= or_ln346_fu_316_p2;
        or_ln896_18_reg_1088 <= or_ln896_18_fu_487_p2;
        or_ln896_19_reg_1119 <= or_ln896_19_fu_703_p2;
        overflow_38_reg_1082 <= overflow_38_fu_475_p2;
        overflow_39_reg_1113 <= overflow_39_fu_691_p2;
        overflow_reg_1052 <= overflow_fu_286_p2;
        p_Result_100_reg_1062 <= r_V_26_fu_88_p2[32'd36];
        p_Result_103_reg_1093 <= r_V_27_fu_89_p2[32'd36];
        p_Val2_108_reg_1047 <= p_Val2_108_fu_184_p2;
        p_Val2_111_reg_1067 <= p_Val2_111_fu_365_p2;
        p_Val2_114_reg_1098 <= p_Val2_114_fu_581_p2;
        p_read25_reg_1042 <= p_read2_int_reg;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce_reg)) begin
        ap_return_int_reg <= select_ln302_42_fu_1034_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        p_read1_int_reg <= p_read1;
        p_read2_int_reg <= p_read2;
        p_read_int_reg <= p_read;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return = ap_return_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return = select_ln302_42_fu_1034_p3;
    end else begin
        ap_return = 'bx;
    end
end

assign Range1_all_ones_38_fu_409_p2 = ((tmp_fu_399_p4 == 2'd3) ? 1'b1 : 1'b0);

assign Range1_all_ones_39_fu_625_p2 = ((tmp_s_fu_615_p4 == 2'd3) ? 1'b1 : 1'b0);

assign Range1_all_zeros_1_fu_631_p2 = ((tmp_s_fu_615_p4 == 2'd0) ? 1'b1 : 1'b0);

assign Range1_all_zeros_fu_415_p2 = ((tmp_fu_399_p4 == 2'd0) ? 1'b1 : 1'b0);

assign Range2_all_ones_30_fu_607_p3 = r_V_27_fu_89_p2[32'd36];

assign Range2_all_ones_31_fu_210_p3 = r_V_fu_90_p2[32'd35];

assign Range2_all_ones_fu_391_p3 = r_V_26_fu_88_p2[32'd36];

assign and_ln890_13_fu_659_p2 = (xor_ln890_19_fu_653_p2 & Range2_all_ones_30_fu_607_p3);

assign and_ln890_fu_443_p2 = (xor_ln890_18_fu_437_p2 & Range2_all_ones_fu_391_p3);

assign and_ln891_18_fu_506_p2 = (carry_40_reg_1072 & Range1_all_ones_38_reg_1077);

assign and_ln891_19_fu_909_p2 = (carry_42_reg_1103 & Range1_all_ones_39_reg_1108);

assign and_ln891_fu_262_p2 = (carry_38_fu_204_p2 & Range2_all_ones_31_fu_210_p3);

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign carry_38_fu_204_p2 = (xor_ln896_fu_198_p2 & p_Result_98_fu_164_p3);

assign carry_40_fu_385_p2 = (xor_ln896_59_fu_379_p2 & p_Result_101_fu_345_p3);

assign carry_42_fu_601_p2 = (xor_ln896_61_fu_595_p2 & p_Result_104_fu_561_p3);

assign deleted_ones_38_fu_449_p3 = ((carry_40_fu_385_p2[0:0] == 1'b1) ? and_ln890_fu_443_p2 : Range1_all_ones_38_fu_409_p2);

assign deleted_ones_39_fu_665_p3 = ((carry_42_fu_601_p2[0:0] == 1'b1) ? and_ln890_13_fu_659_p2 : Range1_all_ones_39_fu_625_p2);

assign deleted_ones_fu_256_p2 = (or_ln890_fu_250_p2 & Range2_all_ones_31_fu_210_p3);

assign deleted_zeros_18_fu_421_p3 = ((carry_40_fu_385_p2[0:0] == 1'b1) ? Range1_all_ones_38_fu_409_p2 : Range1_all_zeros_fu_415_p2);

assign deleted_zeros_19_fu_637_p3 = ((carry_42_fu_601_p2[0:0] == 1'b1) ? Range1_all_ones_39_fu_625_p2 : Range1_all_zeros_1_fu_631_p2);

assign deleted_zeros_fu_230_p2 = (or_ln888_fu_224_p2 ^ Range2_all_ones_31_fu_210_p3);

assign lhs_9_fu_901_p3 = ((or_ln302_18_fu_879_p2[0:0] == 1'b1) ? select_ln302_39_fu_885_p3 : select_ln350_18_fu_893_p3);

assign or_ln302_18_fu_879_p2 = (xor_ln302_40_fu_873_p2 | overflow_41_fu_849_p2);

assign or_ln302_19_fu_1012_p2 = (xor_ln302_42_fu_1006_p2 | overflow_42_fu_982_p2);

assign or_ln302_fu_777_p2 = (xor_ln302_38_fu_771_p2 | overflow_40_fu_747_p2);

assign or_ln346_18_fu_527_p2 = (underflow_38_fu_515_p2 | overflow_38_reg_1082);

assign or_ln346_19_fu_930_p2 = (underflow_39_fu_918_p2 | overflow_39_reg_1113);

assign or_ln346_fu_316_p2 = (underflow_fu_310_p2 | overflow_fu_286_p2);

assign or_ln888_fu_224_p2 = (xor_ln888_fu_218_p2 | p_Result_99_fu_190_p3);

assign or_ln890_fu_250_p2 = (xor_ln890_fu_244_p2 | or_ln888_fu_224_p2);

assign or_ln895_18_fu_463_p2 = (xor_ln895_59_fu_457_p2 | p_Result_102_fu_371_p3);

assign or_ln895_19_fu_679_p2 = (xor_ln895_61_fu_673_p2 | p_Result_105_fu_587_p3);

assign or_ln895_fu_274_p2 = (xor_ln895_fu_268_p2 | p_Result_99_fu_190_p3);

assign or_ln896_18_fu_487_p2 = (xor_ln896_60_fu_481_p2 | xor_ln896_59_fu_379_p2);

assign or_ln896_19_fu_703_p2 = (xor_ln896_62_fu_697_p2 | xor_ln896_61_fu_595_p2);

assign or_ln896_fu_298_p2 = (xor_ln896_fu_198_p2 | xor_ln896_58_fu_292_p2);

assign overflow_38_fu_475_p2 = (xor_ln895_60_fu_469_p2 & or_ln895_18_fu_463_p2);

assign overflow_39_fu_691_p2 = (xor_ln895_62_fu_685_p2 & or_ln895_19_fu_679_p2);

assign overflow_40_fu_747_p2 = (xor_ln895_63_fu_741_p2 & p_Result_107_fu_733_p3);

assign overflow_41_fu_849_p2 = (xor_ln895_64_fu_843_p2 & p_Result_109_fu_835_p3);

assign overflow_42_fu_982_p2 = (xor_ln895_65_fu_976_p2 & p_Result_111_fu_968_p3);

assign overflow_fu_286_p2 = (xor_ln895_58_fu_280_p2 & or_ln895_fu_274_p2);

assign p_Result_100_fu_327_p3 = r_V_26_fu_88_p2[32'd36];

assign p_Result_101_fu_345_p3 = r_V_26_fu_88_p2[32'd34];

assign p_Result_102_fu_371_p3 = p_Val2_111_fu_365_p2[32'd20];

assign p_Result_103_fu_543_p3 = r_V_27_fu_89_p2[32'd36];

assign p_Result_104_fu_561_p3 = r_V_27_fu_89_p2[32'd34];

assign p_Result_105_fu_587_p3 = p_Val2_114_fu_581_p2[32'd20];

assign p_Result_106_fu_719_p3 = ret_V_fu_713_p2[32'd21];

assign p_Result_107_fu_733_p3 = p_Val2_116_fu_727_p2[32'd20];

assign p_Result_108_fu_821_p3 = ret_V_18_fu_815_p2[32'd21];

assign p_Result_109_fu_835_p3 = p_Val2_119_fu_829_p2[32'd20];

assign p_Result_110_fu_955_p3 = ret_V_19_fu_949_p2[32'd21];

assign p_Result_111_fu_968_p3 = p_Val2_121_fu_963_p2[32'd20];

assign p_Result_98_fu_164_p3 = r_V_fu_90_p2[32'd34];

assign p_Result_99_fu_190_p3 = p_Val2_108_fu_184_p2[32'd20];

assign p_Result_s_fu_146_p3 = r_V_fu_90_p2[32'd35];

assign p_Val2_107_fu_154_p4 = {{r_V_fu_90_p2[34:14]}};

assign p_Val2_108_fu_184_p2 = (zext_ln377_fu_180_p1 + p_Val2_107_fu_154_p4);

assign p_Val2_110_fu_335_p4 = {{r_V_26_fu_88_p2[34:14]}};

assign p_Val2_111_fu_365_p2 = (zext_ln377_18_fu_361_p1 + p_Val2_110_fu_335_p4);

assign p_Val2_113_fu_551_p4 = {{r_V_27_fu_89_p2[34:14]}};

assign p_Val2_114_fu_581_p2 = (zext_ln377_19_fu_577_p1 + p_Val2_113_fu_551_p4);

assign p_Val2_116_fu_727_p2 = ($signed(rhs_fu_500_p3) + $signed(21'd4717));

assign p_Val2_119_fu_829_p2 = ($signed(rhs_17_fu_532_p3) + $signed(p_Val2_s_fu_799_p3));

assign p_Val2_121_fu_963_p2 = ($signed(rhs_18_fu_935_p3) + $signed(lhs_9_reg_1124));

assign p_Val2_s_fu_799_p3 = ((or_ln302_fu_777_p2[0:0] == 1'b1) ? select_ln302_fu_783_p3 : select_ln350_fu_791_p3);

assign r_V_26_fu_88_p1 = 37'd23754;

assign r_V_27_fu_89_p1 = 37'd17356;

assign r_V_fu_90_p1 = 36'd68719461660;

assign ret_V_18_fu_815_p2 = ($signed(sext_ln813_29_fu_811_p1) + $signed(sext_ln813_28_fu_807_p1));

assign ret_V_19_fu_949_p2 = ($signed(sext_ln813_31_fu_945_p1) + $signed(sext_ln813_30_fu_942_p1));

assign ret_V_fu_713_p2 = ($signed(sext_ln813_fu_709_p1) + $signed(22'd4717));

assign rhs_17_fu_532_p3 = ((or_ln346_18_fu_527_p2[0:0] == 1'b1) ? select_ln346_29_fu_520_p3 : p_Val2_111_reg_1067);

assign rhs_18_fu_935_p3 = ((or_ln346_19_fu_930_p2[0:0] == 1'b1) ? select_ln346_30_fu_923_p3 : p_Val2_114_reg_1098);

assign rhs_fu_500_p3 = ((or_ln346_reg_1057[0:0] == 1'b1) ? select_ln346_28_fu_493_p3 : p_Val2_108_reg_1047);

assign select_ln302_39_fu_885_p3 = ((xor_ln302_39_fu_867_p2[0:0] == 1'b1) ? 21'd1048575 : p_Val2_119_fu_829_p2);

assign select_ln302_41_fu_1018_p3 = ((xor_ln302_41_fu_1000_p2[0:0] == 1'b1) ? 21'd1048575 : p_Val2_121_fu_963_p2);

assign select_ln302_42_fu_1034_p3 = ((or_ln302_19_fu_1012_p2[0:0] == 1'b1) ? select_ln302_41_fu_1018_p3 : select_ln350_19_fu_1026_p3);

assign select_ln302_fu_783_p3 = ((xor_ln302_fu_765_p2[0:0] == 1'b1) ? 21'd1048575 : p_Val2_116_fu_727_p2);

assign select_ln346_28_fu_493_p3 = ((overflow_reg_1052[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_29_fu_520_p3 = ((overflow_38_reg_1082[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_30_fu_923_p3 = ((overflow_39_reg_1113[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln350_18_fu_893_p3 = ((underflow_41_fu_861_p2[0:0] == 1'b1) ? 21'd1048576 : p_Val2_119_fu_829_p2);

assign select_ln350_19_fu_1026_p3 = ((underflow_42_fu_994_p2[0:0] == 1'b1) ? 21'd1048576 : p_Val2_121_fu_963_p2);

assign select_ln350_fu_791_p3 = ((underflow_40_fu_759_p2[0:0] == 1'b1) ? 21'd1048576 : p_Val2_116_fu_727_p2);

assign sext_ln813_28_fu_807_p1 = p_Val2_s_fu_799_p3;

assign sext_ln813_29_fu_811_p1 = rhs_17_fu_532_p3;

assign sext_ln813_30_fu_942_p1 = lhs_9_reg_1124;

assign sext_ln813_31_fu_945_p1 = rhs_18_fu_935_p3;

assign sext_ln813_fu_709_p1 = rhs_fu_500_p3;

assign tmp_160_fu_172_p3 = r_V_fu_90_p2[32'd13];

assign tmp_163_fu_236_p3 = r_V_fu_90_p2[32'd35];

assign tmp_166_fu_353_p3 = r_V_26_fu_88_p2[32'd13];

assign tmp_169_fu_429_p3 = r_V_26_fu_88_p2[32'd35];

assign tmp_172_fu_569_p3 = r_V_27_fu_89_p2[32'd13];

assign tmp_175_fu_645_p3 = r_V_27_fu_89_p2[32'd35];

assign tmp_fu_399_p4 = {{r_V_26_fu_88_p2[36:35]}};

assign tmp_s_fu_615_p4 = {{r_V_27_fu_89_p2[36:35]}};

assign underflow_38_fu_515_p2 = (xor_ln896_68_fu_510_p2 & p_Result_100_reg_1062);

assign underflow_39_fu_918_p2 = (xor_ln896_69_fu_913_p2 & p_Result_103_reg_1093);

assign underflow_40_fu_759_p2 = (xor_ln896_63_fu_753_p2 & p_Result_106_fu_719_p3);

assign underflow_41_fu_861_p2 = (xor_ln896_64_fu_855_p2 & p_Result_108_fu_821_p3);

assign underflow_42_fu_994_p2 = (xor_ln896_65_fu_988_p2 & p_Result_110_fu_955_p3);

assign underflow_fu_310_p2 = (xor_ln896_67_fu_304_p2 & p_Result_s_fu_146_p3);

assign xor_ln302_38_fu_771_p2 = (xor_ln302_fu_765_p2 ^ 1'd1);

assign xor_ln302_39_fu_867_p2 = (p_Result_109_fu_835_p3 ^ p_Result_108_fu_821_p3);

assign xor_ln302_40_fu_873_p2 = (xor_ln302_39_fu_867_p2 ^ 1'd1);

assign xor_ln302_41_fu_1000_p2 = (p_Result_111_fu_968_p3 ^ p_Result_110_fu_955_p3);

assign xor_ln302_42_fu_1006_p2 = (xor_ln302_41_fu_1000_p2 ^ 1'd1);

assign xor_ln302_fu_765_p2 = (p_Result_107_fu_733_p3 ^ p_Result_106_fu_719_p3);

assign xor_ln888_fu_218_p2 = (p_Result_98_fu_164_p3 ^ 1'd1);

assign xor_ln890_18_fu_437_p2 = (tmp_169_fu_429_p3 ^ 1'd1);

assign xor_ln890_19_fu_653_p2 = (tmp_175_fu_645_p3 ^ 1'd1);

assign xor_ln890_fu_244_p2 = (tmp_163_fu_236_p3 ^ 1'd1);

assign xor_ln895_58_fu_280_p2 = (p_Result_s_fu_146_p3 ^ 1'd1);

assign xor_ln895_59_fu_457_p2 = (deleted_zeros_18_fu_421_p3 ^ 1'd1);

assign xor_ln895_60_fu_469_p2 = (p_Result_100_fu_327_p3 ^ 1'd1);

assign xor_ln895_61_fu_673_p2 = (deleted_zeros_19_fu_637_p3 ^ 1'd1);

assign xor_ln895_62_fu_685_p2 = (p_Result_103_fu_543_p3 ^ 1'd1);

assign xor_ln895_63_fu_741_p2 = (p_Result_106_fu_719_p3 ^ 1'd1);

assign xor_ln895_64_fu_843_p2 = (p_Result_108_fu_821_p3 ^ 1'd1);

assign xor_ln895_65_fu_976_p2 = (p_Result_110_fu_955_p3 ^ 1'd1);

assign xor_ln895_fu_268_p2 = (deleted_zeros_fu_230_p2 ^ 1'd1);

assign xor_ln896_58_fu_292_p2 = (deleted_ones_fu_256_p2 ^ 1'd1);

assign xor_ln896_59_fu_379_p2 = (p_Result_102_fu_371_p3 ^ 1'd1);

assign xor_ln896_60_fu_481_p2 = (deleted_ones_38_fu_449_p3 ^ 1'd1);

assign xor_ln896_61_fu_595_p2 = (p_Result_105_fu_587_p3 ^ 1'd1);

assign xor_ln896_62_fu_697_p2 = (deleted_ones_39_fu_665_p3 ^ 1'd1);

assign xor_ln896_63_fu_753_p2 = (p_Result_107_fu_733_p3 ^ 1'd1);

assign xor_ln896_64_fu_855_p2 = (p_Result_109_fu_835_p3 ^ 1'd1);

assign xor_ln896_65_fu_988_p2 = (p_Result_111_fu_968_p3 ^ 1'd1);

assign xor_ln896_67_fu_304_p2 = (or_ln896_fu_298_p2 ^ and_ln891_fu_262_p2);

assign xor_ln896_68_fu_510_p2 = (or_ln896_18_reg_1088 ^ and_ln891_18_fu_506_p2);

assign xor_ln896_69_fu_913_p2 = (or_ln896_19_reg_1119 ^ and_ln891_19_fu_909_p2);

assign xor_ln896_fu_198_p2 = (p_Result_99_fu_190_p3 ^ 1'd1);

assign zext_ln377_18_fu_361_p1 = tmp_166_fu_353_p3;

assign zext_ln377_19_fu_577_p1 = tmp_172_fu_569_p3;

assign zext_ln377_fu_180_p1 = tmp_160_fu_172_p3;

endmodule //motor_dense_latency_ap_fixed_21_7_0_0_0_ap_fixed_21_7_0_0_0_config11_s
