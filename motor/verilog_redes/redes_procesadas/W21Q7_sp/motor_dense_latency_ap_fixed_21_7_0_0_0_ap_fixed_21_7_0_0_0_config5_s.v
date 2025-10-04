module motor_dense_latency_ap_fixed_21_7_0_0_0_ap_fixed_21_7_0_0_0_config5_s (
        ap_clk,
        ap_rst,
        p_read,
        p_read1,
        p_read2,
        p_read3,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_ce
);


input   ap_clk;
input   ap_rst;
input  [20:0] p_read;
input  [20:0] p_read1;
input  [20:0] p_read2;
input  [20:0] p_read3;
output  [20:0] ap_return_0;
output  [20:0] ap_return_1;
output  [20:0] ap_return_2;
input   ap_ce;

reg[20:0] ap_return_0;
reg[20:0] ap_return_1;
reg[20:0] ap_return_2;

reg  signed [20:0] p_read37_reg_1999;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
reg  signed [20:0] p_read26_reg_2004;
reg  signed [20:0] p_read_9_reg_2009;
wire   [20:0] p_Val2_32_fu_303_p2;
reg   [20:0] p_Val2_32_reg_2016;
wire   [0:0] overflow_fu_405_p2;
reg   [0:0] overflow_reg_2021;
wire   [0:0] or_ln346_fu_435_p2;
reg   [0:0] or_ln346_reg_2026;
reg   [0:0] tmp_54_reg_2031;
wire   [20:0] p_Val2_40_fu_522_p2;
reg   [20:0] p_Val2_40_reg_2036;
wire   [0:0] overflow_13_fu_624_p2;
reg   [0:0] overflow_13_reg_2041;
wire   [0:0] or_ln346_7_fu_654_p2;
reg   [0:0] or_ln346_7_reg_2046;
wire   [20:0] p_Val2_35_fu_715_p2;
reg   [20:0] p_Val2_35_reg_2051;
wire   [0:0] overflow_11_fu_817_p2;
reg   [0:0] overflow_11_reg_2056;
wire   [0:0] or_ln346_5_fu_847_p2;
reg   [0:0] or_ln346_5_reg_2061;
wire  signed [17:0] p_Val2_37_fu_914_p2;
reg  signed [17:0] p_Val2_37_reg_2066;
wire   [0:0] overflow_12_fu_1016_p2;
reg   [0:0] overflow_12_reg_2071;
wire   [0:0] or_ln346_6_fu_1046_p2;
reg   [0:0] or_ln346_6_reg_2076;
wire   [20:0] p_Val2_43_fu_1107_p2;
reg   [20:0] p_Val2_43_reg_2081;
wire   [0:0] overflow_14_fu_1209_p2;
reg   [0:0] overflow_14_reg_2086;
wire   [0:0] or_ln346_8_fu_1239_p2;
reg   [0:0] or_ln346_8_reg_2091;
wire   [20:0] p_Val2_46_fu_1287_p2;
reg   [20:0] p_Val2_46_reg_2096;
wire   [0:0] overflow_15_fu_1389_p2;
reg   [0:0] overflow_15_reg_2101;
wire   [0:0] or_ln346_9_fu_1419_p2;
reg   [0:0] or_ln346_9_reg_2106;
wire  signed [20:0] p_Val2_61_fu_1617_p3;
reg  signed [20:0] p_Val2_61_reg_2111;
wire   [13:0] r_V_7_fu_122_p1;
wire    ap_block_pp0_stage0;
wire   [14:0] r_V_5_fu_123_p1;
wire  signed [13:0] r_V_fu_125_p1;
wire  signed [13:0] r_V_8_fu_126_p1;
wire   [13:0] r_V_9_fu_127_p1;
wire   [34:0] r_V_fu_125_p2;
wire   [0:0] tmp_fu_291_p3;
wire   [20:0] zext_ln377_fu_299_p1;
wire   [20:0] p_Val2_31_fu_273_p4;
wire   [0:0] p_Result_28_fu_309_p3;
wire   [0:0] p_Result_27_fu_283_p3;
wire   [0:0] xor_ln896_fu_317_p2;
wire   [0:0] xor_ln888_fu_337_p2;
wire   [0:0] Range2_all_ones_fu_329_p3;
wire   [0:0] or_ln888_fu_343_p2;
wire   [0:0] tmp_45_fu_355_p3;
wire   [0:0] xor_ln890_fu_363_p2;
wire   [0:0] or_ln890_fu_369_p2;
wire   [0:0] carry_10_fu_323_p2;
wire   [0:0] deleted_zeros_fu_349_p2;
wire   [0:0] xor_ln895_fu_387_p2;
wire   [0:0] p_Result_s_fu_265_p3;
wire   [0:0] or_ln895_fu_393_p2;
wire   [0:0] xor_ln895_16_fu_399_p2;
wire   [0:0] deleted_ones_fu_375_p2;
wire   [0:0] xor_ln896_16_fu_411_p2;
wire   [0:0] and_ln891_fu_381_p2;
wire   [0:0] or_ln896_fu_417_p2;
wire   [0:0] xor_ln896_32_fu_423_p2;
wire   [0:0] underflow_fu_429_p2;
wire  signed [20:0] trunc_ln1273_fu_441_p0;
wire   [4:0] trunc_ln1273_fu_441_p1;
wire  signed [20:0] trunc_ln1273_2_fu_453_p0;
wire   [6:0] trunc_ln1273_2_fu_453_p1;
wire   [13:0] trunc_ln1273_1_fu_457_p3;
wire   [13:0] trunc_ln3_fu_445_p3;
wire   [13:0] sub_ln823_fu_465_p2;
wire   [34:0] r_V_7_fu_122_p2;
wire   [0:0] tmp_60_fu_510_p3;
wire   [20:0] zext_ln377_7_fu_518_p1;
wire   [20:0] p_Val2_39_fu_492_p4;
wire   [0:0] p_Result_37_fu_528_p3;
wire   [0:0] p_Result_36_fu_502_p3;
wire   [0:0] xor_ln896_21_fu_536_p2;
wire   [0:0] xor_ln888_13_fu_556_p2;
wire   [0:0] Range2_all_ones_11_fu_548_p3;
wire   [0:0] or_ln888_6_fu_562_p2;
wire   [0:0] tmp_63_fu_574_p3;
wire   [0:0] xor_ln890_7_fu_582_p2;
wire   [0:0] or_ln890_6_fu_588_p2;
wire   [0:0] carry_16_fu_542_p2;
wire   [0:0] deleted_zeros_7_fu_568_p2;
wire   [0:0] xor_ln895_21_fu_606_p2;
wire   [0:0] p_Result_35_fu_484_p3;
wire   [0:0] or_ln895_7_fu_612_p2;
wire   [0:0] xor_ln895_22_fu_618_p2;
wire   [0:0] deleted_ones_13_fu_594_p2;
wire   [0:0] xor_ln896_22_fu_630_p2;
wire   [0:0] and_ln891_7_fu_600_p2;
wire   [0:0] or_ln896_7_fu_636_p2;
wire   [0:0] xor_ln896_35_fu_642_p2;
wire   [0:0] underflow_13_fu_648_p2;
wire   [20:0] select_ln346_fu_664_p3;
wire   [35:0] r_V_5_fu_123_p2;
wire   [0:0] tmp_48_fu_703_p3;
wire   [20:0] zext_ln377_5_fu_711_p1;
wire   [20:0] p_Val2_34_fu_685_p4;
wire   [0:0] p_Result_31_fu_721_p3;
wire   [0:0] p_Result_30_fu_695_p3;
wire   [0:0] xor_ln896_17_fu_729_p2;
wire   [0:0] xor_ln888_9_fu_749_p2;
wire   [0:0] Range2_all_ones_9_fu_741_p3;
wire   [0:0] or_ln888_4_fu_755_p2;
wire   [0:0] tmp_51_fu_767_p3;
wire   [0:0] xor_ln890_5_fu_775_p2;
wire   [0:0] or_ln890_4_fu_781_p2;
wire   [0:0] carry_12_fu_735_p2;
wire   [0:0] deleted_zeros_5_fu_761_p2;
wire   [0:0] xor_ln895_17_fu_799_p2;
wire   [0:0] p_Result_29_fu_677_p3;
wire   [0:0] or_ln895_5_fu_805_p2;
wire   [0:0] xor_ln895_18_fu_811_p2;
wire   [0:0] deleted_ones_11_fu_787_p2;
wire   [0:0] xor_ln896_18_fu_823_p2;
wire   [0:0] and_ln891_5_fu_793_p2;
wire   [0:0] or_ln896_5_fu_829_p2;
wire   [0:0] xor_ln896_33_fu_835_p2;
wire   [0:0] underflow_11_fu_841_p2;
wire   [29:0] shl_ln_fu_853_p3;
wire   [27:0] shl_ln1273_2_fu_864_p3;
wire  signed [30:0] sext_ln1273_2_fu_871_p1;
wire  signed [30:0] sext_ln1273_fu_860_p1;
wire   [30:0] r_V_6_fu_875_p2;
wire   [16:0] p_Val2_36_fu_889_p4;
wire   [17:0] zext_ln377_6_fu_911_p1;
wire  signed [17:0] sext_ln823_fu_899_p1;
wire   [0:0] p_Result_34_fu_920_p3;
wire   [0:0] p_Result_33_fu_903_p3;
wire   [0:0] xor_ln896_19_fu_928_p2;
wire   [0:0] xor_ln888_11_fu_948_p2;
wire   [0:0] Range2_all_ones_10_fu_940_p3;
wire   [0:0] or_ln888_5_fu_954_p2;
wire   [0:0] tmp_57_fu_966_p3;
wire   [0:0] xor_ln890_6_fu_974_p2;
wire   [0:0] or_ln890_5_fu_980_p2;
wire   [0:0] carry_14_fu_934_p2;
wire   [0:0] deleted_zeros_6_fu_960_p2;
wire   [0:0] xor_ln895_19_fu_998_p2;
wire   [0:0] p_Result_32_fu_881_p3;
wire   [0:0] or_ln895_6_fu_1004_p2;
wire   [0:0] xor_ln895_20_fu_1010_p2;
wire   [0:0] deleted_ones_12_fu_986_p2;
wire   [0:0] xor_ln896_20_fu_1022_p2;
wire   [0:0] and_ln891_6_fu_992_p2;
wire   [0:0] or_ln896_6_fu_1028_p2;
wire   [0:0] xor_ln896_34_fu_1034_p2;
wire   [0:0] underflow_12_fu_1040_p2;
wire   [20:0] select_ln346_14_fu_1052_p3;
wire   [34:0] r_V_8_fu_126_p2;
wire   [0:0] tmp_66_fu_1095_p3;
wire   [20:0] zext_ln377_8_fu_1103_p1;
wire   [20:0] p_Val2_42_fu_1077_p4;
wire   [0:0] p_Result_40_fu_1113_p3;
wire   [0:0] p_Result_39_fu_1087_p3;
wire   [0:0] xor_ln896_23_fu_1121_p2;
wire   [0:0] xor_ln888_15_fu_1141_p2;
wire   [0:0] Range2_all_ones_12_fu_1133_p3;
wire   [0:0] or_ln888_7_fu_1147_p2;
wire   [0:0] tmp_69_fu_1159_p3;
wire   [0:0] xor_ln890_8_fu_1167_p2;
wire   [0:0] or_ln890_7_fu_1173_p2;
wire   [0:0] carry_18_fu_1127_p2;
wire   [0:0] deleted_zeros_8_fu_1153_p2;
wire   [0:0] xor_ln895_23_fu_1191_p2;
wire   [0:0] p_Result_38_fu_1069_p3;
wire   [0:0] or_ln895_8_fu_1197_p2;
wire   [0:0] xor_ln895_24_fu_1203_p2;
wire   [0:0] deleted_ones_14_fu_1179_p2;
wire   [0:0] xor_ln896_24_fu_1215_p2;
wire   [0:0] and_ln891_8_fu_1185_p2;
wire   [0:0] or_ln896_8_fu_1221_p2;
wire   [0:0] xor_ln896_36_fu_1227_p2;
wire   [0:0] underflow_14_fu_1233_p2;
wire   [34:0] r_V_9_fu_127_p2;
wire   [0:0] tmp_72_fu_1275_p3;
wire   [20:0] zext_ln377_9_fu_1283_p1;
wire   [20:0] p_Val2_45_fu_1257_p4;
wire   [0:0] p_Result_43_fu_1293_p3;
wire   [0:0] p_Result_42_fu_1267_p3;
wire   [0:0] xor_ln896_25_fu_1301_p2;
wire   [0:0] xor_ln888_17_fu_1321_p2;
wire   [0:0] Range2_all_ones_13_fu_1313_p3;
wire   [0:0] or_ln888_8_fu_1327_p2;
wire   [0:0] tmp_75_fu_1339_p3;
wire   [0:0] xor_ln890_9_fu_1347_p2;
wire   [0:0] or_ln890_8_fu_1353_p2;
wire   [0:0] carry_20_fu_1307_p2;
wire   [0:0] deleted_zeros_9_fu_1333_p2;
wire   [0:0] xor_ln895_25_fu_1371_p2;
wire   [0:0] p_Result_41_fu_1249_p3;
wire   [0:0] or_ln895_9_fu_1377_p2;
wire   [0:0] xor_ln895_26_fu_1383_p2;
wire   [0:0] deleted_ones_15_fu_1359_p2;
wire   [0:0] xor_ln896_26_fu_1395_p2;
wire   [0:0] and_ln891_9_fu_1365_p2;
wire   [0:0] or_ln896_9_fu_1401_p2;
wire   [0:0] xor_ln896_37_fu_1407_p2;
wire   [0:0] underflow_15_fu_1413_p2;
wire  signed [20:0] rhs_fu_671_p3;
wire  signed [21:0] sext_ln813_fu_1425_p1;
wire   [21:0] ret_V_fu_1429_p2;
wire   [20:0] p_Val2_48_fu_1443_p2;
wire   [0:0] p_Result_44_fu_1435_p3;
wire   [0:0] p_Result_45_fu_1449_p3;
wire   [0:0] xor_ln895_27_fu_1457_p2;
wire   [0:0] xor_ln896_27_fu_1469_p2;
wire   [0:0] xor_ln302_fu_1481_p2;
wire   [0:0] overflow_16_fu_1463_p2;
wire   [0:0] xor_ln302_12_fu_1487_p2;
wire   [0:0] underflow_16_fu_1475_p2;
wire   [0:0] or_ln302_fu_1493_p2;
wire   [20:0] select_ln302_fu_1499_p3;
wire   [20:0] select_ln350_fu_1507_p3;
wire  signed [20:0] p_Val2_s_fu_1515_p3;
wire  signed [20:0] rhs_6_fu_1059_p3;
wire  signed [21:0] sext_ln813_10_fu_1527_p1;
wire  signed [21:0] sext_ln813_9_fu_1523_p1;
wire   [21:0] ret_V_7_fu_1531_p2;
wire   [20:0] p_Val2_55_fu_1545_p2;
wire   [0:0] p_Result_48_fu_1537_p3;
wire   [0:0] p_Result_49_fu_1551_p3;
wire   [0:0] xor_ln895_29_fu_1559_p2;
wire   [0:0] xor_ln896_29_fu_1571_p2;
wire   [0:0] xor_ln302_15_fu_1583_p2;
wire   [0:0] overflow_18_fu_1565_p2;
wire   [0:0] xor_ln302_16_fu_1589_p2;
wire   [0:0] underflow_18_fu_1577_p2;
wire   [0:0] or_ln302_7_fu_1595_p2;
wire   [20:0] select_ln302_15_fu_1601_p3;
wire   [20:0] select_ln350_7_fu_1609_p3;
wire   [20:0] select_ln346_11_fu_1625_p3;
wire   [20:0] select_ln346_13_fu_1641_p3;
wire  signed [20:0] sext_ln856_fu_1638_p1;
wire   [20:0] select_ln346_15_fu_1655_p3;
wire   [20:0] select_ln346_16_fu_1668_p3;
wire  signed [20:0] rhs_5_fu_1648_p3;
wire  signed [21:0] sext_ln813_8_fu_1681_p1;
wire   [21:0] ret_V_6_fu_1685_p2;
wire   [20:0] p_Val2_51_fu_1699_p2;
wire   [0:0] p_Result_46_fu_1691_p3;
wire   [0:0] p_Result_47_fu_1705_p3;
wire   [0:0] xor_ln895_28_fu_1713_p2;
wire   [0:0] xor_ln896_28_fu_1725_p2;
wire   [0:0] xor_ln302_13_fu_1737_p2;
wire   [0:0] overflow_17_fu_1719_p2;
wire   [0:0] xor_ln302_14_fu_1743_p2;
wire   [0:0] underflow_17_fu_1731_p2;
wire   [0:0] or_ln302_6_fu_1749_p2;
wire   [20:0] select_ln302_13_fu_1755_p3;
wire   [20:0] select_ln350_6_fu_1763_p3;
wire  signed [20:0] rhs_7_fu_1662_p3;
wire  signed [21:0] sext_ln813_12_fu_1782_p1;
wire  signed [21:0] sext_ln813_11_fu_1779_p1;
wire   [21:0] ret_V_8_fu_1786_p2;
wire   [20:0] p_Val2_58_fu_1800_p2;
wire   [0:0] p_Result_50_fu_1792_p3;
wire   [0:0] p_Result_51_fu_1805_p3;
wire   [0:0] xor_ln895_30_fu_1813_p2;
wire   [0:0] xor_ln896_30_fu_1825_p2;
wire   [0:0] xor_ln302_17_fu_1837_p2;
wire   [0:0] overflow_19_fu_1819_p2;
wire   [0:0] xor_ln302_18_fu_1843_p2;
wire   [0:0] underflow_19_fu_1831_p2;
wire   [0:0] or_ln302_8_fu_1849_p2;
wire   [20:0] select_ln302_17_fu_1855_p3;
wire   [20:0] select_ln350_8_fu_1863_p3;
wire  signed [20:0] lhs_4_fu_1871_p3;
wire  signed [20:0] rhs_8_fu_1675_p3;
wire  signed [21:0] sext_ln813_14_fu_1883_p1;
wire  signed [21:0] sext_ln813_13_fu_1879_p1;
wire   [21:0] ret_V_9_fu_1887_p2;
wire   [20:0] p_Val2_60_fu_1901_p2;
wire   [0:0] p_Result_52_fu_1893_p3;
wire   [0:0] p_Result_53_fu_1907_p3;
wire   [0:0] xor_ln895_31_fu_1915_p2;
wire   [0:0] xor_ln896_31_fu_1927_p2;
wire   [0:0] xor_ln302_19_fu_1939_p2;
wire   [0:0] overflow_20_fu_1921_p2;
wire   [0:0] xor_ln302_20_fu_1945_p2;
wire   [0:0] underflow_20_fu_1933_p2;
wire   [0:0] or_ln302_9_fu_1951_p2;
wire   [20:0] select_ln302_19_fu_1957_p3;
wire   [20:0] select_ln350_9_fu_1965_p3;
wire   [20:0] select_ln302_20_fu_1973_p3;
wire   [20:0] p_Val2_49_fu_1632_p3;
wire   [20:0] p_Val2_53_fu_1771_p3;
reg    ap_ce_reg;
reg  signed [20:0] p_read_int_reg;
reg  signed [20:0] p_read1_int_reg;
reg   [20:0] p_read2_int_reg;
reg   [20:0] p_read3_int_reg;
reg   [20:0] ap_return_0_int_reg;
reg   [20:0] ap_return_1_int_reg;
reg   [20:0] ap_return_2_int_reg;

motor_mul_21s_14ns_35_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 14 ),
    .dout_WIDTH( 35 ))
mul_21s_14ns_35_1_0_U19(
    .din0(p_read1_int_reg),
    .din1(r_V_7_fu_122_p1),
    .dout(r_V_7_fu_122_p2)
);

motor_mul_21s_15ns_36_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 36 ))
mul_21s_15ns_36_1_0_U20(
    .din0(p_read_9_reg_2009),
    .din1(r_V_5_fu_123_p1),
    .dout(r_V_5_fu_123_p2)
);

motor_mul_21s_14s_35_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 14 ),
    .dout_WIDTH( 35 ))
mul_21s_14s_35_1_0_U21(
    .din0(p_read_int_reg),
    .din1(r_V_fu_125_p1),
    .dout(r_V_fu_125_p2)
);

motor_mul_21s_14s_35_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 14 ),
    .dout_WIDTH( 35 ))
mul_21s_14s_35_1_0_U22(
    .din0(p_read26_reg_2004),
    .din1(r_V_8_fu_126_p1),
    .dout(r_V_8_fu_126_p2)
);

motor_mul_21s_14ns_35_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 14 ),
    .dout_WIDTH( 35 ))
mul_21s_14ns_35_1_0_U23(
    .din0(p_read37_reg_1999),
    .din1(r_V_9_fu_127_p1),
    .dout(r_V_9_fu_127_p2)
);

always @ (posedge ap_clk) begin
    ap_ce_reg <= ap_ce;
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce_reg)) begin
        ap_return_0_int_reg <= select_ln302_20_fu_1973_p3;
        ap_return_1_int_reg <= p_Val2_49_fu_1632_p3;
        ap_return_2_int_reg <= p_Val2_53_fu_1771_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        or_ln346_5_reg_2061 <= or_ln346_5_fu_847_p2;
        or_ln346_6_reg_2076 <= or_ln346_6_fu_1046_p2;
        or_ln346_7_reg_2046 <= or_ln346_7_fu_654_p2;
        or_ln346_8_reg_2091 <= or_ln346_8_fu_1239_p2;
        or_ln346_9_reg_2106 <= or_ln346_9_fu_1419_p2;
        or_ln346_reg_2026 <= or_ln346_fu_435_p2;
        overflow_11_reg_2056 <= overflow_11_fu_817_p2;
        overflow_12_reg_2071 <= overflow_12_fu_1016_p2;
        overflow_13_reg_2041 <= overflow_13_fu_624_p2;
        overflow_14_reg_2086 <= overflow_14_fu_1209_p2;
        overflow_15_reg_2101 <= overflow_15_fu_1389_p2;
        overflow_reg_2021 <= overflow_fu_405_p2;
        p_Val2_32_reg_2016 <= p_Val2_32_fu_303_p2;
        p_Val2_35_reg_2051 <= p_Val2_35_fu_715_p2;
        p_Val2_37_reg_2066 <= p_Val2_37_fu_914_p2;
        p_Val2_40_reg_2036 <= p_Val2_40_fu_522_p2;
        p_Val2_43_reg_2081 <= p_Val2_43_fu_1107_p2;
        p_Val2_46_reg_2096 <= p_Val2_46_fu_1287_p2;
        p_Val2_61_reg_2111 <= p_Val2_61_fu_1617_p3;
        p_read26_reg_2004 <= p_read2_int_reg;
        p_read37_reg_1999 <= p_read3_int_reg;
        p_read_9_reg_2009 <= p_read_int_reg;
        tmp_54_reg_2031 <= sub_ln823_fu_465_p2[32'd13];
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
        ap_return_0 = select_ln302_20_fu_1973_p3;
    end else begin
        ap_return_0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_1 = ap_return_1_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_1 = p_Val2_49_fu_1632_p3;
    end else begin
        ap_return_1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_2 = ap_return_2_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_2 = p_Val2_53_fu_1771_p3;
    end else begin
        ap_return_2 = 'bx;
    end
end

assign Range2_all_ones_10_fu_940_p3 = r_V_6_fu_875_p2[32'd30];

assign Range2_all_ones_11_fu_548_p3 = r_V_7_fu_122_p2[32'd34];

assign Range2_all_ones_12_fu_1133_p3 = r_V_8_fu_126_p2[32'd34];

assign Range2_all_ones_13_fu_1313_p3 = r_V_9_fu_127_p2[32'd34];

assign Range2_all_ones_9_fu_741_p3 = r_V_5_fu_123_p2[32'd35];

assign Range2_all_ones_fu_329_p3 = r_V_fu_125_p2[32'd34];

assign and_ln891_5_fu_793_p2 = (carry_12_fu_735_p2 & Range2_all_ones_9_fu_741_p3);

assign and_ln891_6_fu_992_p2 = (carry_14_fu_934_p2 & Range2_all_ones_10_fu_940_p3);

assign and_ln891_7_fu_600_p2 = (carry_16_fu_542_p2 & Range2_all_ones_11_fu_548_p3);

assign and_ln891_8_fu_1185_p2 = (carry_18_fu_1127_p2 & Range2_all_ones_12_fu_1133_p3);

assign and_ln891_9_fu_1365_p2 = (carry_20_fu_1307_p2 & Range2_all_ones_13_fu_1313_p3);

assign and_ln891_fu_381_p2 = (carry_10_fu_323_p2 & Range2_all_ones_fu_329_p3);

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign carry_10_fu_323_p2 = (xor_ln896_fu_317_p2 & p_Result_27_fu_283_p3);

assign carry_12_fu_735_p2 = (xor_ln896_17_fu_729_p2 & p_Result_30_fu_695_p3);

assign carry_14_fu_934_p2 = (xor_ln896_19_fu_928_p2 & p_Result_33_fu_903_p3);

assign carry_16_fu_542_p2 = (xor_ln896_21_fu_536_p2 & p_Result_36_fu_502_p3);

assign carry_18_fu_1127_p2 = (xor_ln896_23_fu_1121_p2 & p_Result_39_fu_1087_p3);

assign carry_20_fu_1307_p2 = (xor_ln896_25_fu_1301_p2 & p_Result_42_fu_1267_p3);

assign deleted_ones_11_fu_787_p2 = (or_ln890_4_fu_781_p2 & Range2_all_ones_9_fu_741_p3);

assign deleted_ones_12_fu_986_p2 = (or_ln890_5_fu_980_p2 & Range2_all_ones_10_fu_940_p3);

assign deleted_ones_13_fu_594_p2 = (or_ln890_6_fu_588_p2 & Range2_all_ones_11_fu_548_p3);

assign deleted_ones_14_fu_1179_p2 = (or_ln890_7_fu_1173_p2 & Range2_all_ones_12_fu_1133_p3);

assign deleted_ones_15_fu_1359_p2 = (or_ln890_8_fu_1353_p2 & Range2_all_ones_13_fu_1313_p3);

assign deleted_ones_fu_375_p2 = (or_ln890_fu_369_p2 & Range2_all_ones_fu_329_p3);

assign deleted_zeros_5_fu_761_p2 = (or_ln888_4_fu_755_p2 ^ Range2_all_ones_9_fu_741_p3);

assign deleted_zeros_6_fu_960_p2 = (or_ln888_5_fu_954_p2 ^ Range2_all_ones_10_fu_940_p3);

assign deleted_zeros_7_fu_568_p2 = (or_ln888_6_fu_562_p2 ^ Range2_all_ones_11_fu_548_p3);

assign deleted_zeros_8_fu_1153_p2 = (or_ln888_7_fu_1147_p2 ^ Range2_all_ones_12_fu_1133_p3);

assign deleted_zeros_9_fu_1333_p2 = (or_ln888_8_fu_1327_p2 ^ Range2_all_ones_13_fu_1313_p3);

assign deleted_zeros_fu_349_p2 = (or_ln888_fu_343_p2 ^ Range2_all_ones_fu_329_p3);

assign lhs_4_fu_1871_p3 = ((or_ln302_8_fu_1849_p2[0:0] == 1'b1) ? select_ln302_17_fu_1855_p3 : select_ln350_8_fu_1863_p3);

assign or_ln302_6_fu_1749_p2 = (xor_ln302_14_fu_1743_p2 | overflow_17_fu_1719_p2);

assign or_ln302_7_fu_1595_p2 = (xor_ln302_16_fu_1589_p2 | overflow_18_fu_1565_p2);

assign or_ln302_8_fu_1849_p2 = (xor_ln302_18_fu_1843_p2 | overflow_19_fu_1819_p2);

assign or_ln302_9_fu_1951_p2 = (xor_ln302_20_fu_1945_p2 | overflow_20_fu_1921_p2);

assign or_ln302_fu_1493_p2 = (xor_ln302_12_fu_1487_p2 | overflow_16_fu_1463_p2);

assign or_ln346_5_fu_847_p2 = (underflow_11_fu_841_p2 | overflow_11_fu_817_p2);

assign or_ln346_6_fu_1046_p2 = (underflow_12_fu_1040_p2 | overflow_12_fu_1016_p2);

assign or_ln346_7_fu_654_p2 = (underflow_13_fu_648_p2 | overflow_13_fu_624_p2);

assign or_ln346_8_fu_1239_p2 = (underflow_14_fu_1233_p2 | overflow_14_fu_1209_p2);

assign or_ln346_9_fu_1419_p2 = (underflow_15_fu_1413_p2 | overflow_15_fu_1389_p2);

assign or_ln346_fu_435_p2 = (underflow_fu_429_p2 | overflow_fu_405_p2);

assign or_ln888_4_fu_755_p2 = (xor_ln888_9_fu_749_p2 | p_Result_31_fu_721_p3);

assign or_ln888_5_fu_954_p2 = (xor_ln888_11_fu_948_p2 | p_Result_34_fu_920_p3);

assign or_ln888_6_fu_562_p2 = (xor_ln888_13_fu_556_p2 | p_Result_37_fu_528_p3);

assign or_ln888_7_fu_1147_p2 = (xor_ln888_15_fu_1141_p2 | p_Result_40_fu_1113_p3);

assign or_ln888_8_fu_1327_p2 = (xor_ln888_17_fu_1321_p2 | p_Result_43_fu_1293_p3);

assign or_ln888_fu_343_p2 = (xor_ln888_fu_337_p2 | p_Result_28_fu_309_p3);

assign or_ln890_4_fu_781_p2 = (xor_ln890_5_fu_775_p2 | or_ln888_4_fu_755_p2);

assign or_ln890_5_fu_980_p2 = (xor_ln890_6_fu_974_p2 | or_ln888_5_fu_954_p2);

assign or_ln890_6_fu_588_p2 = (xor_ln890_7_fu_582_p2 | or_ln888_6_fu_562_p2);

assign or_ln890_7_fu_1173_p2 = (xor_ln890_8_fu_1167_p2 | or_ln888_7_fu_1147_p2);

assign or_ln890_8_fu_1353_p2 = (xor_ln890_9_fu_1347_p2 | or_ln888_8_fu_1327_p2);

assign or_ln890_fu_369_p2 = (xor_ln890_fu_363_p2 | or_ln888_fu_343_p2);

assign or_ln895_5_fu_805_p2 = (xor_ln895_17_fu_799_p2 | p_Result_31_fu_721_p3);

assign or_ln895_6_fu_1004_p2 = (xor_ln895_19_fu_998_p2 | p_Result_34_fu_920_p3);

assign or_ln895_7_fu_612_p2 = (xor_ln895_21_fu_606_p2 | p_Result_37_fu_528_p3);

assign or_ln895_8_fu_1197_p2 = (xor_ln895_23_fu_1191_p2 | p_Result_40_fu_1113_p3);

assign or_ln895_9_fu_1377_p2 = (xor_ln895_25_fu_1371_p2 | p_Result_43_fu_1293_p3);

assign or_ln895_fu_393_p2 = (xor_ln895_fu_387_p2 | p_Result_28_fu_309_p3);

assign or_ln896_5_fu_829_p2 = (xor_ln896_18_fu_823_p2 | xor_ln896_17_fu_729_p2);

assign or_ln896_6_fu_1028_p2 = (xor_ln896_20_fu_1022_p2 | xor_ln896_19_fu_928_p2);

assign or_ln896_7_fu_636_p2 = (xor_ln896_22_fu_630_p2 | xor_ln896_21_fu_536_p2);

assign or_ln896_8_fu_1221_p2 = (xor_ln896_24_fu_1215_p2 | xor_ln896_23_fu_1121_p2);

assign or_ln896_9_fu_1401_p2 = (xor_ln896_26_fu_1395_p2 | xor_ln896_25_fu_1301_p2);

assign or_ln896_fu_417_p2 = (xor_ln896_fu_317_p2 | xor_ln896_16_fu_411_p2);

assign overflow_11_fu_817_p2 = (xor_ln895_18_fu_811_p2 & or_ln895_5_fu_805_p2);

assign overflow_12_fu_1016_p2 = (xor_ln895_20_fu_1010_p2 & or_ln895_6_fu_1004_p2);

assign overflow_13_fu_624_p2 = (xor_ln895_22_fu_618_p2 & or_ln895_7_fu_612_p2);

assign overflow_14_fu_1209_p2 = (xor_ln895_24_fu_1203_p2 & or_ln895_8_fu_1197_p2);

assign overflow_15_fu_1389_p2 = (xor_ln895_26_fu_1383_p2 & or_ln895_9_fu_1377_p2);

assign overflow_16_fu_1463_p2 = (xor_ln895_27_fu_1457_p2 & p_Result_45_fu_1449_p3);

assign overflow_17_fu_1719_p2 = (xor_ln895_28_fu_1713_p2 & p_Result_47_fu_1705_p3);

assign overflow_18_fu_1565_p2 = (xor_ln895_29_fu_1559_p2 & p_Result_49_fu_1551_p3);

assign overflow_19_fu_1819_p2 = (xor_ln895_30_fu_1813_p2 & p_Result_51_fu_1805_p3);

assign overflow_20_fu_1921_p2 = (xor_ln895_31_fu_1915_p2 & p_Result_53_fu_1907_p3);

assign overflow_fu_405_p2 = (xor_ln895_16_fu_399_p2 & or_ln895_fu_393_p2);

assign p_Result_27_fu_283_p3 = r_V_fu_125_p2[32'd34];

assign p_Result_28_fu_309_p3 = p_Val2_32_fu_303_p2[32'd20];

assign p_Result_29_fu_677_p3 = r_V_5_fu_123_p2[32'd35];

assign p_Result_30_fu_695_p3 = r_V_5_fu_123_p2[32'd34];

assign p_Result_31_fu_721_p3 = p_Val2_35_fu_715_p2[32'd20];

assign p_Result_32_fu_881_p3 = r_V_6_fu_875_p2[32'd30];

assign p_Result_33_fu_903_p3 = r_V_6_fu_875_p2[32'd30];

assign p_Result_34_fu_920_p3 = p_Val2_37_fu_914_p2[32'd17];

assign p_Result_35_fu_484_p3 = r_V_7_fu_122_p2[32'd34];

assign p_Result_36_fu_502_p3 = r_V_7_fu_122_p2[32'd34];

assign p_Result_37_fu_528_p3 = p_Val2_40_fu_522_p2[32'd20];

assign p_Result_38_fu_1069_p3 = r_V_8_fu_126_p2[32'd34];

assign p_Result_39_fu_1087_p3 = r_V_8_fu_126_p2[32'd34];

assign p_Result_40_fu_1113_p3 = p_Val2_43_fu_1107_p2[32'd20];

assign p_Result_41_fu_1249_p3 = r_V_9_fu_127_p2[32'd34];

assign p_Result_42_fu_1267_p3 = r_V_9_fu_127_p2[32'd34];

assign p_Result_43_fu_1293_p3 = p_Val2_46_fu_1287_p2[32'd20];

assign p_Result_44_fu_1435_p3 = ret_V_fu_1429_p2[32'd21];

assign p_Result_45_fu_1449_p3 = p_Val2_48_fu_1443_p2[32'd20];

assign p_Result_46_fu_1691_p3 = ret_V_6_fu_1685_p2[32'd21];

assign p_Result_47_fu_1705_p3 = p_Val2_51_fu_1699_p2[32'd20];

assign p_Result_48_fu_1537_p3 = ret_V_7_fu_1531_p2[32'd21];

assign p_Result_49_fu_1551_p3 = p_Val2_55_fu_1545_p2[32'd20];

assign p_Result_50_fu_1792_p3 = ret_V_8_fu_1786_p2[32'd21];

assign p_Result_51_fu_1805_p3 = p_Val2_58_fu_1800_p2[32'd20];

assign p_Result_52_fu_1893_p3 = ret_V_9_fu_1887_p2[32'd21];

assign p_Result_53_fu_1907_p3 = p_Val2_60_fu_1901_p2[32'd20];

assign p_Result_s_fu_265_p3 = r_V_fu_125_p2[32'd34];

assign p_Val2_31_fu_273_p4 = {{r_V_fu_125_p2[34:14]}};

assign p_Val2_32_fu_303_p2 = (zext_ln377_fu_299_p1 + p_Val2_31_fu_273_p4);

assign p_Val2_34_fu_685_p4 = {{r_V_5_fu_123_p2[34:14]}};

assign p_Val2_35_fu_715_p2 = (zext_ln377_5_fu_711_p1 + p_Val2_34_fu_685_p4);

assign p_Val2_36_fu_889_p4 = {{r_V_6_fu_875_p2[30:14]}};

assign p_Val2_37_fu_914_p2 = ($signed(zext_ln377_6_fu_911_p1) + $signed(sext_ln823_fu_899_p1));

assign p_Val2_39_fu_492_p4 = {{r_V_7_fu_122_p2[34:14]}};

assign p_Val2_40_fu_522_p2 = (zext_ln377_7_fu_518_p1 + p_Val2_39_fu_492_p4);

assign p_Val2_42_fu_1077_p4 = {{r_V_8_fu_126_p2[34:14]}};

assign p_Val2_43_fu_1107_p2 = (zext_ln377_8_fu_1103_p1 + p_Val2_42_fu_1077_p4);

assign p_Val2_45_fu_1257_p4 = {{r_V_9_fu_127_p2[34:14]}};

assign p_Val2_46_fu_1287_p2 = (zext_ln377_9_fu_1283_p1 + p_Val2_45_fu_1257_p4);

assign p_Val2_48_fu_1443_p2 = ($signed(rhs_fu_671_p3) + $signed(21'd5141));

assign p_Val2_49_fu_1632_p3 = ((or_ln346_5_reg_2061[0:0] == 1'b1) ? select_ln346_11_fu_1625_p3 : p_Val2_35_reg_2051);

assign p_Val2_51_fu_1699_p2 = ($signed(rhs_5_fu_1648_p3) + $signed(21'd6335));

assign p_Val2_53_fu_1771_p3 = ((or_ln302_6_fu_1749_p2[0:0] == 1'b1) ? select_ln302_13_fu_1755_p3 : select_ln350_6_fu_1763_p3);

assign p_Val2_55_fu_1545_p2 = ($signed(rhs_6_fu_1059_p3) + $signed(p_Val2_s_fu_1515_p3));

assign p_Val2_58_fu_1800_p2 = ($signed(rhs_7_fu_1662_p3) + $signed(p_Val2_61_reg_2111));

assign p_Val2_60_fu_1901_p2 = ($signed(rhs_8_fu_1675_p3) + $signed(lhs_4_fu_1871_p3));

assign p_Val2_61_fu_1617_p3 = ((or_ln302_7_fu_1595_p2[0:0] == 1'b1) ? select_ln302_15_fu_1601_p3 : select_ln350_7_fu_1609_p3);

assign p_Val2_s_fu_1515_p3 = ((or_ln302_fu_1493_p2[0:0] == 1'b1) ? select_ln302_fu_1499_p3 : select_ln350_fu_1507_p3);

assign r_V_5_fu_123_p1 = 36'd14416;

assign r_V_6_fu_875_p2 = ($signed(sext_ln1273_2_fu_871_p1) - $signed(sext_ln1273_fu_860_p1));

assign r_V_7_fu_122_p1 = 35'd5813;

assign r_V_8_fu_126_p1 = 35'd34359731508;

assign r_V_9_fu_127_p1 = 35'd6474;

assign r_V_fu_125_p1 = 35'd34359731263;

assign ret_V_6_fu_1685_p2 = ($signed(sext_ln813_8_fu_1681_p1) + $signed(22'd6335));

assign ret_V_7_fu_1531_p2 = ($signed(sext_ln813_10_fu_1527_p1) + $signed(sext_ln813_9_fu_1523_p1));

assign ret_V_8_fu_1786_p2 = ($signed(sext_ln813_12_fu_1782_p1) + $signed(sext_ln813_11_fu_1779_p1));

assign ret_V_9_fu_1887_p2 = ($signed(sext_ln813_14_fu_1883_p1) + $signed(sext_ln813_13_fu_1879_p1));

assign ret_V_fu_1429_p2 = ($signed(sext_ln813_fu_1425_p1) + $signed(22'd5141));

assign rhs_5_fu_1648_p3 = ((or_ln346_6_reg_2076[0:0] == 1'b1) ? select_ln346_13_fu_1641_p3 : sext_ln856_fu_1638_p1);

assign rhs_6_fu_1059_p3 = ((or_ln346_7_reg_2046[0:0] == 1'b1) ? select_ln346_14_fu_1052_p3 : p_Val2_40_reg_2036);

assign rhs_7_fu_1662_p3 = ((or_ln346_8_reg_2091[0:0] == 1'b1) ? select_ln346_15_fu_1655_p3 : p_Val2_43_reg_2081);

assign rhs_8_fu_1675_p3 = ((or_ln346_9_reg_2106[0:0] == 1'b1) ? select_ln346_16_fu_1668_p3 : p_Val2_46_reg_2096);

assign rhs_fu_671_p3 = ((or_ln346_reg_2026[0:0] == 1'b1) ? select_ln346_fu_664_p3 : p_Val2_32_reg_2016);

assign select_ln302_13_fu_1755_p3 = ((xor_ln302_13_fu_1737_p2[0:0] == 1'b1) ? 21'd1048575 : p_Val2_51_fu_1699_p2);

assign select_ln302_15_fu_1601_p3 = ((xor_ln302_15_fu_1583_p2[0:0] == 1'b1) ? 21'd1048575 : p_Val2_55_fu_1545_p2);

assign select_ln302_17_fu_1855_p3 = ((xor_ln302_17_fu_1837_p2[0:0] == 1'b1) ? 21'd1048575 : p_Val2_58_fu_1800_p2);

assign select_ln302_19_fu_1957_p3 = ((xor_ln302_19_fu_1939_p2[0:0] == 1'b1) ? 21'd1048575 : p_Val2_60_fu_1901_p2);

assign select_ln302_20_fu_1973_p3 = ((or_ln302_9_fu_1951_p2[0:0] == 1'b1) ? select_ln302_19_fu_1957_p3 : select_ln350_9_fu_1965_p3);

assign select_ln302_fu_1499_p3 = ((xor_ln302_fu_1481_p2[0:0] == 1'b1) ? 21'd1048575 : p_Val2_48_fu_1443_p2);

assign select_ln346_11_fu_1625_p3 = ((overflow_11_reg_2056[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_13_fu_1641_p3 = ((overflow_12_reg_2071[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_14_fu_1052_p3 = ((overflow_13_reg_2041[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_15_fu_1655_p3 = ((overflow_14_reg_2086[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_16_fu_1668_p3 = ((overflow_15_reg_2101[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_fu_664_p3 = ((overflow_reg_2021[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln350_6_fu_1763_p3 = ((underflow_17_fu_1731_p2[0:0] == 1'b1) ? 21'd1048576 : p_Val2_51_fu_1699_p2);

assign select_ln350_7_fu_1609_p3 = ((underflow_18_fu_1577_p2[0:0] == 1'b1) ? 21'd1048576 : p_Val2_55_fu_1545_p2);

assign select_ln350_8_fu_1863_p3 = ((underflow_19_fu_1831_p2[0:0] == 1'b1) ? 21'd1048576 : p_Val2_58_fu_1800_p2);

assign select_ln350_9_fu_1965_p3 = ((underflow_20_fu_1933_p2[0:0] == 1'b1) ? 21'd1048576 : p_Val2_60_fu_1901_p2);

assign select_ln350_fu_1507_p3 = ((underflow_16_fu_1475_p2[0:0] == 1'b1) ? 21'd1048576 : p_Val2_48_fu_1443_p2);

assign sext_ln1273_2_fu_871_p1 = $signed(shl_ln1273_2_fu_864_p3);

assign sext_ln1273_fu_860_p1 = $signed(shl_ln_fu_853_p3);

assign sext_ln813_10_fu_1527_p1 = rhs_6_fu_1059_p3;

assign sext_ln813_11_fu_1779_p1 = p_Val2_61_reg_2111;

assign sext_ln813_12_fu_1782_p1 = rhs_7_fu_1662_p3;

assign sext_ln813_13_fu_1879_p1 = lhs_4_fu_1871_p3;

assign sext_ln813_14_fu_1883_p1 = rhs_8_fu_1675_p3;

assign sext_ln813_8_fu_1681_p1 = rhs_5_fu_1648_p3;

assign sext_ln813_9_fu_1523_p1 = p_Val2_s_fu_1515_p3;

assign sext_ln813_fu_1425_p1 = rhs_fu_671_p3;

assign sext_ln823_fu_899_p1 = $signed(p_Val2_36_fu_889_p4);

assign sext_ln856_fu_1638_p1 = p_Val2_37_reg_2066;

assign shl_ln1273_2_fu_864_p3 = {{p_read_9_reg_2009}, {7'd0}};

assign shl_ln_fu_853_p3 = {{p_read_9_reg_2009}, {9'd0}};

assign sub_ln823_fu_465_p2 = (trunc_ln1273_1_fu_457_p3 - trunc_ln3_fu_445_p3);

assign tmp_45_fu_355_p3 = r_V_fu_125_p2[32'd34];

assign tmp_48_fu_703_p3 = r_V_5_fu_123_p2[32'd13];

assign tmp_51_fu_767_p3 = r_V_5_fu_123_p2[32'd35];

assign tmp_57_fu_966_p3 = r_V_6_fu_875_p2[32'd30];

assign tmp_60_fu_510_p3 = r_V_7_fu_122_p2[32'd13];

assign tmp_63_fu_574_p3 = r_V_7_fu_122_p2[32'd34];

assign tmp_66_fu_1095_p3 = r_V_8_fu_126_p2[32'd13];

assign tmp_69_fu_1159_p3 = r_V_8_fu_126_p2[32'd34];

assign tmp_72_fu_1275_p3 = r_V_9_fu_127_p2[32'd13];

assign tmp_75_fu_1339_p3 = r_V_9_fu_127_p2[32'd34];

assign tmp_fu_291_p3 = r_V_fu_125_p2[32'd13];

assign trunc_ln1273_1_fu_457_p3 = {{trunc_ln1273_2_fu_453_p1}, {7'd0}};

assign trunc_ln1273_2_fu_453_p0 = p_read_int_reg;

assign trunc_ln1273_2_fu_453_p1 = trunc_ln1273_2_fu_453_p0[6:0];

assign trunc_ln1273_fu_441_p0 = p_read_int_reg;

assign trunc_ln1273_fu_441_p1 = trunc_ln1273_fu_441_p0[4:0];

assign trunc_ln3_fu_445_p3 = {{trunc_ln1273_fu_441_p1}, {9'd0}};

assign underflow_11_fu_841_p2 = (xor_ln896_33_fu_835_p2 & p_Result_29_fu_677_p3);

assign underflow_12_fu_1040_p2 = (xor_ln896_34_fu_1034_p2 & p_Result_32_fu_881_p3);

assign underflow_13_fu_648_p2 = (xor_ln896_35_fu_642_p2 & p_Result_35_fu_484_p3);

assign underflow_14_fu_1233_p2 = (xor_ln896_36_fu_1227_p2 & p_Result_38_fu_1069_p3);

assign underflow_15_fu_1413_p2 = (xor_ln896_37_fu_1407_p2 & p_Result_41_fu_1249_p3);

assign underflow_16_fu_1475_p2 = (xor_ln896_27_fu_1469_p2 & p_Result_44_fu_1435_p3);

assign underflow_17_fu_1731_p2 = (xor_ln896_28_fu_1725_p2 & p_Result_46_fu_1691_p3);

assign underflow_18_fu_1577_p2 = (xor_ln896_29_fu_1571_p2 & p_Result_48_fu_1537_p3);

assign underflow_19_fu_1831_p2 = (xor_ln896_30_fu_1825_p2 & p_Result_50_fu_1792_p3);

assign underflow_20_fu_1933_p2 = (xor_ln896_31_fu_1927_p2 & p_Result_52_fu_1893_p3);

assign underflow_fu_429_p2 = (xor_ln896_32_fu_423_p2 & p_Result_s_fu_265_p3);

assign xor_ln302_12_fu_1487_p2 = (xor_ln302_fu_1481_p2 ^ 1'd1);

assign xor_ln302_13_fu_1737_p2 = (p_Result_47_fu_1705_p3 ^ p_Result_46_fu_1691_p3);

assign xor_ln302_14_fu_1743_p2 = (xor_ln302_13_fu_1737_p2 ^ 1'd1);

assign xor_ln302_15_fu_1583_p2 = (p_Result_49_fu_1551_p3 ^ p_Result_48_fu_1537_p3);

assign xor_ln302_16_fu_1589_p2 = (xor_ln302_15_fu_1583_p2 ^ 1'd1);

assign xor_ln302_17_fu_1837_p2 = (p_Result_51_fu_1805_p3 ^ p_Result_50_fu_1792_p3);

assign xor_ln302_18_fu_1843_p2 = (xor_ln302_17_fu_1837_p2 ^ 1'd1);

assign xor_ln302_19_fu_1939_p2 = (p_Result_53_fu_1907_p3 ^ p_Result_52_fu_1893_p3);

assign xor_ln302_20_fu_1945_p2 = (xor_ln302_19_fu_1939_p2 ^ 1'd1);

assign xor_ln302_fu_1481_p2 = (p_Result_45_fu_1449_p3 ^ p_Result_44_fu_1435_p3);

assign xor_ln888_11_fu_948_p2 = (p_Result_33_fu_903_p3 ^ 1'd1);

assign xor_ln888_13_fu_556_p2 = (p_Result_36_fu_502_p3 ^ 1'd1);

assign xor_ln888_15_fu_1141_p2 = (p_Result_39_fu_1087_p3 ^ 1'd1);

assign xor_ln888_17_fu_1321_p2 = (p_Result_42_fu_1267_p3 ^ 1'd1);

assign xor_ln888_9_fu_749_p2 = (p_Result_30_fu_695_p3 ^ 1'd1);

assign xor_ln888_fu_337_p2 = (p_Result_27_fu_283_p3 ^ 1'd1);

assign xor_ln890_5_fu_775_p2 = (tmp_51_fu_767_p3 ^ 1'd1);

assign xor_ln890_6_fu_974_p2 = (tmp_57_fu_966_p3 ^ 1'd1);

assign xor_ln890_7_fu_582_p2 = (tmp_63_fu_574_p3 ^ 1'd1);

assign xor_ln890_8_fu_1167_p2 = (tmp_69_fu_1159_p3 ^ 1'd1);

assign xor_ln890_9_fu_1347_p2 = (tmp_75_fu_1339_p3 ^ 1'd1);

assign xor_ln890_fu_363_p2 = (tmp_45_fu_355_p3 ^ 1'd1);

assign xor_ln895_16_fu_399_p2 = (p_Result_s_fu_265_p3 ^ 1'd1);

assign xor_ln895_17_fu_799_p2 = (deleted_zeros_5_fu_761_p2 ^ 1'd1);

assign xor_ln895_18_fu_811_p2 = (p_Result_29_fu_677_p3 ^ 1'd1);

assign xor_ln895_19_fu_998_p2 = (deleted_zeros_6_fu_960_p2 ^ 1'd1);

assign xor_ln895_20_fu_1010_p2 = (p_Result_32_fu_881_p3 ^ 1'd1);

assign xor_ln895_21_fu_606_p2 = (deleted_zeros_7_fu_568_p2 ^ 1'd1);

assign xor_ln895_22_fu_618_p2 = (p_Result_35_fu_484_p3 ^ 1'd1);

assign xor_ln895_23_fu_1191_p2 = (deleted_zeros_8_fu_1153_p2 ^ 1'd1);

assign xor_ln895_24_fu_1203_p2 = (p_Result_38_fu_1069_p3 ^ 1'd1);

assign xor_ln895_25_fu_1371_p2 = (deleted_zeros_9_fu_1333_p2 ^ 1'd1);

assign xor_ln895_26_fu_1383_p2 = (p_Result_41_fu_1249_p3 ^ 1'd1);

assign xor_ln895_27_fu_1457_p2 = (p_Result_44_fu_1435_p3 ^ 1'd1);

assign xor_ln895_28_fu_1713_p2 = (p_Result_46_fu_1691_p3 ^ 1'd1);

assign xor_ln895_29_fu_1559_p2 = (p_Result_48_fu_1537_p3 ^ 1'd1);

assign xor_ln895_30_fu_1813_p2 = (p_Result_50_fu_1792_p3 ^ 1'd1);

assign xor_ln895_31_fu_1915_p2 = (p_Result_52_fu_1893_p3 ^ 1'd1);

assign xor_ln895_fu_387_p2 = (deleted_zeros_fu_349_p2 ^ 1'd1);

assign xor_ln896_16_fu_411_p2 = (deleted_ones_fu_375_p2 ^ 1'd1);

assign xor_ln896_17_fu_729_p2 = (p_Result_31_fu_721_p3 ^ 1'd1);

assign xor_ln896_18_fu_823_p2 = (deleted_ones_11_fu_787_p2 ^ 1'd1);

assign xor_ln896_19_fu_928_p2 = (p_Result_34_fu_920_p3 ^ 1'd1);

assign xor_ln896_20_fu_1022_p2 = (deleted_ones_12_fu_986_p2 ^ 1'd1);

assign xor_ln896_21_fu_536_p2 = (p_Result_37_fu_528_p3 ^ 1'd1);

assign xor_ln896_22_fu_630_p2 = (deleted_ones_13_fu_594_p2 ^ 1'd1);

assign xor_ln896_23_fu_1121_p2 = (p_Result_40_fu_1113_p3 ^ 1'd1);

assign xor_ln896_24_fu_1215_p2 = (deleted_ones_14_fu_1179_p2 ^ 1'd1);

assign xor_ln896_25_fu_1301_p2 = (p_Result_43_fu_1293_p3 ^ 1'd1);

assign xor_ln896_26_fu_1395_p2 = (deleted_ones_15_fu_1359_p2 ^ 1'd1);

assign xor_ln896_27_fu_1469_p2 = (p_Result_45_fu_1449_p3 ^ 1'd1);

assign xor_ln896_28_fu_1725_p2 = (p_Result_47_fu_1705_p3 ^ 1'd1);

assign xor_ln896_29_fu_1571_p2 = (p_Result_49_fu_1551_p3 ^ 1'd1);

assign xor_ln896_30_fu_1825_p2 = (p_Result_51_fu_1805_p3 ^ 1'd1);

assign xor_ln896_31_fu_1927_p2 = (p_Result_53_fu_1907_p3 ^ 1'd1);

assign xor_ln896_32_fu_423_p2 = (or_ln896_fu_417_p2 ^ and_ln891_fu_381_p2);

assign xor_ln896_33_fu_835_p2 = (or_ln896_5_fu_829_p2 ^ and_ln891_5_fu_793_p2);

assign xor_ln896_34_fu_1034_p2 = (or_ln896_6_fu_1028_p2 ^ and_ln891_6_fu_992_p2);

assign xor_ln896_35_fu_642_p2 = (or_ln896_7_fu_636_p2 ^ and_ln891_7_fu_600_p2);

assign xor_ln896_36_fu_1227_p2 = (or_ln896_8_fu_1221_p2 ^ and_ln891_8_fu_1185_p2);

assign xor_ln896_37_fu_1407_p2 = (or_ln896_9_fu_1401_p2 ^ and_ln891_9_fu_1365_p2);

assign xor_ln896_fu_317_p2 = (p_Result_28_fu_309_p3 ^ 1'd1);

assign zext_ln377_5_fu_711_p1 = tmp_48_fu_703_p3;

assign zext_ln377_6_fu_911_p1 = tmp_54_reg_2031;

assign zext_ln377_7_fu_518_p1 = tmp_60_fu_510_p3;

assign zext_ln377_8_fu_1103_p1 = tmp_66_fu_1095_p3;

assign zext_ln377_9_fu_1283_p1 = tmp_72_fu_1275_p3;

assign zext_ln377_fu_299_p1 = tmp_fu_291_p3;

endmodule //motor_dense_latency_ap_fixed_21_7_0_0_0_ap_fixed_21_7_0_0_0_config5_s
