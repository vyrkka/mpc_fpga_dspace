module motor_dense_latency_ap_fixed_18_7_0_0_0_ap_fixed_18_7_0_0_0_config5_s (
        ap_clk,
        ap_rst,
        p_read,
        p_read1,
        p_read2,
        p_read3,
        ap_return_0,
        ap_return_1,
        ap_ce
);


input   ap_clk;
input   ap_rst;
input  [17:0] p_read;
input  [17:0] p_read1;
input  [17:0] p_read2;
input  [17:0] p_read3;
output  [17:0] ap_return_0;
output  [17:0] ap_return_1;
input   ap_ce;

reg[17:0] ap_return_0;
reg[17:0] ap_return_1;

reg  signed [17:0] p_read_7_reg_1590;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
reg  signed [17:0] p_read_8_reg_1595;
reg  signed [17:0] p_read_8_reg_1595_pp0_iter1_reg;
wire  signed [17:0] rhs_fu_396_p3;
reg  signed [17:0] rhs_reg_1600;
wire  signed [17:0] rhs_3_fu_593_p3;
reg  signed [17:0] rhs_3_reg_1606;
wire  signed [17:0] rhs_4_fu_790_p3;
reg  signed [17:0] rhs_4_reg_1612;
wire  signed [17:0] rhs_5_fu_986_p3;
reg  signed [17:0] rhs_5_reg_1618;
reg   [0:0] p_Result_39_reg_1624;
wire   [17:0] p_Val2_46_fu_1211_p2;
reg   [17:0] p_Val2_46_reg_1631;
reg   [0:0] p_Result_40_reg_1637;
wire   [10:0] r_V_4_fu_94_p1;
wire    ap_block_pp0_stage0;
wire  signed [10:0] r_V_fu_95_p1;
wire   [10:0] r_V_6_fu_96_p1;
wire  signed [10:0] r_V_5_fu_97_p1;
wire   [11:0] r_V_3_fu_98_p1;
wire   [28:0] r_V_fu_95_p2;
wire   [0:0] tmp_fu_238_p3;
wire   [17:0] zext_ln377_fu_246_p1;
wire   [17:0] p_Val2_25_fu_220_p4;
wire   [17:0] p_Val2_26_fu_250_p2;
wire   [0:0] p_Result_22_fu_256_p3;
wire   [0:0] p_Result_21_fu_230_p3;
wire   [0:0] xor_ln896_fu_264_p2;
wire   [0:0] xor_ln888_fu_284_p2;
wire   [0:0] Range2_all_ones_fu_276_p3;
wire   [0:0] or_ln888_fu_290_p2;
wire   [0:0] tmp_33_fu_302_p3;
wire   [0:0] xor_ln890_fu_310_p2;
wire   [0:0] or_ln890_fu_316_p2;
wire   [0:0] carry_6_fu_270_p2;
wire   [0:0] deleted_zeros_fu_296_p2;
wire   [0:0] xor_ln895_fu_334_p2;
wire   [0:0] p_Result_s_fu_212_p3;
wire   [0:0] or_ln895_fu_340_p2;
wire   [0:0] xor_ln895_12_fu_346_p2;
wire   [0:0] deleted_ones_fu_322_p2;
wire   [0:0] xor_ln896_12_fu_358_p2;
wire   [0:0] and_ln891_fu_328_p2;
wire   [0:0] or_ln896_fu_364_p2;
wire   [0:0] xor_ln896_25_fu_370_p2;
wire   [0:0] overflow_fu_352_p2;
wire   [0:0] underflow_fu_376_p2;
wire   [0:0] or_ln346_fu_390_p2;
wire   [17:0] select_ln346_fu_382_p3;
wire   [28:0] r_V_4_fu_94_p2;
wire   [0:0] tmp_42_fu_435_p3;
wire   [17:0] zext_ln377_4_fu_443_p1;
wire   [17:0] p_Val2_30_fu_417_p4;
wire   [17:0] p_Val2_31_fu_447_p2;
wire   [0:0] p_Result_28_fu_453_p3;
wire   [0:0] p_Result_27_fu_427_p3;
wire   [0:0] xor_ln896_15_fu_461_p2;
wire   [0:0] xor_ln888_7_fu_481_p2;
wire   [0:0] Range2_all_ones_6_fu_473_p3;
wire   [0:0] or_ln888_3_fu_487_p2;
wire   [0:0] tmp_45_fu_499_p3;
wire   [0:0] xor_ln890_4_fu_507_p2;
wire   [0:0] or_ln890_3_fu_513_p2;
wire   [0:0] carry_10_fu_467_p2;
wire   [0:0] deleted_zeros_4_fu_493_p2;
wire   [0:0] xor_ln895_15_fu_531_p2;
wire   [0:0] p_Result_26_fu_409_p3;
wire   [0:0] or_ln895_4_fu_537_p2;
wire   [0:0] xor_ln895_16_fu_543_p2;
wire   [0:0] deleted_ones_10_fu_519_p2;
wire   [0:0] xor_ln896_16_fu_555_p2;
wire   [0:0] and_ln891_4_fu_525_p2;
wire   [0:0] or_ln896_4_fu_561_p2;
wire   [0:0] xor_ln896_27_fu_567_p2;
wire   [0:0] overflow_10_fu_549_p2;
wire   [0:0] underflow_10_fu_573_p2;
wire   [0:0] or_ln346_4_fu_587_p2;
wire   [17:0] select_ln346_9_fu_579_p3;
wire   [28:0] r_V_5_fu_97_p2;
wire   [0:0] tmp_48_fu_632_p3;
wire   [17:0] zext_ln377_5_fu_640_p1;
wire   [17:0] p_Val2_33_fu_614_p4;
wire   [17:0] p_Val2_34_fu_644_p2;
wire   [0:0] p_Result_31_fu_650_p3;
wire   [0:0] p_Result_30_fu_624_p3;
wire   [0:0] xor_ln896_17_fu_658_p2;
wire   [0:0] xor_ln888_9_fu_678_p2;
wire   [0:0] Range2_all_ones_7_fu_670_p3;
wire   [0:0] or_ln888_4_fu_684_p2;
wire   [0:0] tmp_51_fu_696_p3;
wire   [0:0] xor_ln890_5_fu_704_p2;
wire   [0:0] or_ln890_4_fu_710_p2;
wire   [0:0] carry_12_fu_664_p2;
wire   [0:0] deleted_zeros_5_fu_690_p2;
wire   [0:0] xor_ln895_17_fu_728_p2;
wire   [0:0] p_Result_29_fu_606_p3;
wire   [0:0] or_ln895_5_fu_734_p2;
wire   [0:0] xor_ln895_18_fu_740_p2;
wire   [0:0] deleted_ones_11_fu_716_p2;
wire   [0:0] xor_ln896_18_fu_752_p2;
wire   [0:0] and_ln891_5_fu_722_p2;
wire   [0:0] or_ln896_5_fu_758_p2;
wire   [0:0] xor_ln896_28_fu_764_p2;
wire   [0:0] overflow_11_fu_746_p2;
wire   [0:0] underflow_11_fu_770_p2;
wire   [0:0] or_ln346_5_fu_784_p2;
wire   [17:0] select_ln346_11_fu_776_p3;
wire   [28:0] r_V_6_fu_96_p2;
wire   [0:0] tmp_54_fu_828_p3;
wire   [17:0] zext_ln377_6_fu_836_p1;
wire   [17:0] p_Val2_36_fu_810_p4;
wire   [17:0] p_Val2_37_fu_840_p2;
wire   [0:0] p_Result_34_fu_846_p3;
wire   [0:0] p_Result_33_fu_820_p3;
wire   [0:0] xor_ln896_19_fu_854_p2;
wire   [0:0] xor_ln888_11_fu_874_p2;
wire   [0:0] Range2_all_ones_8_fu_866_p3;
wire   [0:0] or_ln888_5_fu_880_p2;
wire   [0:0] tmp_57_fu_892_p3;
wire   [0:0] xor_ln890_6_fu_900_p2;
wire   [0:0] or_ln890_5_fu_906_p2;
wire   [0:0] carry_14_fu_860_p2;
wire   [0:0] deleted_zeros_6_fu_886_p2;
wire   [0:0] xor_ln895_19_fu_924_p2;
wire   [0:0] p_Result_32_fu_802_p3;
wire   [0:0] or_ln895_6_fu_930_p2;
wire   [0:0] xor_ln895_20_fu_936_p2;
wire   [0:0] deleted_ones_12_fu_912_p2;
wire   [0:0] xor_ln896_20_fu_948_p2;
wire   [0:0] and_ln891_6_fu_918_p2;
wire   [0:0] or_ln896_6_fu_954_p2;
wire   [0:0] xor_ln896_29_fu_960_p2;
wire   [0:0] overflow_12_fu_942_p2;
wire   [0:0] underflow_12_fu_966_p2;
wire   [0:0] or_ln346_6_fu_980_p2;
wire   [17:0] select_ln346_13_fu_972_p3;
wire  signed [18:0] sext_ln813_fu_994_p1;
wire   [18:0] ret_V_fu_997_p2;
wire   [17:0] p_Val2_39_fu_1011_p2;
wire   [0:0] p_Result_35_fu_1003_p3;
wire   [0:0] p_Result_36_fu_1016_p3;
wire   [0:0] xor_ln895_21_fu_1024_p2;
wire   [0:0] xor_ln896_21_fu_1036_p2;
wire   [0:0] xor_ln302_fu_1048_p2;
wire   [0:0] overflow_13_fu_1030_p2;
wire   [0:0] xor_ln302_12_fu_1054_p2;
wire   [0:0] underflow_13_fu_1042_p2;
wire   [0:0] or_ln302_fu_1060_p2;
wire   [17:0] select_ln302_fu_1066_p3;
wire   [17:0] select_ln350_fu_1074_p3;
wire  signed [17:0] p_Val2_s_fu_1082_p3;
wire  signed [18:0] sext_ln813_7_fu_1094_p1;
wire  signed [18:0] sext_ln813_6_fu_1090_p1;
wire   [18:0] ret_V_6_fu_1097_p2;
wire   [17:0] p_Val2_43_fu_1111_p2;
wire   [0:0] p_Result_37_fu_1103_p3;
wire   [0:0] p_Result_38_fu_1116_p3;
wire   [0:0] xor_ln895_22_fu_1124_p2;
wire   [0:0] xor_ln896_22_fu_1136_p2;
wire   [0:0] xor_ln302_13_fu_1148_p2;
wire   [0:0] overflow_14_fu_1130_p2;
wire   [0:0] xor_ln302_14_fu_1154_p2;
wire   [0:0] underflow_14_fu_1142_p2;
wire   [0:0] or_ln302_6_fu_1160_p2;
wire   [17:0] select_ln302_13_fu_1166_p3;
wire   [17:0] select_ln350_6_fu_1174_p3;
wire  signed [17:0] p_Val2_49_fu_1182_p3;
wire  signed [18:0] sext_ln813_9_fu_1194_p1;
wire  signed [18:0] sext_ln813_8_fu_1190_p1;
wire   [18:0] ret_V_7_fu_1197_p2;
wire   [29:0] r_V_3_fu_98_p2;
wire   [0:0] tmp_36_fu_1254_p3;
wire   [17:0] zext_ln377_3_fu_1262_p1;
wire   [17:0] p_Val2_28_fu_1236_p4;
wire   [17:0] p_Val2_29_fu_1266_p2;
wire   [0:0] p_Result_25_fu_1272_p3;
wire   [0:0] p_Result_24_fu_1246_p3;
wire   [0:0] xor_ln896_13_fu_1280_p2;
wire   [0:0] xor_ln888_5_fu_1300_p2;
wire   [0:0] Range2_all_ones_5_fu_1292_p3;
wire   [0:0] or_ln888_2_fu_1306_p2;
wire   [0:0] tmp_39_fu_1318_p3;
wire   [0:0] xor_ln890_3_fu_1326_p2;
wire   [0:0] or_ln890_2_fu_1332_p2;
wire   [0:0] carry_8_fu_1286_p2;
wire   [0:0] deleted_zeros_3_fu_1312_p2;
wire   [0:0] xor_ln895_13_fu_1350_p2;
wire   [0:0] p_Result_23_fu_1228_p3;
wire   [0:0] or_ln895_3_fu_1356_p2;
wire   [0:0] xor_ln895_14_fu_1362_p2;
wire   [0:0] deleted_ones_9_fu_1338_p2;
wire   [0:0] xor_ln896_14_fu_1374_p2;
wire   [0:0] and_ln891_3_fu_1344_p2;
wire   [0:0] or_ln896_3_fu_1380_p2;
wire   [0:0] xor_ln896_26_fu_1386_p2;
wire   [0:0] overflow_9_fu_1368_p2;
wire   [0:0] underflow_9_fu_1392_p2;
wire   [0:0] or_ln346_3_fu_1406_p2;
wire   [17:0] select_ln346_7_fu_1398_p3;
wire   [0:0] xor_ln895_23_fu_1420_p2;
wire   [0:0] xor_ln896_23_fu_1430_p2;
wire   [0:0] xor_ln302_15_fu_1440_p2;
wire   [0:0] overflow_15_fu_1425_p2;
wire   [0:0] xor_ln302_16_fu_1444_p2;
wire   [0:0] underflow_15_fu_1435_p2;
wire   [0:0] or_ln302_7_fu_1450_p2;
wire   [17:0] select_ln302_15_fu_1456_p3;
wire   [17:0] select_ln350_7_fu_1463_p3;
wire  signed [17:0] lhs_4_fu_1470_p3;
wire  signed [18:0] sext_ln813_11_fu_1482_p1;
wire  signed [18:0] sext_ln813_10_fu_1478_p1;
wire   [18:0] ret_V_8_fu_1485_p2;
wire   [17:0] p_Val2_48_fu_1499_p2;
wire   [0:0] p_Result_41_fu_1491_p3;
wire   [0:0] p_Result_42_fu_1504_p3;
wire   [0:0] xor_ln895_24_fu_1512_p2;
wire   [0:0] xor_ln896_24_fu_1524_p2;
wire   [0:0] xor_ln302_17_fu_1536_p2;
wire   [0:0] overflow_16_fu_1518_p2;
wire   [0:0] xor_ln302_18_fu_1542_p2;
wire   [0:0] underflow_16_fu_1530_p2;
wire   [0:0] or_ln302_8_fu_1548_p2;
wire   [17:0] select_ln302_17_fu_1554_p3;
wire   [17:0] select_ln350_8_fu_1562_p3;
wire   [17:0] select_ln302_18_fu_1570_p3;
wire   [17:0] p_Val2_40_fu_1412_p3;
reg    ap_ce_reg;
reg  signed [17:0] p_read_int_reg;
reg  signed [17:0] p_read1_int_reg;
reg  signed [17:0] p_read2_int_reg;
reg   [17:0] p_read3_int_reg;
reg   [17:0] ap_return_0_int_reg;
reg   [17:0] ap_return_1_int_reg;

motor_mul_18s_11ns_29_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 18 ),
    .din1_WIDTH( 11 ),
    .dout_WIDTH( 29 ))
mul_18s_11ns_29_1_0_U18(
    .din0(p_read1_int_reg),
    .din1(r_V_4_fu_94_p1),
    .dout(r_V_4_fu_94_p2)
);

motor_mul_18s_11s_29_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 18 ),
    .din1_WIDTH( 11 ),
    .dout_WIDTH( 29 ))
mul_18s_11s_29_1_0_U19(
    .din0(p_read_int_reg),
    .din1(r_V_fu_95_p1),
    .dout(r_V_fu_95_p2)
);

motor_mul_18s_11ns_29_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 18 ),
    .din1_WIDTH( 11 ),
    .dout_WIDTH( 29 ))
mul_18s_11ns_29_1_0_U20(
    .din0(p_read_7_reg_1590),
    .din1(r_V_6_fu_96_p1),
    .dout(r_V_6_fu_96_p2)
);

motor_mul_18s_11s_29_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 18 ),
    .din1_WIDTH( 11 ),
    .dout_WIDTH( 29 ))
mul_18s_11s_29_1_0_U21(
    .din0(p_read2_int_reg),
    .din1(r_V_5_fu_97_p1),
    .dout(r_V_5_fu_97_p2)
);

motor_mul_18s_12ns_30_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 18 ),
    .din1_WIDTH( 12 ),
    .dout_WIDTH( 30 ))
mul_18s_12ns_30_1_0_U22(
    .din0(p_read_8_reg_1595_pp0_iter1_reg),
    .din1(r_V_3_fu_98_p1),
    .dout(r_V_3_fu_98_p2)
);

always @ (posedge ap_clk) begin
    ap_ce_reg <= ap_ce;
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce_reg)) begin
        ap_return_0_int_reg <= select_ln302_18_fu_1570_p3;
        ap_return_1_int_reg <= p_Val2_40_fu_1412_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        p_Result_39_reg_1624 <= ret_V_7_fu_1197_p2[32'd18];
        p_Result_40_reg_1637 <= p_Val2_46_fu_1211_p2[32'd17];
        p_Val2_46_reg_1631 <= p_Val2_46_fu_1211_p2;
        p_read_7_reg_1590 <= p_read3_int_reg;
        p_read_8_reg_1595 <= p_read_int_reg;
        p_read_8_reg_1595_pp0_iter1_reg <= p_read_8_reg_1595;
        rhs_3_reg_1606 <= rhs_3_fu_593_p3;
        rhs_4_reg_1612 <= rhs_4_fu_790_p3;
        rhs_5_reg_1618 <= rhs_5_fu_986_p3;
        rhs_reg_1600 <= rhs_fu_396_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        p_read1_int_reg <= p_read1;
        p_read2_int_reg <= p_read2;
        p_read3_int_reg <= p_read3;
        p_read_int_reg <= p_read;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_0 = ap_return_0_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_0 = select_ln302_18_fu_1570_p3;
    end else begin
        ap_return_0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_1 = ap_return_1_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_1 = p_Val2_40_fu_1412_p3;
    end else begin
        ap_return_1 = 'bx;
    end
end

assign Range2_all_ones_5_fu_1292_p3 = r_V_3_fu_98_p2[32'd29];

assign Range2_all_ones_6_fu_473_p3 = r_V_4_fu_94_p2[32'd28];

assign Range2_all_ones_7_fu_670_p3 = r_V_5_fu_97_p2[32'd28];

assign Range2_all_ones_8_fu_866_p3 = r_V_6_fu_96_p2[32'd28];

assign Range2_all_ones_fu_276_p3 = r_V_fu_95_p2[32'd28];

assign and_ln891_3_fu_1344_p2 = (carry_8_fu_1286_p2 & Range2_all_ones_5_fu_1292_p3);

assign and_ln891_4_fu_525_p2 = (carry_10_fu_467_p2 & Range2_all_ones_6_fu_473_p3);

assign and_ln891_5_fu_722_p2 = (carry_12_fu_664_p2 & Range2_all_ones_7_fu_670_p3);

assign and_ln891_6_fu_918_p2 = (carry_14_fu_860_p2 & Range2_all_ones_8_fu_866_p3);

assign and_ln891_fu_328_p2 = (carry_6_fu_270_p2 & Range2_all_ones_fu_276_p3);

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign carry_10_fu_467_p2 = (xor_ln896_15_fu_461_p2 & p_Result_27_fu_427_p3);

assign carry_12_fu_664_p2 = (xor_ln896_17_fu_658_p2 & p_Result_30_fu_624_p3);

assign carry_14_fu_860_p2 = (xor_ln896_19_fu_854_p2 & p_Result_33_fu_820_p3);

assign carry_6_fu_270_p2 = (xor_ln896_fu_264_p2 & p_Result_21_fu_230_p3);

assign carry_8_fu_1286_p2 = (xor_ln896_13_fu_1280_p2 & p_Result_24_fu_1246_p3);

assign deleted_ones_10_fu_519_p2 = (or_ln890_3_fu_513_p2 & Range2_all_ones_6_fu_473_p3);

assign deleted_ones_11_fu_716_p2 = (or_ln890_4_fu_710_p2 & Range2_all_ones_7_fu_670_p3);

assign deleted_ones_12_fu_912_p2 = (or_ln890_5_fu_906_p2 & Range2_all_ones_8_fu_866_p3);

assign deleted_ones_9_fu_1338_p2 = (or_ln890_2_fu_1332_p2 & Range2_all_ones_5_fu_1292_p3);

assign deleted_ones_fu_322_p2 = (or_ln890_fu_316_p2 & Range2_all_ones_fu_276_p3);

assign deleted_zeros_3_fu_1312_p2 = (or_ln888_2_fu_1306_p2 ^ Range2_all_ones_5_fu_1292_p3);

assign deleted_zeros_4_fu_493_p2 = (or_ln888_3_fu_487_p2 ^ Range2_all_ones_6_fu_473_p3);

assign deleted_zeros_5_fu_690_p2 = (or_ln888_4_fu_684_p2 ^ Range2_all_ones_7_fu_670_p3);

assign deleted_zeros_6_fu_886_p2 = (or_ln888_5_fu_880_p2 ^ Range2_all_ones_8_fu_866_p3);

assign deleted_zeros_fu_296_p2 = (or_ln888_fu_290_p2 ^ Range2_all_ones_fu_276_p3);

assign lhs_4_fu_1470_p3 = ((or_ln302_7_fu_1450_p2[0:0] == 1'b1) ? select_ln302_15_fu_1456_p3 : select_ln350_7_fu_1463_p3);

assign or_ln302_6_fu_1160_p2 = (xor_ln302_14_fu_1154_p2 | overflow_14_fu_1130_p2);

assign or_ln302_7_fu_1450_p2 = (xor_ln302_16_fu_1444_p2 | overflow_15_fu_1425_p2);

assign or_ln302_8_fu_1548_p2 = (xor_ln302_18_fu_1542_p2 | overflow_16_fu_1518_p2);

assign or_ln302_fu_1060_p2 = (xor_ln302_12_fu_1054_p2 | overflow_13_fu_1030_p2);

assign or_ln346_3_fu_1406_p2 = (underflow_9_fu_1392_p2 | overflow_9_fu_1368_p2);

assign or_ln346_4_fu_587_p2 = (underflow_10_fu_573_p2 | overflow_10_fu_549_p2);

assign or_ln346_5_fu_784_p2 = (underflow_11_fu_770_p2 | overflow_11_fu_746_p2);

assign or_ln346_6_fu_980_p2 = (underflow_12_fu_966_p2 | overflow_12_fu_942_p2);

assign or_ln346_fu_390_p2 = (underflow_fu_376_p2 | overflow_fu_352_p2);

assign or_ln888_2_fu_1306_p2 = (xor_ln888_5_fu_1300_p2 | p_Result_25_fu_1272_p3);

assign or_ln888_3_fu_487_p2 = (xor_ln888_7_fu_481_p2 | p_Result_28_fu_453_p3);

assign or_ln888_4_fu_684_p2 = (xor_ln888_9_fu_678_p2 | p_Result_31_fu_650_p3);

assign or_ln888_5_fu_880_p2 = (xor_ln888_11_fu_874_p2 | p_Result_34_fu_846_p3);

assign or_ln888_fu_290_p2 = (xor_ln888_fu_284_p2 | p_Result_22_fu_256_p3);

assign or_ln890_2_fu_1332_p2 = (xor_ln890_3_fu_1326_p2 | or_ln888_2_fu_1306_p2);

assign or_ln890_3_fu_513_p2 = (xor_ln890_4_fu_507_p2 | or_ln888_3_fu_487_p2);

assign or_ln890_4_fu_710_p2 = (xor_ln890_5_fu_704_p2 | or_ln888_4_fu_684_p2);

assign or_ln890_5_fu_906_p2 = (xor_ln890_6_fu_900_p2 | or_ln888_5_fu_880_p2);

assign or_ln890_fu_316_p2 = (xor_ln890_fu_310_p2 | or_ln888_fu_290_p2);

assign or_ln895_3_fu_1356_p2 = (xor_ln895_13_fu_1350_p2 | p_Result_25_fu_1272_p3);

assign or_ln895_4_fu_537_p2 = (xor_ln895_15_fu_531_p2 | p_Result_28_fu_453_p3);

assign or_ln895_5_fu_734_p2 = (xor_ln895_17_fu_728_p2 | p_Result_31_fu_650_p3);

assign or_ln895_6_fu_930_p2 = (xor_ln895_19_fu_924_p2 | p_Result_34_fu_846_p3);

assign or_ln895_fu_340_p2 = (xor_ln895_fu_334_p2 | p_Result_22_fu_256_p3);

assign or_ln896_3_fu_1380_p2 = (xor_ln896_14_fu_1374_p2 | xor_ln896_13_fu_1280_p2);

assign or_ln896_4_fu_561_p2 = (xor_ln896_16_fu_555_p2 | xor_ln896_15_fu_461_p2);

assign or_ln896_5_fu_758_p2 = (xor_ln896_18_fu_752_p2 | xor_ln896_17_fu_658_p2);

assign or_ln896_6_fu_954_p2 = (xor_ln896_20_fu_948_p2 | xor_ln896_19_fu_854_p2);

assign or_ln896_fu_364_p2 = (xor_ln896_fu_264_p2 | xor_ln896_12_fu_358_p2);

assign overflow_10_fu_549_p2 = (xor_ln895_16_fu_543_p2 & or_ln895_4_fu_537_p2);

assign overflow_11_fu_746_p2 = (xor_ln895_18_fu_740_p2 & or_ln895_5_fu_734_p2);

assign overflow_12_fu_942_p2 = (xor_ln895_20_fu_936_p2 & or_ln895_6_fu_930_p2);

assign overflow_13_fu_1030_p2 = (xor_ln895_21_fu_1024_p2 & p_Result_36_fu_1016_p3);

assign overflow_14_fu_1130_p2 = (xor_ln895_22_fu_1124_p2 & p_Result_38_fu_1116_p3);

assign overflow_15_fu_1425_p2 = (xor_ln895_23_fu_1420_p2 & p_Result_40_reg_1637);

assign overflow_16_fu_1518_p2 = (xor_ln895_24_fu_1512_p2 & p_Result_42_fu_1504_p3);

assign overflow_9_fu_1368_p2 = (xor_ln895_14_fu_1362_p2 & or_ln895_3_fu_1356_p2);

assign overflow_fu_352_p2 = (xor_ln895_12_fu_346_p2 & or_ln895_fu_340_p2);

assign p_Result_21_fu_230_p3 = r_V_fu_95_p2[32'd28];

assign p_Result_22_fu_256_p3 = p_Val2_26_fu_250_p2[32'd17];

assign p_Result_23_fu_1228_p3 = r_V_3_fu_98_p2[32'd29];

assign p_Result_24_fu_1246_p3 = r_V_3_fu_98_p2[32'd28];

assign p_Result_25_fu_1272_p3 = p_Val2_29_fu_1266_p2[32'd17];

assign p_Result_26_fu_409_p3 = r_V_4_fu_94_p2[32'd28];

assign p_Result_27_fu_427_p3 = r_V_4_fu_94_p2[32'd28];

assign p_Result_28_fu_453_p3 = p_Val2_31_fu_447_p2[32'd17];

assign p_Result_29_fu_606_p3 = r_V_5_fu_97_p2[32'd28];

assign p_Result_30_fu_624_p3 = r_V_5_fu_97_p2[32'd28];

assign p_Result_31_fu_650_p3 = p_Val2_34_fu_644_p2[32'd17];

assign p_Result_32_fu_802_p3 = r_V_6_fu_96_p2[32'd28];

assign p_Result_33_fu_820_p3 = r_V_6_fu_96_p2[32'd28];

assign p_Result_34_fu_846_p3 = p_Val2_37_fu_840_p2[32'd17];

assign p_Result_35_fu_1003_p3 = ret_V_fu_997_p2[32'd18];

assign p_Result_36_fu_1016_p3 = p_Val2_39_fu_1011_p2[32'd17];

assign p_Result_37_fu_1103_p3 = ret_V_6_fu_1097_p2[32'd18];

assign p_Result_38_fu_1116_p3 = p_Val2_43_fu_1111_p2[32'd17];

assign p_Result_41_fu_1491_p3 = ret_V_8_fu_1485_p2[32'd18];

assign p_Result_42_fu_1504_p3 = p_Val2_48_fu_1499_p2[32'd17];

assign p_Result_s_fu_212_p3 = r_V_fu_95_p2[32'd28];

assign p_Val2_25_fu_220_p4 = {{r_V_fu_95_p2[28:11]}};

assign p_Val2_26_fu_250_p2 = (zext_ln377_fu_246_p1 + p_Val2_25_fu_220_p4);

assign p_Val2_28_fu_1236_p4 = {{r_V_3_fu_98_p2[28:11]}};

assign p_Val2_29_fu_1266_p2 = (zext_ln377_3_fu_1262_p1 + p_Val2_28_fu_1236_p4);

assign p_Val2_30_fu_417_p4 = {{r_V_4_fu_94_p2[28:11]}};

assign p_Val2_31_fu_447_p2 = (zext_ln377_4_fu_443_p1 + p_Val2_30_fu_417_p4);

assign p_Val2_33_fu_614_p4 = {{r_V_5_fu_97_p2[28:11]}};

assign p_Val2_34_fu_644_p2 = (zext_ln377_5_fu_640_p1 + p_Val2_33_fu_614_p4);

assign p_Val2_36_fu_810_p4 = {{r_V_6_fu_96_p2[28:11]}};

assign p_Val2_37_fu_840_p2 = (zext_ln377_6_fu_836_p1 + p_Val2_36_fu_810_p4);

assign p_Val2_39_fu_1011_p2 = ($signed(rhs_reg_1600) + $signed(18'd642));

assign p_Val2_40_fu_1412_p3 = ((or_ln346_3_fu_1406_p2[0:0] == 1'b1) ? select_ln346_7_fu_1398_p3 : p_Val2_29_fu_1266_p2);

assign p_Val2_43_fu_1111_p2 = ($signed(rhs_3_reg_1606) + $signed(p_Val2_s_fu_1082_p3));

assign p_Val2_46_fu_1211_p2 = ($signed(rhs_4_reg_1612) + $signed(p_Val2_49_fu_1182_p3));

assign p_Val2_48_fu_1499_p2 = ($signed(rhs_5_reg_1618) + $signed(lhs_4_fu_1470_p3));

assign p_Val2_49_fu_1182_p3 = ((or_ln302_6_fu_1160_p2[0:0] == 1'b1) ? select_ln302_13_fu_1166_p3 : select_ln350_6_fu_1174_p3);

assign p_Val2_s_fu_1082_p3 = ((or_ln302_fu_1060_p2[0:0] == 1'b1) ? select_ln302_fu_1066_p3 : select_ln350_fu_1074_p3);

assign r_V_3_fu_98_p1 = 30'd1808;

assign r_V_4_fu_94_p1 = 29'd726;

assign r_V_5_fu_97_p1 = 29'd536870052;

assign r_V_6_fu_96_p1 = 29'd812;

assign r_V_fu_95_p1 = 29'd536870026;

assign ret_V_6_fu_1097_p2 = ($signed(sext_ln813_7_fu_1094_p1) + $signed(sext_ln813_6_fu_1090_p1));

assign ret_V_7_fu_1197_p2 = ($signed(sext_ln813_9_fu_1194_p1) + $signed(sext_ln813_8_fu_1190_p1));

assign ret_V_8_fu_1485_p2 = ($signed(sext_ln813_11_fu_1482_p1) + $signed(sext_ln813_10_fu_1478_p1));

assign ret_V_fu_997_p2 = ($signed(sext_ln813_fu_994_p1) + $signed(19'd642));

assign rhs_3_fu_593_p3 = ((or_ln346_4_fu_587_p2[0:0] == 1'b1) ? select_ln346_9_fu_579_p3 : p_Val2_31_fu_447_p2);

assign rhs_4_fu_790_p3 = ((or_ln346_5_fu_784_p2[0:0] == 1'b1) ? select_ln346_11_fu_776_p3 : p_Val2_34_fu_644_p2);

assign rhs_5_fu_986_p3 = ((or_ln346_6_fu_980_p2[0:0] == 1'b1) ? select_ln346_13_fu_972_p3 : p_Val2_37_fu_840_p2);

assign rhs_fu_396_p3 = ((or_ln346_fu_390_p2[0:0] == 1'b1) ? select_ln346_fu_382_p3 : p_Val2_26_fu_250_p2);

assign select_ln302_13_fu_1166_p3 = ((xor_ln302_13_fu_1148_p2[0:0] == 1'b1) ? 18'd131071 : p_Val2_43_fu_1111_p2);

assign select_ln302_15_fu_1456_p3 = ((xor_ln302_15_fu_1440_p2[0:0] == 1'b1) ? 18'd131071 : p_Val2_46_reg_1631);

assign select_ln302_17_fu_1554_p3 = ((xor_ln302_17_fu_1536_p2[0:0] == 1'b1) ? 18'd131071 : p_Val2_48_fu_1499_p2);

assign select_ln302_18_fu_1570_p3 = ((or_ln302_8_fu_1548_p2[0:0] == 1'b1) ? select_ln302_17_fu_1554_p3 : select_ln350_8_fu_1562_p3);

assign select_ln302_fu_1066_p3 = ((xor_ln302_fu_1048_p2[0:0] == 1'b1) ? 18'd131071 : p_Val2_39_fu_1011_p2);

assign select_ln346_11_fu_776_p3 = ((overflow_11_fu_746_p2[0:0] == 1'b1) ? 18'd131071 : 18'd131072);

assign select_ln346_13_fu_972_p3 = ((overflow_12_fu_942_p2[0:0] == 1'b1) ? 18'd131071 : 18'd131072);

assign select_ln346_7_fu_1398_p3 = ((overflow_9_fu_1368_p2[0:0] == 1'b1) ? 18'd131071 : 18'd131072);

assign select_ln346_9_fu_579_p3 = ((overflow_10_fu_549_p2[0:0] == 1'b1) ? 18'd131071 : 18'd131072);

assign select_ln346_fu_382_p3 = ((overflow_fu_352_p2[0:0] == 1'b1) ? 18'd131071 : 18'd131072);

assign select_ln350_6_fu_1174_p3 = ((underflow_14_fu_1142_p2[0:0] == 1'b1) ? 18'd131072 : p_Val2_43_fu_1111_p2);

assign select_ln350_7_fu_1463_p3 = ((underflow_15_fu_1435_p2[0:0] == 1'b1) ? 18'd131072 : p_Val2_46_reg_1631);

assign select_ln350_8_fu_1562_p3 = ((underflow_16_fu_1530_p2[0:0] == 1'b1) ? 18'd131072 : p_Val2_48_fu_1499_p2);

assign select_ln350_fu_1074_p3 = ((underflow_13_fu_1042_p2[0:0] == 1'b1) ? 18'd131072 : p_Val2_39_fu_1011_p2);

assign sext_ln813_10_fu_1478_p1 = lhs_4_fu_1470_p3;

assign sext_ln813_11_fu_1482_p1 = rhs_5_reg_1618;

assign sext_ln813_6_fu_1090_p1 = p_Val2_s_fu_1082_p3;

assign sext_ln813_7_fu_1094_p1 = rhs_3_reg_1606;

assign sext_ln813_8_fu_1190_p1 = p_Val2_49_fu_1182_p3;

assign sext_ln813_9_fu_1194_p1 = rhs_4_reg_1612;

assign sext_ln813_fu_994_p1 = rhs_reg_1600;

assign tmp_33_fu_302_p3 = r_V_fu_95_p2[32'd28];

assign tmp_36_fu_1254_p3 = r_V_3_fu_98_p2[32'd10];

assign tmp_39_fu_1318_p3 = r_V_3_fu_98_p2[32'd29];

assign tmp_42_fu_435_p3 = r_V_4_fu_94_p2[32'd10];

assign tmp_45_fu_499_p3 = r_V_4_fu_94_p2[32'd28];

assign tmp_48_fu_632_p3 = r_V_5_fu_97_p2[32'd10];

assign tmp_51_fu_696_p3 = r_V_5_fu_97_p2[32'd28];

assign tmp_54_fu_828_p3 = r_V_6_fu_96_p2[32'd10];

assign tmp_57_fu_892_p3 = r_V_6_fu_96_p2[32'd28];

assign tmp_fu_238_p3 = r_V_fu_95_p2[32'd10];

assign underflow_10_fu_573_p2 = (xor_ln896_27_fu_567_p2 & p_Result_26_fu_409_p3);

assign underflow_11_fu_770_p2 = (xor_ln896_28_fu_764_p2 & p_Result_29_fu_606_p3);

assign underflow_12_fu_966_p2 = (xor_ln896_29_fu_960_p2 & p_Result_32_fu_802_p3);

assign underflow_13_fu_1042_p2 = (xor_ln896_21_fu_1036_p2 & p_Result_35_fu_1003_p3);

assign underflow_14_fu_1142_p2 = (xor_ln896_22_fu_1136_p2 & p_Result_37_fu_1103_p3);

assign underflow_15_fu_1435_p2 = (xor_ln896_23_fu_1430_p2 & p_Result_39_reg_1624);

assign underflow_16_fu_1530_p2 = (xor_ln896_24_fu_1524_p2 & p_Result_41_fu_1491_p3);

assign underflow_9_fu_1392_p2 = (xor_ln896_26_fu_1386_p2 & p_Result_23_fu_1228_p3);

assign underflow_fu_376_p2 = (xor_ln896_25_fu_370_p2 & p_Result_s_fu_212_p3);

assign xor_ln302_12_fu_1054_p2 = (xor_ln302_fu_1048_p2 ^ 1'd1);

assign xor_ln302_13_fu_1148_p2 = (p_Result_38_fu_1116_p3 ^ p_Result_37_fu_1103_p3);

assign xor_ln302_14_fu_1154_p2 = (xor_ln302_13_fu_1148_p2 ^ 1'd1);

assign xor_ln302_15_fu_1440_p2 = (p_Result_40_reg_1637 ^ p_Result_39_reg_1624);

assign xor_ln302_16_fu_1444_p2 = (xor_ln302_15_fu_1440_p2 ^ 1'd1);

assign xor_ln302_17_fu_1536_p2 = (p_Result_42_fu_1504_p3 ^ p_Result_41_fu_1491_p3);

assign xor_ln302_18_fu_1542_p2 = (xor_ln302_17_fu_1536_p2 ^ 1'd1);

assign xor_ln302_fu_1048_p2 = (p_Result_36_fu_1016_p3 ^ p_Result_35_fu_1003_p3);

assign xor_ln888_11_fu_874_p2 = (p_Result_33_fu_820_p3 ^ 1'd1);

assign xor_ln888_5_fu_1300_p2 = (p_Result_24_fu_1246_p3 ^ 1'd1);

assign xor_ln888_7_fu_481_p2 = (p_Result_27_fu_427_p3 ^ 1'd1);

assign xor_ln888_9_fu_678_p2 = (p_Result_30_fu_624_p3 ^ 1'd1);

assign xor_ln888_fu_284_p2 = (p_Result_21_fu_230_p3 ^ 1'd1);

assign xor_ln890_3_fu_1326_p2 = (tmp_39_fu_1318_p3 ^ 1'd1);

assign xor_ln890_4_fu_507_p2 = (tmp_45_fu_499_p3 ^ 1'd1);

assign xor_ln890_5_fu_704_p2 = (tmp_51_fu_696_p3 ^ 1'd1);

assign xor_ln890_6_fu_900_p2 = (tmp_57_fu_892_p3 ^ 1'd1);

assign xor_ln890_fu_310_p2 = (tmp_33_fu_302_p3 ^ 1'd1);

assign xor_ln895_12_fu_346_p2 = (p_Result_s_fu_212_p3 ^ 1'd1);

assign xor_ln895_13_fu_1350_p2 = (deleted_zeros_3_fu_1312_p2 ^ 1'd1);

assign xor_ln895_14_fu_1362_p2 = (p_Result_23_fu_1228_p3 ^ 1'd1);

assign xor_ln895_15_fu_531_p2 = (deleted_zeros_4_fu_493_p2 ^ 1'd1);

assign xor_ln895_16_fu_543_p2 = (p_Result_26_fu_409_p3 ^ 1'd1);

assign xor_ln895_17_fu_728_p2 = (deleted_zeros_5_fu_690_p2 ^ 1'd1);

assign xor_ln895_18_fu_740_p2 = (p_Result_29_fu_606_p3 ^ 1'd1);

assign xor_ln895_19_fu_924_p2 = (deleted_zeros_6_fu_886_p2 ^ 1'd1);

assign xor_ln895_20_fu_936_p2 = (p_Result_32_fu_802_p3 ^ 1'd1);

assign xor_ln895_21_fu_1024_p2 = (p_Result_35_fu_1003_p3 ^ 1'd1);

assign xor_ln895_22_fu_1124_p2 = (p_Result_37_fu_1103_p3 ^ 1'd1);

assign xor_ln895_23_fu_1420_p2 = (p_Result_39_reg_1624 ^ 1'd1);

assign xor_ln895_24_fu_1512_p2 = (p_Result_41_fu_1491_p3 ^ 1'd1);

assign xor_ln895_fu_334_p2 = (deleted_zeros_fu_296_p2 ^ 1'd1);

assign xor_ln896_12_fu_358_p2 = (deleted_ones_fu_322_p2 ^ 1'd1);

assign xor_ln896_13_fu_1280_p2 = (p_Result_25_fu_1272_p3 ^ 1'd1);

assign xor_ln896_14_fu_1374_p2 = (deleted_ones_9_fu_1338_p2 ^ 1'd1);

assign xor_ln896_15_fu_461_p2 = (p_Result_28_fu_453_p3 ^ 1'd1);

assign xor_ln896_16_fu_555_p2 = (deleted_ones_10_fu_519_p2 ^ 1'd1);

assign xor_ln896_17_fu_658_p2 = (p_Result_31_fu_650_p3 ^ 1'd1);

assign xor_ln896_18_fu_752_p2 = (deleted_ones_11_fu_716_p2 ^ 1'd1);

assign xor_ln896_19_fu_854_p2 = (p_Result_34_fu_846_p3 ^ 1'd1);

assign xor_ln896_20_fu_948_p2 = (deleted_ones_12_fu_912_p2 ^ 1'd1);

assign xor_ln896_21_fu_1036_p2 = (p_Result_36_fu_1016_p3 ^ 1'd1);

assign xor_ln896_22_fu_1136_p2 = (p_Result_38_fu_1116_p3 ^ 1'd1);

assign xor_ln896_23_fu_1430_p2 = (p_Result_40_reg_1637 ^ 1'd1);

assign xor_ln896_24_fu_1524_p2 = (p_Result_42_fu_1504_p3 ^ 1'd1);

assign xor_ln896_25_fu_370_p2 = (or_ln896_fu_364_p2 ^ and_ln891_fu_328_p2);

assign xor_ln896_26_fu_1386_p2 = (or_ln896_3_fu_1380_p2 ^ and_ln891_3_fu_1344_p2);

assign xor_ln896_27_fu_567_p2 = (or_ln896_4_fu_561_p2 ^ and_ln891_4_fu_525_p2);

assign xor_ln896_28_fu_764_p2 = (or_ln896_5_fu_758_p2 ^ and_ln891_5_fu_722_p2);

assign xor_ln896_29_fu_960_p2 = (or_ln896_6_fu_954_p2 ^ and_ln891_6_fu_918_p2);

assign xor_ln896_fu_264_p2 = (p_Result_22_fu_256_p3 ^ 1'd1);

assign zext_ln377_3_fu_1262_p1 = tmp_36_fu_1254_p3;

assign zext_ln377_4_fu_443_p1 = tmp_42_fu_435_p3;

assign zext_ln377_5_fu_640_p1 = tmp_48_fu_632_p3;

assign zext_ln377_6_fu_836_p1 = tmp_54_fu_828_p3;

assign zext_ln377_fu_246_p1 = tmp_fu_238_p3;

endmodule //motor_dense_latency_ap_fixed_18_7_0_0_0_ap_fixed_18_7_0_0_0_config5_s
