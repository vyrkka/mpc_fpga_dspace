module motor_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config8_s (
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
input  [15:0] p_read;
input  [15:0] p_read1;
output  [15:0] ap_return_0;
output  [15:0] ap_return_1;
output  [15:0] ap_return_2;
input   ap_ce;

reg[15:0] ap_return_0;
reg[15:0] ap_return_1;
reg[15:0] ap_return_2;

wire   [15:0] p_Val2_3_fu_230_p2;
reg   [15:0] p_Val2_3_reg_1446;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] overflow_fu_346_p2;
reg   [0:0] overflow_reg_1451;
wire   [0:0] or_ln346_fu_376_p2;
reg   [0:0] or_ln346_reg_1456;
wire  signed [15:0] rhs_1_fu_631_p3;
reg  signed [15:0] rhs_1_reg_1461;
wire  signed [15:0] rhs_2_fu_823_p3;
reg  signed [15:0] rhs_2_reg_1467;
wire  signed [9:0] r_V_2_fu_118_p1;
wire    ap_block_pp0_stage0;
wire  signed [10:0] r_V_fu_121_p1;
wire   [26:0] r_V_fu_121_p2;
wire   [0:0] tmp_3_fu_218_p3;
wire   [15:0] zext_ln377_fu_226_p1;
wire   [15:0] p_Val2_1_fu_200_p4;
wire   [0:0] p_Result_2_fu_236_p3;
wire   [0:0] p_Result_1_fu_210_p3;
wire   [0:0] xor_ln896_fu_244_p2;
wire   [1:0] tmp_fu_264_p4;
wire   [0:0] carry_1_fu_250_p2;
wire   [0:0] Range1_all_ones_fu_274_p2;
wire   [0:0] Range1_all_zeros_fu_280_p2;
wire   [0:0] tmp_6_fu_294_p3;
wire   [0:0] Range2_all_ones_fu_256_p3;
wire   [0:0] xor_ln890_fu_302_p2;
wire   [0:0] and_ln890_fu_308_p2;
wire   [0:0] deleted_zeros_fu_286_p3;
wire   [0:0] xor_ln895_fu_328_p2;
wire   [0:0] p_Result_s_fu_192_p3;
wire   [0:0] or_ln895_fu_334_p2;
wire   [0:0] xor_ln895_1_fu_340_p2;
wire   [0:0] deleted_ones_fu_314_p3;
wire   [0:0] xor_ln896_1_fu_352_p2;
wire   [0:0] and_ln891_fu_322_p2;
wire   [0:0] or_ln896_fu_358_p2;
wire   [0:0] xor_ln896_12_fu_364_p2;
wire   [0:0] underflow_fu_370_p2;
wire  signed [15:0] shl_ln_fu_387_p1;
wire   [23:0] shl_ln_fu_387_p3;
wire  signed [15:0] shl_ln1273_1_fu_399_p1;
wire   [21:0] shl_ln1273_1_fu_399_p3;
wire  signed [15:0] trunc_ln1273_fu_411_p0;
wire   [2:0] trunc_ln1273_fu_411_p1;
wire  signed [15:0] trunc_ln1273_2_fu_423_p0;
wire   [0:0] trunc_ln1273_2_fu_423_p1;
wire  signed [24:0] sext_ln1273_fu_395_p1;
wire  signed [24:0] sext_ln1273_1_fu_407_p1;
wire   [8:0] trunc_ln1273_1_fu_427_p3;
wire   [8:0] trunc_ln2_fu_415_p3;
wire   [24:0] r_V_1_fu_435_p2;
wire   [8:0] add_ln1270_fu_441_p2;
wire   [0:0] tmp_9_fu_473_p3;
wire   [15:0] zext_ln377_1_fu_481_p1;
wire   [15:0] p_Val2_4_fu_455_p4;
wire   [15:0] p_Val2_6_fu_485_p2;
wire   [0:0] p_Result_5_fu_491_p3;
wire   [0:0] p_Result_4_fu_465_p3;
wire   [0:0] xor_ln896_2_fu_499_p2;
wire   [0:0] xor_ln888_fu_519_p2;
wire   [0:0] Range2_all_ones_3_fu_511_p3;
wire   [0:0] or_ln888_fu_525_p2;
wire   [0:0] tmp_12_fu_537_p3;
wire   [0:0] xor_ln890_1_fu_545_p2;
wire   [0:0] or_ln890_fu_551_p2;
wire   [0:0] carry_3_fu_505_p2;
wire   [0:0] deleted_zeros_1_fu_531_p2;
wire   [0:0] xor_ln895_2_fu_569_p2;
wire   [0:0] p_Result_3_fu_447_p3;
wire   [0:0] or_ln895_1_fu_575_p2;
wire   [0:0] xor_ln895_3_fu_581_p2;
wire   [0:0] deleted_ones_1_fu_557_p2;
wire   [0:0] xor_ln896_3_fu_593_p2;
wire   [0:0] and_ln891_1_fu_563_p2;
wire   [0:0] or_ln896_1_fu_599_p2;
wire   [0:0] xor_ln896_13_fu_605_p2;
wire   [0:0] overflow_1_fu_587_p2;
wire   [0:0] underflow_1_fu_611_p2;
wire   [0:0] or_ln346_1_fu_625_p2;
wire   [15:0] select_ln346_2_fu_617_p3;
wire   [25:0] r_V_2_fu_118_p2;
wire   [0:0] tmp_15_fu_665_p3;
wire   [15:0] zext_ln377_2_fu_673_p1;
wire   [15:0] p_Val2_7_fu_647_p4;
wire   [15:0] p_Val2_9_fu_677_p2;
wire   [0:0] p_Result_8_fu_683_p3;
wire   [0:0] p_Result_7_fu_657_p3;
wire   [0:0] xor_ln896_4_fu_691_p2;
wire   [0:0] xor_ln888_2_fu_711_p2;
wire   [0:0] Range2_all_ones_4_fu_703_p3;
wire   [0:0] or_ln888_1_fu_717_p2;
wire   [0:0] tmp_18_fu_729_p3;
wire   [0:0] xor_ln890_2_fu_737_p2;
wire   [0:0] or_ln890_1_fu_743_p2;
wire   [0:0] carry_5_fu_697_p2;
wire   [0:0] deleted_zeros_2_fu_723_p2;
wire   [0:0] xor_ln895_4_fu_761_p2;
wire   [0:0] p_Result_6_fu_639_p3;
wire   [0:0] or_ln895_2_fu_767_p2;
wire   [0:0] xor_ln895_5_fu_773_p2;
wire   [0:0] deleted_ones_2_fu_749_p2;
wire   [0:0] xor_ln896_5_fu_785_p2;
wire   [0:0] and_ln891_2_fu_755_p2;
wire   [0:0] or_ln896_2_fu_791_p2;
wire   [0:0] xor_ln896_14_fu_797_p2;
wire   [0:0] overflow_2_fu_779_p2;
wire   [0:0] underflow_2_fu_803_p2;
wire   [0:0] or_ln346_2_fu_817_p2;
wire   [15:0] select_ln346_4_fu_809_p3;
wire   [15:0] select_ln346_fu_831_p3;
wire  signed [15:0] rhs_fu_838_p3;
wire  signed [16:0] sext_ln813_fu_844_p1;
wire   [16:0] ret_V_fu_848_p2;
wire   [15:0] p_Val2_11_fu_862_p2;
wire   [0:0] p_Result_9_fu_854_p3;
wire   [0:0] p_Result_10_fu_868_p3;
wire   [0:0] xor_ln895_6_fu_876_p2;
wire   [0:0] xor_ln896_6_fu_888_p2;
wire   [0:0] xor_ln302_fu_900_p2;
wire   [0:0] overflow_3_fu_882_p2;
wire   [0:0] xor_ln302_1_fu_906_p2;
wire   [0:0] underflow_3_fu_894_p2;
wire   [0:0] or_ln302_fu_912_p2;
wire   [15:0] select_ln302_fu_918_p3;
wire   [15:0] select_ln350_fu_926_p3;
wire  signed [16:0] sext_ln813_1_fu_942_p1;
wire   [16:0] ret_V_1_fu_945_p2;
wire   [15:0] p_Val2_14_fu_959_p2;
wire   [0:0] p_Result_11_fu_951_p3;
wire   [0:0] p_Result_12_fu_964_p3;
wire   [0:0] xor_ln895_7_fu_972_p2;
wire   [0:0] xor_ln896_7_fu_984_p2;
wire   [0:0] xor_ln302_2_fu_996_p2;
wire   [0:0] overflow_4_fu_978_p2;
wire   [0:0] xor_ln302_3_fu_1002_p2;
wire   [0:0] underflow_4_fu_990_p2;
wire   [0:0] or_ln302_1_fu_1008_p2;
wire   [15:0] select_ln302_2_fu_1014_p3;
wire   [15:0] select_ln350_1_fu_1022_p3;
wire  signed [16:0] sext_ln813_2_fu_1038_p1;
wire   [16:0] ret_V_2_fu_1041_p2;
wire   [15:0] p_Val2_16_fu_1055_p2;
wire   [0:0] p_Result_13_fu_1047_p3;
wire   [0:0] p_Result_14_fu_1060_p3;
wire   [0:0] xor_ln895_8_fu_1068_p2;
wire   [0:0] xor_ln896_8_fu_1080_p2;
wire   [0:0] xor_ln302_4_fu_1092_p2;
wire   [0:0] overflow_5_fu_1074_p2;
wire   [0:0] xor_ln302_5_fu_1098_p2;
wire   [0:0] underflow_5_fu_1086_p2;
wire   [0:0] or_ln302_2_fu_1104_p2;
wire   [15:0] select_ln302_4_fu_1110_p3;
wire   [15:0] select_ln350_2_fu_1118_p3;
wire  signed [15:0] lhs_fu_1030_p3;
wire  signed [16:0] sext_ln813_3_fu_1134_p1;
wire   [16:0] ret_V_3_fu_1138_p2;
wire   [15:0] p_Val2_18_fu_1152_p2;
wire   [0:0] p_Result_15_fu_1144_p3;
wire   [0:0] p_Result_16_fu_1158_p3;
wire   [0:0] xor_ln895_9_fu_1166_p2;
wire   [0:0] xor_ln896_9_fu_1178_p2;
wire   [0:0] xor_ln302_6_fu_1190_p2;
wire   [0:0] overflow_6_fu_1172_p2;
wire   [0:0] xor_ln302_7_fu_1196_p2;
wire   [0:0] underflow_6_fu_1184_p2;
wire   [0:0] or_ln302_3_fu_1202_p2;
wire   [15:0] select_ln302_6_fu_1208_p3;
wire   [15:0] select_ln350_3_fu_1216_p3;
wire  signed [15:0] lhs_1_fu_1126_p3;
wire  signed [16:0] sext_ln813_4_fu_1232_p1;
wire   [16:0] ret_V_4_fu_1236_p2;
wire   [15:0] p_Val2_19_fu_1250_p2;
wire   [0:0] p_Result_17_fu_1242_p3;
wire   [0:0] p_Result_18_fu_1256_p3;
wire   [0:0] xor_ln895_10_fu_1264_p2;
wire   [0:0] xor_ln896_10_fu_1276_p2;
wire   [0:0] xor_ln302_8_fu_1288_p2;
wire   [0:0] overflow_7_fu_1270_p2;
wire   [0:0] xor_ln302_9_fu_1294_p2;
wire   [0:0] underflow_7_fu_1282_p2;
wire   [0:0] or_ln302_4_fu_1300_p2;
wire   [15:0] select_ln302_8_fu_1306_p3;
wire   [15:0] select_ln350_4_fu_1314_p3;
wire  signed [15:0] p_Val2_s_fu_1322_p3;
wire  signed [16:0] sext_ln813_5_fu_1330_p1;
wire   [16:0] ret_V_5_fu_1334_p2;
wire   [15:0] p_Val2_23_fu_1348_p2;
wire   [0:0] p_Result_19_fu_1340_p3;
wire   [0:0] p_Result_20_fu_1354_p3;
wire   [0:0] xor_ln895_11_fu_1362_p2;
wire   [0:0] xor_ln896_11_fu_1374_p2;
wire   [0:0] xor_ln302_10_fu_1386_p2;
wire   [0:0] overflow_8_fu_1368_p2;
wire   [0:0] xor_ln302_11_fu_1392_p2;
wire   [0:0] underflow_8_fu_1380_p2;
wire   [0:0] or_ln302_5_fu_1398_p2;
wire   [15:0] select_ln302_10_fu_1404_p3;
wire   [15:0] select_ln350_5_fu_1412_p3;
wire   [15:0] p_Val2_20_fu_1224_p3;
wire   [15:0] p_Val2_12_fu_934_p3;
wire   [15:0] select_ln302_11_fu_1420_p3;
reg    ap_ce_reg;
reg   [15:0] ap_return_0_int_reg;
reg   [15:0] ap_return_1_int_reg;
reg   [15:0] ap_return_2_int_reg;

motor_mul_16s_10s_26_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 10 ),
    .dout_WIDTH( 26 ))
mul_16s_10s_26_1_0_U30(
    .din0(p_read1),
    .din1(r_V_2_fu_118_p1),
    .dout(r_V_2_fu_118_p2)
);

motor_mul_16s_11s_27_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 11 ),
    .dout_WIDTH( 27 ))
mul_16s_11s_27_1_0_U31(
    .din0(p_read),
    .din1(r_V_fu_121_p1),
    .dout(r_V_fu_121_p2)
);

always @ (posedge ap_clk) begin
    ap_ce_reg <= ap_ce;
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce_reg)) begin
        ap_return_0_int_reg <= p_Val2_20_fu_1224_p3;
        ap_return_1_int_reg <= p_Val2_12_fu_934_p3;
        ap_return_2_int_reg <= select_ln302_11_fu_1420_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        or_ln346_reg_1456 <= or_ln346_fu_376_p2;
        overflow_reg_1451 <= overflow_fu_346_p2;
        p_Val2_3_reg_1446 <= p_Val2_3_fu_230_p2;
        rhs_1_reg_1461 <= rhs_1_fu_631_p3;
        rhs_2_reg_1467 <= rhs_2_fu_823_p3;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_0 = ap_return_0_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_0 = p_Val2_20_fu_1224_p3;
    end else begin
        ap_return_0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_1 = ap_return_1_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_1 = p_Val2_12_fu_934_p3;
    end else begin
        ap_return_1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_2 = ap_return_2_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_2 = select_ln302_11_fu_1420_p3;
    end else begin
        ap_return_2 = 'bx;
    end
end

assign Range1_all_ones_fu_274_p2 = ((tmp_fu_264_p4 == 2'd3) ? 1'b1 : 1'b0);

assign Range1_all_zeros_fu_280_p2 = ((tmp_fu_264_p4 == 2'd0) ? 1'b1 : 1'b0);

assign Range2_all_ones_3_fu_511_p3 = r_V_1_fu_435_p2[32'd24];

assign Range2_all_ones_4_fu_703_p3 = r_V_2_fu_118_p2[32'd25];

assign Range2_all_ones_fu_256_p3 = r_V_fu_121_p2[32'd26];

assign add_ln1270_fu_441_p2 = (trunc_ln1273_1_fu_427_p3 + trunc_ln2_fu_415_p3);

assign and_ln890_fu_308_p2 = (xor_ln890_fu_302_p2 & Range2_all_ones_fu_256_p3);

assign and_ln891_1_fu_563_p2 = (carry_3_fu_505_p2 & Range2_all_ones_3_fu_511_p3);

assign and_ln891_2_fu_755_p2 = (carry_5_fu_697_p2 & Range2_all_ones_4_fu_703_p3);

assign and_ln891_fu_322_p2 = (carry_1_fu_250_p2 & Range1_all_ones_fu_274_p2);

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign carry_1_fu_250_p2 = (xor_ln896_fu_244_p2 & p_Result_1_fu_210_p3);

assign carry_3_fu_505_p2 = (xor_ln896_2_fu_499_p2 & p_Result_4_fu_465_p3);

assign carry_5_fu_697_p2 = (xor_ln896_4_fu_691_p2 & p_Result_7_fu_657_p3);

assign deleted_ones_1_fu_557_p2 = (or_ln890_fu_551_p2 & Range2_all_ones_3_fu_511_p3);

assign deleted_ones_2_fu_749_p2 = (or_ln890_1_fu_743_p2 & Range2_all_ones_4_fu_703_p3);

assign deleted_ones_fu_314_p3 = ((carry_1_fu_250_p2[0:0] == 1'b1) ? and_ln890_fu_308_p2 : Range1_all_ones_fu_274_p2);

assign deleted_zeros_1_fu_531_p2 = (or_ln888_fu_525_p2 ^ Range2_all_ones_3_fu_511_p3);

assign deleted_zeros_2_fu_723_p2 = (or_ln888_1_fu_717_p2 ^ Range2_all_ones_4_fu_703_p3);

assign deleted_zeros_fu_286_p3 = ((carry_1_fu_250_p2[0:0] == 1'b1) ? Range1_all_ones_fu_274_p2 : Range1_all_zeros_fu_280_p2);

assign lhs_1_fu_1126_p3 = ((or_ln302_2_fu_1104_p2[0:0] == 1'b1) ? select_ln302_4_fu_1110_p3 : select_ln350_2_fu_1118_p3);

assign lhs_fu_1030_p3 = ((or_ln302_1_fu_1008_p2[0:0] == 1'b1) ? select_ln302_2_fu_1014_p3 : select_ln350_1_fu_1022_p3);

assign or_ln302_1_fu_1008_p2 = (xor_ln302_3_fu_1002_p2 | overflow_4_fu_978_p2);

assign or_ln302_2_fu_1104_p2 = (xor_ln302_5_fu_1098_p2 | overflow_5_fu_1074_p2);

assign or_ln302_3_fu_1202_p2 = (xor_ln302_7_fu_1196_p2 | overflow_6_fu_1172_p2);

assign or_ln302_4_fu_1300_p2 = (xor_ln302_9_fu_1294_p2 | overflow_7_fu_1270_p2);

assign or_ln302_5_fu_1398_p2 = (xor_ln302_11_fu_1392_p2 | overflow_8_fu_1368_p2);

assign or_ln302_fu_912_p2 = (xor_ln302_1_fu_906_p2 | overflow_3_fu_882_p2);

assign or_ln346_1_fu_625_p2 = (underflow_1_fu_611_p2 | overflow_1_fu_587_p2);

assign or_ln346_2_fu_817_p2 = (underflow_2_fu_803_p2 | overflow_2_fu_779_p2);

assign or_ln346_fu_376_p2 = (underflow_fu_370_p2 | overflow_fu_346_p2);

assign or_ln888_1_fu_717_p2 = (xor_ln888_2_fu_711_p2 | p_Result_8_fu_683_p3);

assign or_ln888_fu_525_p2 = (xor_ln888_fu_519_p2 | p_Result_5_fu_491_p3);

assign or_ln890_1_fu_743_p2 = (xor_ln890_2_fu_737_p2 | or_ln888_1_fu_717_p2);

assign or_ln890_fu_551_p2 = (xor_ln890_1_fu_545_p2 | or_ln888_fu_525_p2);

assign or_ln895_1_fu_575_p2 = (xor_ln895_2_fu_569_p2 | p_Result_5_fu_491_p3);

assign or_ln895_2_fu_767_p2 = (xor_ln895_4_fu_761_p2 | p_Result_8_fu_683_p3);

assign or_ln895_fu_334_p2 = (xor_ln895_fu_328_p2 | p_Result_2_fu_236_p3);

assign or_ln896_1_fu_599_p2 = (xor_ln896_3_fu_593_p2 | xor_ln896_2_fu_499_p2);

assign or_ln896_2_fu_791_p2 = (xor_ln896_5_fu_785_p2 | xor_ln896_4_fu_691_p2);

assign or_ln896_fu_358_p2 = (xor_ln896_fu_244_p2 | xor_ln896_1_fu_352_p2);

assign overflow_1_fu_587_p2 = (xor_ln895_3_fu_581_p2 & or_ln895_1_fu_575_p2);

assign overflow_2_fu_779_p2 = (xor_ln895_5_fu_773_p2 & or_ln895_2_fu_767_p2);

assign overflow_3_fu_882_p2 = (xor_ln895_6_fu_876_p2 & p_Result_10_fu_868_p3);

assign overflow_4_fu_978_p2 = (xor_ln895_7_fu_972_p2 & p_Result_12_fu_964_p3);

assign overflow_5_fu_1074_p2 = (xor_ln895_8_fu_1068_p2 & p_Result_14_fu_1060_p3);

assign overflow_6_fu_1172_p2 = (xor_ln895_9_fu_1166_p2 & p_Result_16_fu_1158_p3);

assign overflow_7_fu_1270_p2 = (xor_ln895_10_fu_1264_p2 & p_Result_18_fu_1256_p3);

assign overflow_8_fu_1368_p2 = (xor_ln895_11_fu_1362_p2 & p_Result_20_fu_1354_p3);

assign overflow_fu_346_p2 = (xor_ln895_1_fu_340_p2 & or_ln895_fu_334_p2);

assign p_Result_10_fu_868_p3 = p_Val2_11_fu_862_p2[32'd15];

assign p_Result_11_fu_951_p3 = ret_V_1_fu_945_p2[32'd16];

assign p_Result_12_fu_964_p3 = p_Val2_14_fu_959_p2[32'd15];

assign p_Result_13_fu_1047_p3 = ret_V_2_fu_1041_p2[32'd16];

assign p_Result_14_fu_1060_p3 = p_Val2_16_fu_1055_p2[32'd15];

assign p_Result_15_fu_1144_p3 = ret_V_3_fu_1138_p2[32'd16];

assign p_Result_16_fu_1158_p3 = p_Val2_18_fu_1152_p2[32'd15];

assign p_Result_17_fu_1242_p3 = ret_V_4_fu_1236_p2[32'd16];

assign p_Result_18_fu_1256_p3 = p_Val2_19_fu_1250_p2[32'd15];

assign p_Result_19_fu_1340_p3 = ret_V_5_fu_1334_p2[32'd16];

assign p_Result_1_fu_210_p3 = r_V_fu_121_p2[32'd24];

assign p_Result_20_fu_1354_p3 = p_Val2_23_fu_1348_p2[32'd15];

assign p_Result_2_fu_236_p3 = p_Val2_3_fu_230_p2[32'd15];

assign p_Result_3_fu_447_p3 = r_V_1_fu_435_p2[32'd24];

assign p_Result_4_fu_465_p3 = r_V_1_fu_435_p2[32'd24];

assign p_Result_5_fu_491_p3 = p_Val2_6_fu_485_p2[32'd15];

assign p_Result_6_fu_639_p3 = r_V_2_fu_118_p2[32'd25];

assign p_Result_7_fu_657_p3 = r_V_2_fu_118_p2[32'd24];

assign p_Result_8_fu_683_p3 = p_Val2_9_fu_677_p2[32'd15];

assign p_Result_9_fu_854_p3 = ret_V_fu_848_p2[32'd16];

assign p_Result_s_fu_192_p3 = r_V_fu_121_p2[32'd26];

assign p_Val2_11_fu_862_p2 = ($signed(rhs_fu_838_p3) + $signed(16'd155));

assign p_Val2_12_fu_934_p3 = ((or_ln302_fu_912_p2[0:0] == 1'b1) ? select_ln302_fu_918_p3 : select_ln350_fu_926_p3);

assign p_Val2_14_fu_959_p2 = ($signed(rhs_1_reg_1461) + $signed(16'd3));

assign p_Val2_16_fu_1055_p2 = ($signed(rhs_2_reg_1467) + $signed(16'd213));

assign p_Val2_18_fu_1152_p2 = ($signed(lhs_fu_1030_p3) + $signed(16'd65534));

assign p_Val2_19_fu_1250_p2 = ($signed(lhs_1_fu_1126_p3) + $signed(16'd16));

assign p_Val2_1_fu_200_p4 = {{r_V_fu_121_p2[24:9]}};

assign p_Val2_20_fu_1224_p3 = ((or_ln302_3_fu_1202_p2[0:0] == 1'b1) ? select_ln302_6_fu_1208_p3 : select_ln350_3_fu_1216_p3);

assign p_Val2_23_fu_1348_p2 = ($signed(p_Val2_s_fu_1322_p3) + $signed(16'd116));

assign p_Val2_3_fu_230_p2 = (zext_ln377_fu_226_p1 + p_Val2_1_fu_200_p4);

assign p_Val2_4_fu_455_p4 = {{r_V_1_fu_435_p2[24:9]}};

assign p_Val2_6_fu_485_p2 = (zext_ln377_1_fu_481_p1 + p_Val2_4_fu_455_p4);

assign p_Val2_7_fu_647_p4 = {{r_V_2_fu_118_p2[24:9]}};

assign p_Val2_9_fu_677_p2 = (zext_ln377_2_fu_673_p1 + p_Val2_7_fu_647_p4);

assign p_Val2_s_fu_1322_p3 = ((or_ln302_4_fu_1300_p2[0:0] == 1'b1) ? select_ln302_8_fu_1306_p3 : select_ln350_4_fu_1314_p3);

assign r_V_1_fu_435_p2 = ($signed(sext_ln1273_fu_395_p1) + $signed(sext_ln1273_1_fu_407_p1));

assign r_V_2_fu_118_p1 = 26'd67108590;

assign r_V_fu_121_p1 = 27'd134216988;

assign ret_V_1_fu_945_p2 = ($signed(sext_ln813_1_fu_942_p1) + $signed(17'd3));

assign ret_V_2_fu_1041_p2 = ($signed(sext_ln813_2_fu_1038_p1) + $signed(17'd213));

assign ret_V_3_fu_1138_p2 = ($signed(sext_ln813_3_fu_1134_p1) + $signed(17'd131070));

assign ret_V_4_fu_1236_p2 = ($signed(sext_ln813_4_fu_1232_p1) + $signed(17'd16));

assign ret_V_5_fu_1334_p2 = ($signed(sext_ln813_5_fu_1330_p1) + $signed(17'd116));

assign ret_V_fu_848_p2 = ($signed(sext_ln813_fu_844_p1) + $signed(17'd155));

assign rhs_1_fu_631_p3 = ((or_ln346_1_fu_625_p2[0:0] == 1'b1) ? select_ln346_2_fu_617_p3 : p_Val2_6_fu_485_p2);

assign rhs_2_fu_823_p3 = ((or_ln346_2_fu_817_p2[0:0] == 1'b1) ? select_ln346_4_fu_809_p3 : p_Val2_9_fu_677_p2);

assign rhs_fu_838_p3 = ((or_ln346_reg_1456[0:0] == 1'b1) ? select_ln346_fu_831_p3 : p_Val2_3_reg_1446);

assign select_ln302_10_fu_1404_p3 = ((xor_ln302_10_fu_1386_p2[0:0] == 1'b1) ? 16'd32767 : p_Val2_23_fu_1348_p2);

assign select_ln302_11_fu_1420_p3 = ((or_ln302_5_fu_1398_p2[0:0] == 1'b1) ? select_ln302_10_fu_1404_p3 : select_ln350_5_fu_1412_p3);

assign select_ln302_2_fu_1014_p3 = ((xor_ln302_2_fu_996_p2[0:0] == 1'b1) ? 16'd32767 : p_Val2_14_fu_959_p2);

assign select_ln302_4_fu_1110_p3 = ((xor_ln302_4_fu_1092_p2[0:0] == 1'b1) ? 16'd32767 : p_Val2_16_fu_1055_p2);

assign select_ln302_6_fu_1208_p3 = ((xor_ln302_6_fu_1190_p2[0:0] == 1'b1) ? 16'd32767 : p_Val2_18_fu_1152_p2);

assign select_ln302_8_fu_1306_p3 = ((xor_ln302_8_fu_1288_p2[0:0] == 1'b1) ? 16'd32767 : p_Val2_19_fu_1250_p2);

assign select_ln302_fu_918_p3 = ((xor_ln302_fu_900_p2[0:0] == 1'b1) ? 16'd32767 : p_Val2_11_fu_862_p2);

assign select_ln346_2_fu_617_p3 = ((overflow_1_fu_587_p2[0:0] == 1'b1) ? 16'd32767 : 16'd32768);

assign select_ln346_4_fu_809_p3 = ((overflow_2_fu_779_p2[0:0] == 1'b1) ? 16'd32767 : 16'd32768);

assign select_ln346_fu_831_p3 = ((overflow_reg_1451[0:0] == 1'b1) ? 16'd32767 : 16'd32768);

assign select_ln350_1_fu_1022_p3 = ((underflow_4_fu_990_p2[0:0] == 1'b1) ? 16'd32768 : p_Val2_14_fu_959_p2);

assign select_ln350_2_fu_1118_p3 = ((underflow_5_fu_1086_p2[0:0] == 1'b1) ? 16'd32768 : p_Val2_16_fu_1055_p2);

assign select_ln350_3_fu_1216_p3 = ((underflow_6_fu_1184_p2[0:0] == 1'b1) ? 16'd32768 : p_Val2_18_fu_1152_p2);

assign select_ln350_4_fu_1314_p3 = ((underflow_7_fu_1282_p2[0:0] == 1'b1) ? 16'd32768 : p_Val2_19_fu_1250_p2);

assign select_ln350_5_fu_1412_p3 = ((underflow_8_fu_1380_p2[0:0] == 1'b1) ? 16'd32768 : p_Val2_23_fu_1348_p2);

assign select_ln350_fu_926_p3 = ((underflow_3_fu_894_p2[0:0] == 1'b1) ? 16'd32768 : p_Val2_11_fu_862_p2);

assign sext_ln1273_1_fu_407_p1 = $signed(shl_ln1273_1_fu_399_p3);

assign sext_ln1273_fu_395_p1 = $signed(shl_ln_fu_387_p3);

assign sext_ln813_1_fu_942_p1 = rhs_1_reg_1461;

assign sext_ln813_2_fu_1038_p1 = rhs_2_reg_1467;

assign sext_ln813_3_fu_1134_p1 = lhs_fu_1030_p3;

assign sext_ln813_4_fu_1232_p1 = lhs_1_fu_1126_p3;

assign sext_ln813_5_fu_1330_p1 = p_Val2_s_fu_1322_p3;

assign sext_ln813_fu_844_p1 = rhs_fu_838_p3;

assign shl_ln1273_1_fu_399_p1 = p_read1;

assign shl_ln1273_1_fu_399_p3 = {{shl_ln1273_1_fu_399_p1}, {6'd0}};

assign shl_ln_fu_387_p1 = p_read1;

assign shl_ln_fu_387_p3 = {{shl_ln_fu_387_p1}, {8'd0}};

assign tmp_12_fu_537_p3 = r_V_1_fu_435_p2[32'd24];

assign tmp_15_fu_665_p3 = r_V_2_fu_118_p2[32'd8];

assign tmp_18_fu_729_p3 = r_V_2_fu_118_p2[32'd25];

assign tmp_3_fu_218_p3 = r_V_fu_121_p2[32'd8];

assign tmp_6_fu_294_p3 = r_V_fu_121_p2[32'd25];

assign tmp_9_fu_473_p3 = add_ln1270_fu_441_p2[32'd8];

assign tmp_fu_264_p4 = {{r_V_fu_121_p2[26:25]}};

assign trunc_ln1273_1_fu_427_p3 = {{trunc_ln1273_2_fu_423_p1}, {8'd0}};

assign trunc_ln1273_2_fu_423_p0 = p_read1;

assign trunc_ln1273_2_fu_423_p1 = trunc_ln1273_2_fu_423_p0[0:0];

assign trunc_ln1273_fu_411_p0 = p_read1;

assign trunc_ln1273_fu_411_p1 = trunc_ln1273_fu_411_p0[2:0];

assign trunc_ln2_fu_415_p3 = {{trunc_ln1273_fu_411_p1}, {6'd0}};

assign underflow_1_fu_611_p2 = (xor_ln896_13_fu_605_p2 & p_Result_3_fu_447_p3);

assign underflow_2_fu_803_p2 = (xor_ln896_14_fu_797_p2 & p_Result_6_fu_639_p3);

assign underflow_3_fu_894_p2 = (xor_ln896_6_fu_888_p2 & p_Result_9_fu_854_p3);

assign underflow_4_fu_990_p2 = (xor_ln896_7_fu_984_p2 & p_Result_11_fu_951_p3);

assign underflow_5_fu_1086_p2 = (xor_ln896_8_fu_1080_p2 & p_Result_13_fu_1047_p3);

assign underflow_6_fu_1184_p2 = (xor_ln896_9_fu_1178_p2 & p_Result_15_fu_1144_p3);

assign underflow_7_fu_1282_p2 = (xor_ln896_10_fu_1276_p2 & p_Result_17_fu_1242_p3);

assign underflow_8_fu_1380_p2 = (xor_ln896_11_fu_1374_p2 & p_Result_19_fu_1340_p3);

assign underflow_fu_370_p2 = (xor_ln896_12_fu_364_p2 & p_Result_s_fu_192_p3);

assign xor_ln302_10_fu_1386_p2 = (p_Result_20_fu_1354_p3 ^ p_Result_19_fu_1340_p3);

assign xor_ln302_11_fu_1392_p2 = (xor_ln302_10_fu_1386_p2 ^ 1'd1);

assign xor_ln302_1_fu_906_p2 = (xor_ln302_fu_900_p2 ^ 1'd1);

assign xor_ln302_2_fu_996_p2 = (p_Result_12_fu_964_p3 ^ p_Result_11_fu_951_p3);

assign xor_ln302_3_fu_1002_p2 = (xor_ln302_2_fu_996_p2 ^ 1'd1);

assign xor_ln302_4_fu_1092_p2 = (p_Result_14_fu_1060_p3 ^ p_Result_13_fu_1047_p3);

assign xor_ln302_5_fu_1098_p2 = (xor_ln302_4_fu_1092_p2 ^ 1'd1);

assign xor_ln302_6_fu_1190_p2 = (p_Result_16_fu_1158_p3 ^ p_Result_15_fu_1144_p3);

assign xor_ln302_7_fu_1196_p2 = (xor_ln302_6_fu_1190_p2 ^ 1'd1);

assign xor_ln302_8_fu_1288_p2 = (p_Result_18_fu_1256_p3 ^ p_Result_17_fu_1242_p3);

assign xor_ln302_9_fu_1294_p2 = (xor_ln302_8_fu_1288_p2 ^ 1'd1);

assign xor_ln302_fu_900_p2 = (p_Result_9_fu_854_p3 ^ p_Result_10_fu_868_p3);

assign xor_ln888_2_fu_711_p2 = (p_Result_7_fu_657_p3 ^ 1'd1);

assign xor_ln888_fu_519_p2 = (p_Result_4_fu_465_p3 ^ 1'd1);

assign xor_ln890_1_fu_545_p2 = (tmp_12_fu_537_p3 ^ 1'd1);

assign xor_ln890_2_fu_737_p2 = (tmp_18_fu_729_p3 ^ 1'd1);

assign xor_ln890_fu_302_p2 = (tmp_6_fu_294_p3 ^ 1'd1);

assign xor_ln895_10_fu_1264_p2 = (p_Result_17_fu_1242_p3 ^ 1'd1);

assign xor_ln895_11_fu_1362_p2 = (p_Result_19_fu_1340_p3 ^ 1'd1);

assign xor_ln895_1_fu_340_p2 = (p_Result_s_fu_192_p3 ^ 1'd1);

assign xor_ln895_2_fu_569_p2 = (deleted_zeros_1_fu_531_p2 ^ 1'd1);

assign xor_ln895_3_fu_581_p2 = (p_Result_3_fu_447_p3 ^ 1'd1);

assign xor_ln895_4_fu_761_p2 = (deleted_zeros_2_fu_723_p2 ^ 1'd1);

assign xor_ln895_5_fu_773_p2 = (p_Result_6_fu_639_p3 ^ 1'd1);

assign xor_ln895_6_fu_876_p2 = (p_Result_9_fu_854_p3 ^ 1'd1);

assign xor_ln895_7_fu_972_p2 = (p_Result_11_fu_951_p3 ^ 1'd1);

assign xor_ln895_8_fu_1068_p2 = (p_Result_13_fu_1047_p3 ^ 1'd1);

assign xor_ln895_9_fu_1166_p2 = (p_Result_15_fu_1144_p3 ^ 1'd1);

assign xor_ln895_fu_328_p2 = (deleted_zeros_fu_286_p3 ^ 1'd1);

assign xor_ln896_10_fu_1276_p2 = (p_Result_18_fu_1256_p3 ^ 1'd1);

assign xor_ln896_11_fu_1374_p2 = (p_Result_20_fu_1354_p3 ^ 1'd1);

assign xor_ln896_12_fu_364_p2 = (or_ln896_fu_358_p2 ^ and_ln891_fu_322_p2);

assign xor_ln896_13_fu_605_p2 = (or_ln896_1_fu_599_p2 ^ and_ln891_1_fu_563_p2);

assign xor_ln896_14_fu_797_p2 = (or_ln896_2_fu_791_p2 ^ and_ln891_2_fu_755_p2);

assign xor_ln896_1_fu_352_p2 = (deleted_ones_fu_314_p3 ^ 1'd1);

assign xor_ln896_2_fu_499_p2 = (p_Result_5_fu_491_p3 ^ 1'd1);

assign xor_ln896_3_fu_593_p2 = (deleted_ones_1_fu_557_p2 ^ 1'd1);

assign xor_ln896_4_fu_691_p2 = (p_Result_8_fu_683_p3 ^ 1'd1);

assign xor_ln896_5_fu_785_p2 = (deleted_ones_2_fu_749_p2 ^ 1'd1);

assign xor_ln896_6_fu_888_p2 = (p_Result_10_fu_868_p3 ^ 1'd1);

assign xor_ln896_7_fu_984_p2 = (p_Result_12_fu_964_p3 ^ 1'd1);

assign xor_ln896_8_fu_1080_p2 = (p_Result_14_fu_1060_p3 ^ 1'd1);

assign xor_ln896_9_fu_1178_p2 = (p_Result_16_fu_1158_p3 ^ 1'd1);

assign xor_ln896_fu_244_p2 = (p_Result_2_fu_236_p3 ^ 1'd1);

assign zext_ln377_1_fu_481_p1 = tmp_9_fu_473_p3;

assign zext_ln377_2_fu_673_p1 = tmp_15_fu_665_p3;

assign zext_ln377_fu_226_p1 = tmp_3_fu_218_p3;

endmodule //motor_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config8_s
