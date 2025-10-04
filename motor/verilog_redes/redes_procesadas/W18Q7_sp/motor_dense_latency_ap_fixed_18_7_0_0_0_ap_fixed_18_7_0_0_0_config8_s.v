module motor_dense_latency_ap_fixed_18_7_0_0_0_ap_fixed_18_7_0_0_0_config8_s (
        ap_clk,
        ap_rst,
        p_read,
        p_read1,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_ce
);


input   ap_clk;
input   ap_rst;
input  [17:0] p_read;
input  [17:0] p_read1;
output  [17:0] ap_return_0;
output  [17:0] ap_return_1;
output  [17:0] ap_return_2;
input   ap_ce;

reg[17:0] ap_return_0;
reg[17:0] ap_return_1;
reg[17:0] ap_return_2;

reg  signed [17:0] p_read_6_reg_1391;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
wire  signed [17:0] rhs_1_fu_384_p3;
reg  signed [17:0] rhs_1_reg_1396;
reg  signed [17:0] rhs_1_reg_1396_pp0_iter1_reg;
wire  signed [17:0] rhs_2_fu_576_p3;
reg  signed [17:0] rhs_2_reg_1402;
wire   [17:0] p_Val2_3_fu_626_p2;
reg   [17:0] p_Val2_3_reg_1408;
wire   [0:0] overflow_fu_742_p2;
reg   [0:0] overflow_reg_1413;
wire   [0:0] or_ln346_fu_772_p2;
reg   [0:0] or_ln346_reg_1418;
wire  signed [17:0] lhs_1_fu_866_p3;
reg  signed [17:0] lhs_1_reg_1423;
wire  signed [17:0] r_V_2_fu_102_p0;
wire  signed [29:0] sext_ln70_1_fu_194_p1;
wire  signed [11:0] r_V_2_fu_102_p1;
wire    ap_block_pp0_stage0;
wire  signed [12:0] r_V_fu_104_p1;
wire  signed [17:0] r_V_1_fu_105_p0;
wire   [11:0] r_V_1_fu_105_p1;
wire   [29:0] r_V_1_fu_105_p2;
wire   [0:0] tmp_9_fu_226_p3;
wire   [17:0] zext_ln377_1_fu_234_p1;
wire   [17:0] p_Val2_4_fu_208_p4;
wire   [17:0] p_Val2_6_fu_238_p2;
wire   [0:0] p_Result_5_fu_244_p3;
wire   [0:0] p_Result_4_fu_218_p3;
wire   [0:0] xor_ln896_2_fu_252_p2;
wire   [0:0] xor_ln888_fu_272_p2;
wire   [0:0] Range2_all_ones_3_fu_264_p3;
wire   [0:0] or_ln888_fu_278_p2;
wire   [0:0] tmp_12_fu_290_p3;
wire   [0:0] xor_ln890_1_fu_298_p2;
wire   [0:0] or_ln890_fu_304_p2;
wire   [0:0] carry_3_fu_258_p2;
wire   [0:0] deleted_zeros_1_fu_284_p2;
wire   [0:0] xor_ln895_2_fu_322_p2;
wire   [0:0] p_Result_3_fu_200_p3;
wire   [0:0] or_ln895_1_fu_328_p2;
wire   [0:0] xor_ln895_3_fu_334_p2;
wire   [0:0] deleted_ones_1_fu_310_p2;
wire   [0:0] xor_ln896_3_fu_346_p2;
wire   [0:0] and_ln891_1_fu_316_p2;
wire   [0:0] or_ln896_1_fu_352_p2;
wire   [0:0] xor_ln896_13_fu_358_p2;
wire   [0:0] overflow_1_fu_340_p2;
wire   [0:0] underflow_1_fu_364_p2;
wire   [0:0] or_ln346_1_fu_378_p2;
wire   [17:0] select_ln346_2_fu_370_p3;
wire   [29:0] r_V_2_fu_102_p2;
wire   [0:0] tmp_15_fu_418_p3;
wire   [17:0] zext_ln377_2_fu_426_p1;
wire   [17:0] p_Val2_7_fu_400_p4;
wire   [17:0] p_Val2_9_fu_430_p2;
wire   [0:0] p_Result_8_fu_436_p3;
wire   [0:0] p_Result_7_fu_410_p3;
wire   [0:0] xor_ln896_4_fu_444_p2;
wire   [0:0] xor_ln888_2_fu_464_p2;
wire   [0:0] Range2_all_ones_4_fu_456_p3;
wire   [0:0] or_ln888_1_fu_470_p2;
wire   [0:0] tmp_18_fu_482_p3;
wire   [0:0] xor_ln890_2_fu_490_p2;
wire   [0:0] or_ln890_1_fu_496_p2;
wire   [0:0] carry_5_fu_450_p2;
wire   [0:0] deleted_zeros_2_fu_476_p2;
wire   [0:0] xor_ln895_4_fu_514_p2;
wire   [0:0] p_Result_6_fu_392_p3;
wire   [0:0] or_ln895_2_fu_520_p2;
wire   [0:0] xor_ln895_5_fu_526_p2;
wire   [0:0] deleted_ones_2_fu_502_p2;
wire   [0:0] xor_ln896_5_fu_538_p2;
wire   [0:0] and_ln891_2_fu_508_p2;
wire   [0:0] or_ln896_2_fu_544_p2;
wire   [0:0] xor_ln896_14_fu_550_p2;
wire   [0:0] overflow_2_fu_532_p2;
wire   [0:0] underflow_2_fu_556_p2;
wire   [0:0] or_ln346_2_fu_570_p2;
wire   [17:0] select_ln346_4_fu_562_p3;
wire   [30:0] r_V_fu_104_p2;
wire   [0:0] tmp_3_fu_614_p3;
wire   [17:0] zext_ln377_fu_622_p1;
wire   [17:0] p_Val2_1_fu_596_p4;
wire   [0:0] p_Result_2_fu_632_p3;
wire   [0:0] p_Result_1_fu_606_p3;
wire   [0:0] xor_ln896_fu_640_p2;
wire   [1:0] tmp_fu_660_p4;
wire   [0:0] carry_1_fu_646_p2;
wire   [0:0] Range1_all_ones_fu_670_p2;
wire   [0:0] Range1_all_zeros_fu_676_p2;
wire   [0:0] tmp_6_fu_690_p3;
wire   [0:0] Range2_all_ones_fu_652_p3;
wire   [0:0] xor_ln890_fu_698_p2;
wire   [0:0] and_ln890_fu_704_p2;
wire   [0:0] deleted_zeros_fu_682_p3;
wire   [0:0] xor_ln895_fu_724_p2;
wire   [0:0] p_Result_s_fu_588_p3;
wire   [0:0] or_ln895_fu_730_p2;
wire   [0:0] xor_ln895_1_fu_736_p2;
wire   [0:0] deleted_ones_fu_710_p3;
wire   [0:0] xor_ln896_1_fu_748_p2;
wire   [0:0] and_ln891_fu_718_p2;
wire   [0:0] or_ln896_fu_754_p2;
wire   [0:0] xor_ln896_12_fu_760_p2;
wire   [0:0] underflow_fu_766_p2;
wire  signed [18:0] sext_ln813_2_fu_778_p1;
wire   [18:0] ret_V_2_fu_781_p2;
wire   [17:0] p_Val2_16_fu_795_p2;
wire   [0:0] p_Result_13_fu_787_p3;
wire   [0:0] p_Result_14_fu_800_p3;
wire   [0:0] xor_ln895_8_fu_808_p2;
wire   [0:0] xor_ln896_8_fu_820_p2;
wire   [0:0] xor_ln302_4_fu_832_p2;
wire   [0:0] overflow_5_fu_814_p2;
wire   [0:0] xor_ln302_5_fu_838_p2;
wire   [0:0] underflow_5_fu_826_p2;
wire   [0:0] or_ln302_2_fu_844_p2;
wire   [17:0] select_ln302_4_fu_850_p3;
wire   [17:0] select_ln350_2_fu_858_p3;
wire   [17:0] select_ln346_fu_874_p3;
wire  signed [17:0] rhs_fu_881_p3;
wire  signed [18:0] sext_ln813_fu_887_p1;
wire   [18:0] ret_V_fu_891_p2;
wire   [17:0] p_Val2_11_fu_905_p2;
wire   [0:0] p_Result_9_fu_897_p3;
wire   [0:0] p_Result_10_fu_911_p3;
wire   [0:0] xor_ln895_6_fu_919_p2;
wire   [0:0] xor_ln896_6_fu_931_p2;
wire   [0:0] xor_ln302_fu_943_p2;
wire   [0:0] overflow_3_fu_925_p2;
wire   [0:0] xor_ln302_1_fu_949_p2;
wire   [0:0] underflow_3_fu_937_p2;
wire   [0:0] or_ln302_fu_955_p2;
wire   [17:0] select_ln302_fu_961_p3;
wire   [17:0] select_ln350_fu_969_p3;
wire  signed [18:0] sext_ln813_1_fu_985_p1;
wire   [18:0] ret_V_1_fu_988_p2;
wire   [17:0] p_Val2_14_fu_1002_p2;
wire   [0:0] p_Result_11_fu_994_p3;
wire   [0:0] p_Result_12_fu_1007_p3;
wire   [0:0] xor_ln895_7_fu_1015_p2;
wire   [0:0] xor_ln896_7_fu_1027_p2;
wire   [0:0] xor_ln302_2_fu_1039_p2;
wire   [0:0] overflow_4_fu_1021_p2;
wire   [0:0] xor_ln302_3_fu_1045_p2;
wire   [0:0] underflow_4_fu_1033_p2;
wire   [0:0] or_ln302_1_fu_1051_p2;
wire   [17:0] select_ln302_2_fu_1057_p3;
wire   [17:0] select_ln350_1_fu_1065_p3;
wire  signed [17:0] lhs_fu_1073_p3;
wire  signed [18:0] sext_ln813_3_fu_1081_p1;
wire   [18:0] ret_V_3_fu_1085_p2;
wire   [17:0] p_Val2_18_fu_1099_p2;
wire   [0:0] p_Result_15_fu_1091_p3;
wire   [0:0] p_Result_16_fu_1105_p3;
wire   [0:0] xor_ln895_9_fu_1113_p2;
wire   [0:0] xor_ln896_9_fu_1125_p2;
wire   [0:0] xor_ln302_6_fu_1137_p2;
wire   [0:0] overflow_6_fu_1119_p2;
wire   [0:0] xor_ln302_7_fu_1143_p2;
wire   [0:0] underflow_6_fu_1131_p2;
wire   [0:0] or_ln302_3_fu_1149_p2;
wire   [17:0] select_ln302_6_fu_1155_p3;
wire   [17:0] select_ln350_3_fu_1163_p3;
wire  signed [18:0] sext_ln813_4_fu_1179_p1;
wire   [18:0] ret_V_4_fu_1182_p2;
wire   [17:0] p_Val2_19_fu_1196_p2;
wire   [0:0] p_Result_17_fu_1188_p3;
wire   [0:0] p_Result_18_fu_1201_p3;
wire   [0:0] xor_ln895_10_fu_1209_p2;
wire   [0:0] xor_ln896_10_fu_1221_p2;
wire   [0:0] xor_ln302_8_fu_1233_p2;
wire   [0:0] overflow_7_fu_1215_p2;
wire   [0:0] xor_ln302_9_fu_1239_p2;
wire   [0:0] underflow_7_fu_1227_p2;
wire   [0:0] or_ln302_4_fu_1245_p2;
wire   [17:0] select_ln302_8_fu_1251_p3;
wire   [17:0] select_ln350_4_fu_1259_p3;
wire  signed [17:0] p_Val2_s_fu_1267_p3;
wire  signed [18:0] sext_ln813_5_fu_1275_p1;
wire   [18:0] ret_V_5_fu_1279_p2;
wire   [17:0] p_Val2_23_fu_1293_p2;
wire   [0:0] p_Result_19_fu_1285_p3;
wire   [0:0] p_Result_20_fu_1299_p3;
wire   [0:0] xor_ln895_11_fu_1307_p2;
wire   [0:0] xor_ln896_11_fu_1319_p2;
wire   [0:0] xor_ln302_10_fu_1331_p2;
wire   [0:0] overflow_8_fu_1313_p2;
wire   [0:0] xor_ln302_11_fu_1337_p2;
wire   [0:0] underflow_8_fu_1325_p2;
wire   [0:0] or_ln302_5_fu_1343_p2;
wire   [17:0] select_ln302_10_fu_1349_p3;
wire   [17:0] select_ln350_5_fu_1357_p3;
wire   [17:0] p_Val2_20_fu_1171_p3;
wire   [17:0] p_Val2_12_fu_977_p3;
wire   [17:0] select_ln302_11_fu_1365_p3;
reg    ap_ce_reg;
reg   [17:0] p_read_int_reg;
reg   [17:0] p_read1_int_reg;
reg   [17:0] ap_return_0_int_reg;
reg   [17:0] ap_return_1_int_reg;
reg   [17:0] ap_return_2_int_reg;

motor_mul_18s_12s_30_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 18 ),
    .din1_WIDTH( 12 ),
    .dout_WIDTH( 30 ))
mul_18s_12s_30_1_0_U32(
    .din0(r_V_2_fu_102_p0),
    .din1(r_V_2_fu_102_p1),
    .dout(r_V_2_fu_102_p2)
);

motor_mul_18s_13s_31_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 18 ),
    .din1_WIDTH( 13 ),
    .dout_WIDTH( 31 ))
mul_18s_13s_31_1_0_U33(
    .din0(p_read_6_reg_1391),
    .din1(r_V_fu_104_p1),
    .dout(r_V_fu_104_p2)
);

motor_mul_18s_12ns_30_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 18 ),
    .din1_WIDTH( 12 ),
    .dout_WIDTH( 30 ))
mul_18s_12ns_30_1_0_U34(
    .din0(r_V_1_fu_105_p0),
    .din1(r_V_1_fu_105_p1),
    .dout(r_V_1_fu_105_p2)
);

always @ (posedge ap_clk) begin
    ap_ce_reg <= ap_ce;
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce_reg)) begin
        ap_return_0_int_reg <= p_Val2_20_fu_1171_p3;
        ap_return_1_int_reg <= p_Val2_12_fu_977_p3;
        ap_return_2_int_reg <= select_ln302_11_fu_1365_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        lhs_1_reg_1423 <= lhs_1_fu_866_p3;
        or_ln346_reg_1418 <= or_ln346_fu_772_p2;
        overflow_reg_1413 <= overflow_fu_742_p2;
        p_Val2_3_reg_1408 <= p_Val2_3_fu_626_p2;
        p_read_6_reg_1391 <= p_read_int_reg;
        rhs_1_reg_1396 <= rhs_1_fu_384_p3;
        rhs_1_reg_1396_pp0_iter1_reg <= rhs_1_reg_1396;
        rhs_2_reg_1402 <= rhs_2_fu_576_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        p_read1_int_reg <= p_read1;
        p_read_int_reg <= p_read;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_0 = ap_return_0_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_0 = p_Val2_20_fu_1171_p3;
    end else begin
        ap_return_0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_1 = ap_return_1_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_1 = p_Val2_12_fu_977_p3;
    end else begin
        ap_return_1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_2 = ap_return_2_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_2 = select_ln302_11_fu_1365_p3;
    end else begin
        ap_return_2 = 'bx;
    end
end

assign Range1_all_ones_fu_670_p2 = ((tmp_fu_660_p4 == 2'd3) ? 1'b1 : 1'b0);

assign Range1_all_zeros_fu_676_p2 = ((tmp_fu_660_p4 == 2'd0) ? 1'b1 : 1'b0);

assign Range2_all_ones_3_fu_264_p3 = r_V_1_fu_105_p2[32'd29];

assign Range2_all_ones_4_fu_456_p3 = r_V_2_fu_102_p2[32'd29];

assign Range2_all_ones_fu_652_p3 = r_V_fu_104_p2[32'd30];

assign and_ln890_fu_704_p2 = (xor_ln890_fu_698_p2 & Range2_all_ones_fu_652_p3);

assign and_ln891_1_fu_316_p2 = (carry_3_fu_258_p2 & Range2_all_ones_3_fu_264_p3);

assign and_ln891_2_fu_508_p2 = (carry_5_fu_450_p2 & Range2_all_ones_4_fu_456_p3);

assign and_ln891_fu_718_p2 = (carry_1_fu_646_p2 & Range1_all_ones_fu_670_p2);

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign carry_1_fu_646_p2 = (xor_ln896_fu_640_p2 & p_Result_1_fu_606_p3);

assign carry_3_fu_258_p2 = (xor_ln896_2_fu_252_p2 & p_Result_4_fu_218_p3);

assign carry_5_fu_450_p2 = (xor_ln896_4_fu_444_p2 & p_Result_7_fu_410_p3);

assign deleted_ones_1_fu_310_p2 = (or_ln890_fu_304_p2 & Range2_all_ones_3_fu_264_p3);

assign deleted_ones_2_fu_502_p2 = (or_ln890_1_fu_496_p2 & Range2_all_ones_4_fu_456_p3);

assign deleted_ones_fu_710_p3 = ((carry_1_fu_646_p2[0:0] == 1'b1) ? and_ln890_fu_704_p2 : Range1_all_ones_fu_670_p2);

assign deleted_zeros_1_fu_284_p2 = (or_ln888_fu_278_p2 ^ Range2_all_ones_3_fu_264_p3);

assign deleted_zeros_2_fu_476_p2 = (or_ln888_1_fu_470_p2 ^ Range2_all_ones_4_fu_456_p3);

assign deleted_zeros_fu_682_p3 = ((carry_1_fu_646_p2[0:0] == 1'b1) ? Range1_all_ones_fu_670_p2 : Range1_all_zeros_fu_676_p2);

assign lhs_1_fu_866_p3 = ((or_ln302_2_fu_844_p2[0:0] == 1'b1) ? select_ln302_4_fu_850_p3 : select_ln350_2_fu_858_p3);

assign lhs_fu_1073_p3 = ((or_ln302_1_fu_1051_p2[0:0] == 1'b1) ? select_ln302_2_fu_1057_p3 : select_ln350_1_fu_1065_p3);

assign or_ln302_1_fu_1051_p2 = (xor_ln302_3_fu_1045_p2 | overflow_4_fu_1021_p2);

assign or_ln302_2_fu_844_p2 = (xor_ln302_5_fu_838_p2 | overflow_5_fu_814_p2);

assign or_ln302_3_fu_1149_p2 = (xor_ln302_7_fu_1143_p2 | overflow_6_fu_1119_p2);

assign or_ln302_4_fu_1245_p2 = (xor_ln302_9_fu_1239_p2 | overflow_7_fu_1215_p2);

assign or_ln302_5_fu_1343_p2 = (xor_ln302_11_fu_1337_p2 | overflow_8_fu_1313_p2);

assign or_ln302_fu_955_p2 = (xor_ln302_1_fu_949_p2 | overflow_3_fu_925_p2);

assign or_ln346_1_fu_378_p2 = (underflow_1_fu_364_p2 | overflow_1_fu_340_p2);

assign or_ln346_2_fu_570_p2 = (underflow_2_fu_556_p2 | overflow_2_fu_532_p2);

assign or_ln346_fu_772_p2 = (underflow_fu_766_p2 | overflow_fu_742_p2);

assign or_ln888_1_fu_470_p2 = (xor_ln888_2_fu_464_p2 | p_Result_8_fu_436_p3);

assign or_ln888_fu_278_p2 = (xor_ln888_fu_272_p2 | p_Result_5_fu_244_p3);

assign or_ln890_1_fu_496_p2 = (xor_ln890_2_fu_490_p2 | or_ln888_1_fu_470_p2);

assign or_ln890_fu_304_p2 = (xor_ln890_1_fu_298_p2 | or_ln888_fu_278_p2);

assign or_ln895_1_fu_328_p2 = (xor_ln895_2_fu_322_p2 | p_Result_5_fu_244_p3);

assign or_ln895_2_fu_520_p2 = (xor_ln895_4_fu_514_p2 | p_Result_8_fu_436_p3);

assign or_ln895_fu_730_p2 = (xor_ln895_fu_724_p2 | p_Result_2_fu_632_p3);

assign or_ln896_1_fu_352_p2 = (xor_ln896_3_fu_346_p2 | xor_ln896_2_fu_252_p2);

assign or_ln896_2_fu_544_p2 = (xor_ln896_5_fu_538_p2 | xor_ln896_4_fu_444_p2);

assign or_ln896_fu_754_p2 = (xor_ln896_fu_640_p2 | xor_ln896_1_fu_748_p2);

assign overflow_1_fu_340_p2 = (xor_ln895_3_fu_334_p2 & or_ln895_1_fu_328_p2);

assign overflow_2_fu_532_p2 = (xor_ln895_5_fu_526_p2 & or_ln895_2_fu_520_p2);

assign overflow_3_fu_925_p2 = (xor_ln895_6_fu_919_p2 & p_Result_10_fu_911_p3);

assign overflow_4_fu_1021_p2 = (xor_ln895_7_fu_1015_p2 & p_Result_12_fu_1007_p3);

assign overflow_5_fu_814_p2 = (xor_ln895_8_fu_808_p2 & p_Result_14_fu_800_p3);

assign overflow_6_fu_1119_p2 = (xor_ln895_9_fu_1113_p2 & p_Result_16_fu_1105_p3);

assign overflow_7_fu_1215_p2 = (xor_ln895_10_fu_1209_p2 & p_Result_18_fu_1201_p3);

assign overflow_8_fu_1313_p2 = (xor_ln895_11_fu_1307_p2 & p_Result_20_fu_1299_p3);

assign overflow_fu_742_p2 = (xor_ln895_1_fu_736_p2 & or_ln895_fu_730_p2);

assign p_Result_10_fu_911_p3 = p_Val2_11_fu_905_p2[32'd17];

assign p_Result_11_fu_994_p3 = ret_V_1_fu_988_p2[32'd18];

assign p_Result_12_fu_1007_p3 = p_Val2_14_fu_1002_p2[32'd17];

assign p_Result_13_fu_787_p3 = ret_V_2_fu_781_p2[32'd18];

assign p_Result_14_fu_800_p3 = p_Val2_16_fu_795_p2[32'd17];

assign p_Result_15_fu_1091_p3 = ret_V_3_fu_1085_p2[32'd18];

assign p_Result_16_fu_1105_p3 = p_Val2_18_fu_1099_p2[32'd17];

assign p_Result_17_fu_1188_p3 = ret_V_4_fu_1182_p2[32'd18];

assign p_Result_18_fu_1201_p3 = p_Val2_19_fu_1196_p2[32'd17];

assign p_Result_19_fu_1285_p3 = ret_V_5_fu_1279_p2[32'd18];

assign p_Result_1_fu_606_p3 = r_V_fu_104_p2[32'd28];

assign p_Result_20_fu_1299_p3 = p_Val2_23_fu_1293_p2[32'd17];

assign p_Result_2_fu_632_p3 = p_Val2_3_fu_626_p2[32'd17];

assign p_Result_3_fu_200_p3 = r_V_1_fu_105_p2[32'd29];

assign p_Result_4_fu_218_p3 = r_V_1_fu_105_p2[32'd28];

assign p_Result_5_fu_244_p3 = p_Val2_6_fu_238_p2[32'd17];

assign p_Result_6_fu_392_p3 = r_V_2_fu_102_p2[32'd29];

assign p_Result_7_fu_410_p3 = r_V_2_fu_102_p2[32'd28];

assign p_Result_8_fu_436_p3 = p_Val2_9_fu_430_p2[32'd17];

assign p_Result_9_fu_897_p3 = ret_V_fu_891_p2[32'd18];

assign p_Result_s_fu_588_p3 = r_V_fu_104_p2[32'd30];

assign p_Val2_11_fu_905_p2 = ($signed(rhs_fu_881_p3) + $signed(18'd617));

assign p_Val2_12_fu_977_p3 = ((or_ln302_fu_955_p2[0:0] == 1'b1) ? select_ln302_fu_961_p3 : select_ln350_fu_969_p3);

assign p_Val2_14_fu_1002_p2 = ($signed(rhs_1_reg_1396_pp0_iter1_reg) + $signed(18'd8));

assign p_Val2_16_fu_795_p2 = ($signed(rhs_2_reg_1402) + $signed(18'd857));

assign p_Val2_18_fu_1099_p2 = ($signed(lhs_fu_1073_p3) + $signed(18'd262143));

assign p_Val2_19_fu_1196_p2 = ($signed(lhs_1_reg_1423) + $signed(18'd62));

assign p_Val2_1_fu_596_p4 = {{r_V_fu_104_p2[28:11]}};

assign p_Val2_20_fu_1171_p3 = ((or_ln302_3_fu_1149_p2[0:0] == 1'b1) ? select_ln302_6_fu_1155_p3 : select_ln350_3_fu_1163_p3);

assign p_Val2_23_fu_1293_p2 = ($signed(p_Val2_s_fu_1267_p3) + $signed(18'd460));

assign p_Val2_3_fu_626_p2 = (zext_ln377_fu_622_p1 + p_Val2_1_fu_596_p4);

assign p_Val2_4_fu_208_p4 = {{r_V_1_fu_105_p2[28:11]}};

assign p_Val2_6_fu_238_p2 = (zext_ln377_1_fu_234_p1 + p_Val2_4_fu_208_p4);

assign p_Val2_7_fu_400_p4 = {{r_V_2_fu_102_p2[28:11]}};

assign p_Val2_9_fu_430_p2 = (zext_ln377_2_fu_426_p1 + p_Val2_7_fu_400_p4);

assign p_Val2_s_fu_1267_p3 = ((or_ln302_4_fu_1245_p2[0:0] == 1'b1) ? select_ln302_8_fu_1251_p3 : select_ln350_4_fu_1259_p3);

assign r_V_1_fu_105_p0 = sext_ln70_1_fu_194_p1;

assign r_V_1_fu_105_p1 = 30'd1283;

assign r_V_2_fu_102_p0 = sext_ln70_1_fu_194_p1;

assign r_V_2_fu_102_p1 = 30'd1073740730;

assign r_V_fu_104_p1 = 31'd2147480680;

assign ret_V_1_fu_988_p2 = ($signed(sext_ln813_1_fu_985_p1) + $signed(19'd8));

assign ret_V_2_fu_781_p2 = ($signed(sext_ln813_2_fu_778_p1) + $signed(19'd857));

assign ret_V_3_fu_1085_p2 = ($signed(sext_ln813_3_fu_1081_p1) + $signed(19'd524287));

assign ret_V_4_fu_1182_p2 = ($signed(sext_ln813_4_fu_1179_p1) + $signed(19'd62));

assign ret_V_5_fu_1279_p2 = ($signed(sext_ln813_5_fu_1275_p1) + $signed(19'd460));

assign ret_V_fu_891_p2 = ($signed(sext_ln813_fu_887_p1) + $signed(19'd617));

assign rhs_1_fu_384_p3 = ((or_ln346_1_fu_378_p2[0:0] == 1'b1) ? select_ln346_2_fu_370_p3 : p_Val2_6_fu_238_p2);

assign rhs_2_fu_576_p3 = ((or_ln346_2_fu_570_p2[0:0] == 1'b1) ? select_ln346_4_fu_562_p3 : p_Val2_9_fu_430_p2);

assign rhs_fu_881_p3 = ((or_ln346_reg_1418[0:0] == 1'b1) ? select_ln346_fu_874_p3 : p_Val2_3_reg_1408);

assign select_ln302_10_fu_1349_p3 = ((xor_ln302_10_fu_1331_p2[0:0] == 1'b1) ? 18'd131071 : p_Val2_23_fu_1293_p2);

assign select_ln302_11_fu_1365_p3 = ((or_ln302_5_fu_1343_p2[0:0] == 1'b1) ? select_ln302_10_fu_1349_p3 : select_ln350_5_fu_1357_p3);

assign select_ln302_2_fu_1057_p3 = ((xor_ln302_2_fu_1039_p2[0:0] == 1'b1) ? 18'd131071 : p_Val2_14_fu_1002_p2);

assign select_ln302_4_fu_850_p3 = ((xor_ln302_4_fu_832_p2[0:0] == 1'b1) ? 18'd131071 : p_Val2_16_fu_795_p2);

assign select_ln302_6_fu_1155_p3 = ((xor_ln302_6_fu_1137_p2[0:0] == 1'b1) ? 18'd131071 : p_Val2_18_fu_1099_p2);

assign select_ln302_8_fu_1251_p3 = ((xor_ln302_8_fu_1233_p2[0:0] == 1'b1) ? 18'd131071 : p_Val2_19_fu_1196_p2);

assign select_ln302_fu_961_p3 = ((xor_ln302_fu_943_p2[0:0] == 1'b1) ? 18'd131071 : p_Val2_11_fu_905_p2);

assign select_ln346_2_fu_370_p3 = ((overflow_1_fu_340_p2[0:0] == 1'b1) ? 18'd131071 : 18'd131072);

assign select_ln346_4_fu_562_p3 = ((overflow_2_fu_532_p2[0:0] == 1'b1) ? 18'd131071 : 18'd131072);

assign select_ln346_fu_874_p3 = ((overflow_reg_1413[0:0] == 1'b1) ? 18'd131071 : 18'd131072);

assign select_ln350_1_fu_1065_p3 = ((underflow_4_fu_1033_p2[0:0] == 1'b1) ? 18'd131072 : p_Val2_14_fu_1002_p2);

assign select_ln350_2_fu_858_p3 = ((underflow_5_fu_826_p2[0:0] == 1'b1) ? 18'd131072 : p_Val2_16_fu_795_p2);

assign select_ln350_3_fu_1163_p3 = ((underflow_6_fu_1131_p2[0:0] == 1'b1) ? 18'd131072 : p_Val2_18_fu_1099_p2);

assign select_ln350_4_fu_1259_p3 = ((underflow_7_fu_1227_p2[0:0] == 1'b1) ? 18'd131072 : p_Val2_19_fu_1196_p2);

assign select_ln350_5_fu_1357_p3 = ((underflow_8_fu_1325_p2[0:0] == 1'b1) ? 18'd131072 : p_Val2_23_fu_1293_p2);

assign select_ln350_fu_969_p3 = ((underflow_3_fu_937_p2[0:0] == 1'b1) ? 18'd131072 : p_Val2_11_fu_905_p2);

assign sext_ln70_1_fu_194_p1 = $signed(p_read1_int_reg);

assign sext_ln813_1_fu_985_p1 = rhs_1_reg_1396_pp0_iter1_reg;

assign sext_ln813_2_fu_778_p1 = rhs_2_reg_1402;

assign sext_ln813_3_fu_1081_p1 = lhs_fu_1073_p3;

assign sext_ln813_4_fu_1179_p1 = lhs_1_reg_1423;

assign sext_ln813_5_fu_1275_p1 = p_Val2_s_fu_1267_p3;

assign sext_ln813_fu_887_p1 = rhs_fu_881_p3;

assign tmp_12_fu_290_p3 = r_V_1_fu_105_p2[32'd29];

assign tmp_15_fu_418_p3 = r_V_2_fu_102_p2[32'd10];

assign tmp_18_fu_482_p3 = r_V_2_fu_102_p2[32'd29];

assign tmp_3_fu_614_p3 = r_V_fu_104_p2[32'd10];

assign tmp_6_fu_690_p3 = r_V_fu_104_p2[32'd29];

assign tmp_9_fu_226_p3 = r_V_1_fu_105_p2[32'd10];

assign tmp_fu_660_p4 = {{r_V_fu_104_p2[30:29]}};

assign underflow_1_fu_364_p2 = (xor_ln896_13_fu_358_p2 & p_Result_3_fu_200_p3);

assign underflow_2_fu_556_p2 = (xor_ln896_14_fu_550_p2 & p_Result_6_fu_392_p3);

assign underflow_3_fu_937_p2 = (xor_ln896_6_fu_931_p2 & p_Result_9_fu_897_p3);

assign underflow_4_fu_1033_p2 = (xor_ln896_7_fu_1027_p2 & p_Result_11_fu_994_p3);

assign underflow_5_fu_826_p2 = (xor_ln896_8_fu_820_p2 & p_Result_13_fu_787_p3);

assign underflow_6_fu_1131_p2 = (xor_ln896_9_fu_1125_p2 & p_Result_15_fu_1091_p3);

assign underflow_7_fu_1227_p2 = (xor_ln896_10_fu_1221_p2 & p_Result_17_fu_1188_p3);

assign underflow_8_fu_1325_p2 = (xor_ln896_11_fu_1319_p2 & p_Result_19_fu_1285_p3);

assign underflow_fu_766_p2 = (xor_ln896_12_fu_760_p2 & p_Result_s_fu_588_p3);

assign xor_ln302_10_fu_1331_p2 = (p_Result_20_fu_1299_p3 ^ p_Result_19_fu_1285_p3);

assign xor_ln302_11_fu_1337_p2 = (xor_ln302_10_fu_1331_p2 ^ 1'd1);

assign xor_ln302_1_fu_949_p2 = (xor_ln302_fu_943_p2 ^ 1'd1);

assign xor_ln302_2_fu_1039_p2 = (p_Result_12_fu_1007_p3 ^ p_Result_11_fu_994_p3);

assign xor_ln302_3_fu_1045_p2 = (xor_ln302_2_fu_1039_p2 ^ 1'd1);

assign xor_ln302_4_fu_832_p2 = (p_Result_14_fu_800_p3 ^ p_Result_13_fu_787_p3);

assign xor_ln302_5_fu_838_p2 = (xor_ln302_4_fu_832_p2 ^ 1'd1);

assign xor_ln302_6_fu_1137_p2 = (p_Result_16_fu_1105_p3 ^ p_Result_15_fu_1091_p3);

assign xor_ln302_7_fu_1143_p2 = (xor_ln302_6_fu_1137_p2 ^ 1'd1);

assign xor_ln302_8_fu_1233_p2 = (p_Result_18_fu_1201_p3 ^ p_Result_17_fu_1188_p3);

assign xor_ln302_9_fu_1239_p2 = (xor_ln302_8_fu_1233_p2 ^ 1'd1);

assign xor_ln302_fu_943_p2 = (p_Result_9_fu_897_p3 ^ p_Result_10_fu_911_p3);

assign xor_ln888_2_fu_464_p2 = (p_Result_7_fu_410_p3 ^ 1'd1);

assign xor_ln888_fu_272_p2 = (p_Result_4_fu_218_p3 ^ 1'd1);

assign xor_ln890_1_fu_298_p2 = (tmp_12_fu_290_p3 ^ 1'd1);

assign xor_ln890_2_fu_490_p2 = (tmp_18_fu_482_p3 ^ 1'd1);

assign xor_ln890_fu_698_p2 = (tmp_6_fu_690_p3 ^ 1'd1);

assign xor_ln895_10_fu_1209_p2 = (p_Result_17_fu_1188_p3 ^ 1'd1);

assign xor_ln895_11_fu_1307_p2 = (p_Result_19_fu_1285_p3 ^ 1'd1);

assign xor_ln895_1_fu_736_p2 = (p_Result_s_fu_588_p3 ^ 1'd1);

assign xor_ln895_2_fu_322_p2 = (deleted_zeros_1_fu_284_p2 ^ 1'd1);

assign xor_ln895_3_fu_334_p2 = (p_Result_3_fu_200_p3 ^ 1'd1);

assign xor_ln895_4_fu_514_p2 = (deleted_zeros_2_fu_476_p2 ^ 1'd1);

assign xor_ln895_5_fu_526_p2 = (p_Result_6_fu_392_p3 ^ 1'd1);

assign xor_ln895_6_fu_919_p2 = (p_Result_9_fu_897_p3 ^ 1'd1);

assign xor_ln895_7_fu_1015_p2 = (p_Result_11_fu_994_p3 ^ 1'd1);

assign xor_ln895_8_fu_808_p2 = (p_Result_13_fu_787_p3 ^ 1'd1);

assign xor_ln895_9_fu_1113_p2 = (p_Result_15_fu_1091_p3 ^ 1'd1);

assign xor_ln895_fu_724_p2 = (deleted_zeros_fu_682_p3 ^ 1'd1);

assign xor_ln896_10_fu_1221_p2 = (p_Result_18_fu_1201_p3 ^ 1'd1);

assign xor_ln896_11_fu_1319_p2 = (p_Result_20_fu_1299_p3 ^ 1'd1);

assign xor_ln896_12_fu_760_p2 = (or_ln896_fu_754_p2 ^ and_ln891_fu_718_p2);

assign xor_ln896_13_fu_358_p2 = (or_ln896_1_fu_352_p2 ^ and_ln891_1_fu_316_p2);

assign xor_ln896_14_fu_550_p2 = (or_ln896_2_fu_544_p2 ^ and_ln891_2_fu_508_p2);

assign xor_ln896_1_fu_748_p2 = (deleted_ones_fu_710_p3 ^ 1'd1);

assign xor_ln896_2_fu_252_p2 = (p_Result_5_fu_244_p3 ^ 1'd1);

assign xor_ln896_3_fu_346_p2 = (deleted_ones_1_fu_310_p2 ^ 1'd1);

assign xor_ln896_4_fu_444_p2 = (p_Result_8_fu_436_p3 ^ 1'd1);

assign xor_ln896_5_fu_538_p2 = (deleted_ones_2_fu_502_p2 ^ 1'd1);

assign xor_ln896_6_fu_931_p2 = (p_Result_10_fu_911_p3 ^ 1'd1);

assign xor_ln896_7_fu_1027_p2 = (p_Result_12_fu_1007_p3 ^ 1'd1);

assign xor_ln896_8_fu_820_p2 = (p_Result_14_fu_800_p3 ^ 1'd1);

assign xor_ln896_9_fu_1125_p2 = (p_Result_16_fu_1105_p3 ^ 1'd1);

assign xor_ln896_fu_640_p2 = (p_Result_2_fu_632_p3 ^ 1'd1);

assign zext_ln377_1_fu_234_p1 = tmp_9_fu_226_p3;

assign zext_ln377_2_fu_426_p1 = tmp_15_fu_418_p3;

assign zext_ln377_fu_622_p1 = tmp_3_fu_614_p3;

endmodule //motor_dense_latency_ap_fixed_18_7_0_0_0_ap_fixed_18_7_0_0_0_config8_s
