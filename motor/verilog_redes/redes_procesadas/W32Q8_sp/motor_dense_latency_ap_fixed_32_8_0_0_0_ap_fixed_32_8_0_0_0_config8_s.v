module motor_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s (
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
input  [31:0] p_read;
input  [31:0] p_read1;
input  [31:0] p_read2;
input  [31:0] p_read3;
output  [31:0] ap_return_0;
output  [31:0] ap_return_1;
output  [31:0] ap_return_2;
input   ap_ce;

reg[31:0] ap_return_0;
reg[31:0] ap_return_1;
reg[31:0] ap_return_2;

wire   [55:0] r_V_1_fu_135_p2;
reg   [55:0] r_V_1_reg_252;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
wire   [55:0] r_V_2_fu_138_p2;
reg   [55:0] r_V_2_reg_256;
wire   [50:0] r_V_3_fu_134_p2;
reg   [50:0] r_V_3_reg_260;
wire   [52:0] r_V_4_fu_136_p2;
reg   [52:0] r_V_4_reg_264;
wire   [56:0] r_V_fu_137_p2;
reg   [56:0] r_V_reg_292;
wire   [53:0] r_V_5_fu_139_p2;
reg   [53:0] r_V_5_reg_296;
reg  signed [31:0] p_read_6_reg_2058;
reg  signed [31:0] p_read_9_reg_2063;
reg   [0:0] p_Result_3_reg_2068;
reg   [0:0] p_Result_4_reg_2074;
wire   [31:0] p_Val2_6_fu_345_p2;
reg   [31:0] p_Val2_6_reg_2080;
reg   [0:0] p_Result_5_reg_2085;
reg   [0:0] Range2_all_ones_1_reg_2092;
reg   [0:0] p_Result_6_reg_2099;
reg   [0:0] p_Result_7_reg_2105;
wire   [31:0] p_Val2_9_fu_405_p2;
reg   [31:0] p_Val2_9_reg_2111;
reg   [0:0] p_Result_8_reg_2116;
reg   [0:0] Range2_all_ones_2_reg_2123;
reg   [0:0] p_Result_9_reg_2130;
reg   [26:0] p_Val2_11_reg_2136;
reg   [0:0] p_Result_10_reg_2141;
reg   [0:0] tmp_18_reg_2147;
reg   [0:0] Range2_all_ones_3_reg_2152;
reg   [0:0] p_Result_12_reg_2159;
reg   [28:0] p_Val2_14_reg_2165;
reg   [0:0] p_Result_13_reg_2170;
reg   [0:0] tmp_24_reg_2176;
reg   [0:0] Range2_all_ones_4_reg_2181;
reg   [0:0] p_Result_s_reg_2188;
reg   [31:0] p_Val2_1_reg_2194;
reg   [0:0] p_Result_1_reg_2199;
reg   [0:0] tmp_reg_2205;
reg   [0:0] Range2_all_ones_reg_2210;
reg   [0:0] p_Result_15_reg_2217;
reg   [29:0] p_Val2_17_reg_2223;
reg   [0:0] p_Result_16_reg_2228;
reg   [0:0] tmp_30_reg_2234;
reg   [0:0] Range2_all_ones_5_reg_2239;
wire   [31:0] p_Val2_29_fu_1443_p3;
reg   [31:0] p_Val2_29_reg_2246;
wire  signed [31:0] p_Val2_s_fu_1545_p3;
reg  signed [31:0] p_Val2_s_reg_2251;
wire  signed [19:0] r_V_3_fu_134_p1;
wire    ap_block_pp0_stage0;
wire  signed [31:0] r_V_1_fu_135_p0;
wire  signed [55:0] sext_ln70_1_fu_301_p1;
wire   [24:0] r_V_1_fu_135_p1;
wire   [21:0] r_V_4_fu_136_p1;
wire  signed [25:0] r_V_fu_137_p1;
wire  signed [31:0] r_V_2_fu_138_p0;
wire  signed [24:0] r_V_2_fu_138_p1;
wire   [22:0] r_V_5_fu_139_p1;
wire   [0:0] tmp_6_fu_333_p3;
wire   [31:0] zext_ln377_1_fu_341_p1;
wire   [31:0] p_Val2_4_fu_315_p4;
wire   [0:0] tmp_12_fu_393_p3;
wire   [31:0] zext_ln377_2_fu_401_p1;
wire   [31:0] p_Val2_7_fu_375_p4;
wire   [0:0] xor_ln896_2_fu_567_p2;
wire   [0:0] xor_ln888_2_fu_577_p2;
wire   [0:0] or_ln888_1_fu_582_p2;
wire   [0:0] tmp_9_fu_592_p3;
wire   [0:0] xor_ln890_1_fu_600_p2;
wire   [0:0] or_ln890_1_fu_606_p2;
wire   [0:0] carry_3_fu_572_p2;
wire   [0:0] deleted_zeros_1_fu_587_p2;
wire   [0:0] xor_ln895_2_fu_622_p2;
wire   [0:0] or_ln895_1_fu_628_p2;
wire   [0:0] xor_ln895_3_fu_633_p2;
wire   [0:0] deleted_ones_1_fu_612_p2;
wire   [0:0] xor_ln896_3_fu_644_p2;
wire   [0:0] and_ln891_1_fu_617_p2;
wire   [0:0] or_ln896_1_fu_650_p2;
wire   [0:0] xor_ln896_19_fu_656_p2;
wire   [0:0] overflow_1_fu_638_p2;
wire   [0:0] underflow_1_fu_662_p2;
wire   [0:0] or_ln346_1_fu_675_p2;
wire   [31:0] select_ln346_2_fu_667_p3;
wire   [0:0] xor_ln896_4_fu_688_p2;
wire   [0:0] xor_ln888_4_fu_698_p2;
wire   [0:0] or_ln888_2_fu_703_p2;
wire   [0:0] tmp_15_fu_713_p3;
wire   [0:0] xor_ln890_2_fu_721_p2;
wire   [0:0] or_ln890_2_fu_727_p2;
wire   [0:0] carry_5_fu_693_p2;
wire   [0:0] deleted_zeros_2_fu_708_p2;
wire   [0:0] xor_ln895_4_fu_743_p2;
wire   [0:0] or_ln895_2_fu_749_p2;
wire   [0:0] xor_ln895_5_fu_754_p2;
wire   [0:0] deleted_ones_2_fu_733_p2;
wire   [0:0] xor_ln896_5_fu_765_p2;
wire   [0:0] and_ln891_2_fu_738_p2;
wire   [0:0] or_ln896_2_fu_771_p2;
wire   [0:0] xor_ln896_20_fu_777_p2;
wire   [0:0] overflow_2_fu_759_p2;
wire   [0:0] underflow_2_fu_783_p2;
wire   [0:0] or_ln346_2_fu_796_p2;
wire   [31:0] select_ln346_4_fu_788_p3;
wire   [27:0] zext_ln377_3_fu_812_p1;
wire  signed [27:0] sext_ln823_fu_809_p1;
wire  signed [27:0] p_Val2_12_fu_815_p2;
wire   [0:0] p_Result_11_fu_825_p3;
wire   [0:0] xor_ln896_6_fu_833_p2;
wire   [0:0] xor_ln888_6_fu_844_p2;
wire   [0:0] or_ln888_3_fu_849_p2;
wire   [0:0] tmp_21_fu_860_p3;
wire   [0:0] xor_ln890_3_fu_868_p2;
wire   [0:0] or_ln890_3_fu_874_p2;
wire   [0:0] carry_7_fu_839_p2;
wire   [0:0] deleted_zeros_3_fu_855_p2;
wire   [0:0] xor_ln895_6_fu_890_p2;
wire   [0:0] or_ln895_3_fu_896_p2;
wire   [0:0] xor_ln895_7_fu_902_p2;
wire   [0:0] deleted_ones_3_fu_880_p2;
wire   [0:0] xor_ln896_7_fu_913_p2;
wire   [0:0] and_ln891_3_fu_885_p2;
wire   [0:0] or_ln896_3_fu_919_p2;
wire   [0:0] xor_ln896_21_fu_925_p2;
wire   [0:0] overflow_3_fu_907_p2;
wire   [0:0] underflow_3_fu_931_p2;
wire   [0:0] or_ln346_3_fu_944_p2;
wire   [31:0] select_ln346_6_fu_936_p3;
wire  signed [31:0] sext_ln856_fu_821_p1;
wire   [29:0] zext_ln377_4_fu_961_p1;
wire  signed [29:0] sext_ln823_1_fu_958_p1;
wire  signed [29:0] p_Val2_15_fu_964_p2;
wire   [0:0] p_Result_14_fu_974_p3;
wire   [0:0] xor_ln896_8_fu_982_p2;
wire   [0:0] xor_ln888_8_fu_993_p2;
wire   [0:0] or_ln888_4_fu_998_p2;
wire   [0:0] tmp_27_fu_1009_p3;
wire   [0:0] xor_ln890_4_fu_1017_p2;
wire   [0:0] or_ln890_4_fu_1023_p2;
wire   [0:0] carry_9_fu_988_p2;
wire   [0:0] deleted_zeros_4_fu_1004_p2;
wire   [0:0] xor_ln895_8_fu_1039_p2;
wire   [0:0] or_ln895_4_fu_1045_p2;
wire   [0:0] xor_ln895_9_fu_1051_p2;
wire   [0:0] deleted_ones_4_fu_1029_p2;
wire   [0:0] xor_ln896_9_fu_1062_p2;
wire   [0:0] and_ln891_4_fu_1034_p2;
wire   [0:0] or_ln896_4_fu_1068_p2;
wire   [0:0] xor_ln896_22_fu_1074_p2;
wire   [0:0] overflow_4_fu_1056_p2;
wire   [0:0] underflow_4_fu_1080_p2;
wire   [0:0] or_ln346_4_fu_1093_p2;
wire   [31:0] select_ln346_8_fu_1085_p3;
wire  signed [31:0] sext_ln856_1_fu_970_p1;
wire  signed [31:0] rhs_1_fu_681_p3;
wire  signed [32:0] sext_ln813_1_fu_1153_p1;
wire   [32:0] ret_V_1_fu_1157_p2;
wire   [31:0] p_Val2_23_fu_1171_p2;
wire   [0:0] p_Result_20_fu_1163_p3;
wire   [0:0] p_Result_21_fu_1177_p3;
wire   [0:0] xor_ln895_13_fu_1185_p2;
wire   [0:0] xor_ln896_13_fu_1197_p2;
wire   [0:0] xor_ln302_2_fu_1209_p2;
wire   [0:0] overflow_7_fu_1191_p2;
wire   [0:0] xor_ln302_3_fu_1215_p2;
wire   [0:0] underflow_7_fu_1203_p2;
wire   [0:0] or_ln302_1_fu_1221_p2;
wire   [31:0] select_ln302_2_fu_1227_p3;
wire   [31:0] select_ln350_1_fu_1235_p3;
wire  signed [31:0] rhs_2_fu_802_p3;
wire  signed [32:0] sext_ln813_2_fu_1251_p1;
wire   [32:0] ret_V_2_fu_1255_p2;
wire   [31:0] p_Val2_25_fu_1269_p2;
wire   [0:0] p_Result_22_fu_1261_p3;
wire   [0:0] p_Result_23_fu_1275_p3;
wire   [0:0] xor_ln895_14_fu_1283_p2;
wire   [0:0] xor_ln896_14_fu_1295_p2;
wire   [0:0] xor_ln302_4_fu_1307_p2;
wire   [0:0] overflow_8_fu_1289_p2;
wire   [0:0] xor_ln302_5_fu_1313_p2;
wire   [0:0] underflow_8_fu_1301_p2;
wire   [0:0] or_ln302_2_fu_1319_p2;
wire   [31:0] select_ln302_4_fu_1325_p3;
wire   [31:0] select_ln350_2_fu_1333_p3;
wire  signed [31:0] lhs_fu_1243_p3;
wire  signed [31:0] rhs_3_fu_950_p3;
wire  signed [32:0] sext_ln813_4_fu_1353_p1;
wire  signed [32:0] sext_ln813_3_fu_1349_p1;
wire   [32:0] ret_V_3_fu_1357_p2;
wire   [31:0] p_Val2_27_fu_1371_p2;
wire   [0:0] p_Result_24_fu_1363_p3;
wire   [0:0] p_Result_25_fu_1377_p3;
wire   [0:0] xor_ln895_15_fu_1385_p2;
wire   [0:0] xor_ln896_15_fu_1397_p2;
wire   [0:0] xor_ln302_6_fu_1409_p2;
wire   [0:0] overflow_9_fu_1391_p2;
wire   [0:0] xor_ln302_7_fu_1415_p2;
wire   [0:0] underflow_9_fu_1403_p2;
wire   [0:0] or_ln302_3_fu_1421_p2;
wire   [31:0] select_ln302_6_fu_1427_p3;
wire   [31:0] select_ln350_3_fu_1435_p3;
wire  signed [31:0] lhs_1_fu_1341_p3;
wire  signed [31:0] rhs_4_fu_1099_p3;
wire  signed [32:0] sext_ln813_6_fu_1455_p1;
wire  signed [32:0] sext_ln813_5_fu_1451_p1;
wire   [32:0] ret_V_4_fu_1459_p2;
wire   [31:0] p_Val2_28_fu_1473_p2;
wire   [0:0] p_Result_26_fu_1465_p3;
wire   [0:0] p_Result_27_fu_1479_p3;
wire   [0:0] xor_ln895_16_fu_1487_p2;
wire   [0:0] xor_ln896_16_fu_1499_p2;
wire   [0:0] xor_ln302_8_fu_1511_p2;
wire   [0:0] overflow_10_fu_1493_p2;
wire   [0:0] xor_ln302_9_fu_1517_p2;
wire   [0:0] underflow_10_fu_1505_p2;
wire   [0:0] or_ln302_4_fu_1523_p2;
wire   [31:0] select_ln302_8_fu_1529_p3;
wire   [31:0] select_ln350_4_fu_1537_p3;
wire   [31:0] zext_ln377_fu_1553_p1;
wire   [31:0] p_Val2_3_fu_1556_p2;
wire   [0:0] p_Result_2_fu_1561_p3;
wire   [0:0] xor_ln896_fu_1569_p2;
wire   [0:0] xor_ln888_fu_1580_p2;
wire   [0:0] or_ln888_fu_1585_p2;
wire   [0:0] tmp_3_fu_1596_p3;
wire   [0:0] xor_ln890_fu_1604_p2;
wire   [0:0] or_ln890_fu_1610_p2;
wire   [0:0] carry_1_fu_1575_p2;
wire   [0:0] deleted_zeros_fu_1591_p2;
wire   [0:0] xor_ln895_fu_1626_p2;
wire   [0:0] or_ln895_fu_1632_p2;
wire   [0:0] xor_ln895_1_fu_1638_p2;
wire   [0:0] deleted_ones_fu_1616_p2;
wire   [0:0] xor_ln896_1_fu_1649_p2;
wire   [0:0] and_ln891_fu_1621_p2;
wire   [0:0] or_ln896_fu_1655_p2;
wire   [0:0] xor_ln896_18_fu_1661_p2;
wire   [0:0] overflow_fu_1643_p2;
wire   [0:0] underflow_fu_1667_p2;
wire   [0:0] or_ln346_fu_1680_p2;
wire   [31:0] select_ln346_fu_1672_p3;
wire   [30:0] zext_ln377_5_fu_1697_p1;
wire  signed [30:0] sext_ln823_2_fu_1694_p1;
wire  signed [30:0] p_Val2_18_fu_1700_p2;
wire   [0:0] p_Result_17_fu_1710_p3;
wire   [0:0] xor_ln896_10_fu_1718_p2;
wire   [0:0] xor_ln888_10_fu_1729_p2;
wire   [0:0] or_ln888_5_fu_1734_p2;
wire   [0:0] tmp_33_fu_1745_p3;
wire   [0:0] xor_ln890_5_fu_1753_p2;
wire   [0:0] or_ln890_5_fu_1759_p2;
wire   [0:0] carry_11_fu_1724_p2;
wire   [0:0] deleted_zeros_5_fu_1740_p2;
wire   [0:0] xor_ln895_10_fu_1775_p2;
wire   [0:0] or_ln895_5_fu_1781_p2;
wire   [0:0] xor_ln895_11_fu_1787_p2;
wire   [0:0] deleted_ones_5_fu_1765_p2;
wire   [0:0] xor_ln896_11_fu_1798_p2;
wire   [0:0] and_ln891_5_fu_1770_p2;
wire   [0:0] or_ln896_5_fu_1804_p2;
wire   [0:0] xor_ln896_23_fu_1810_p2;
wire   [0:0] overflow_5_fu_1792_p2;
wire   [0:0] underflow_5_fu_1816_p2;
wire   [0:0] or_ln346_5_fu_1829_p2;
wire   [31:0] select_ln346_10_fu_1821_p3;
wire  signed [31:0] sext_ln856_2_fu_1706_p1;
wire  signed [31:0] rhs_fu_1686_p3;
wire  signed [32:0] sext_ln813_fu_1843_p1;
wire   [32:0] ret_V_fu_1847_p2;
wire   [31:0] p_Val2_20_fu_1861_p2;
wire   [0:0] p_Result_18_fu_1853_p3;
wire   [0:0] p_Result_19_fu_1867_p3;
wire   [0:0] xor_ln895_12_fu_1875_p2;
wire   [0:0] xor_ln896_12_fu_1887_p2;
wire   [0:0] xor_ln302_fu_1899_p2;
wire   [0:0] overflow_6_fu_1881_p2;
wire   [0:0] xor_ln302_1_fu_1905_p2;
wire   [0:0] underflow_6_fu_1893_p2;
wire   [0:0] or_ln302_fu_1911_p2;
wire   [31:0] select_ln302_fu_1917_p3;
wire   [31:0] select_ln350_fu_1925_p3;
wire  signed [31:0] rhs_5_fu_1835_p3;
wire  signed [32:0] sext_ln813_8_fu_1944_p1;
wire  signed [32:0] sext_ln813_7_fu_1941_p1;
wire   [32:0] ret_V_5_fu_1948_p2;
wire   [31:0] p_Val2_32_fu_1962_p2;
wire   [0:0] p_Result_28_fu_1954_p3;
wire   [0:0] p_Result_29_fu_1967_p3;
wire   [0:0] xor_ln895_17_fu_1975_p2;
wire   [0:0] xor_ln896_17_fu_1987_p2;
wire   [0:0] xor_ln302_10_fu_1999_p2;
wire   [0:0] overflow_11_fu_1981_p2;
wire   [0:0] xor_ln302_11_fu_2005_p2;
wire   [0:0] underflow_11_fu_1993_p2;
wire   [0:0] or_ln302_5_fu_2011_p2;
wire   [31:0] select_ln302_10_fu_2017_p3;
wire   [31:0] select_ln350_5_fu_2025_p3;
wire   [31:0] p_Val2_21_fu_1933_p3;
wire   [31:0] select_ln302_11_fu_2033_p3;
reg    ap_ce_reg;
reg   [31:0] p_read_int_reg;
reg   [31:0] p_read1_int_reg;
reg  signed [31:0] p_read2_int_reg;
reg   [31:0] p_read3_int_reg;
reg   [31:0] ap_return_0_int_reg;
reg   [31:0] ap_return_1_int_reg;
reg   [31:0] ap_return_2_int_reg;

motor_mul_32s_20s_51_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 20 ),
    .dout_WIDTH( 51 ))
mul_32s_20s_51_1_0_U45(
    .din0(p_read2_int_reg),
    .din1(r_V_3_fu_134_p1),
    .dout(r_V_3_fu_134_p2)
);

motor_mul_32s_25ns_56_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 25 ),
    .dout_WIDTH( 56 ))
mul_32s_25ns_56_1_0_U46(
    .din0(r_V_1_fu_135_p0),
    .din1(r_V_1_fu_135_p1),
    .dout(r_V_1_fu_135_p2)
);

motor_mul_32s_22ns_53_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 22 ),
    .dout_WIDTH( 53 ))
mul_32s_22ns_53_1_0_U47(
    .din0(p_read2_int_reg),
    .din1(r_V_4_fu_136_p1),
    .dout(r_V_4_fu_136_p2)
);

motor_mul_32s_26s_57_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 26 ),
    .dout_WIDTH( 57 ))
mul_32s_26s_57_1_0_U48(
    .din0(p_read_9_reg_2063),
    .din1(r_V_fu_137_p1),
    .dout(r_V_fu_137_p2)
);

motor_mul_32s_25s_56_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 25 ),
    .dout_WIDTH( 56 ))
mul_32s_25s_56_1_0_U49(
    .din0(r_V_2_fu_138_p0),
    .din1(r_V_2_fu_138_p1),
    .dout(r_V_2_fu_138_p2)
);

motor_mul_32s_23ns_54_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 23 ),
    .dout_WIDTH( 54 ))
mul_32s_23ns_54_1_0_U50(
    .din0(p_read_6_reg_2058),
    .din1(r_V_5_fu_139_p1),
    .dout(r_V_5_fu_139_p2)
);

always @ (posedge ap_clk) begin
    ap_ce_reg <= ap_ce;
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        Range2_all_ones_1_reg_2092 <= r_V_1_fu_135_p2[32'd55];
        Range2_all_ones_2_reg_2123 <= r_V_2_fu_138_p2[32'd55];
        Range2_all_ones_3_reg_2152 <= r_V_3_fu_134_p2[32'd50];
        Range2_all_ones_4_reg_2181 <= r_V_4_fu_136_p2[32'd52];
        Range2_all_ones_5_reg_2239 <= r_V_5_fu_139_p2[32'd53];
        Range2_all_ones_reg_2210 <= r_V_fu_137_p2[32'd56];
        p_Result_10_reg_2141 <= r_V_3_fu_134_p2[32'd50];
        p_Result_12_reg_2159 <= r_V_4_fu_136_p2[32'd52];
        p_Result_13_reg_2170 <= r_V_4_fu_136_p2[32'd52];
        p_Result_15_reg_2217 <= r_V_5_fu_139_p2[32'd53];
        p_Result_16_reg_2228 <= r_V_5_fu_139_p2[32'd53];
        p_Result_1_reg_2199 <= r_V_fu_137_p2[32'd55];
        p_Result_3_reg_2068 <= r_V_1_fu_135_p2[32'd55];
        p_Result_4_reg_2074 <= r_V_1_fu_135_p2[32'd55];
        p_Result_5_reg_2085 <= p_Val2_6_fu_345_p2[32'd31];
        p_Result_6_reg_2099 <= r_V_2_fu_138_p2[32'd55];
        p_Result_7_reg_2105 <= r_V_2_fu_138_p2[32'd55];
        p_Result_8_reg_2116 <= p_Val2_9_fu_405_p2[32'd31];
        p_Result_9_reg_2130 <= r_V_3_fu_134_p2[32'd50];
        p_Result_s_reg_2188 <= r_V_fu_137_p2[32'd56];
        p_Val2_11_reg_2136 <= {{r_V_3_fu_134_p2[50:24]}};
        p_Val2_14_reg_2165 <= {{r_V_4_fu_136_p2[52:24]}};
        p_Val2_17_reg_2223 <= {{r_V_5_fu_139_p2[53:24]}};
        p_Val2_1_reg_2194 <= {{r_V_fu_137_p2[55:24]}};
        p_Val2_29_reg_2246 <= p_Val2_29_fu_1443_p3;
        p_Val2_6_reg_2080 <= p_Val2_6_fu_345_p2;
        p_Val2_9_reg_2111 <= p_Val2_9_fu_405_p2;
        p_Val2_s_reg_2251 <= p_Val2_s_fu_1545_p3;
        p_read_6_reg_2058 <= p_read3_int_reg;
        p_read_9_reg_2063 <= p_read_int_reg;
        r_V_1_reg_252 <= r_V_1_fu_135_p2;
        r_V_2_reg_256 <= r_V_2_fu_138_p2;
        r_V_3_reg_260 <= r_V_3_fu_134_p2;
        r_V_4_reg_264 <= r_V_4_fu_136_p2;
        r_V_5_reg_296 <= r_V_5_fu_139_p2;
        r_V_reg_292 <= r_V_fu_137_p2;
        tmp_18_reg_2147 <= r_V_3_fu_134_p2[32'd23];
        tmp_24_reg_2176 <= r_V_4_fu_136_p2[32'd23];
        tmp_30_reg_2234 <= r_V_5_fu_139_p2[32'd23];
        tmp_reg_2205 <= r_V_fu_137_p2[32'd23];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce_reg)) begin
        ap_return_0_int_reg <= p_Val2_29_reg_2246;
        ap_return_1_int_reg <= p_Val2_21_fu_1933_p3;
        ap_return_2_int_reg <= select_ln302_11_fu_2033_p3;
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
        ap_return_0 = p_Val2_29_reg_2246;
    end else begin
        ap_return_0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_1 = ap_return_1_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_1 = p_Val2_21_fu_1933_p3;
    end else begin
        ap_return_1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_2 = ap_return_2_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_2 = select_ln302_11_fu_2033_p3;
    end else begin
        ap_return_2 = 'bx;
    end
end

assign and_ln891_1_fu_617_p2 = (carry_3_fu_572_p2 & Range2_all_ones_1_reg_2092);

assign and_ln891_2_fu_738_p2 = (carry_5_fu_693_p2 & Range2_all_ones_2_reg_2123);

assign and_ln891_3_fu_885_p2 = (carry_7_fu_839_p2 & Range2_all_ones_3_reg_2152);

assign and_ln891_4_fu_1034_p2 = (carry_9_fu_988_p2 & Range2_all_ones_4_reg_2181);

assign and_ln891_5_fu_1770_p2 = (carry_11_fu_1724_p2 & Range2_all_ones_5_reg_2239);

assign and_ln891_fu_1621_p2 = (carry_1_fu_1575_p2 & Range2_all_ones_reg_2210);

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign carry_11_fu_1724_p2 = (xor_ln896_10_fu_1718_p2 & p_Result_16_reg_2228);

assign carry_1_fu_1575_p2 = (xor_ln896_fu_1569_p2 & p_Result_1_reg_2199);

assign carry_3_fu_572_p2 = (xor_ln896_2_fu_567_p2 & p_Result_4_reg_2074);

assign carry_5_fu_693_p2 = (xor_ln896_4_fu_688_p2 & p_Result_7_reg_2105);

assign carry_7_fu_839_p2 = (xor_ln896_6_fu_833_p2 & p_Result_10_reg_2141);

assign carry_9_fu_988_p2 = (xor_ln896_8_fu_982_p2 & p_Result_13_reg_2170);

assign deleted_ones_1_fu_612_p2 = (or_ln890_1_fu_606_p2 & Range2_all_ones_1_reg_2092);

assign deleted_ones_2_fu_733_p2 = (or_ln890_2_fu_727_p2 & Range2_all_ones_2_reg_2123);

assign deleted_ones_3_fu_880_p2 = (or_ln890_3_fu_874_p2 & Range2_all_ones_3_reg_2152);

assign deleted_ones_4_fu_1029_p2 = (or_ln890_4_fu_1023_p2 & Range2_all_ones_4_reg_2181);

assign deleted_ones_5_fu_1765_p2 = (or_ln890_5_fu_1759_p2 & Range2_all_ones_5_reg_2239);

assign deleted_ones_fu_1616_p2 = (or_ln890_fu_1610_p2 & Range2_all_ones_reg_2210);

assign deleted_zeros_1_fu_587_p2 = (or_ln888_1_fu_582_p2 ^ Range2_all_ones_1_reg_2092);

assign deleted_zeros_2_fu_708_p2 = (or_ln888_2_fu_703_p2 ^ Range2_all_ones_2_reg_2123);

assign deleted_zeros_3_fu_855_p2 = (or_ln888_3_fu_849_p2 ^ Range2_all_ones_3_reg_2152);

assign deleted_zeros_4_fu_1004_p2 = (or_ln888_4_fu_998_p2 ^ Range2_all_ones_4_reg_2181);

assign deleted_zeros_5_fu_1740_p2 = (or_ln888_5_fu_1734_p2 ^ Range2_all_ones_5_reg_2239);

assign deleted_zeros_fu_1591_p2 = (or_ln888_fu_1585_p2 ^ Range2_all_ones_reg_2210);

assign lhs_1_fu_1341_p3 = ((or_ln302_2_fu_1319_p2[0:0] == 1'b1) ? select_ln302_4_fu_1325_p3 : select_ln350_2_fu_1333_p3);

assign lhs_fu_1243_p3 = ((or_ln302_1_fu_1221_p2[0:0] == 1'b1) ? select_ln302_2_fu_1227_p3 : select_ln350_1_fu_1235_p3);

assign or_ln302_1_fu_1221_p2 = (xor_ln302_3_fu_1215_p2 | overflow_7_fu_1191_p2);

assign or_ln302_2_fu_1319_p2 = (xor_ln302_5_fu_1313_p2 | overflow_8_fu_1289_p2);

assign or_ln302_3_fu_1421_p2 = (xor_ln302_7_fu_1415_p2 | overflow_9_fu_1391_p2);

assign or_ln302_4_fu_1523_p2 = (xor_ln302_9_fu_1517_p2 | overflow_10_fu_1493_p2);

assign or_ln302_5_fu_2011_p2 = (xor_ln302_11_fu_2005_p2 | overflow_11_fu_1981_p2);

assign or_ln302_fu_1911_p2 = (xor_ln302_1_fu_1905_p2 | overflow_6_fu_1881_p2);

assign or_ln346_1_fu_675_p2 = (underflow_1_fu_662_p2 | overflow_1_fu_638_p2);

assign or_ln346_2_fu_796_p2 = (underflow_2_fu_783_p2 | overflow_2_fu_759_p2);

assign or_ln346_3_fu_944_p2 = (underflow_3_fu_931_p2 | overflow_3_fu_907_p2);

assign or_ln346_4_fu_1093_p2 = (underflow_4_fu_1080_p2 | overflow_4_fu_1056_p2);

assign or_ln346_5_fu_1829_p2 = (underflow_5_fu_1816_p2 | overflow_5_fu_1792_p2);

assign or_ln346_fu_1680_p2 = (underflow_fu_1667_p2 | overflow_fu_1643_p2);

assign or_ln888_1_fu_582_p2 = (xor_ln888_2_fu_577_p2 | p_Result_5_reg_2085);

assign or_ln888_2_fu_703_p2 = (xor_ln888_4_fu_698_p2 | p_Result_8_reg_2116);

assign or_ln888_3_fu_849_p2 = (xor_ln888_6_fu_844_p2 | p_Result_11_fu_825_p3);

assign or_ln888_4_fu_998_p2 = (xor_ln888_8_fu_993_p2 | p_Result_14_fu_974_p3);

assign or_ln888_5_fu_1734_p2 = (xor_ln888_10_fu_1729_p2 | p_Result_17_fu_1710_p3);

assign or_ln888_fu_1585_p2 = (xor_ln888_fu_1580_p2 | p_Result_2_fu_1561_p3);

assign or_ln890_1_fu_606_p2 = (xor_ln890_1_fu_600_p2 | or_ln888_1_fu_582_p2);

assign or_ln890_2_fu_727_p2 = (xor_ln890_2_fu_721_p2 | or_ln888_2_fu_703_p2);

assign or_ln890_3_fu_874_p2 = (xor_ln890_3_fu_868_p2 | or_ln888_3_fu_849_p2);

assign or_ln890_4_fu_1023_p2 = (xor_ln890_4_fu_1017_p2 | or_ln888_4_fu_998_p2);

assign or_ln890_5_fu_1759_p2 = (xor_ln890_5_fu_1753_p2 | or_ln888_5_fu_1734_p2);

assign or_ln890_fu_1610_p2 = (xor_ln890_fu_1604_p2 | or_ln888_fu_1585_p2);

assign or_ln895_1_fu_628_p2 = (xor_ln895_2_fu_622_p2 | p_Result_5_reg_2085);

assign or_ln895_2_fu_749_p2 = (xor_ln895_4_fu_743_p2 | p_Result_8_reg_2116);

assign or_ln895_3_fu_896_p2 = (xor_ln895_6_fu_890_p2 | p_Result_11_fu_825_p3);

assign or_ln895_4_fu_1045_p2 = (xor_ln895_8_fu_1039_p2 | p_Result_14_fu_974_p3);

assign or_ln895_5_fu_1781_p2 = (xor_ln895_10_fu_1775_p2 | p_Result_17_fu_1710_p3);

assign or_ln895_fu_1632_p2 = (xor_ln895_fu_1626_p2 | p_Result_2_fu_1561_p3);

assign or_ln896_1_fu_650_p2 = (xor_ln896_3_fu_644_p2 | xor_ln896_2_fu_567_p2);

assign or_ln896_2_fu_771_p2 = (xor_ln896_5_fu_765_p2 | xor_ln896_4_fu_688_p2);

assign or_ln896_3_fu_919_p2 = (xor_ln896_7_fu_913_p2 | xor_ln896_6_fu_833_p2);

assign or_ln896_4_fu_1068_p2 = (xor_ln896_9_fu_1062_p2 | xor_ln896_8_fu_982_p2);

assign or_ln896_5_fu_1804_p2 = (xor_ln896_11_fu_1798_p2 | xor_ln896_10_fu_1718_p2);

assign or_ln896_fu_1655_p2 = (xor_ln896_fu_1569_p2 | xor_ln896_1_fu_1649_p2);

assign overflow_10_fu_1493_p2 = (xor_ln895_16_fu_1487_p2 & p_Result_27_fu_1479_p3);

assign overflow_11_fu_1981_p2 = (xor_ln895_17_fu_1975_p2 & p_Result_29_fu_1967_p3);

assign overflow_1_fu_638_p2 = (xor_ln895_3_fu_633_p2 & or_ln895_1_fu_628_p2);

assign overflow_2_fu_759_p2 = (xor_ln895_5_fu_754_p2 & or_ln895_2_fu_749_p2);

assign overflow_3_fu_907_p2 = (xor_ln895_7_fu_902_p2 & or_ln895_3_fu_896_p2);

assign overflow_4_fu_1056_p2 = (xor_ln895_9_fu_1051_p2 & or_ln895_4_fu_1045_p2);

assign overflow_5_fu_1792_p2 = (xor_ln895_11_fu_1787_p2 & or_ln895_5_fu_1781_p2);

assign overflow_6_fu_1881_p2 = (xor_ln895_12_fu_1875_p2 & p_Result_19_fu_1867_p3);

assign overflow_7_fu_1191_p2 = (xor_ln895_13_fu_1185_p2 & p_Result_21_fu_1177_p3);

assign overflow_8_fu_1289_p2 = (xor_ln895_14_fu_1283_p2 & p_Result_23_fu_1275_p3);

assign overflow_9_fu_1391_p2 = (xor_ln895_15_fu_1385_p2 & p_Result_25_fu_1377_p3);

assign overflow_fu_1643_p2 = (xor_ln895_1_fu_1638_p2 & or_ln895_fu_1632_p2);

assign p_Result_11_fu_825_p3 = p_Val2_12_fu_815_p2[32'd27];

assign p_Result_14_fu_974_p3 = p_Val2_15_fu_964_p2[32'd29];

assign p_Result_17_fu_1710_p3 = p_Val2_18_fu_1700_p2[32'd30];

assign p_Result_18_fu_1853_p3 = ret_V_fu_1847_p2[32'd32];

assign p_Result_19_fu_1867_p3 = p_Val2_20_fu_1861_p2[32'd31];

assign p_Result_20_fu_1163_p3 = ret_V_1_fu_1157_p2[32'd32];

assign p_Result_21_fu_1177_p3 = p_Val2_23_fu_1171_p2[32'd31];

assign p_Result_22_fu_1261_p3 = ret_V_2_fu_1255_p2[32'd32];

assign p_Result_23_fu_1275_p3 = p_Val2_25_fu_1269_p2[32'd31];

assign p_Result_24_fu_1363_p3 = ret_V_3_fu_1357_p2[32'd32];

assign p_Result_25_fu_1377_p3 = p_Val2_27_fu_1371_p2[32'd31];

assign p_Result_26_fu_1465_p3 = ret_V_4_fu_1459_p2[32'd32];

assign p_Result_27_fu_1479_p3 = p_Val2_28_fu_1473_p2[32'd31];

assign p_Result_28_fu_1954_p3 = ret_V_5_fu_1948_p2[32'd32];

assign p_Result_29_fu_1967_p3 = p_Val2_32_fu_1962_p2[32'd31];

assign p_Result_2_fu_1561_p3 = p_Val2_3_fu_1556_p2[32'd31];

assign p_Val2_12_fu_815_p2 = ($signed(zext_ln377_3_fu_812_p1) + $signed(sext_ln823_fu_809_p1));

assign p_Val2_15_fu_964_p2 = ($signed(zext_ln377_4_fu_961_p1) + $signed(sext_ln823_1_fu_958_p1));

assign p_Val2_18_fu_1700_p2 = ($signed(zext_ln377_5_fu_1697_p1) + $signed(sext_ln823_2_fu_1694_p1));

assign p_Val2_20_fu_1861_p2 = ($signed(rhs_fu_1686_p3) + $signed(32'd5062185));

assign p_Val2_21_fu_1933_p3 = ((or_ln302_fu_1911_p2[0:0] == 1'b1) ? select_ln302_fu_1917_p3 : select_ln350_fu_1925_p3);

assign p_Val2_23_fu_1171_p2 = ($signed(rhs_1_fu_681_p3) + $signed(32'd140968));

assign p_Val2_25_fu_1269_p2 = ($signed(rhs_2_fu_802_p3) + $signed(32'd6923874));

assign p_Val2_27_fu_1371_p2 = ($signed(rhs_3_fu_950_p3) + $signed(lhs_fu_1243_p3));

assign p_Val2_28_fu_1473_p2 = ($signed(rhs_4_fu_1099_p3) + $signed(lhs_1_fu_1341_p3));

assign p_Val2_29_fu_1443_p3 = ((or_ln302_3_fu_1421_p2[0:0] == 1'b1) ? select_ln302_6_fu_1427_p3 : select_ln350_3_fu_1435_p3);

assign p_Val2_32_fu_1962_p2 = ($signed(rhs_5_fu_1835_p3) + $signed(p_Val2_s_reg_2251));

assign p_Val2_3_fu_1556_p2 = (zext_ln377_fu_1553_p1 + p_Val2_1_reg_2194);

assign p_Val2_4_fu_315_p4 = {{r_V_1_fu_135_p2[55:24]}};

assign p_Val2_6_fu_345_p2 = (zext_ln377_1_fu_341_p1 + p_Val2_4_fu_315_p4);

assign p_Val2_7_fu_375_p4 = {{r_V_2_fu_138_p2[55:24]}};

assign p_Val2_9_fu_405_p2 = (zext_ln377_2_fu_401_p1 + p_Val2_7_fu_375_p4);

assign p_Val2_s_fu_1545_p3 = ((or_ln302_4_fu_1523_p2[0:0] == 1'b1) ? select_ln302_8_fu_1529_p3 : select_ln350_4_fu_1537_p3);

assign r_V_1_fu_135_p0 = sext_ln70_1_fu_301_p1;

assign r_V_1_fu_135_p1 = 56'd10490509;

assign r_V_2_fu_138_p0 = sext_ln70_1_fu_301_p1;

assign r_V_2_fu_138_p1 = 56'd72057594028989239;

assign r_V_3_fu_134_p1 = 51'd2251799813319069;

assign r_V_4_fu_136_p1 = 53'd1562550;

assign r_V_5_fu_139_p1 = 54'd3281710;

assign r_V_fu_137_p1 = 57'd144115188051572030;

assign ret_V_1_fu_1157_p2 = ($signed(sext_ln813_1_fu_1153_p1) + $signed(33'd140968));

assign ret_V_2_fu_1255_p2 = ($signed(sext_ln813_2_fu_1251_p1) + $signed(33'd6923874));

assign ret_V_3_fu_1357_p2 = ($signed(sext_ln813_4_fu_1353_p1) + $signed(sext_ln813_3_fu_1349_p1));

assign ret_V_4_fu_1459_p2 = ($signed(sext_ln813_6_fu_1455_p1) + $signed(sext_ln813_5_fu_1451_p1));

assign ret_V_5_fu_1948_p2 = ($signed(sext_ln813_8_fu_1944_p1) + $signed(sext_ln813_7_fu_1941_p1));

assign ret_V_fu_1847_p2 = ($signed(sext_ln813_fu_1843_p1) + $signed(33'd5062185));

assign rhs_1_fu_681_p3 = ((or_ln346_1_fu_675_p2[0:0] == 1'b1) ? select_ln346_2_fu_667_p3 : p_Val2_6_reg_2080);

assign rhs_2_fu_802_p3 = ((or_ln346_2_fu_796_p2[0:0] == 1'b1) ? select_ln346_4_fu_788_p3 : p_Val2_9_reg_2111);

assign rhs_3_fu_950_p3 = ((or_ln346_3_fu_944_p2[0:0] == 1'b1) ? select_ln346_6_fu_936_p3 : sext_ln856_fu_821_p1);

assign rhs_4_fu_1099_p3 = ((or_ln346_4_fu_1093_p2[0:0] == 1'b1) ? select_ln346_8_fu_1085_p3 : sext_ln856_1_fu_970_p1);

assign rhs_5_fu_1835_p3 = ((or_ln346_5_fu_1829_p2[0:0] == 1'b1) ? select_ln346_10_fu_1821_p3 : sext_ln856_2_fu_1706_p1);

assign rhs_fu_1686_p3 = ((or_ln346_fu_1680_p2[0:0] == 1'b1) ? select_ln346_fu_1672_p3 : p_Val2_3_fu_1556_p2);

assign select_ln302_10_fu_2017_p3 = ((xor_ln302_10_fu_1999_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_32_fu_1962_p2);

assign select_ln302_11_fu_2033_p3 = ((or_ln302_5_fu_2011_p2[0:0] == 1'b1) ? select_ln302_10_fu_2017_p3 : select_ln350_5_fu_2025_p3);

assign select_ln302_2_fu_1227_p3 = ((xor_ln302_2_fu_1209_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_23_fu_1171_p2);

assign select_ln302_4_fu_1325_p3 = ((xor_ln302_4_fu_1307_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_25_fu_1269_p2);

assign select_ln302_6_fu_1427_p3 = ((xor_ln302_6_fu_1409_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_27_fu_1371_p2);

assign select_ln302_8_fu_1529_p3 = ((xor_ln302_8_fu_1511_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_28_fu_1473_p2);

assign select_ln302_fu_1917_p3 = ((xor_ln302_fu_1899_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_20_fu_1861_p2);

assign select_ln346_10_fu_1821_p3 = ((overflow_5_fu_1792_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_2_fu_667_p3 = ((overflow_1_fu_638_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_4_fu_788_p3 = ((overflow_2_fu_759_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_6_fu_936_p3 = ((overflow_3_fu_907_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_8_fu_1085_p3 = ((overflow_4_fu_1056_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_fu_1672_p3 = ((overflow_fu_1643_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln350_1_fu_1235_p3 = ((underflow_7_fu_1203_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_23_fu_1171_p2);

assign select_ln350_2_fu_1333_p3 = ((underflow_8_fu_1301_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_25_fu_1269_p2);

assign select_ln350_3_fu_1435_p3 = ((underflow_9_fu_1403_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_27_fu_1371_p2);

assign select_ln350_4_fu_1537_p3 = ((underflow_10_fu_1505_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_28_fu_1473_p2);

assign select_ln350_5_fu_2025_p3 = ((underflow_11_fu_1993_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_32_fu_1962_p2);

assign select_ln350_fu_1925_p3 = ((underflow_6_fu_1893_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_20_fu_1861_p2);

assign sext_ln70_1_fu_301_p1 = $signed(p_read1_int_reg);

assign sext_ln813_1_fu_1153_p1 = rhs_1_fu_681_p3;

assign sext_ln813_2_fu_1251_p1 = rhs_2_fu_802_p3;

assign sext_ln813_3_fu_1349_p1 = lhs_fu_1243_p3;

assign sext_ln813_4_fu_1353_p1 = rhs_3_fu_950_p3;

assign sext_ln813_5_fu_1451_p1 = lhs_1_fu_1341_p3;

assign sext_ln813_6_fu_1455_p1 = rhs_4_fu_1099_p3;

assign sext_ln813_7_fu_1941_p1 = p_Val2_s_reg_2251;

assign sext_ln813_8_fu_1944_p1 = rhs_5_fu_1835_p3;

assign sext_ln813_fu_1843_p1 = rhs_fu_1686_p3;

assign sext_ln823_1_fu_958_p1 = $signed(p_Val2_14_reg_2165);

assign sext_ln823_2_fu_1694_p1 = $signed(p_Val2_17_reg_2223);

assign sext_ln823_fu_809_p1 = $signed(p_Val2_11_reg_2136);

assign sext_ln856_1_fu_970_p1 = p_Val2_15_fu_964_p2;

assign sext_ln856_2_fu_1706_p1 = p_Val2_18_fu_1700_p2;

assign sext_ln856_fu_821_p1 = p_Val2_12_fu_815_p2;

assign tmp_12_fu_393_p3 = r_V_2_fu_138_p2[32'd23];

assign tmp_15_fu_713_p3 = r_V_2_reg_256[32'd55];

assign tmp_21_fu_860_p3 = r_V_3_reg_260[32'd50];

assign tmp_27_fu_1009_p3 = r_V_4_reg_264[32'd52];

assign tmp_33_fu_1745_p3 = r_V_5_reg_296[32'd53];

assign tmp_3_fu_1596_p3 = r_V_reg_292[32'd56];

assign tmp_6_fu_333_p3 = r_V_1_fu_135_p2[32'd23];

assign tmp_9_fu_592_p3 = r_V_1_reg_252[32'd55];

assign underflow_10_fu_1505_p2 = (xor_ln896_16_fu_1499_p2 & p_Result_26_fu_1465_p3);

assign underflow_11_fu_1993_p2 = (xor_ln896_17_fu_1987_p2 & p_Result_28_fu_1954_p3);

assign underflow_1_fu_662_p2 = (xor_ln896_19_fu_656_p2 & p_Result_3_reg_2068);

assign underflow_2_fu_783_p2 = (xor_ln896_20_fu_777_p2 & p_Result_6_reg_2099);

assign underflow_3_fu_931_p2 = (xor_ln896_21_fu_925_p2 & p_Result_9_reg_2130);

assign underflow_4_fu_1080_p2 = (xor_ln896_22_fu_1074_p2 & p_Result_12_reg_2159);

assign underflow_5_fu_1816_p2 = (xor_ln896_23_fu_1810_p2 & p_Result_15_reg_2217);

assign underflow_6_fu_1893_p2 = (xor_ln896_12_fu_1887_p2 & p_Result_18_fu_1853_p3);

assign underflow_7_fu_1203_p2 = (xor_ln896_13_fu_1197_p2 & p_Result_20_fu_1163_p3);

assign underflow_8_fu_1301_p2 = (xor_ln896_14_fu_1295_p2 & p_Result_22_fu_1261_p3);

assign underflow_9_fu_1403_p2 = (xor_ln896_15_fu_1397_p2 & p_Result_24_fu_1363_p3);

assign underflow_fu_1667_p2 = (xor_ln896_18_fu_1661_p2 & p_Result_s_reg_2188);

assign xor_ln302_10_fu_1999_p2 = (p_Result_29_fu_1967_p3 ^ p_Result_28_fu_1954_p3);

assign xor_ln302_11_fu_2005_p2 = (xor_ln302_10_fu_1999_p2 ^ 1'd1);

assign xor_ln302_1_fu_1905_p2 = (xor_ln302_fu_1899_p2 ^ 1'd1);

assign xor_ln302_2_fu_1209_p2 = (p_Result_21_fu_1177_p3 ^ p_Result_20_fu_1163_p3);

assign xor_ln302_3_fu_1215_p2 = (xor_ln302_2_fu_1209_p2 ^ 1'd1);

assign xor_ln302_4_fu_1307_p2 = (p_Result_23_fu_1275_p3 ^ p_Result_22_fu_1261_p3);

assign xor_ln302_5_fu_1313_p2 = (xor_ln302_4_fu_1307_p2 ^ 1'd1);

assign xor_ln302_6_fu_1409_p2 = (p_Result_25_fu_1377_p3 ^ p_Result_24_fu_1363_p3);

assign xor_ln302_7_fu_1415_p2 = (xor_ln302_6_fu_1409_p2 ^ 1'd1);

assign xor_ln302_8_fu_1511_p2 = (p_Result_27_fu_1479_p3 ^ p_Result_26_fu_1465_p3);

assign xor_ln302_9_fu_1517_p2 = (xor_ln302_8_fu_1511_p2 ^ 1'd1);

assign xor_ln302_fu_1899_p2 = (p_Result_19_fu_1867_p3 ^ p_Result_18_fu_1853_p3);

assign xor_ln888_10_fu_1729_p2 = (p_Result_16_reg_2228 ^ 1'd1);

assign xor_ln888_2_fu_577_p2 = (p_Result_4_reg_2074 ^ 1'd1);

assign xor_ln888_4_fu_698_p2 = (p_Result_7_reg_2105 ^ 1'd1);

assign xor_ln888_6_fu_844_p2 = (p_Result_10_reg_2141 ^ 1'd1);

assign xor_ln888_8_fu_993_p2 = (p_Result_13_reg_2170 ^ 1'd1);

assign xor_ln888_fu_1580_p2 = (p_Result_1_reg_2199 ^ 1'd1);

assign xor_ln890_1_fu_600_p2 = (tmp_9_fu_592_p3 ^ 1'd1);

assign xor_ln890_2_fu_721_p2 = (tmp_15_fu_713_p3 ^ 1'd1);

assign xor_ln890_3_fu_868_p2 = (tmp_21_fu_860_p3 ^ 1'd1);

assign xor_ln890_4_fu_1017_p2 = (tmp_27_fu_1009_p3 ^ 1'd1);

assign xor_ln890_5_fu_1753_p2 = (tmp_33_fu_1745_p3 ^ 1'd1);

assign xor_ln890_fu_1604_p2 = (tmp_3_fu_1596_p3 ^ 1'd1);

assign xor_ln895_10_fu_1775_p2 = (deleted_zeros_5_fu_1740_p2 ^ 1'd1);

assign xor_ln895_11_fu_1787_p2 = (p_Result_15_reg_2217 ^ 1'd1);

assign xor_ln895_12_fu_1875_p2 = (p_Result_18_fu_1853_p3 ^ 1'd1);

assign xor_ln895_13_fu_1185_p2 = (p_Result_20_fu_1163_p3 ^ 1'd1);

assign xor_ln895_14_fu_1283_p2 = (p_Result_22_fu_1261_p3 ^ 1'd1);

assign xor_ln895_15_fu_1385_p2 = (p_Result_24_fu_1363_p3 ^ 1'd1);

assign xor_ln895_16_fu_1487_p2 = (p_Result_26_fu_1465_p3 ^ 1'd1);

assign xor_ln895_17_fu_1975_p2 = (p_Result_28_fu_1954_p3 ^ 1'd1);

assign xor_ln895_1_fu_1638_p2 = (p_Result_s_reg_2188 ^ 1'd1);

assign xor_ln895_2_fu_622_p2 = (deleted_zeros_1_fu_587_p2 ^ 1'd1);

assign xor_ln895_3_fu_633_p2 = (p_Result_3_reg_2068 ^ 1'd1);

assign xor_ln895_4_fu_743_p2 = (deleted_zeros_2_fu_708_p2 ^ 1'd1);

assign xor_ln895_5_fu_754_p2 = (p_Result_6_reg_2099 ^ 1'd1);

assign xor_ln895_6_fu_890_p2 = (deleted_zeros_3_fu_855_p2 ^ 1'd1);

assign xor_ln895_7_fu_902_p2 = (p_Result_9_reg_2130 ^ 1'd1);

assign xor_ln895_8_fu_1039_p2 = (deleted_zeros_4_fu_1004_p2 ^ 1'd1);

assign xor_ln895_9_fu_1051_p2 = (p_Result_12_reg_2159 ^ 1'd1);

assign xor_ln895_fu_1626_p2 = (deleted_zeros_fu_1591_p2 ^ 1'd1);

assign xor_ln896_10_fu_1718_p2 = (p_Result_17_fu_1710_p3 ^ 1'd1);

assign xor_ln896_11_fu_1798_p2 = (deleted_ones_5_fu_1765_p2 ^ 1'd1);

assign xor_ln896_12_fu_1887_p2 = (p_Result_19_fu_1867_p3 ^ 1'd1);

assign xor_ln896_13_fu_1197_p2 = (p_Result_21_fu_1177_p3 ^ 1'd1);

assign xor_ln896_14_fu_1295_p2 = (p_Result_23_fu_1275_p3 ^ 1'd1);

assign xor_ln896_15_fu_1397_p2 = (p_Result_25_fu_1377_p3 ^ 1'd1);

assign xor_ln896_16_fu_1499_p2 = (p_Result_27_fu_1479_p3 ^ 1'd1);

assign xor_ln896_17_fu_1987_p2 = (p_Result_29_fu_1967_p3 ^ 1'd1);

assign xor_ln896_18_fu_1661_p2 = (or_ln896_fu_1655_p2 ^ and_ln891_fu_1621_p2);

assign xor_ln896_19_fu_656_p2 = (or_ln896_1_fu_650_p2 ^ and_ln891_1_fu_617_p2);

assign xor_ln896_1_fu_1649_p2 = (deleted_ones_fu_1616_p2 ^ 1'd1);

assign xor_ln896_20_fu_777_p2 = (or_ln896_2_fu_771_p2 ^ and_ln891_2_fu_738_p2);

assign xor_ln896_21_fu_925_p2 = (or_ln896_3_fu_919_p2 ^ and_ln891_3_fu_885_p2);

assign xor_ln896_22_fu_1074_p2 = (or_ln896_4_fu_1068_p2 ^ and_ln891_4_fu_1034_p2);

assign xor_ln896_23_fu_1810_p2 = (or_ln896_5_fu_1804_p2 ^ and_ln891_5_fu_1770_p2);

assign xor_ln896_2_fu_567_p2 = (p_Result_5_reg_2085 ^ 1'd1);

assign xor_ln896_3_fu_644_p2 = (deleted_ones_1_fu_612_p2 ^ 1'd1);

assign xor_ln896_4_fu_688_p2 = (p_Result_8_reg_2116 ^ 1'd1);

assign xor_ln896_5_fu_765_p2 = (deleted_ones_2_fu_733_p2 ^ 1'd1);

assign xor_ln896_6_fu_833_p2 = (p_Result_11_fu_825_p3 ^ 1'd1);

assign xor_ln896_7_fu_913_p2 = (deleted_ones_3_fu_880_p2 ^ 1'd1);

assign xor_ln896_8_fu_982_p2 = (p_Result_14_fu_974_p3 ^ 1'd1);

assign xor_ln896_9_fu_1062_p2 = (deleted_ones_4_fu_1029_p2 ^ 1'd1);

assign xor_ln896_fu_1569_p2 = (p_Result_2_fu_1561_p3 ^ 1'd1);

assign zext_ln377_1_fu_341_p1 = tmp_6_fu_333_p3;

assign zext_ln377_2_fu_401_p1 = tmp_12_fu_393_p3;

assign zext_ln377_3_fu_812_p1 = tmp_18_reg_2147;

assign zext_ln377_4_fu_961_p1 = tmp_24_reg_2176;

assign zext_ln377_5_fu_1697_p1 = tmp_30_reg_2234;

assign zext_ln377_fu_1553_p1 = tmp_reg_2205;

endmodule //motor_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s
