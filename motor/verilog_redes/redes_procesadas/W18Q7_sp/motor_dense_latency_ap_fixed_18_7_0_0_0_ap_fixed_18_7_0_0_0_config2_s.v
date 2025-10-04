module motor_dense_latency_ap_fixed_18_7_0_0_0_ap_fixed_18_7_0_0_0_config2_s (
        ap_clk,
        ap_rst,
        p_read,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_ce
);


input   ap_clk;
input   ap_rst;
input  [53:0] p_read;
output  [17:0] ap_return_0;
output  [17:0] ap_return_1;
output  [17:0] ap_return_2;
output  [17:0] ap_return_3;
input   ap_ce;

reg[17:0] ap_return_0;
reg[17:0] ap_return_1;
reg[17:0] ap_return_2;
reg[17:0] ap_return_3;

wire  signed [17:0] a_V_fu_450_p1;
reg  signed [17:0] a_V_reg_3210;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
wire  signed [17:0] rhs_7_fu_885_p3;
reg  signed [17:0] rhs_7_reg_3215;
wire  signed [17:0] rhs_8_fu_1098_p3;
reg  signed [17:0] rhs_8_reg_3221;
wire  signed [17:0] rhs_9_fu_1294_p3;
reg  signed [17:0] rhs_9_reg_3227;
wire  signed [17:0] rhs_10_fu_1490_p3;
reg  signed [17:0] rhs_10_reg_3233;
wire  signed [17:0] rhs_11_fu_1703_p3;
reg  signed [17:0] rhs_11_reg_3239;
wire  signed [17:0] rhs_12_fu_1899_p3;
reg  signed [17:0] rhs_12_reg_3245;
wire  signed [17:0] rhs_13_fu_2095_p3;
reg  signed [17:0] rhs_13_reg_3251;
wire  signed [17:0] lhs_fu_2193_p3;
reg  signed [17:0] lhs_reg_3257;
wire   [17:0] p_Val2_51_fu_2243_p2;
reg   [17:0] p_Val2_51_reg_3263;
wire   [0:0] overflow_fu_2359_p2;
reg   [0:0] overflow_reg_3268;
wire   [0:0] or_ln346_fu_2389_p2;
reg   [0:0] or_ln346_reg_3273;
wire   [17:0] select_ln302_31_fu_2877_p3;
reg   [17:0] select_ln302_31_reg_3278;
wire   [17:0] select_ln302_33_fu_2977_p3;
reg   [17:0] select_ln302_33_reg_3283;
reg   [0:0] p_Result_85_reg_3288;
wire   [17:0] p_Val2_94_fu_3006_p2;
reg   [17:0] p_Val2_94_reg_3295;
reg   [0:0] p_Result_86_reg_3301;
wire  signed [17:0] r_V_18_fu_124_p0;
wire  signed [27:0] sext_ln70_7_fu_903_p1;
wire   [9:0] r_V_18_fu_124_p1;
wire    ap_block_pp0_stage0;
wire  signed [17:0] r_V_20_fu_125_p0;
wire  signed [9:0] r_V_20_fu_125_p1;
wire  signed [17:0] r_V_fu_126_p0;
wire  signed [27:0] sext_ln70_8_fu_1508_p1;
wire  signed [9:0] r_V_fu_126_p1;
wire   [12:0] r_V_15_fu_127_p1;
wire  signed [17:0] r_V_19_fu_128_p0;
wire  signed [9:0] r_V_19_fu_128_p1;
wire   [8:0] r_V_17_fu_129_p1;
wire  signed [17:0] r_V_21_fu_131_p0;
wire   [9:0] r_V_21_fu_131_p1;
wire  signed [17:0] r_V_22_fu_132_p0;
wire   [9:0] r_V_22_fu_132_p1;
wire   [17:0] trunc_ln1273_fu_459_p1;
wire   [25:0] shl_ln_fu_463_p3;
wire   [18:0] shl_ln1273_1_fu_475_p3;
wire  signed [26:0] sext_ln1273_fu_471_p1;
wire  signed [26:0] sext_ln1273_1_fu_483_p1;
wire   [26:0] r_V_16_fu_487_p2;
wire   [15:0] p_Val2_53_fu_501_p4;
wire   [0:0] tmp_74_fu_523_p3;
wire   [16:0] zext_ln377_7_fu_531_p1;
wire  signed [16:0] sext_ln823_fu_511_p1;
wire  signed [16:0] p_Val2_54_fu_535_p2;
wire   [0:0] p_Result_47_fu_545_p3;
wire   [0:0] p_Result_46_fu_515_p3;
wire   [0:0] xor_ln896_26_fu_553_p2;
wire   [0:0] xor_ln888_fu_573_p2;
wire   [0:0] Range2_all_ones_17_fu_565_p3;
wire   [0:0] or_ln888_fu_579_p2;
wire   [0:0] tmp_77_fu_591_p3;
wire   [0:0] xor_ln890_7_fu_599_p2;
wire   [0:0] or_ln890_fu_605_p2;
wire   [0:0] carry_17_fu_559_p2;
wire   [0:0] deleted_zeros_7_fu_585_p2;
wire   [0:0] xor_ln895_26_fu_623_p2;
wire   [0:0] p_Result_45_fu_493_p3;
wire   [0:0] or_ln895_7_fu_629_p2;
wire   [0:0] xor_ln895_27_fu_635_p2;
wire   [0:0] deleted_ones_17_fu_611_p2;
wire   [0:0] xor_ln896_27_fu_647_p2;
wire   [0:0] and_ln891_7_fu_617_p2;
wire   [0:0] or_ln896_7_fu_653_p2;
wire   [0:0] xor_ln896_52_fu_659_p2;
wire   [0:0] overflow_17_fu_641_p2;
wire   [0:0] underflow_17_fu_665_p2;
wire   [0:0] or_ln346_7_fu_679_p2;
wire   [17:0] select_ln346_16_fu_671_p3;
wire  signed [17:0] sext_ln856_fu_541_p1;
wire   [26:0] r_V_17_fu_129_p2;
wire   [15:0] p_Val2_56_fu_701_p4;
wire   [0:0] tmp_80_fu_723_p3;
wire   [16:0] zext_ln377_8_fu_731_p1;
wire  signed [16:0] sext_ln823_1_fu_711_p1;
wire  signed [16:0] p_Val2_57_fu_735_p2;
wire   [0:0] p_Result_50_fu_745_p3;
wire   [0:0] p_Result_49_fu_715_p3;
wire   [0:0] xor_ln896_28_fu_753_p2;
wire   [0:0] xor_ln888_14_fu_773_p2;
wire   [0:0] Range2_all_ones_18_fu_765_p3;
wire   [0:0] or_ln888_6_fu_779_p2;
wire   [0:0] tmp_83_fu_791_p3;
wire   [0:0] xor_ln890_8_fu_799_p2;
wire   [0:0] or_ln890_6_fu_805_p2;
wire   [0:0] carry_19_fu_759_p2;
wire   [0:0] deleted_zeros_8_fu_785_p2;
wire   [0:0] xor_ln895_28_fu_823_p2;
wire   [0:0] p_Result_48_fu_693_p3;
wire   [0:0] or_ln895_8_fu_829_p2;
wire   [0:0] xor_ln895_29_fu_835_p2;
wire   [0:0] deleted_ones_18_fu_811_p2;
wire   [0:0] xor_ln896_29_fu_847_p2;
wire   [0:0] and_ln891_8_fu_817_p2;
wire   [0:0] or_ln896_8_fu_853_p2;
wire   [0:0] xor_ln896_53_fu_859_p2;
wire   [0:0] overflow_18_fu_841_p2;
wire   [0:0] underflow_18_fu_865_p2;
wire   [0:0] or_ln346_8_fu_879_p2;
wire   [17:0] select_ln346_18_fu_871_p3;
wire  signed [17:0] sext_ln856_1_fu_741_p1;
wire   [17:0] a_V_1_fu_893_p4;
wire   [27:0] r_V_18_fu_124_p2;
wire   [16:0] p_Val2_59_fu_918_p4;
wire   [0:0] tmp_86_fu_940_p3;
wire   [17:0] zext_ln377_9_fu_948_p1;
wire  signed [17:0] sext_ln818_fu_928_p1;
wire   [17:0] p_Val2_60_fu_952_p2;
wire   [0:0] p_Result_53_fu_958_p3;
wire   [0:0] p_Result_52_fu_932_p3;
wire   [0:0] xor_ln896_30_fu_966_p2;
wire   [0:0] xor_ln888_16_fu_986_p2;
wire   [0:0] Range2_all_ones_19_fu_978_p3;
wire   [0:0] or_ln888_7_fu_992_p2;
wire   [0:0] tmp_89_fu_1004_p3;
wire   [0:0] xor_ln890_9_fu_1012_p2;
wire   [0:0] or_ln890_7_fu_1018_p2;
wire   [0:0] carry_21_fu_972_p2;
wire   [0:0] deleted_zeros_9_fu_998_p2;
wire   [0:0] xor_ln895_30_fu_1036_p2;
wire   [0:0] p_Result_51_fu_910_p3;
wire   [0:0] or_ln895_9_fu_1042_p2;
wire   [0:0] xor_ln895_31_fu_1048_p2;
wire   [0:0] deleted_ones_19_fu_1024_p2;
wire   [0:0] xor_ln896_31_fu_1060_p2;
wire   [0:0] and_ln891_9_fu_1030_p2;
wire   [0:0] or_ln896_9_fu_1066_p2;
wire   [0:0] xor_ln896_54_fu_1072_p2;
wire   [0:0] overflow_19_fu_1054_p2;
wire   [0:0] underflow_19_fu_1078_p2;
wire   [0:0] or_ln346_9_fu_1092_p2;
wire   [17:0] select_ln346_20_fu_1084_p3;
wire   [27:0] r_V_19_fu_128_p2;
wire   [16:0] p_Val2_62_fu_1114_p4;
wire   [0:0] tmp_92_fu_1136_p3;
wire   [17:0] zext_ln377_10_fu_1144_p1;
wire  signed [17:0] sext_ln818_1_fu_1124_p1;
wire   [17:0] p_Val2_63_fu_1148_p2;
wire   [0:0] p_Result_56_fu_1154_p3;
wire   [0:0] p_Result_55_fu_1128_p3;
wire   [0:0] xor_ln896_32_fu_1162_p2;
wire   [0:0] xor_ln888_18_fu_1182_p2;
wire   [0:0] Range2_all_ones_20_fu_1174_p3;
wire   [0:0] or_ln888_8_fu_1188_p2;
wire   [0:0] tmp_95_fu_1200_p3;
wire   [0:0] xor_ln890_10_fu_1208_p2;
wire   [0:0] or_ln890_8_fu_1214_p2;
wire   [0:0] carry_23_fu_1168_p2;
wire   [0:0] deleted_zeros_10_fu_1194_p2;
wire   [0:0] xor_ln895_32_fu_1232_p2;
wire   [0:0] p_Result_54_fu_1106_p3;
wire   [0:0] or_ln895_10_fu_1238_p2;
wire   [0:0] xor_ln895_33_fu_1244_p2;
wire   [0:0] deleted_ones_20_fu_1220_p2;
wire   [0:0] xor_ln896_33_fu_1256_p2;
wire   [0:0] and_ln891_10_fu_1226_p2;
wire   [0:0] or_ln896_10_fu_1262_p2;
wire   [0:0] xor_ln896_55_fu_1268_p2;
wire   [0:0] overflow_20_fu_1250_p2;
wire   [0:0] underflow_20_fu_1274_p2;
wire   [0:0] or_ln346_10_fu_1288_p2;
wire   [17:0] select_ln346_22_fu_1280_p3;
wire   [27:0] r_V_20_fu_125_p2;
wire   [16:0] p_Val2_65_fu_1310_p4;
wire   [0:0] tmp_98_fu_1332_p3;
wire   [17:0] zext_ln377_11_fu_1340_p1;
wire  signed [17:0] sext_ln818_2_fu_1320_p1;
wire   [17:0] p_Val2_66_fu_1344_p2;
wire   [0:0] p_Result_59_fu_1350_p3;
wire   [0:0] p_Result_58_fu_1324_p3;
wire   [0:0] xor_ln896_34_fu_1358_p2;
wire   [0:0] xor_ln888_20_fu_1378_p2;
wire   [0:0] Range2_all_ones_21_fu_1370_p3;
wire   [0:0] or_ln888_9_fu_1384_p2;
wire   [0:0] tmp_101_fu_1396_p3;
wire   [0:0] xor_ln890_11_fu_1404_p2;
wire   [0:0] or_ln890_9_fu_1410_p2;
wire   [0:0] carry_25_fu_1364_p2;
wire   [0:0] deleted_zeros_11_fu_1390_p2;
wire   [0:0] xor_ln895_34_fu_1428_p2;
wire   [0:0] p_Result_57_fu_1302_p3;
wire   [0:0] or_ln895_11_fu_1434_p2;
wire   [0:0] xor_ln895_35_fu_1440_p2;
wire   [0:0] deleted_ones_21_fu_1416_p2;
wire   [0:0] xor_ln896_35_fu_1452_p2;
wire   [0:0] and_ln891_11_fu_1422_p2;
wire   [0:0] or_ln896_11_fu_1458_p2;
wire   [0:0] xor_ln896_56_fu_1464_p2;
wire   [0:0] overflow_21_fu_1446_p2;
wire   [0:0] underflow_21_fu_1470_p2;
wire   [0:0] or_ln346_11_fu_1484_p2;
wire   [17:0] select_ln346_23_fu_1476_p3;
wire   [17:0] a_V_2_fu_1498_p4;
wire   [27:0] r_V_fu_126_p2;
wire   [16:0] p_Val2_68_fu_1523_p4;
wire   [0:0] tmp_104_fu_1545_p3;
wire   [17:0] zext_ln377_12_fu_1553_p1;
wire  signed [17:0] sext_ln818_3_fu_1533_p1;
wire   [17:0] p_Val2_69_fu_1557_p2;
wire   [0:0] p_Result_62_fu_1563_p3;
wire   [0:0] p_Result_61_fu_1537_p3;
wire   [0:0] xor_ln896_36_fu_1571_p2;
wire   [0:0] xor_ln888_22_fu_1591_p2;
wire   [0:0] Range2_all_ones_22_fu_1583_p3;
wire   [0:0] or_ln888_10_fu_1597_p2;
wire   [0:0] tmp_107_fu_1609_p3;
wire   [0:0] xor_ln890_12_fu_1617_p2;
wire   [0:0] or_ln890_10_fu_1623_p2;
wire   [0:0] carry_27_fu_1577_p2;
wire   [0:0] deleted_zeros_12_fu_1603_p2;
wire   [0:0] xor_ln895_36_fu_1641_p2;
wire   [0:0] p_Result_60_fu_1515_p3;
wire   [0:0] or_ln895_12_fu_1647_p2;
wire   [0:0] xor_ln895_37_fu_1653_p2;
wire   [0:0] deleted_ones_22_fu_1629_p2;
wire   [0:0] xor_ln896_37_fu_1665_p2;
wire   [0:0] and_ln891_12_fu_1635_p2;
wire   [0:0] or_ln896_12_fu_1671_p2;
wire   [0:0] xor_ln896_57_fu_1677_p2;
wire   [0:0] overflow_22_fu_1659_p2;
wire   [0:0] underflow_22_fu_1683_p2;
wire   [0:0] or_ln346_12_fu_1697_p2;
wire   [17:0] select_ln346_24_fu_1689_p3;
wire   [27:0] r_V_21_fu_131_p2;
wire   [16:0] p_Val2_71_fu_1719_p4;
wire   [0:0] tmp_110_fu_1741_p3;
wire   [17:0] zext_ln377_13_fu_1749_p1;
wire  signed [17:0] sext_ln818_4_fu_1729_p1;
wire   [17:0] p_Val2_72_fu_1753_p2;
wire   [0:0] p_Result_65_fu_1759_p3;
wire   [0:0] p_Result_64_fu_1733_p3;
wire   [0:0] xor_ln896_38_fu_1767_p2;
wire   [0:0] xor_ln888_24_fu_1787_p2;
wire   [0:0] Range2_all_ones_23_fu_1779_p3;
wire   [0:0] or_ln888_11_fu_1793_p2;
wire   [0:0] tmp_113_fu_1805_p3;
wire   [0:0] xor_ln890_13_fu_1813_p2;
wire   [0:0] or_ln890_11_fu_1819_p2;
wire   [0:0] carry_29_fu_1773_p2;
wire   [0:0] deleted_zeros_13_fu_1799_p2;
wire   [0:0] xor_ln895_38_fu_1837_p2;
wire   [0:0] p_Result_63_fu_1711_p3;
wire   [0:0] or_ln895_13_fu_1843_p2;
wire   [0:0] xor_ln895_39_fu_1849_p2;
wire   [0:0] deleted_ones_23_fu_1825_p2;
wire   [0:0] xor_ln896_39_fu_1861_p2;
wire   [0:0] and_ln891_13_fu_1831_p2;
wire   [0:0] or_ln896_13_fu_1867_p2;
wire   [0:0] xor_ln896_58_fu_1873_p2;
wire   [0:0] overflow_23_fu_1855_p2;
wire   [0:0] underflow_23_fu_1879_p2;
wire   [0:0] or_ln346_13_fu_1893_p2;
wire   [17:0] select_ln346_25_fu_1885_p3;
wire   [27:0] r_V_22_fu_132_p2;
wire   [16:0] p_Val2_74_fu_1915_p4;
wire   [0:0] tmp_116_fu_1937_p3;
wire   [17:0] zext_ln377_14_fu_1945_p1;
wire  signed [17:0] sext_ln818_5_fu_1925_p1;
wire   [17:0] p_Val2_75_fu_1949_p2;
wire   [0:0] p_Result_68_fu_1955_p3;
wire   [0:0] p_Result_67_fu_1929_p3;
wire   [0:0] xor_ln896_40_fu_1963_p2;
wire   [0:0] xor_ln888_26_fu_1983_p2;
wire   [0:0] Range2_all_ones_24_fu_1975_p3;
wire   [0:0] or_ln888_12_fu_1989_p2;
wire   [0:0] tmp_119_fu_2001_p3;
wire   [0:0] xor_ln890_14_fu_2009_p2;
wire   [0:0] or_ln890_12_fu_2015_p2;
wire   [0:0] carry_31_fu_1969_p2;
wire   [0:0] deleted_zeros_14_fu_1995_p2;
wire   [0:0] xor_ln895_40_fu_2033_p2;
wire   [0:0] p_Result_66_fu_1907_p3;
wire   [0:0] or_ln895_14_fu_2039_p2;
wire   [0:0] xor_ln895_41_fu_2045_p2;
wire   [0:0] deleted_ones_24_fu_2021_p2;
wire   [0:0] xor_ln896_41_fu_2057_p2;
wire   [0:0] and_ln891_14_fu_2027_p2;
wire   [0:0] or_ln896_14_fu_2063_p2;
wire   [0:0] xor_ln896_59_fu_2069_p2;
wire   [0:0] overflow_24_fu_2051_p2;
wire   [0:0] underflow_24_fu_2075_p2;
wire   [0:0] or_ln346_14_fu_2089_p2;
wire   [17:0] select_ln346_26_fu_2081_p3;
wire  signed [17:0] rhs_6_fu_685_p3;
wire  signed [18:0] sext_ln813_12_fu_2103_p1;
wire   [18:0] ret_V_9_fu_2107_p2;
wire   [17:0] p_Val2_79_fu_2121_p2;
wire   [0:0] p_Result_71_fu_2113_p3;
wire   [0:0] p_Result_72_fu_2127_p3;
wire   [0:0] xor_ln895_43_fu_2135_p2;
wire   [0:0] xor_ln896_43_fu_2147_p2;
wire   [0:0] xor_ln302_20_fu_2159_p2;
wire   [0:0] overflow_26_fu_2141_p2;
wire   [0:0] xor_ln302_21_fu_2165_p2;
wire   [0:0] underflow_26_fu_2153_p2;
wire   [0:0] or_ln302_9_fu_2171_p2;
wire   [17:0] select_ln302_20_fu_2177_p3;
wire   [17:0] select_ln350_9_fu_2185_p3;
wire   [30:0] r_V_15_fu_127_p2;
wire   [0:0] tmp_68_fu_2231_p3;
wire   [17:0] zext_ln377_fu_2239_p1;
wire   [17:0] p_Val2_50_fu_2213_p4;
wire   [0:0] p_Result_44_fu_2249_p3;
wire   [0:0] p_Result_43_fu_2223_p3;
wire   [0:0] xor_ln896_fu_2257_p2;
wire   [1:0] tmp_fu_2277_p4;
wire   [0:0] carry_15_fu_2263_p2;
wire   [0:0] Range1_all_ones_fu_2287_p2;
wire   [0:0] Range1_all_zeros_fu_2293_p2;
wire   [0:0] tmp_71_fu_2307_p3;
wire   [0:0] Range2_all_ones_fu_2269_p3;
wire   [0:0] xor_ln890_fu_2315_p2;
wire   [0:0] and_ln890_fu_2321_p2;
wire   [0:0] deleted_zeros_fu_2299_p3;
wire   [0:0] xor_ln895_fu_2341_p2;
wire   [0:0] p_Result_s_fu_2205_p3;
wire   [0:0] or_ln895_fu_2347_p2;
wire   [0:0] xor_ln895_25_fu_2353_p2;
wire   [0:0] deleted_ones_fu_2327_p3;
wire   [0:0] xor_ln896_25_fu_2365_p2;
wire   [0:0] and_ln891_fu_2335_p2;
wire   [0:0] or_ln896_fu_2371_p2;
wire   [0:0] xor_ln896_51_fu_2377_p2;
wire   [0:0] underflow_fu_2383_p2;
wire  signed [18:0] sext_ln813_13_fu_2395_p1;
wire   [18:0] ret_V_10_fu_2398_p2;
wire   [17:0] p_Val2_81_fu_2412_p2;
wire   [0:0] p_Result_73_fu_2404_p3;
wire   [0:0] p_Result_74_fu_2417_p3;
wire   [0:0] xor_ln895_44_fu_2425_p2;
wire   [0:0] xor_ln896_44_fu_2437_p2;
wire   [0:0] xor_ln302_22_fu_2449_p2;
wire   [0:0] overflow_27_fu_2431_p2;
wire   [0:0] xor_ln302_23_fu_2455_p2;
wire   [0:0] underflow_27_fu_2443_p2;
wire   [0:0] or_ln302_10_fu_2461_p2;
wire   [17:0] select_ln302_22_fu_2467_p3;
wire   [17:0] select_ln350_10_fu_2475_p3;
wire  signed [18:0] sext_ln813_14_fu_2491_p1;
wire   [18:0] ret_V_11_fu_2494_p2;
wire   [17:0] p_Val2_84_fu_2508_p2;
wire   [0:0] p_Result_75_fu_2500_p3;
wire   [0:0] p_Result_76_fu_2513_p3;
wire   [0:0] xor_ln895_45_fu_2521_p2;
wire   [0:0] xor_ln896_45_fu_2533_p2;
wire   [0:0] xor_ln302_24_fu_2545_p2;
wire   [0:0] overflow_28_fu_2527_p2;
wire   [0:0] xor_ln302_25_fu_2551_p2;
wire   [0:0] underflow_28_fu_2539_p2;
wire   [0:0] or_ln302_11_fu_2557_p2;
wire   [17:0] select_ln302_24_fu_2563_p3;
wire   [17:0] select_ln350_11_fu_2571_p3;
wire  signed [18:0] sext_ln813_16_fu_2590_p1;
wire  signed [18:0] sext_ln813_15_fu_2587_p1;
wire   [18:0] ret_V_12_fu_2593_p2;
wire   [17:0] p_Val2_86_fu_2607_p2;
wire   [0:0] p_Result_77_fu_2599_p3;
wire   [0:0] p_Result_78_fu_2611_p3;
wire   [0:0] xor_ln895_46_fu_2619_p2;
wire   [0:0] xor_ln896_46_fu_2631_p2;
wire   [0:0] xor_ln302_26_fu_2643_p2;
wire   [0:0] overflow_29_fu_2625_p2;
wire   [0:0] xor_ln302_27_fu_2649_p2;
wire   [0:0] underflow_29_fu_2637_p2;
wire   [0:0] or_ln302_12_fu_2655_p2;
wire   [17:0] select_ln302_26_fu_2661_p3;
wire   [17:0] select_ln350_12_fu_2669_p3;
wire  signed [17:0] lhs_5_fu_2483_p3;
wire  signed [18:0] sext_ln813_18_fu_2689_p1;
wire  signed [18:0] sext_ln813_17_fu_2685_p1;
wire   [18:0] ret_V_13_fu_2692_p2;
wire   [17:0] p_Val2_88_fu_2706_p2;
wire   [0:0] p_Result_79_fu_2698_p3;
wire   [0:0] p_Result_80_fu_2711_p3;
wire   [0:0] xor_ln895_47_fu_2719_p2;
wire   [0:0] xor_ln896_47_fu_2731_p2;
wire   [0:0] xor_ln302_28_fu_2743_p2;
wire   [0:0] overflow_30_fu_2725_p2;
wire   [0:0] xor_ln302_29_fu_2749_p2;
wire   [0:0] underflow_30_fu_2737_p2;
wire   [0:0] or_ln302_13_fu_2755_p2;
wire   [17:0] select_ln302_28_fu_2761_p3;
wire   [17:0] select_ln350_13_fu_2769_p3;
wire  signed [17:0] lhs_6_fu_2579_p3;
wire  signed [18:0] sext_ln813_20_fu_2789_p1;
wire  signed [18:0] sext_ln813_19_fu_2785_p1;
wire   [18:0] ret_V_14_fu_2792_p2;
wire   [17:0] p_Val2_90_fu_2806_p2;
wire   [0:0] p_Result_81_fu_2798_p3;
wire   [0:0] p_Result_82_fu_2811_p3;
wire   [0:0] xor_ln895_48_fu_2819_p2;
wire   [0:0] xor_ln896_48_fu_2831_p2;
wire   [0:0] xor_ln302_30_fu_2843_p2;
wire   [0:0] overflow_31_fu_2825_p2;
wire   [0:0] xor_ln302_31_fu_2849_p2;
wire   [0:0] underflow_31_fu_2837_p2;
wire   [0:0] or_ln302_14_fu_2855_p2;
wire   [17:0] select_ln302_30_fu_2861_p3;
wire   [17:0] select_ln350_14_fu_2869_p3;
wire  signed [17:0] lhs_7_fu_2677_p3;
wire  signed [18:0] sext_ln813_22_fu_2889_p1;
wire  signed [18:0] sext_ln813_21_fu_2885_p1;
wire   [18:0] ret_V_15_fu_2892_p2;
wire   [17:0] p_Val2_92_fu_2906_p2;
wire   [0:0] p_Result_83_fu_2898_p3;
wire   [0:0] p_Result_84_fu_2911_p3;
wire   [0:0] xor_ln895_49_fu_2919_p2;
wire   [0:0] xor_ln896_49_fu_2931_p2;
wire   [0:0] xor_ln302_32_fu_2943_p2;
wire   [0:0] overflow_32_fu_2925_p2;
wire   [0:0] xor_ln302_33_fu_2949_p2;
wire   [0:0] underflow_32_fu_2937_p2;
wire   [0:0] or_ln302_15_fu_2955_p2;
wire   [17:0] select_ln302_32_fu_2961_p3;
wire   [17:0] select_ln350_15_fu_2969_p3;
wire  signed [17:0] lhs_8_fu_2777_p3;
wire  signed [18:0] sext_ln813_24_fu_2989_p1;
wire  signed [18:0] sext_ln813_23_fu_2985_p1;
wire   [18:0] ret_V_16_fu_2992_p2;
wire   [17:0] select_ln346_fu_3019_p3;
wire  signed [17:0] rhs_fu_3026_p3;
wire  signed [18:0] sext_ln813_fu_3032_p1;
wire   [18:0] ret_V_fu_3036_p2;
wire   [17:0] p_Val2_77_fu_3050_p2;
wire   [0:0] p_Result_69_fu_3042_p3;
wire   [0:0] p_Result_70_fu_3056_p3;
wire   [0:0] xor_ln895_42_fu_3064_p2;
wire   [0:0] xor_ln896_42_fu_3076_p2;
wire   [0:0] xor_ln302_fu_3088_p2;
wire   [0:0] overflow_25_fu_3070_p2;
wire   [0:0] xor_ln302_19_fu_3094_p2;
wire   [0:0] underflow_25_fu_3082_p2;
wire   [0:0] or_ln302_fu_3100_p2;
wire   [17:0] select_ln302_fu_3106_p3;
wire   [17:0] select_ln350_fu_3114_p3;
wire   [0:0] xor_ln895_50_fu_3130_p2;
wire   [0:0] xor_ln896_50_fu_3140_p2;
wire   [0:0] xor_ln302_34_fu_3150_p2;
wire   [0:0] overflow_33_fu_3135_p2;
wire   [0:0] xor_ln302_35_fu_3154_p2;
wire   [0:0] underflow_33_fu_3145_p2;
wire   [0:0] or_ln302_16_fu_3160_p2;
wire   [17:0] select_ln302_34_fu_3166_p3;
wire   [17:0] select_ln350_16_fu_3173_p3;
wire   [17:0] p_Val2_82_fu_3122_p3;
wire   [17:0] select_ln302_35_fu_3180_p3;
reg    ap_ce_reg;
reg   [53:0] p_read_int_reg;
reg   [17:0] ap_return_0_int_reg;
reg   [17:0] ap_return_1_int_reg;
reg   [17:0] ap_return_2_int_reg;
reg   [17:0] ap_return_3_int_reg;

motor_mul_18s_10ns_28_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 18 ),
    .din1_WIDTH( 10 ),
    .dout_WIDTH( 28 ))
mul_18s_10ns_28_1_0_U1(
    .din0(r_V_18_fu_124_p0),
    .din1(r_V_18_fu_124_p1),
    .dout(r_V_18_fu_124_p2)
);

motor_mul_18s_10s_28_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 18 ),
    .din1_WIDTH( 10 ),
    .dout_WIDTH( 28 ))
mul_18s_10s_28_1_0_U2(
    .din0(r_V_20_fu_125_p0),
    .din1(r_V_20_fu_125_p1),
    .dout(r_V_20_fu_125_p2)
);

motor_mul_18s_10s_28_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 18 ),
    .din1_WIDTH( 10 ),
    .dout_WIDTH( 28 ))
mul_18s_10s_28_1_0_U3(
    .din0(r_V_fu_126_p0),
    .din1(r_V_fu_126_p1),
    .dout(r_V_fu_126_p2)
);

motor_mul_18s_13ns_31_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 18 ),
    .din1_WIDTH( 13 ),
    .dout_WIDTH( 31 ))
mul_18s_13ns_31_1_0_U4(
    .din0(a_V_reg_3210),
    .din1(r_V_15_fu_127_p1),
    .dout(r_V_15_fu_127_p2)
);

motor_mul_18s_10s_28_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 18 ),
    .din1_WIDTH( 10 ),
    .dout_WIDTH( 28 ))
mul_18s_10s_28_1_0_U5(
    .din0(r_V_19_fu_128_p0),
    .din1(r_V_19_fu_128_p1),
    .dout(r_V_19_fu_128_p2)
);

motor_mul_18s_9ns_27_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 18 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 27 ))
mul_18s_9ns_27_1_0_U6(
    .din0(a_V_fu_450_p1),
    .din1(r_V_17_fu_129_p1),
    .dout(r_V_17_fu_129_p2)
);

motor_mul_18s_10ns_28_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 18 ),
    .din1_WIDTH( 10 ),
    .dout_WIDTH( 28 ))
mul_18s_10ns_28_1_0_U7(
    .din0(r_V_21_fu_131_p0),
    .din1(r_V_21_fu_131_p1),
    .dout(r_V_21_fu_131_p2)
);

motor_mul_18s_10ns_28_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 18 ),
    .din1_WIDTH( 10 ),
    .dout_WIDTH( 28 ))
mul_18s_10ns_28_1_0_U8(
    .din0(r_V_22_fu_132_p0),
    .din1(r_V_22_fu_132_p1),
    .dout(r_V_22_fu_132_p2)
);

always @ (posedge ap_clk) begin
    ap_ce_reg <= ap_ce;
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        a_V_reg_3210 <= a_V_fu_450_p1;
        lhs_reg_3257 <= lhs_fu_2193_p3;
        or_ln346_reg_3273 <= or_ln346_fu_2389_p2;
        overflow_reg_3268 <= overflow_fu_2359_p2;
        p_Result_85_reg_3288 <= ret_V_16_fu_2992_p2[32'd18];
        p_Result_86_reg_3301 <= p_Val2_94_fu_3006_p2[32'd17];
        p_Val2_51_reg_3263 <= p_Val2_51_fu_2243_p2;
        p_Val2_94_reg_3295 <= p_Val2_94_fu_3006_p2;
        rhs_10_reg_3233 <= rhs_10_fu_1490_p3;
        rhs_11_reg_3239 <= rhs_11_fu_1703_p3;
        rhs_12_reg_3245 <= rhs_12_fu_1899_p3;
        rhs_13_reg_3251 <= rhs_13_fu_2095_p3;
        rhs_7_reg_3215 <= rhs_7_fu_885_p3;
        rhs_8_reg_3221 <= rhs_8_fu_1098_p3;
        rhs_9_reg_3227 <= rhs_9_fu_1294_p3;
        select_ln302_31_reg_3278 <= select_ln302_31_fu_2877_p3;
        select_ln302_33_reg_3283 <= select_ln302_33_fu_2977_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce_reg)) begin
        ap_return_0_int_reg <= p_Val2_82_fu_3122_p3;
        ap_return_1_int_reg <= select_ln302_31_reg_3278;
        ap_return_2_int_reg <= select_ln302_33_reg_3283;
        ap_return_3_int_reg <= select_ln302_35_fu_3180_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        p_read_int_reg <= p_read;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_0 = ap_return_0_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_0 = p_Val2_82_fu_3122_p3;
    end else begin
        ap_return_0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_1 = ap_return_1_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_1 = select_ln302_31_reg_3278;
    end else begin
        ap_return_1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_2 = ap_return_2_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_2 = select_ln302_33_reg_3283;
    end else begin
        ap_return_2 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_3 = ap_return_3_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_3 = select_ln302_35_fu_3180_p3;
    end else begin
        ap_return_3 = 'bx;
    end
end

assign Range1_all_ones_fu_2287_p2 = ((tmp_fu_2277_p4 == 2'd3) ? 1'b1 : 1'b0);

assign Range1_all_zeros_fu_2293_p2 = ((tmp_fu_2277_p4 == 2'd0) ? 1'b1 : 1'b0);

assign Range2_all_ones_17_fu_565_p3 = r_V_16_fu_487_p2[32'd26];

assign Range2_all_ones_18_fu_765_p3 = r_V_17_fu_129_p2[32'd26];

assign Range2_all_ones_19_fu_978_p3 = r_V_18_fu_124_p2[32'd27];

assign Range2_all_ones_20_fu_1174_p3 = r_V_19_fu_128_p2[32'd27];

assign Range2_all_ones_21_fu_1370_p3 = r_V_20_fu_125_p2[32'd27];

assign Range2_all_ones_22_fu_1583_p3 = r_V_fu_126_p2[32'd27];

assign Range2_all_ones_23_fu_1779_p3 = r_V_21_fu_131_p2[32'd27];

assign Range2_all_ones_24_fu_1975_p3 = r_V_22_fu_132_p2[32'd27];

assign Range2_all_ones_fu_2269_p3 = r_V_15_fu_127_p2[32'd30];

assign a_V_1_fu_893_p4 = {{p_read_int_reg[35:18]}};

assign a_V_2_fu_1498_p4 = {{p_read_int_reg[53:36]}};

assign a_V_fu_450_p1 = p_read_int_reg[17:0];

assign and_ln890_fu_2321_p2 = (xor_ln890_fu_2315_p2 & Range2_all_ones_fu_2269_p3);

assign and_ln891_10_fu_1226_p2 = (carry_23_fu_1168_p2 & Range2_all_ones_20_fu_1174_p3);

assign and_ln891_11_fu_1422_p2 = (carry_25_fu_1364_p2 & Range2_all_ones_21_fu_1370_p3);

assign and_ln891_12_fu_1635_p2 = (carry_27_fu_1577_p2 & Range2_all_ones_22_fu_1583_p3);

assign and_ln891_13_fu_1831_p2 = (carry_29_fu_1773_p2 & Range2_all_ones_23_fu_1779_p3);

assign and_ln891_14_fu_2027_p2 = (carry_31_fu_1969_p2 & Range2_all_ones_24_fu_1975_p3);

assign and_ln891_7_fu_617_p2 = (carry_17_fu_559_p2 & Range2_all_ones_17_fu_565_p3);

assign and_ln891_8_fu_817_p2 = (carry_19_fu_759_p2 & Range2_all_ones_18_fu_765_p3);

assign and_ln891_9_fu_1030_p2 = (carry_21_fu_972_p2 & Range2_all_ones_19_fu_978_p3);

assign and_ln891_fu_2335_p2 = (carry_15_fu_2263_p2 & Range1_all_ones_fu_2287_p2);

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign carry_15_fu_2263_p2 = (xor_ln896_fu_2257_p2 & p_Result_43_fu_2223_p3);

assign carry_17_fu_559_p2 = (xor_ln896_26_fu_553_p2 & p_Result_46_fu_515_p3);

assign carry_19_fu_759_p2 = (xor_ln896_28_fu_753_p2 & p_Result_49_fu_715_p3);

assign carry_21_fu_972_p2 = (xor_ln896_30_fu_966_p2 & p_Result_52_fu_932_p3);

assign carry_23_fu_1168_p2 = (xor_ln896_32_fu_1162_p2 & p_Result_55_fu_1128_p3);

assign carry_25_fu_1364_p2 = (xor_ln896_34_fu_1358_p2 & p_Result_58_fu_1324_p3);

assign carry_27_fu_1577_p2 = (xor_ln896_36_fu_1571_p2 & p_Result_61_fu_1537_p3);

assign carry_29_fu_1773_p2 = (xor_ln896_38_fu_1767_p2 & p_Result_64_fu_1733_p3);

assign carry_31_fu_1969_p2 = (xor_ln896_40_fu_1963_p2 & p_Result_67_fu_1929_p3);

assign deleted_ones_17_fu_611_p2 = (or_ln890_fu_605_p2 & Range2_all_ones_17_fu_565_p3);

assign deleted_ones_18_fu_811_p2 = (or_ln890_6_fu_805_p2 & Range2_all_ones_18_fu_765_p3);

assign deleted_ones_19_fu_1024_p2 = (or_ln890_7_fu_1018_p2 & Range2_all_ones_19_fu_978_p3);

assign deleted_ones_20_fu_1220_p2 = (or_ln890_8_fu_1214_p2 & Range2_all_ones_20_fu_1174_p3);

assign deleted_ones_21_fu_1416_p2 = (or_ln890_9_fu_1410_p2 & Range2_all_ones_21_fu_1370_p3);

assign deleted_ones_22_fu_1629_p2 = (or_ln890_10_fu_1623_p2 & Range2_all_ones_22_fu_1583_p3);

assign deleted_ones_23_fu_1825_p2 = (or_ln890_11_fu_1819_p2 & Range2_all_ones_23_fu_1779_p3);

assign deleted_ones_24_fu_2021_p2 = (or_ln890_12_fu_2015_p2 & Range2_all_ones_24_fu_1975_p3);

assign deleted_ones_fu_2327_p3 = ((carry_15_fu_2263_p2[0:0] == 1'b1) ? and_ln890_fu_2321_p2 : Range1_all_ones_fu_2287_p2);

assign deleted_zeros_10_fu_1194_p2 = (or_ln888_8_fu_1188_p2 ^ Range2_all_ones_20_fu_1174_p3);

assign deleted_zeros_11_fu_1390_p2 = (or_ln888_9_fu_1384_p2 ^ Range2_all_ones_21_fu_1370_p3);

assign deleted_zeros_12_fu_1603_p2 = (or_ln888_10_fu_1597_p2 ^ Range2_all_ones_22_fu_1583_p3);

assign deleted_zeros_13_fu_1799_p2 = (or_ln888_11_fu_1793_p2 ^ Range2_all_ones_23_fu_1779_p3);

assign deleted_zeros_14_fu_1995_p2 = (or_ln888_12_fu_1989_p2 ^ Range2_all_ones_24_fu_1975_p3);

assign deleted_zeros_7_fu_585_p2 = (or_ln888_fu_579_p2 ^ Range2_all_ones_17_fu_565_p3);

assign deleted_zeros_8_fu_785_p2 = (or_ln888_6_fu_779_p2 ^ Range2_all_ones_18_fu_765_p3);

assign deleted_zeros_9_fu_998_p2 = (or_ln888_7_fu_992_p2 ^ Range2_all_ones_19_fu_978_p3);

assign deleted_zeros_fu_2299_p3 = ((carry_15_fu_2263_p2[0:0] == 1'b1) ? Range1_all_ones_fu_2287_p2 : Range1_all_zeros_fu_2293_p2);

assign lhs_5_fu_2483_p3 = ((or_ln302_10_fu_2461_p2[0:0] == 1'b1) ? select_ln302_22_fu_2467_p3 : select_ln350_10_fu_2475_p3);

assign lhs_6_fu_2579_p3 = ((or_ln302_11_fu_2557_p2[0:0] == 1'b1) ? select_ln302_24_fu_2563_p3 : select_ln350_11_fu_2571_p3);

assign lhs_7_fu_2677_p3 = ((or_ln302_12_fu_2655_p2[0:0] == 1'b1) ? select_ln302_26_fu_2661_p3 : select_ln350_12_fu_2669_p3);

assign lhs_8_fu_2777_p3 = ((or_ln302_13_fu_2755_p2[0:0] == 1'b1) ? select_ln302_28_fu_2761_p3 : select_ln350_13_fu_2769_p3);

assign lhs_fu_2193_p3 = ((or_ln302_9_fu_2171_p2[0:0] == 1'b1) ? select_ln302_20_fu_2177_p3 : select_ln350_9_fu_2185_p3);

assign or_ln302_10_fu_2461_p2 = (xor_ln302_23_fu_2455_p2 | overflow_27_fu_2431_p2);

assign or_ln302_11_fu_2557_p2 = (xor_ln302_25_fu_2551_p2 | overflow_28_fu_2527_p2);

assign or_ln302_12_fu_2655_p2 = (xor_ln302_27_fu_2649_p2 | overflow_29_fu_2625_p2);

assign or_ln302_13_fu_2755_p2 = (xor_ln302_29_fu_2749_p2 | overflow_30_fu_2725_p2);

assign or_ln302_14_fu_2855_p2 = (xor_ln302_31_fu_2849_p2 | overflow_31_fu_2825_p2);

assign or_ln302_15_fu_2955_p2 = (xor_ln302_33_fu_2949_p2 | overflow_32_fu_2925_p2);

assign or_ln302_16_fu_3160_p2 = (xor_ln302_35_fu_3154_p2 | overflow_33_fu_3135_p2);

assign or_ln302_9_fu_2171_p2 = (xor_ln302_21_fu_2165_p2 | overflow_26_fu_2141_p2);

assign or_ln302_fu_3100_p2 = (xor_ln302_19_fu_3094_p2 | overflow_25_fu_3070_p2);

assign or_ln346_10_fu_1288_p2 = (underflow_20_fu_1274_p2 | overflow_20_fu_1250_p2);

assign or_ln346_11_fu_1484_p2 = (underflow_21_fu_1470_p2 | overflow_21_fu_1446_p2);

assign or_ln346_12_fu_1697_p2 = (underflow_22_fu_1683_p2 | overflow_22_fu_1659_p2);

assign or_ln346_13_fu_1893_p2 = (underflow_23_fu_1879_p2 | overflow_23_fu_1855_p2);

assign or_ln346_14_fu_2089_p2 = (underflow_24_fu_2075_p2 | overflow_24_fu_2051_p2);

assign or_ln346_7_fu_679_p2 = (underflow_17_fu_665_p2 | overflow_17_fu_641_p2);

assign or_ln346_8_fu_879_p2 = (underflow_18_fu_865_p2 | overflow_18_fu_841_p2);

assign or_ln346_9_fu_1092_p2 = (underflow_19_fu_1078_p2 | overflow_19_fu_1054_p2);

assign or_ln346_fu_2389_p2 = (underflow_fu_2383_p2 | overflow_fu_2359_p2);

assign or_ln888_10_fu_1597_p2 = (xor_ln888_22_fu_1591_p2 | p_Result_62_fu_1563_p3);

assign or_ln888_11_fu_1793_p2 = (xor_ln888_24_fu_1787_p2 | p_Result_65_fu_1759_p3);

assign or_ln888_12_fu_1989_p2 = (xor_ln888_26_fu_1983_p2 | p_Result_68_fu_1955_p3);

assign or_ln888_6_fu_779_p2 = (xor_ln888_14_fu_773_p2 | p_Result_50_fu_745_p3);

assign or_ln888_7_fu_992_p2 = (xor_ln888_16_fu_986_p2 | p_Result_53_fu_958_p3);

assign or_ln888_8_fu_1188_p2 = (xor_ln888_18_fu_1182_p2 | p_Result_56_fu_1154_p3);

assign or_ln888_9_fu_1384_p2 = (xor_ln888_20_fu_1378_p2 | p_Result_59_fu_1350_p3);

assign or_ln888_fu_579_p2 = (xor_ln888_fu_573_p2 | p_Result_47_fu_545_p3);

assign or_ln890_10_fu_1623_p2 = (xor_ln890_12_fu_1617_p2 | or_ln888_10_fu_1597_p2);

assign or_ln890_11_fu_1819_p2 = (xor_ln890_13_fu_1813_p2 | or_ln888_11_fu_1793_p2);

assign or_ln890_12_fu_2015_p2 = (xor_ln890_14_fu_2009_p2 | or_ln888_12_fu_1989_p2);

assign or_ln890_6_fu_805_p2 = (xor_ln890_8_fu_799_p2 | or_ln888_6_fu_779_p2);

assign or_ln890_7_fu_1018_p2 = (xor_ln890_9_fu_1012_p2 | or_ln888_7_fu_992_p2);

assign or_ln890_8_fu_1214_p2 = (xor_ln890_10_fu_1208_p2 | or_ln888_8_fu_1188_p2);

assign or_ln890_9_fu_1410_p2 = (xor_ln890_11_fu_1404_p2 | or_ln888_9_fu_1384_p2);

assign or_ln890_fu_605_p2 = (xor_ln890_7_fu_599_p2 | or_ln888_fu_579_p2);

assign or_ln895_10_fu_1238_p2 = (xor_ln895_32_fu_1232_p2 | p_Result_56_fu_1154_p3);

assign or_ln895_11_fu_1434_p2 = (xor_ln895_34_fu_1428_p2 | p_Result_59_fu_1350_p3);

assign or_ln895_12_fu_1647_p2 = (xor_ln895_36_fu_1641_p2 | p_Result_62_fu_1563_p3);

assign or_ln895_13_fu_1843_p2 = (xor_ln895_38_fu_1837_p2 | p_Result_65_fu_1759_p3);

assign or_ln895_14_fu_2039_p2 = (xor_ln895_40_fu_2033_p2 | p_Result_68_fu_1955_p3);

assign or_ln895_7_fu_629_p2 = (xor_ln895_26_fu_623_p2 | p_Result_47_fu_545_p3);

assign or_ln895_8_fu_829_p2 = (xor_ln895_28_fu_823_p2 | p_Result_50_fu_745_p3);

assign or_ln895_9_fu_1042_p2 = (xor_ln895_30_fu_1036_p2 | p_Result_53_fu_958_p3);

assign or_ln895_fu_2347_p2 = (xor_ln895_fu_2341_p2 | p_Result_44_fu_2249_p3);

assign or_ln896_10_fu_1262_p2 = (xor_ln896_33_fu_1256_p2 | xor_ln896_32_fu_1162_p2);

assign or_ln896_11_fu_1458_p2 = (xor_ln896_35_fu_1452_p2 | xor_ln896_34_fu_1358_p2);

assign or_ln896_12_fu_1671_p2 = (xor_ln896_37_fu_1665_p2 | xor_ln896_36_fu_1571_p2);

assign or_ln896_13_fu_1867_p2 = (xor_ln896_39_fu_1861_p2 | xor_ln896_38_fu_1767_p2);

assign or_ln896_14_fu_2063_p2 = (xor_ln896_41_fu_2057_p2 | xor_ln896_40_fu_1963_p2);

assign or_ln896_7_fu_653_p2 = (xor_ln896_27_fu_647_p2 | xor_ln896_26_fu_553_p2);

assign or_ln896_8_fu_853_p2 = (xor_ln896_29_fu_847_p2 | xor_ln896_28_fu_753_p2);

assign or_ln896_9_fu_1066_p2 = (xor_ln896_31_fu_1060_p2 | xor_ln896_30_fu_966_p2);

assign or_ln896_fu_2371_p2 = (xor_ln896_fu_2257_p2 | xor_ln896_25_fu_2365_p2);

assign overflow_17_fu_641_p2 = (xor_ln895_27_fu_635_p2 & or_ln895_7_fu_629_p2);

assign overflow_18_fu_841_p2 = (xor_ln895_29_fu_835_p2 & or_ln895_8_fu_829_p2);

assign overflow_19_fu_1054_p2 = (xor_ln895_31_fu_1048_p2 & or_ln895_9_fu_1042_p2);

assign overflow_20_fu_1250_p2 = (xor_ln895_33_fu_1244_p2 & or_ln895_10_fu_1238_p2);

assign overflow_21_fu_1446_p2 = (xor_ln895_35_fu_1440_p2 & or_ln895_11_fu_1434_p2);

assign overflow_22_fu_1659_p2 = (xor_ln895_37_fu_1653_p2 & or_ln895_12_fu_1647_p2);

assign overflow_23_fu_1855_p2 = (xor_ln895_39_fu_1849_p2 & or_ln895_13_fu_1843_p2);

assign overflow_24_fu_2051_p2 = (xor_ln895_41_fu_2045_p2 & or_ln895_14_fu_2039_p2);

assign overflow_25_fu_3070_p2 = (xor_ln895_42_fu_3064_p2 & p_Result_70_fu_3056_p3);

assign overflow_26_fu_2141_p2 = (xor_ln895_43_fu_2135_p2 & p_Result_72_fu_2127_p3);

assign overflow_27_fu_2431_p2 = (xor_ln895_44_fu_2425_p2 & p_Result_74_fu_2417_p3);

assign overflow_28_fu_2527_p2 = (xor_ln895_45_fu_2521_p2 & p_Result_76_fu_2513_p3);

assign overflow_29_fu_2625_p2 = (xor_ln895_46_fu_2619_p2 & p_Result_78_fu_2611_p3);

assign overflow_30_fu_2725_p2 = (xor_ln895_47_fu_2719_p2 & p_Result_80_fu_2711_p3);

assign overflow_31_fu_2825_p2 = (xor_ln895_48_fu_2819_p2 & p_Result_82_fu_2811_p3);

assign overflow_32_fu_2925_p2 = (xor_ln895_49_fu_2919_p2 & p_Result_84_fu_2911_p3);

assign overflow_33_fu_3135_p2 = (xor_ln895_50_fu_3130_p2 & p_Result_86_reg_3301);

assign overflow_fu_2359_p2 = (xor_ln895_25_fu_2353_p2 & or_ln895_fu_2347_p2);

assign p_Result_43_fu_2223_p3 = r_V_15_fu_127_p2[32'd28];

assign p_Result_44_fu_2249_p3 = p_Val2_51_fu_2243_p2[32'd17];

assign p_Result_45_fu_493_p3 = r_V_16_fu_487_p2[32'd26];

assign p_Result_46_fu_515_p3 = r_V_16_fu_487_p2[32'd26];

assign p_Result_47_fu_545_p3 = p_Val2_54_fu_535_p2[32'd16];

assign p_Result_48_fu_693_p3 = r_V_17_fu_129_p2[32'd26];

assign p_Result_49_fu_715_p3 = r_V_17_fu_129_p2[32'd26];

assign p_Result_50_fu_745_p3 = p_Val2_57_fu_735_p2[32'd16];

assign p_Result_51_fu_910_p3 = r_V_18_fu_124_p2[32'd27];

assign p_Result_52_fu_932_p3 = r_V_18_fu_124_p2[32'd27];

assign p_Result_53_fu_958_p3 = p_Val2_60_fu_952_p2[32'd17];

assign p_Result_54_fu_1106_p3 = r_V_19_fu_128_p2[32'd27];

assign p_Result_55_fu_1128_p3 = r_V_19_fu_128_p2[32'd27];

assign p_Result_56_fu_1154_p3 = p_Val2_63_fu_1148_p2[32'd17];

assign p_Result_57_fu_1302_p3 = r_V_20_fu_125_p2[32'd27];

assign p_Result_58_fu_1324_p3 = r_V_20_fu_125_p2[32'd27];

assign p_Result_59_fu_1350_p3 = p_Val2_66_fu_1344_p2[32'd17];

assign p_Result_60_fu_1515_p3 = r_V_fu_126_p2[32'd27];

assign p_Result_61_fu_1537_p3 = r_V_fu_126_p2[32'd27];

assign p_Result_62_fu_1563_p3 = p_Val2_69_fu_1557_p2[32'd17];

assign p_Result_63_fu_1711_p3 = r_V_21_fu_131_p2[32'd27];

assign p_Result_64_fu_1733_p3 = r_V_21_fu_131_p2[32'd27];

assign p_Result_65_fu_1759_p3 = p_Val2_72_fu_1753_p2[32'd17];

assign p_Result_66_fu_1907_p3 = r_V_22_fu_132_p2[32'd27];

assign p_Result_67_fu_1929_p3 = r_V_22_fu_132_p2[32'd27];

assign p_Result_68_fu_1955_p3 = p_Val2_75_fu_1949_p2[32'd17];

assign p_Result_69_fu_3042_p3 = ret_V_fu_3036_p2[32'd18];

assign p_Result_70_fu_3056_p3 = p_Val2_77_fu_3050_p2[32'd17];

assign p_Result_71_fu_2113_p3 = ret_V_9_fu_2107_p2[32'd18];

assign p_Result_72_fu_2127_p3 = p_Val2_79_fu_2121_p2[32'd17];

assign p_Result_73_fu_2404_p3 = ret_V_10_fu_2398_p2[32'd18];

assign p_Result_74_fu_2417_p3 = p_Val2_81_fu_2412_p2[32'd17];

assign p_Result_75_fu_2500_p3 = ret_V_11_fu_2494_p2[32'd18];

assign p_Result_76_fu_2513_p3 = p_Val2_84_fu_2508_p2[32'd17];

assign p_Result_77_fu_2599_p3 = ret_V_12_fu_2593_p2[32'd18];

assign p_Result_78_fu_2611_p3 = p_Val2_86_fu_2607_p2[32'd17];

assign p_Result_79_fu_2698_p3 = ret_V_13_fu_2692_p2[32'd18];

assign p_Result_80_fu_2711_p3 = p_Val2_88_fu_2706_p2[32'd17];

assign p_Result_81_fu_2798_p3 = ret_V_14_fu_2792_p2[32'd18];

assign p_Result_82_fu_2811_p3 = p_Val2_90_fu_2806_p2[32'd17];

assign p_Result_83_fu_2898_p3 = ret_V_15_fu_2892_p2[32'd18];

assign p_Result_84_fu_2911_p3 = p_Val2_92_fu_2906_p2[32'd17];

assign p_Result_s_fu_2205_p3 = r_V_15_fu_127_p2[32'd30];

assign p_Val2_50_fu_2213_p4 = {{r_V_15_fu_127_p2[28:11]}};

assign p_Val2_51_fu_2243_p2 = (zext_ln377_fu_2239_p1 + p_Val2_50_fu_2213_p4);

assign p_Val2_53_fu_501_p4 = {{r_V_16_fu_487_p2[26:11]}};

assign p_Val2_54_fu_535_p2 = ($signed(zext_ln377_7_fu_531_p1) + $signed(sext_ln823_fu_511_p1));

assign p_Val2_56_fu_701_p4 = {{r_V_17_fu_129_p2[26:11]}};

assign p_Val2_57_fu_735_p2 = ($signed(zext_ln377_8_fu_731_p1) + $signed(sext_ln823_1_fu_711_p1));

assign p_Val2_59_fu_918_p4 = {{r_V_18_fu_124_p2[27:11]}};

assign p_Val2_60_fu_952_p2 = ($signed(zext_ln377_9_fu_948_p1) + $signed(sext_ln818_fu_928_p1));

assign p_Val2_62_fu_1114_p4 = {{r_V_19_fu_128_p2[27:11]}};

assign p_Val2_63_fu_1148_p2 = ($signed(zext_ln377_10_fu_1144_p1) + $signed(sext_ln818_1_fu_1124_p1));

assign p_Val2_65_fu_1310_p4 = {{r_V_20_fu_125_p2[27:11]}};

assign p_Val2_66_fu_1344_p2 = ($signed(zext_ln377_11_fu_1340_p1) + $signed(sext_ln818_2_fu_1320_p1));

assign p_Val2_68_fu_1523_p4 = {{r_V_fu_126_p2[27:11]}};

assign p_Val2_69_fu_1557_p2 = ($signed(zext_ln377_12_fu_1553_p1) + $signed(sext_ln818_3_fu_1533_p1));

assign p_Val2_71_fu_1719_p4 = {{r_V_21_fu_131_p2[27:11]}};

assign p_Val2_72_fu_1753_p2 = ($signed(zext_ln377_13_fu_1749_p1) + $signed(sext_ln818_4_fu_1729_p1));

assign p_Val2_74_fu_1915_p4 = {{r_V_22_fu_132_p2[27:11]}};

assign p_Val2_75_fu_1949_p2 = ($signed(zext_ln377_14_fu_1945_p1) + $signed(sext_ln818_5_fu_1925_p1));

assign p_Val2_77_fu_3050_p2 = ($signed(rhs_fu_3026_p3) + $signed(18'd262033));

assign p_Val2_79_fu_2121_p2 = ($signed(rhs_6_fu_685_p3) + $signed(18'd262126));

assign p_Val2_81_fu_2412_p2 = ($signed(rhs_7_reg_3215) + $signed(18'd261933));

assign p_Val2_82_fu_3122_p3 = ((or_ln302_fu_3100_p2[0:0] == 1'b1) ? select_ln302_fu_3106_p3 : select_ln350_fu_3114_p3);

assign p_Val2_84_fu_2508_p2 = ($signed(rhs_8_reg_3221) + $signed(18'd704));

assign p_Val2_86_fu_2607_p2 = ($signed(rhs_9_reg_3227) + $signed(lhs_reg_3257));

assign p_Val2_88_fu_2706_p2 = ($signed(rhs_10_reg_3233) + $signed(lhs_5_fu_2483_p3));

assign p_Val2_90_fu_2806_p2 = ($signed(rhs_11_reg_3239) + $signed(lhs_6_fu_2579_p3));

assign p_Val2_92_fu_2906_p2 = ($signed(rhs_12_reg_3245) + $signed(lhs_7_fu_2677_p3));

assign p_Val2_94_fu_3006_p2 = ($signed(rhs_13_reg_3251) + $signed(lhs_8_fu_2777_p3));

assign r_V_15_fu_127_p1 = 31'd3151;

assign r_V_16_fu_487_p2 = ($signed(sext_ln1273_fu_471_p1) - $signed(sext_ln1273_1_fu_483_p1));

assign r_V_17_fu_129_p1 = 27'd226;

assign r_V_18_fu_124_p0 = sext_ln70_7_fu_903_p1;

assign r_V_18_fu_124_p1 = 28'd371;

assign r_V_19_fu_128_p0 = sext_ln70_7_fu_903_p1;

assign r_V_19_fu_128_p1 = 28'd268435133;

assign r_V_20_fu_125_p0 = sext_ln70_7_fu_903_p1;

assign r_V_20_fu_125_p1 = 28'd268435148;

assign r_V_21_fu_131_p0 = sext_ln70_8_fu_1508_p1;

assign r_V_21_fu_131_p1 = 28'd321;

assign r_V_22_fu_132_p0 = sext_ln70_8_fu_1508_p1;

assign r_V_22_fu_132_p1 = 28'd307;

assign r_V_fu_126_p0 = sext_ln70_8_fu_1508_p1;

assign r_V_fu_126_p1 = 28'd268435084;

assign ret_V_10_fu_2398_p2 = ($signed(sext_ln813_13_fu_2395_p1) + $signed(19'd524077));

assign ret_V_11_fu_2494_p2 = ($signed(sext_ln813_14_fu_2491_p1) + $signed(19'd704));

assign ret_V_12_fu_2593_p2 = ($signed(sext_ln813_16_fu_2590_p1) + $signed(sext_ln813_15_fu_2587_p1));

assign ret_V_13_fu_2692_p2 = ($signed(sext_ln813_18_fu_2689_p1) + $signed(sext_ln813_17_fu_2685_p1));

assign ret_V_14_fu_2792_p2 = ($signed(sext_ln813_20_fu_2789_p1) + $signed(sext_ln813_19_fu_2785_p1));

assign ret_V_15_fu_2892_p2 = ($signed(sext_ln813_22_fu_2889_p1) + $signed(sext_ln813_21_fu_2885_p1));

assign ret_V_16_fu_2992_p2 = ($signed(sext_ln813_24_fu_2989_p1) + $signed(sext_ln813_23_fu_2985_p1));

assign ret_V_9_fu_2107_p2 = ($signed(sext_ln813_12_fu_2103_p1) + $signed(19'd524270));

assign ret_V_fu_3036_p2 = ($signed(sext_ln813_fu_3032_p1) + $signed(19'd524177));

assign rhs_10_fu_1490_p3 = ((or_ln346_11_fu_1484_p2[0:0] == 1'b1) ? select_ln346_23_fu_1476_p3 : p_Val2_66_fu_1344_p2);

assign rhs_11_fu_1703_p3 = ((or_ln346_12_fu_1697_p2[0:0] == 1'b1) ? select_ln346_24_fu_1689_p3 : p_Val2_69_fu_1557_p2);

assign rhs_12_fu_1899_p3 = ((or_ln346_13_fu_1893_p2[0:0] == 1'b1) ? select_ln346_25_fu_1885_p3 : p_Val2_72_fu_1753_p2);

assign rhs_13_fu_2095_p3 = ((or_ln346_14_fu_2089_p2[0:0] == 1'b1) ? select_ln346_26_fu_2081_p3 : p_Val2_75_fu_1949_p2);

assign rhs_6_fu_685_p3 = ((or_ln346_7_fu_679_p2[0:0] == 1'b1) ? select_ln346_16_fu_671_p3 : sext_ln856_fu_541_p1);

assign rhs_7_fu_885_p3 = ((or_ln346_8_fu_879_p2[0:0] == 1'b1) ? select_ln346_18_fu_871_p3 : sext_ln856_1_fu_741_p1);

assign rhs_8_fu_1098_p3 = ((or_ln346_9_fu_1092_p2[0:0] == 1'b1) ? select_ln346_20_fu_1084_p3 : p_Val2_60_fu_952_p2);

assign rhs_9_fu_1294_p3 = ((or_ln346_10_fu_1288_p2[0:0] == 1'b1) ? select_ln346_22_fu_1280_p3 : p_Val2_63_fu_1148_p2);

assign rhs_fu_3026_p3 = ((or_ln346_reg_3273[0:0] == 1'b1) ? select_ln346_fu_3019_p3 : p_Val2_51_reg_3263);

assign select_ln302_20_fu_2177_p3 = ((xor_ln302_20_fu_2159_p2[0:0] == 1'b1) ? 18'd131071 : p_Val2_79_fu_2121_p2);

assign select_ln302_22_fu_2467_p3 = ((xor_ln302_22_fu_2449_p2[0:0] == 1'b1) ? 18'd131071 : p_Val2_81_fu_2412_p2);

assign select_ln302_24_fu_2563_p3 = ((xor_ln302_24_fu_2545_p2[0:0] == 1'b1) ? 18'd131071 : p_Val2_84_fu_2508_p2);

assign select_ln302_26_fu_2661_p3 = ((xor_ln302_26_fu_2643_p2[0:0] == 1'b1) ? 18'd131071 : p_Val2_86_fu_2607_p2);

assign select_ln302_28_fu_2761_p3 = ((xor_ln302_28_fu_2743_p2[0:0] == 1'b1) ? 18'd131071 : p_Val2_88_fu_2706_p2);

assign select_ln302_30_fu_2861_p3 = ((xor_ln302_30_fu_2843_p2[0:0] == 1'b1) ? 18'd131071 : p_Val2_90_fu_2806_p2);

assign select_ln302_31_fu_2877_p3 = ((or_ln302_14_fu_2855_p2[0:0] == 1'b1) ? select_ln302_30_fu_2861_p3 : select_ln350_14_fu_2869_p3);

assign select_ln302_32_fu_2961_p3 = ((xor_ln302_32_fu_2943_p2[0:0] == 1'b1) ? 18'd131071 : p_Val2_92_fu_2906_p2);

assign select_ln302_33_fu_2977_p3 = ((or_ln302_15_fu_2955_p2[0:0] == 1'b1) ? select_ln302_32_fu_2961_p3 : select_ln350_15_fu_2969_p3);

assign select_ln302_34_fu_3166_p3 = ((xor_ln302_34_fu_3150_p2[0:0] == 1'b1) ? 18'd131071 : p_Val2_94_reg_3295);

assign select_ln302_35_fu_3180_p3 = ((or_ln302_16_fu_3160_p2[0:0] == 1'b1) ? select_ln302_34_fu_3166_p3 : select_ln350_16_fu_3173_p3);

assign select_ln302_fu_3106_p3 = ((xor_ln302_fu_3088_p2[0:0] == 1'b1) ? 18'd131071 : p_Val2_77_fu_3050_p2);

assign select_ln346_16_fu_671_p3 = ((overflow_17_fu_641_p2[0:0] == 1'b1) ? 18'd131071 : 18'd131072);

assign select_ln346_18_fu_871_p3 = ((overflow_18_fu_841_p2[0:0] == 1'b1) ? 18'd131071 : 18'd131072);

assign select_ln346_20_fu_1084_p3 = ((overflow_19_fu_1054_p2[0:0] == 1'b1) ? 18'd131071 : 18'd131072);

assign select_ln346_22_fu_1280_p3 = ((overflow_20_fu_1250_p2[0:0] == 1'b1) ? 18'd131071 : 18'd131072);

assign select_ln346_23_fu_1476_p3 = ((overflow_21_fu_1446_p2[0:0] == 1'b1) ? 18'd131071 : 18'd131072);

assign select_ln346_24_fu_1689_p3 = ((overflow_22_fu_1659_p2[0:0] == 1'b1) ? 18'd131071 : 18'd131072);

assign select_ln346_25_fu_1885_p3 = ((overflow_23_fu_1855_p2[0:0] == 1'b1) ? 18'd131071 : 18'd131072);

assign select_ln346_26_fu_2081_p3 = ((overflow_24_fu_2051_p2[0:0] == 1'b1) ? 18'd131071 : 18'd131072);

assign select_ln346_fu_3019_p3 = ((overflow_reg_3268[0:0] == 1'b1) ? 18'd131071 : 18'd131072);

assign select_ln350_10_fu_2475_p3 = ((underflow_27_fu_2443_p2[0:0] == 1'b1) ? 18'd131072 : p_Val2_81_fu_2412_p2);

assign select_ln350_11_fu_2571_p3 = ((underflow_28_fu_2539_p2[0:0] == 1'b1) ? 18'd131072 : p_Val2_84_fu_2508_p2);

assign select_ln350_12_fu_2669_p3 = ((underflow_29_fu_2637_p2[0:0] == 1'b1) ? 18'd131072 : p_Val2_86_fu_2607_p2);

assign select_ln350_13_fu_2769_p3 = ((underflow_30_fu_2737_p2[0:0] == 1'b1) ? 18'd131072 : p_Val2_88_fu_2706_p2);

assign select_ln350_14_fu_2869_p3 = ((underflow_31_fu_2837_p2[0:0] == 1'b1) ? 18'd131072 : p_Val2_90_fu_2806_p2);

assign select_ln350_15_fu_2969_p3 = ((underflow_32_fu_2937_p2[0:0] == 1'b1) ? 18'd131072 : p_Val2_92_fu_2906_p2);

assign select_ln350_16_fu_3173_p3 = ((underflow_33_fu_3145_p2[0:0] == 1'b1) ? 18'd131072 : p_Val2_94_reg_3295);

assign select_ln350_9_fu_2185_p3 = ((underflow_26_fu_2153_p2[0:0] == 1'b1) ? 18'd131072 : p_Val2_79_fu_2121_p2);

assign select_ln350_fu_3114_p3 = ((underflow_25_fu_3082_p2[0:0] == 1'b1) ? 18'd131072 : p_Val2_77_fu_3050_p2);

assign sext_ln1273_1_fu_483_p1 = $signed(shl_ln1273_1_fu_475_p3);

assign sext_ln1273_fu_471_p1 = $signed(shl_ln_fu_463_p3);

assign sext_ln70_7_fu_903_p1 = $signed(a_V_1_fu_893_p4);

assign sext_ln70_8_fu_1508_p1 = $signed(a_V_2_fu_1498_p4);

assign sext_ln813_12_fu_2103_p1 = rhs_6_fu_685_p3;

assign sext_ln813_13_fu_2395_p1 = rhs_7_reg_3215;

assign sext_ln813_14_fu_2491_p1 = rhs_8_reg_3221;

assign sext_ln813_15_fu_2587_p1 = lhs_reg_3257;

assign sext_ln813_16_fu_2590_p1 = rhs_9_reg_3227;

assign sext_ln813_17_fu_2685_p1 = lhs_5_fu_2483_p3;

assign sext_ln813_18_fu_2689_p1 = rhs_10_reg_3233;

assign sext_ln813_19_fu_2785_p1 = lhs_6_fu_2579_p3;

assign sext_ln813_20_fu_2789_p1 = rhs_11_reg_3239;

assign sext_ln813_21_fu_2885_p1 = lhs_7_fu_2677_p3;

assign sext_ln813_22_fu_2889_p1 = rhs_12_reg_3245;

assign sext_ln813_23_fu_2985_p1 = lhs_8_fu_2777_p3;

assign sext_ln813_24_fu_2989_p1 = rhs_13_reg_3251;

assign sext_ln813_fu_3032_p1 = rhs_fu_3026_p3;

assign sext_ln818_1_fu_1124_p1 = $signed(p_Val2_62_fu_1114_p4);

assign sext_ln818_2_fu_1320_p1 = $signed(p_Val2_65_fu_1310_p4);

assign sext_ln818_3_fu_1533_p1 = $signed(p_Val2_68_fu_1523_p4);

assign sext_ln818_4_fu_1729_p1 = $signed(p_Val2_71_fu_1719_p4);

assign sext_ln818_5_fu_1925_p1 = $signed(p_Val2_74_fu_1915_p4);

assign sext_ln818_fu_928_p1 = $signed(p_Val2_59_fu_918_p4);

assign sext_ln823_1_fu_711_p1 = $signed(p_Val2_56_fu_701_p4);

assign sext_ln823_fu_511_p1 = $signed(p_Val2_53_fu_501_p4);

assign sext_ln856_1_fu_741_p1 = p_Val2_57_fu_735_p2;

assign sext_ln856_fu_541_p1 = p_Val2_54_fu_535_p2;

assign shl_ln1273_1_fu_475_p3 = {{trunc_ln1273_fu_459_p1}, {1'd0}};

assign shl_ln_fu_463_p3 = {{trunc_ln1273_fu_459_p1}, {8'd0}};

assign tmp_101_fu_1396_p3 = r_V_20_fu_125_p2[32'd27];

assign tmp_104_fu_1545_p3 = r_V_fu_126_p2[32'd10];

assign tmp_107_fu_1609_p3 = r_V_fu_126_p2[32'd27];

assign tmp_110_fu_1741_p3 = r_V_21_fu_131_p2[32'd10];

assign tmp_113_fu_1805_p3 = r_V_21_fu_131_p2[32'd27];

assign tmp_116_fu_1937_p3 = r_V_22_fu_132_p2[32'd10];

assign tmp_119_fu_2001_p3 = r_V_22_fu_132_p2[32'd27];

assign tmp_68_fu_2231_p3 = r_V_15_fu_127_p2[32'd10];

assign tmp_71_fu_2307_p3 = r_V_15_fu_127_p2[32'd29];

assign tmp_74_fu_523_p3 = r_V_16_fu_487_p2[32'd10];

assign tmp_77_fu_591_p3 = r_V_16_fu_487_p2[32'd26];

assign tmp_80_fu_723_p3 = r_V_17_fu_129_p2[32'd10];

assign tmp_83_fu_791_p3 = r_V_17_fu_129_p2[32'd26];

assign tmp_86_fu_940_p3 = r_V_18_fu_124_p2[32'd10];

assign tmp_89_fu_1004_p3 = r_V_18_fu_124_p2[32'd27];

assign tmp_92_fu_1136_p3 = r_V_19_fu_128_p2[32'd10];

assign tmp_95_fu_1200_p3 = r_V_19_fu_128_p2[32'd27];

assign tmp_98_fu_1332_p3 = r_V_20_fu_125_p2[32'd10];

assign tmp_fu_2277_p4 = {{r_V_15_fu_127_p2[30:29]}};

assign trunc_ln1273_fu_459_p1 = p_read_int_reg[17:0];

assign underflow_17_fu_665_p2 = (xor_ln896_52_fu_659_p2 & p_Result_45_fu_493_p3);

assign underflow_18_fu_865_p2 = (xor_ln896_53_fu_859_p2 & p_Result_48_fu_693_p3);

assign underflow_19_fu_1078_p2 = (xor_ln896_54_fu_1072_p2 & p_Result_51_fu_910_p3);

assign underflow_20_fu_1274_p2 = (xor_ln896_55_fu_1268_p2 & p_Result_54_fu_1106_p3);

assign underflow_21_fu_1470_p2 = (xor_ln896_56_fu_1464_p2 & p_Result_57_fu_1302_p3);

assign underflow_22_fu_1683_p2 = (xor_ln896_57_fu_1677_p2 & p_Result_60_fu_1515_p3);

assign underflow_23_fu_1879_p2 = (xor_ln896_58_fu_1873_p2 & p_Result_63_fu_1711_p3);

assign underflow_24_fu_2075_p2 = (xor_ln896_59_fu_2069_p2 & p_Result_66_fu_1907_p3);

assign underflow_25_fu_3082_p2 = (xor_ln896_42_fu_3076_p2 & p_Result_69_fu_3042_p3);

assign underflow_26_fu_2153_p2 = (xor_ln896_43_fu_2147_p2 & p_Result_71_fu_2113_p3);

assign underflow_27_fu_2443_p2 = (xor_ln896_44_fu_2437_p2 & p_Result_73_fu_2404_p3);

assign underflow_28_fu_2539_p2 = (xor_ln896_45_fu_2533_p2 & p_Result_75_fu_2500_p3);

assign underflow_29_fu_2637_p2 = (xor_ln896_46_fu_2631_p2 & p_Result_77_fu_2599_p3);

assign underflow_30_fu_2737_p2 = (xor_ln896_47_fu_2731_p2 & p_Result_79_fu_2698_p3);

assign underflow_31_fu_2837_p2 = (xor_ln896_48_fu_2831_p2 & p_Result_81_fu_2798_p3);

assign underflow_32_fu_2937_p2 = (xor_ln896_49_fu_2931_p2 & p_Result_83_fu_2898_p3);

assign underflow_33_fu_3145_p2 = (xor_ln896_50_fu_3140_p2 & p_Result_85_reg_3288);

assign underflow_fu_2383_p2 = (xor_ln896_51_fu_2377_p2 & p_Result_s_fu_2205_p3);

assign xor_ln302_19_fu_3094_p2 = (xor_ln302_fu_3088_p2 ^ 1'd1);

assign xor_ln302_20_fu_2159_p2 = (p_Result_72_fu_2127_p3 ^ p_Result_71_fu_2113_p3);

assign xor_ln302_21_fu_2165_p2 = (xor_ln302_20_fu_2159_p2 ^ 1'd1);

assign xor_ln302_22_fu_2449_p2 = (p_Result_74_fu_2417_p3 ^ p_Result_73_fu_2404_p3);

assign xor_ln302_23_fu_2455_p2 = (xor_ln302_22_fu_2449_p2 ^ 1'd1);

assign xor_ln302_24_fu_2545_p2 = (p_Result_76_fu_2513_p3 ^ p_Result_75_fu_2500_p3);

assign xor_ln302_25_fu_2551_p2 = (xor_ln302_24_fu_2545_p2 ^ 1'd1);

assign xor_ln302_26_fu_2643_p2 = (p_Result_78_fu_2611_p3 ^ p_Result_77_fu_2599_p3);

assign xor_ln302_27_fu_2649_p2 = (xor_ln302_26_fu_2643_p2 ^ 1'd1);

assign xor_ln302_28_fu_2743_p2 = (p_Result_80_fu_2711_p3 ^ p_Result_79_fu_2698_p3);

assign xor_ln302_29_fu_2749_p2 = (xor_ln302_28_fu_2743_p2 ^ 1'd1);

assign xor_ln302_30_fu_2843_p2 = (p_Result_82_fu_2811_p3 ^ p_Result_81_fu_2798_p3);

assign xor_ln302_31_fu_2849_p2 = (xor_ln302_30_fu_2843_p2 ^ 1'd1);

assign xor_ln302_32_fu_2943_p2 = (p_Result_84_fu_2911_p3 ^ p_Result_83_fu_2898_p3);

assign xor_ln302_33_fu_2949_p2 = (xor_ln302_32_fu_2943_p2 ^ 1'd1);

assign xor_ln302_34_fu_3150_p2 = (p_Result_86_reg_3301 ^ p_Result_85_reg_3288);

assign xor_ln302_35_fu_3154_p2 = (xor_ln302_34_fu_3150_p2 ^ 1'd1);

assign xor_ln302_fu_3088_p2 = (p_Result_70_fu_3056_p3 ^ p_Result_69_fu_3042_p3);

assign xor_ln888_14_fu_773_p2 = (p_Result_49_fu_715_p3 ^ 1'd1);

assign xor_ln888_16_fu_986_p2 = (p_Result_52_fu_932_p3 ^ 1'd1);

assign xor_ln888_18_fu_1182_p2 = (p_Result_55_fu_1128_p3 ^ 1'd1);

assign xor_ln888_20_fu_1378_p2 = (p_Result_58_fu_1324_p3 ^ 1'd1);

assign xor_ln888_22_fu_1591_p2 = (p_Result_61_fu_1537_p3 ^ 1'd1);

assign xor_ln888_24_fu_1787_p2 = (p_Result_64_fu_1733_p3 ^ 1'd1);

assign xor_ln888_26_fu_1983_p2 = (p_Result_67_fu_1929_p3 ^ 1'd1);

assign xor_ln888_fu_573_p2 = (p_Result_46_fu_515_p3 ^ 1'd1);

assign xor_ln890_10_fu_1208_p2 = (tmp_95_fu_1200_p3 ^ 1'd1);

assign xor_ln890_11_fu_1404_p2 = (tmp_101_fu_1396_p3 ^ 1'd1);

assign xor_ln890_12_fu_1617_p2 = (tmp_107_fu_1609_p3 ^ 1'd1);

assign xor_ln890_13_fu_1813_p2 = (tmp_113_fu_1805_p3 ^ 1'd1);

assign xor_ln890_14_fu_2009_p2 = (tmp_119_fu_2001_p3 ^ 1'd1);

assign xor_ln890_7_fu_599_p2 = (tmp_77_fu_591_p3 ^ 1'd1);

assign xor_ln890_8_fu_799_p2 = (tmp_83_fu_791_p3 ^ 1'd1);

assign xor_ln890_9_fu_1012_p2 = (tmp_89_fu_1004_p3 ^ 1'd1);

assign xor_ln890_fu_2315_p2 = (tmp_71_fu_2307_p3 ^ 1'd1);

assign xor_ln895_25_fu_2353_p2 = (p_Result_s_fu_2205_p3 ^ 1'd1);

assign xor_ln895_26_fu_623_p2 = (deleted_zeros_7_fu_585_p2 ^ 1'd1);

assign xor_ln895_27_fu_635_p2 = (p_Result_45_fu_493_p3 ^ 1'd1);

assign xor_ln895_28_fu_823_p2 = (deleted_zeros_8_fu_785_p2 ^ 1'd1);

assign xor_ln895_29_fu_835_p2 = (p_Result_48_fu_693_p3 ^ 1'd1);

assign xor_ln895_30_fu_1036_p2 = (deleted_zeros_9_fu_998_p2 ^ 1'd1);

assign xor_ln895_31_fu_1048_p2 = (p_Result_51_fu_910_p3 ^ 1'd1);

assign xor_ln895_32_fu_1232_p2 = (deleted_zeros_10_fu_1194_p2 ^ 1'd1);

assign xor_ln895_33_fu_1244_p2 = (p_Result_54_fu_1106_p3 ^ 1'd1);

assign xor_ln895_34_fu_1428_p2 = (deleted_zeros_11_fu_1390_p2 ^ 1'd1);

assign xor_ln895_35_fu_1440_p2 = (p_Result_57_fu_1302_p3 ^ 1'd1);

assign xor_ln895_36_fu_1641_p2 = (deleted_zeros_12_fu_1603_p2 ^ 1'd1);

assign xor_ln895_37_fu_1653_p2 = (p_Result_60_fu_1515_p3 ^ 1'd1);

assign xor_ln895_38_fu_1837_p2 = (deleted_zeros_13_fu_1799_p2 ^ 1'd1);

assign xor_ln895_39_fu_1849_p2 = (p_Result_63_fu_1711_p3 ^ 1'd1);

assign xor_ln895_40_fu_2033_p2 = (deleted_zeros_14_fu_1995_p2 ^ 1'd1);

assign xor_ln895_41_fu_2045_p2 = (p_Result_66_fu_1907_p3 ^ 1'd1);

assign xor_ln895_42_fu_3064_p2 = (p_Result_69_fu_3042_p3 ^ 1'd1);

assign xor_ln895_43_fu_2135_p2 = (p_Result_71_fu_2113_p3 ^ 1'd1);

assign xor_ln895_44_fu_2425_p2 = (p_Result_73_fu_2404_p3 ^ 1'd1);

assign xor_ln895_45_fu_2521_p2 = (p_Result_75_fu_2500_p3 ^ 1'd1);

assign xor_ln895_46_fu_2619_p2 = (p_Result_77_fu_2599_p3 ^ 1'd1);

assign xor_ln895_47_fu_2719_p2 = (p_Result_79_fu_2698_p3 ^ 1'd1);

assign xor_ln895_48_fu_2819_p2 = (p_Result_81_fu_2798_p3 ^ 1'd1);

assign xor_ln895_49_fu_2919_p2 = (p_Result_83_fu_2898_p3 ^ 1'd1);

assign xor_ln895_50_fu_3130_p2 = (p_Result_85_reg_3288 ^ 1'd1);

assign xor_ln895_fu_2341_p2 = (deleted_zeros_fu_2299_p3 ^ 1'd1);

assign xor_ln896_25_fu_2365_p2 = (deleted_ones_fu_2327_p3 ^ 1'd1);

assign xor_ln896_26_fu_553_p2 = (p_Result_47_fu_545_p3 ^ 1'd1);

assign xor_ln896_27_fu_647_p2 = (deleted_ones_17_fu_611_p2 ^ 1'd1);

assign xor_ln896_28_fu_753_p2 = (p_Result_50_fu_745_p3 ^ 1'd1);

assign xor_ln896_29_fu_847_p2 = (deleted_ones_18_fu_811_p2 ^ 1'd1);

assign xor_ln896_30_fu_966_p2 = (p_Result_53_fu_958_p3 ^ 1'd1);

assign xor_ln896_31_fu_1060_p2 = (deleted_ones_19_fu_1024_p2 ^ 1'd1);

assign xor_ln896_32_fu_1162_p2 = (p_Result_56_fu_1154_p3 ^ 1'd1);

assign xor_ln896_33_fu_1256_p2 = (deleted_ones_20_fu_1220_p2 ^ 1'd1);

assign xor_ln896_34_fu_1358_p2 = (p_Result_59_fu_1350_p3 ^ 1'd1);

assign xor_ln896_35_fu_1452_p2 = (deleted_ones_21_fu_1416_p2 ^ 1'd1);

assign xor_ln896_36_fu_1571_p2 = (p_Result_62_fu_1563_p3 ^ 1'd1);

assign xor_ln896_37_fu_1665_p2 = (deleted_ones_22_fu_1629_p2 ^ 1'd1);

assign xor_ln896_38_fu_1767_p2 = (p_Result_65_fu_1759_p3 ^ 1'd1);

assign xor_ln896_39_fu_1861_p2 = (deleted_ones_23_fu_1825_p2 ^ 1'd1);

assign xor_ln896_40_fu_1963_p2 = (p_Result_68_fu_1955_p3 ^ 1'd1);

assign xor_ln896_41_fu_2057_p2 = (deleted_ones_24_fu_2021_p2 ^ 1'd1);

assign xor_ln896_42_fu_3076_p2 = (p_Result_70_fu_3056_p3 ^ 1'd1);

assign xor_ln896_43_fu_2147_p2 = (p_Result_72_fu_2127_p3 ^ 1'd1);

assign xor_ln896_44_fu_2437_p2 = (p_Result_74_fu_2417_p3 ^ 1'd1);

assign xor_ln896_45_fu_2533_p2 = (p_Result_76_fu_2513_p3 ^ 1'd1);

assign xor_ln896_46_fu_2631_p2 = (p_Result_78_fu_2611_p3 ^ 1'd1);

assign xor_ln896_47_fu_2731_p2 = (p_Result_80_fu_2711_p3 ^ 1'd1);

assign xor_ln896_48_fu_2831_p2 = (p_Result_82_fu_2811_p3 ^ 1'd1);

assign xor_ln896_49_fu_2931_p2 = (p_Result_84_fu_2911_p3 ^ 1'd1);

assign xor_ln896_50_fu_3140_p2 = (p_Result_86_reg_3301 ^ 1'd1);

assign xor_ln896_51_fu_2377_p2 = (or_ln896_fu_2371_p2 ^ and_ln891_fu_2335_p2);

assign xor_ln896_52_fu_659_p2 = (or_ln896_7_fu_653_p2 ^ and_ln891_7_fu_617_p2);

assign xor_ln896_53_fu_859_p2 = (or_ln896_8_fu_853_p2 ^ and_ln891_8_fu_817_p2);

assign xor_ln896_54_fu_1072_p2 = (or_ln896_9_fu_1066_p2 ^ and_ln891_9_fu_1030_p2);

assign xor_ln896_55_fu_1268_p2 = (or_ln896_10_fu_1262_p2 ^ and_ln891_10_fu_1226_p2);

assign xor_ln896_56_fu_1464_p2 = (or_ln896_11_fu_1458_p2 ^ and_ln891_11_fu_1422_p2);

assign xor_ln896_57_fu_1677_p2 = (or_ln896_12_fu_1671_p2 ^ and_ln891_12_fu_1635_p2);

assign xor_ln896_58_fu_1873_p2 = (or_ln896_13_fu_1867_p2 ^ and_ln891_13_fu_1831_p2);

assign xor_ln896_59_fu_2069_p2 = (or_ln896_14_fu_2063_p2 ^ and_ln891_14_fu_2027_p2);

assign xor_ln896_fu_2257_p2 = (p_Result_44_fu_2249_p3 ^ 1'd1);

assign zext_ln377_10_fu_1144_p1 = tmp_92_fu_1136_p3;

assign zext_ln377_11_fu_1340_p1 = tmp_98_fu_1332_p3;

assign zext_ln377_12_fu_1553_p1 = tmp_104_fu_1545_p3;

assign zext_ln377_13_fu_1749_p1 = tmp_110_fu_1741_p3;

assign zext_ln377_14_fu_1945_p1 = tmp_116_fu_1937_p3;

assign zext_ln377_7_fu_531_p1 = tmp_74_fu_523_p3;

assign zext_ln377_8_fu_731_p1 = tmp_80_fu_723_p3;

assign zext_ln377_9_fu_948_p1 = tmp_86_fu_940_p3;

assign zext_ln377_fu_2239_p1 = tmp_68_fu_2231_p3;

endmodule //motor_dense_latency_ap_fixed_18_7_0_0_0_ap_fixed_18_7_0_0_0_config2_s
