module motor_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config11_s (
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
input  [15:0] p_read;
input  [15:0] p_read1;
input  [15:0] p_read2;
output  [15:0] ap_return;
input   ap_ce;

reg[15:0] ap_return;

wire  signed [15:0] rhs_fu_338_p3;
reg  signed [15:0] rhs_reg_1062;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [15:0] p_Val2_99_fu_389_p2;
reg   [15:0] p_Val2_99_reg_1068;
wire   [0:0] overflow_34_fu_505_p2;
reg   [0:0] overflow_34_reg_1073;
wire   [0:0] or_ln346_15_fu_535_p2;
reg   [0:0] or_ln346_15_reg_1078;
wire   [15:0] p_Val2_102_fu_584_p2;
reg   [15:0] p_Val2_102_reg_1083;
wire   [0:0] overflow_35_fu_700_p2;
reg   [0:0] overflow_35_reg_1088;
wire   [0:0] or_ln346_16_fu_730_p2;
reg   [0:0] or_ln346_16_reg_1093;
wire   [10:0] r_V_23_fu_88_p1;
wire    ap_block_pp0_stage0;
wire  signed [9:0] r_V_fu_89_p1;
wire   [10:0] r_V_24_fu_90_p1;
wire   [25:0] r_V_fu_89_p2;
wire   [0:0] tmp_140_fu_180_p3;
wire   [15:0] zext_ln377_fu_188_p1;
wire   [15:0] p_Val2_95_fu_162_p4;
wire   [15:0] p_Val2_96_fu_192_p2;
wire   [0:0] p_Result_88_fu_198_p3;
wire   [0:0] p_Result_87_fu_172_p3;
wire   [0:0] xor_ln896_fu_206_p2;
wire   [0:0] xor_ln888_fu_226_p2;
wire   [0:0] Range2_all_ones_26_fu_218_p3;
wire   [0:0] or_ln888_fu_232_p2;
wire   [0:0] tmp_143_fu_244_p3;
wire   [0:0] xor_ln890_fu_252_p2;
wire   [0:0] or_ln890_fu_258_p2;
wire   [0:0] carry_31_fu_212_p2;
wire   [0:0] deleted_zeros_fu_238_p2;
wire   [0:0] xor_ln895_fu_276_p2;
wire   [0:0] p_Result_s_fu_154_p3;
wire   [0:0] or_ln895_fu_282_p2;
wire   [0:0] xor_ln895_51_fu_288_p2;
wire   [0:0] deleted_ones_fu_264_p2;
wire   [0:0] xor_ln896_51_fu_300_p2;
wire   [0:0] and_ln891_fu_270_p2;
wire   [0:0] or_ln896_fu_306_p2;
wire   [0:0] xor_ln896_60_fu_312_p2;
wire   [0:0] overflow_fu_294_p2;
wire   [0:0] underflow_fu_318_p2;
wire   [0:0] or_ln346_fu_332_p2;
wire   [15:0] select_ln346_27_fu_324_p3;
wire   [26:0] r_V_23_fu_88_p2;
wire   [0:0] tmp_146_fu_377_p3;
wire   [15:0] zext_ln377_15_fu_385_p1;
wire   [15:0] p_Val2_98_fu_359_p4;
wire   [0:0] p_Result_91_fu_395_p3;
wire   [0:0] p_Result_90_fu_369_p3;
wire   [0:0] xor_ln896_52_fu_403_p2;
wire   [1:0] tmp_fu_423_p4;
wire   [0:0] carry_33_fu_409_p2;
wire   [0:0] Range1_all_ones_34_fu_433_p2;
wire   [0:0] Range1_all_zeros_fu_439_p2;
wire   [0:0] tmp_149_fu_453_p3;
wire   [0:0] Range2_all_ones_fu_415_p3;
wire   [0:0] xor_ln890_15_fu_461_p2;
wire   [0:0] and_ln890_fu_467_p2;
wire   [0:0] deleted_zeros_14_fu_445_p3;
wire   [0:0] xor_ln895_52_fu_487_p2;
wire   [0:0] p_Result_89_fu_351_p3;
wire   [0:0] or_ln895_15_fu_493_p2;
wire   [0:0] xor_ln895_53_fu_499_p2;
wire   [0:0] deleted_ones_34_fu_473_p3;
wire   [0:0] xor_ln896_53_fu_511_p2;
wire   [0:0] and_ln891_15_fu_481_p2;
wire   [0:0] or_ln896_15_fu_517_p2;
wire   [0:0] xor_ln896_61_fu_523_p2;
wire   [0:0] underflow_34_fu_529_p2;
wire   [26:0] r_V_24_fu_90_p2;
wire   [0:0] tmp_152_fu_572_p3;
wire   [15:0] zext_ln377_16_fu_580_p1;
wire   [15:0] p_Val2_101_fu_554_p4;
wire   [0:0] p_Result_94_fu_590_p3;
wire   [0:0] p_Result_93_fu_564_p3;
wire   [0:0] xor_ln896_54_fu_598_p2;
wire   [1:0] tmp_s_fu_618_p4;
wire   [0:0] carry_35_fu_604_p2;
wire   [0:0] Range1_all_ones_35_fu_628_p2;
wire   [0:0] Range1_all_zeros_1_fu_634_p2;
wire   [0:0] tmp_155_fu_648_p3;
wire   [0:0] Range2_all_ones_25_fu_610_p3;
wire   [0:0] xor_ln890_16_fu_656_p2;
wire   [0:0] and_ln890_11_fu_662_p2;
wire   [0:0] deleted_zeros_15_fu_640_p3;
wire   [0:0] xor_ln895_54_fu_682_p2;
wire   [0:0] p_Result_92_fu_546_p3;
wire   [0:0] or_ln895_16_fu_688_p2;
wire   [0:0] xor_ln895_55_fu_694_p2;
wire   [0:0] deleted_ones_35_fu_668_p3;
wire   [0:0] xor_ln896_55_fu_706_p2;
wire   [0:0] and_ln891_16_fu_676_p2;
wire   [0:0] or_ln896_16_fu_712_p2;
wire   [0:0] xor_ln896_62_fu_718_p2;
wire   [0:0] underflow_35_fu_724_p2;
wire   [15:0] select_ln346_28_fu_736_p3;
wire   [15:0] select_ln346_29_fu_749_p3;
wire  signed [16:0] sext_ln813_fu_762_p1;
wire   [16:0] ret_V_fu_765_p2;
wire   [15:0] p_Val2_104_fu_779_p2;
wire   [0:0] p_Result_95_fu_771_p3;
wire   [0:0] p_Result_96_fu_784_p3;
wire   [0:0] xor_ln895_56_fu_792_p2;
wire   [0:0] xor_ln896_56_fu_804_p2;
wire   [0:0] xor_ln302_fu_816_p2;
wire   [0:0] overflow_36_fu_798_p2;
wire   [0:0] xor_ln302_36_fu_822_p2;
wire   [0:0] underflow_36_fu_810_p2;
wire   [0:0] or_ln302_fu_828_p2;
wire   [15:0] select_ln302_fu_834_p3;
wire   [15:0] select_ln350_fu_842_p3;
wire  signed [15:0] p_Val2_s_fu_850_p3;
wire  signed [15:0] rhs_14_fu_743_p3;
wire  signed [16:0] sext_ln813_26_fu_862_p1;
wire  signed [16:0] sext_ln813_25_fu_858_p1;
wire   [16:0] ret_V_17_fu_866_p2;
wire   [15:0] p_Val2_107_fu_880_p2;
wire   [0:0] p_Result_97_fu_872_p3;
wire   [0:0] p_Result_98_fu_886_p3;
wire   [0:0] xor_ln895_57_fu_894_p2;
wire   [0:0] xor_ln896_57_fu_906_p2;
wire   [0:0] xor_ln302_37_fu_918_p2;
wire   [0:0] overflow_37_fu_900_p2;
wire   [0:0] xor_ln302_38_fu_924_p2;
wire   [0:0] underflow_37_fu_912_p2;
wire   [0:0] or_ln302_17_fu_930_p2;
wire   [15:0] select_ln302_37_fu_936_p3;
wire   [15:0] select_ln350_17_fu_944_p3;
wire  signed [15:0] lhs_9_fu_952_p3;
wire  signed [15:0] rhs_15_fu_756_p3;
wire  signed [16:0] sext_ln813_28_fu_964_p1;
wire  signed [16:0] sext_ln813_27_fu_960_p1;
wire   [16:0] ret_V_18_fu_968_p2;
wire   [15:0] p_Val2_109_fu_982_p2;
wire   [0:0] p_Result_99_fu_974_p3;
wire   [0:0] p_Result_100_fu_988_p3;
wire   [0:0] xor_ln895_58_fu_996_p2;
wire   [0:0] xor_ln896_58_fu_1008_p2;
wire   [0:0] xor_ln302_39_fu_1020_p2;
wire   [0:0] overflow_38_fu_1002_p2;
wire   [0:0] xor_ln302_40_fu_1026_p2;
wire   [0:0] underflow_38_fu_1014_p2;
wire   [0:0] or_ln302_18_fu_1032_p2;
wire   [15:0] select_ln302_39_fu_1038_p3;
wire   [15:0] select_ln350_18_fu_1046_p3;
wire   [15:0] select_ln302_40_fu_1054_p3;
reg    ap_ce_reg;
reg   [15:0] ap_return_int_reg;

motor_mul_16s_11ns_27_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 11 ),
    .dout_WIDTH( 27 ))
mul_16s_11ns_27_1_0_U39(
    .din0(p_read1),
    .din1(r_V_23_fu_88_p1),
    .dout(r_V_23_fu_88_p2)
);

motor_mul_16s_10s_26_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 10 ),
    .dout_WIDTH( 26 ))
mul_16s_10s_26_1_0_U40(
    .din0(p_read),
    .din1(r_V_fu_89_p1),
    .dout(r_V_fu_89_p2)
);

motor_mul_16s_11ns_27_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 11 ),
    .dout_WIDTH( 27 ))
mul_16s_11ns_27_1_0_U41(
    .din0(p_read2),
    .din1(r_V_24_fu_90_p1),
    .dout(r_V_24_fu_90_p2)
);

always @ (posedge ap_clk) begin
    ap_ce_reg <= ap_ce;
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce_reg)) begin
        ap_return_int_reg <= select_ln302_40_fu_1054_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        or_ln346_15_reg_1078 <= or_ln346_15_fu_535_p2;
        or_ln346_16_reg_1093 <= or_ln346_16_fu_730_p2;
        overflow_34_reg_1073 <= overflow_34_fu_505_p2;
        overflow_35_reg_1088 <= overflow_35_fu_700_p2;
        p_Val2_102_reg_1083 <= p_Val2_102_fu_584_p2;
        p_Val2_99_reg_1068 <= p_Val2_99_fu_389_p2;
        rhs_reg_1062 <= rhs_fu_338_p3;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return = ap_return_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return = select_ln302_40_fu_1054_p3;
    end else begin
        ap_return = 'bx;
    end
end

assign Range1_all_ones_34_fu_433_p2 = ((tmp_fu_423_p4 == 2'd3) ? 1'b1 : 1'b0);

assign Range1_all_ones_35_fu_628_p2 = ((tmp_s_fu_618_p4 == 2'd3) ? 1'b1 : 1'b0);

assign Range1_all_zeros_1_fu_634_p2 = ((tmp_s_fu_618_p4 == 2'd0) ? 1'b1 : 1'b0);

assign Range1_all_zeros_fu_439_p2 = ((tmp_fu_423_p4 == 2'd0) ? 1'b1 : 1'b0);

assign Range2_all_ones_25_fu_610_p3 = r_V_24_fu_90_p2[32'd26];

assign Range2_all_ones_26_fu_218_p3 = r_V_fu_89_p2[32'd25];

assign Range2_all_ones_fu_415_p3 = r_V_23_fu_88_p2[32'd26];

assign and_ln890_11_fu_662_p2 = (xor_ln890_16_fu_656_p2 & Range2_all_ones_25_fu_610_p3);

assign and_ln890_fu_467_p2 = (xor_ln890_15_fu_461_p2 & Range2_all_ones_fu_415_p3);

assign and_ln891_15_fu_481_p2 = (carry_33_fu_409_p2 & Range1_all_ones_34_fu_433_p2);

assign and_ln891_16_fu_676_p2 = (carry_35_fu_604_p2 & Range1_all_ones_35_fu_628_p2);

assign and_ln891_fu_270_p2 = (carry_31_fu_212_p2 & Range2_all_ones_26_fu_218_p3);

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign carry_31_fu_212_p2 = (xor_ln896_fu_206_p2 & p_Result_87_fu_172_p3);

assign carry_33_fu_409_p2 = (xor_ln896_52_fu_403_p2 & p_Result_90_fu_369_p3);

assign carry_35_fu_604_p2 = (xor_ln896_54_fu_598_p2 & p_Result_93_fu_564_p3);

assign deleted_ones_34_fu_473_p3 = ((carry_33_fu_409_p2[0:0] == 1'b1) ? and_ln890_fu_467_p2 : Range1_all_ones_34_fu_433_p2);

assign deleted_ones_35_fu_668_p3 = ((carry_35_fu_604_p2[0:0] == 1'b1) ? and_ln890_11_fu_662_p2 : Range1_all_ones_35_fu_628_p2);

assign deleted_ones_fu_264_p2 = (or_ln890_fu_258_p2 & Range2_all_ones_26_fu_218_p3);

assign deleted_zeros_14_fu_445_p3 = ((carry_33_fu_409_p2[0:0] == 1'b1) ? Range1_all_ones_34_fu_433_p2 : Range1_all_zeros_fu_439_p2);

assign deleted_zeros_15_fu_640_p3 = ((carry_35_fu_604_p2[0:0] == 1'b1) ? Range1_all_ones_35_fu_628_p2 : Range1_all_zeros_1_fu_634_p2);

assign deleted_zeros_fu_238_p2 = (or_ln888_fu_232_p2 ^ Range2_all_ones_26_fu_218_p3);

assign lhs_9_fu_952_p3 = ((or_ln302_17_fu_930_p2[0:0] == 1'b1) ? select_ln302_37_fu_936_p3 : select_ln350_17_fu_944_p3);

assign or_ln302_17_fu_930_p2 = (xor_ln302_38_fu_924_p2 | overflow_37_fu_900_p2);

assign or_ln302_18_fu_1032_p2 = (xor_ln302_40_fu_1026_p2 | overflow_38_fu_1002_p2);

assign or_ln302_fu_828_p2 = (xor_ln302_36_fu_822_p2 | overflow_36_fu_798_p2);

assign or_ln346_15_fu_535_p2 = (underflow_34_fu_529_p2 | overflow_34_fu_505_p2);

assign or_ln346_16_fu_730_p2 = (underflow_35_fu_724_p2 | overflow_35_fu_700_p2);

assign or_ln346_fu_332_p2 = (underflow_fu_318_p2 | overflow_fu_294_p2);

assign or_ln888_fu_232_p2 = (xor_ln888_fu_226_p2 | p_Result_88_fu_198_p3);

assign or_ln890_fu_258_p2 = (xor_ln890_fu_252_p2 | or_ln888_fu_232_p2);

assign or_ln895_15_fu_493_p2 = (xor_ln895_52_fu_487_p2 | p_Result_91_fu_395_p3);

assign or_ln895_16_fu_688_p2 = (xor_ln895_54_fu_682_p2 | p_Result_94_fu_590_p3);

assign or_ln895_fu_282_p2 = (xor_ln895_fu_276_p2 | p_Result_88_fu_198_p3);

assign or_ln896_15_fu_517_p2 = (xor_ln896_53_fu_511_p2 | xor_ln896_52_fu_403_p2);

assign or_ln896_16_fu_712_p2 = (xor_ln896_55_fu_706_p2 | xor_ln896_54_fu_598_p2);

assign or_ln896_fu_306_p2 = (xor_ln896_fu_206_p2 | xor_ln896_51_fu_300_p2);

assign overflow_34_fu_505_p2 = (xor_ln895_53_fu_499_p2 & or_ln895_15_fu_493_p2);

assign overflow_35_fu_700_p2 = (xor_ln895_55_fu_694_p2 & or_ln895_16_fu_688_p2);

assign overflow_36_fu_798_p2 = (xor_ln895_56_fu_792_p2 & p_Result_96_fu_784_p3);

assign overflow_37_fu_900_p2 = (xor_ln895_57_fu_894_p2 & p_Result_98_fu_886_p3);

assign overflow_38_fu_1002_p2 = (xor_ln895_58_fu_996_p2 & p_Result_100_fu_988_p3);

assign overflow_fu_294_p2 = (xor_ln895_51_fu_288_p2 & or_ln895_fu_282_p2);

assign p_Result_100_fu_988_p3 = p_Val2_109_fu_982_p2[32'd15];

assign p_Result_87_fu_172_p3 = r_V_fu_89_p2[32'd24];

assign p_Result_88_fu_198_p3 = p_Val2_96_fu_192_p2[32'd15];

assign p_Result_89_fu_351_p3 = r_V_23_fu_88_p2[32'd26];

assign p_Result_90_fu_369_p3 = r_V_23_fu_88_p2[32'd24];

assign p_Result_91_fu_395_p3 = p_Val2_99_fu_389_p2[32'd15];

assign p_Result_92_fu_546_p3 = r_V_24_fu_90_p2[32'd26];

assign p_Result_93_fu_564_p3 = r_V_24_fu_90_p2[32'd24];

assign p_Result_94_fu_590_p3 = p_Val2_102_fu_584_p2[32'd15];

assign p_Result_95_fu_771_p3 = ret_V_fu_765_p2[32'd16];

assign p_Result_96_fu_784_p3 = p_Val2_104_fu_779_p2[32'd15];

assign p_Result_97_fu_872_p3 = ret_V_17_fu_866_p2[32'd16];

assign p_Result_98_fu_886_p3 = p_Val2_107_fu_880_p2[32'd15];

assign p_Result_99_fu_974_p3 = ret_V_18_fu_968_p2[32'd16];

assign p_Result_s_fu_154_p3 = r_V_fu_89_p2[32'd25];

assign p_Val2_101_fu_554_p4 = {{r_V_24_fu_90_p2[24:9]}};

assign p_Val2_102_fu_584_p2 = (zext_ln377_16_fu_580_p1 + p_Val2_101_fu_554_p4);

assign p_Val2_104_fu_779_p2 = ($signed(rhs_reg_1062) + $signed(16'd148));

assign p_Val2_107_fu_880_p2 = ($signed(rhs_14_fu_743_p3) + $signed(p_Val2_s_fu_850_p3));

assign p_Val2_109_fu_982_p2 = ($signed(rhs_15_fu_756_p3) + $signed(lhs_9_fu_952_p3));

assign p_Val2_95_fu_162_p4 = {{r_V_fu_89_p2[24:9]}};

assign p_Val2_96_fu_192_p2 = (zext_ln377_fu_188_p1 + p_Val2_95_fu_162_p4);

assign p_Val2_98_fu_359_p4 = {{r_V_23_fu_88_p2[24:9]}};

assign p_Val2_99_fu_389_p2 = (zext_ln377_15_fu_385_p1 + p_Val2_98_fu_359_p4);

assign p_Val2_s_fu_850_p3 = ((or_ln302_fu_828_p2[0:0] == 1'b1) ? select_ln302_fu_834_p3 : select_ln350_fu_842_p3);

assign r_V_23_fu_88_p1 = 27'd739;

assign r_V_24_fu_90_p1 = 27'd541;

assign r_V_fu_89_p1 = 26'd67108394;

assign ret_V_17_fu_866_p2 = ($signed(sext_ln813_26_fu_862_p1) + $signed(sext_ln813_25_fu_858_p1));

assign ret_V_18_fu_968_p2 = ($signed(sext_ln813_28_fu_964_p1) + $signed(sext_ln813_27_fu_960_p1));

assign ret_V_fu_765_p2 = ($signed(sext_ln813_fu_762_p1) + $signed(17'd148));

assign rhs_14_fu_743_p3 = ((or_ln346_15_reg_1078[0:0] == 1'b1) ? select_ln346_28_fu_736_p3 : p_Val2_99_reg_1068);

assign rhs_15_fu_756_p3 = ((or_ln346_16_reg_1093[0:0] == 1'b1) ? select_ln346_29_fu_749_p3 : p_Val2_102_reg_1083);

assign rhs_fu_338_p3 = ((or_ln346_fu_332_p2[0:0] == 1'b1) ? select_ln346_27_fu_324_p3 : p_Val2_96_fu_192_p2);

assign select_ln302_37_fu_936_p3 = ((xor_ln302_37_fu_918_p2[0:0] == 1'b1) ? 16'd32767 : p_Val2_107_fu_880_p2);

assign select_ln302_39_fu_1038_p3 = ((xor_ln302_39_fu_1020_p2[0:0] == 1'b1) ? 16'd32767 : p_Val2_109_fu_982_p2);

assign select_ln302_40_fu_1054_p3 = ((or_ln302_18_fu_1032_p2[0:0] == 1'b1) ? select_ln302_39_fu_1038_p3 : select_ln350_18_fu_1046_p3);

assign select_ln302_fu_834_p3 = ((xor_ln302_fu_816_p2[0:0] == 1'b1) ? 16'd32767 : p_Val2_104_fu_779_p2);

assign select_ln346_27_fu_324_p3 = ((overflow_fu_294_p2[0:0] == 1'b1) ? 16'd32767 : 16'd32768);

assign select_ln346_28_fu_736_p3 = ((overflow_34_reg_1073[0:0] == 1'b1) ? 16'd32767 : 16'd32768);

assign select_ln346_29_fu_749_p3 = ((overflow_35_reg_1088[0:0] == 1'b1) ? 16'd32767 : 16'd32768);

assign select_ln350_17_fu_944_p3 = ((underflow_37_fu_912_p2[0:0] == 1'b1) ? 16'd32768 : p_Val2_107_fu_880_p2);

assign select_ln350_18_fu_1046_p3 = ((underflow_38_fu_1014_p2[0:0] == 1'b1) ? 16'd32768 : p_Val2_109_fu_982_p2);

assign select_ln350_fu_842_p3 = ((underflow_36_fu_810_p2[0:0] == 1'b1) ? 16'd32768 : p_Val2_104_fu_779_p2);

assign sext_ln813_25_fu_858_p1 = p_Val2_s_fu_850_p3;

assign sext_ln813_26_fu_862_p1 = rhs_14_fu_743_p3;

assign sext_ln813_27_fu_960_p1 = lhs_9_fu_952_p3;

assign sext_ln813_28_fu_964_p1 = rhs_15_fu_756_p3;

assign sext_ln813_fu_762_p1 = rhs_reg_1062;

assign tmp_140_fu_180_p3 = r_V_fu_89_p2[32'd8];

assign tmp_143_fu_244_p3 = r_V_fu_89_p2[32'd25];

assign tmp_146_fu_377_p3 = r_V_23_fu_88_p2[32'd8];

assign tmp_149_fu_453_p3 = r_V_23_fu_88_p2[32'd25];

assign tmp_152_fu_572_p3 = r_V_24_fu_90_p2[32'd8];

assign tmp_155_fu_648_p3 = r_V_24_fu_90_p2[32'd25];

assign tmp_fu_423_p4 = {{r_V_23_fu_88_p2[26:25]}};

assign tmp_s_fu_618_p4 = {{r_V_24_fu_90_p2[26:25]}};

assign underflow_34_fu_529_p2 = (xor_ln896_61_fu_523_p2 & p_Result_89_fu_351_p3);

assign underflow_35_fu_724_p2 = (xor_ln896_62_fu_718_p2 & p_Result_92_fu_546_p3);

assign underflow_36_fu_810_p2 = (xor_ln896_56_fu_804_p2 & p_Result_95_fu_771_p3);

assign underflow_37_fu_912_p2 = (xor_ln896_57_fu_906_p2 & p_Result_97_fu_872_p3);

assign underflow_38_fu_1014_p2 = (xor_ln896_58_fu_1008_p2 & p_Result_99_fu_974_p3);

assign underflow_fu_318_p2 = (xor_ln896_60_fu_312_p2 & p_Result_s_fu_154_p3);

assign xor_ln302_36_fu_822_p2 = (xor_ln302_fu_816_p2 ^ 1'd1);

assign xor_ln302_37_fu_918_p2 = (p_Result_98_fu_886_p3 ^ p_Result_97_fu_872_p3);

assign xor_ln302_38_fu_924_p2 = (xor_ln302_37_fu_918_p2 ^ 1'd1);

assign xor_ln302_39_fu_1020_p2 = (p_Result_99_fu_974_p3 ^ p_Result_100_fu_988_p3);

assign xor_ln302_40_fu_1026_p2 = (xor_ln302_39_fu_1020_p2 ^ 1'd1);

assign xor_ln302_fu_816_p2 = (p_Result_96_fu_784_p3 ^ p_Result_95_fu_771_p3);

assign xor_ln888_fu_226_p2 = (p_Result_87_fu_172_p3 ^ 1'd1);

assign xor_ln890_15_fu_461_p2 = (tmp_149_fu_453_p3 ^ 1'd1);

assign xor_ln890_16_fu_656_p2 = (tmp_155_fu_648_p3 ^ 1'd1);

assign xor_ln890_fu_252_p2 = (tmp_143_fu_244_p3 ^ 1'd1);

assign xor_ln895_51_fu_288_p2 = (p_Result_s_fu_154_p3 ^ 1'd1);

assign xor_ln895_52_fu_487_p2 = (deleted_zeros_14_fu_445_p3 ^ 1'd1);

assign xor_ln895_53_fu_499_p2 = (p_Result_89_fu_351_p3 ^ 1'd1);

assign xor_ln895_54_fu_682_p2 = (deleted_zeros_15_fu_640_p3 ^ 1'd1);

assign xor_ln895_55_fu_694_p2 = (p_Result_92_fu_546_p3 ^ 1'd1);

assign xor_ln895_56_fu_792_p2 = (p_Result_95_fu_771_p3 ^ 1'd1);

assign xor_ln895_57_fu_894_p2 = (p_Result_97_fu_872_p3 ^ 1'd1);

assign xor_ln895_58_fu_996_p2 = (p_Result_99_fu_974_p3 ^ 1'd1);

assign xor_ln895_fu_276_p2 = (deleted_zeros_fu_238_p2 ^ 1'd1);

assign xor_ln896_51_fu_300_p2 = (deleted_ones_fu_264_p2 ^ 1'd1);

assign xor_ln896_52_fu_403_p2 = (p_Result_91_fu_395_p3 ^ 1'd1);

assign xor_ln896_53_fu_511_p2 = (deleted_ones_34_fu_473_p3 ^ 1'd1);

assign xor_ln896_54_fu_598_p2 = (p_Result_94_fu_590_p3 ^ 1'd1);

assign xor_ln896_55_fu_706_p2 = (deleted_ones_35_fu_668_p3 ^ 1'd1);

assign xor_ln896_56_fu_804_p2 = (p_Result_96_fu_784_p3 ^ 1'd1);

assign xor_ln896_57_fu_906_p2 = (p_Result_98_fu_886_p3 ^ 1'd1);

assign xor_ln896_58_fu_1008_p2 = (p_Result_100_fu_988_p3 ^ 1'd1);

assign xor_ln896_60_fu_312_p2 = (or_ln896_fu_306_p2 ^ and_ln891_fu_270_p2);

assign xor_ln896_61_fu_523_p2 = (or_ln896_15_fu_517_p2 ^ and_ln891_15_fu_481_p2);

assign xor_ln896_62_fu_718_p2 = (or_ln896_16_fu_712_p2 ^ and_ln891_16_fu_676_p2);

assign xor_ln896_fu_206_p2 = (p_Result_88_fu_198_p3 ^ 1'd1);

assign zext_ln377_15_fu_385_p1 = tmp_146_fu_377_p3;

assign zext_ln377_16_fu_580_p1 = tmp_152_fu_572_p3;

assign zext_ln377_fu_188_p1 = tmp_140_fu_180_p3;

endmodule //motor_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config11_s
