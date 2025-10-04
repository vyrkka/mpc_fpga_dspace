module motor_dense_latency_ap_fixed_21_7_0_0_0_ap_fixed_21_7_0_0_0_config2_s (
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
input  [62:0] p_read;
output  [20:0] ap_return_0;
output  [20:0] ap_return_1;
output  [20:0] ap_return_2;
output  [20:0] ap_return_3;
input   ap_ce;

reg[20:0] ap_return_0;
reg[20:0] ap_return_1;
reg[20:0] ap_return_2;
reg[20:0] ap_return_3;

wire  signed [20:0] a_V_fu_435_p1;
reg  signed [20:0] a_V_reg_3153;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
wire  signed [19:0] p_Val2_66_fu_487_p2;
reg  signed [19:0] p_Val2_66_reg_3158;
wire   [0:0] overflow_21_fu_589_p2;
reg   [0:0] overflow_21_reg_3163;
wire   [0:0] or_ln346_10_fu_619_p2;
reg   [0:0] or_ln346_10_reg_3168;
wire  signed [19:0] p_Val2_69_fu_667_p2;
reg  signed [19:0] p_Val2_69_reg_3173;
wire   [0:0] overflow_22_fu_769_p2;
reg   [0:0] overflow_22_reg_3178;
wire   [0:0] or_ln346_11_fu_799_p2;
reg   [0:0] or_ln346_11_reg_3183;
wire   [20:0] p_Val2_72_fu_864_p2;
reg   [20:0] p_Val2_72_reg_3188;
wire   [0:0] overflow_23_fu_966_p2;
reg   [0:0] overflow_23_reg_3193;
wire   [0:0] or_ln346_12_fu_996_p2;
reg   [0:0] or_ln346_12_reg_3198;
wire   [20:0] p_Val2_75_fu_1044_p2;
reg   [20:0] p_Val2_75_reg_3203;
wire   [0:0] overflow_24_fu_1146_p2;
reg   [0:0] overflow_24_reg_3208;
wire   [0:0] or_ln346_13_fu_1176_p2;
reg   [0:0] or_ln346_13_reg_3213;
wire   [20:0] p_Val2_78_fu_1224_p2;
reg   [20:0] p_Val2_78_reg_3218;
wire   [0:0] overflow_25_fu_1326_p2;
reg   [0:0] overflow_25_reg_3223;
wire   [0:0] or_ln346_14_fu_1356_p2;
reg   [0:0] or_ln346_14_reg_3228;
reg   [20:0] a_V_2_reg_3233;
wire   [0:0] p_Result_s_fu_1376_p3;
reg   [0:0] p_Result_s_reg_3238;
wire   [20:0] p_Val2_63_fu_1414_p2;
reg   [20:0] p_Val2_63_reg_3243;
wire   [0:0] carry_21_fu_1434_p2;
reg   [0:0] carry_21_reg_3248;
wire   [0:0] Range1_all_ones_fu_1458_p2;
reg   [0:0] Range1_all_ones_reg_3253;
wire   [0:0] overflow_fu_1524_p2;
reg   [0:0] overflow_reg_3258;
wire   [0:0] or_ln896_fu_1536_p2;
reg   [0:0] or_ln896_reg_3264;
wire  signed [20:0] rhs_11_fu_1583_p3;
reg  signed [20:0] rhs_11_reg_3269;
wire   [20:0] p_Val2_81_fu_1663_p2;
reg   [20:0] p_Val2_81_reg_3275;
wire   [0:0] overflow_26_fu_1765_p2;
reg   [0:0] overflow_26_reg_3280;
wire   [0:0] or_ln346_15_fu_1795_p2;
reg   [0:0] or_ln346_15_reg_3285;
wire   [20:0] p_Val2_84_fu_1843_p2;
reg   [20:0] p_Val2_84_reg_3290;
wire   [0:0] overflow_27_fu_1945_p2;
reg   [0:0] overflow_27_reg_3295;
wire   [0:0] or_ln346_16_fu_1975_p2;
reg   [0:0] or_ln346_16_reg_3300;
wire   [20:0] p_Val2_87_fu_2023_p2;
reg   [20:0] p_Val2_87_reg_3305;
wire   [0:0] overflow_28_fu_2125_p2;
reg   [0:0] overflow_28_reg_3310;
wire   [0:0] or_ln346_17_fu_2155_p2;
reg   [0:0] or_ln346_17_reg_3315;
wire  signed [20:0] lhs_7_fu_2451_p3;
reg  signed [20:0] lhs_7_reg_3320;
wire  signed [20:0] lhs_8_fu_2553_p3;
reg  signed [20:0] lhs_8_reg_3326;
wire  signed [20:0] r_V_24_fu_118_p0;
wire  signed [33:0] sext_ln70_9_fu_1615_p1;
wire   [12:0] r_V_24_fu_118_p1;
wire    ap_block_pp0_stage0;
wire   [15:0] r_V_18_fu_119_p1;
wire  signed [20:0] r_V_19_fu_120_p0;
wire  signed [32:0] sext_ln70_fu_439_p1;
wire   [11:0] r_V_19_fu_120_p1;
wire  signed [20:0] r_V_22_fu_121_p0;
wire  signed [33:0] sext_ln70_8_fu_815_p1;
wire  signed [12:0] r_V_22_fu_121_p1;
wire  signed [20:0] r_V_25_fu_122_p0;
wire   [12:0] r_V_25_fu_122_p1;
wire  signed [20:0] r_V_fu_123_p0;
wire  signed [12:0] r_V_fu_123_p1;
wire  signed [20:0] r_V_21_fu_124_p0;
wire   [12:0] r_V_21_fu_124_p1;
wire  signed [20:0] r_V_23_fu_125_p0;
wire  signed [12:0] r_V_23_fu_125_p1;
wire  signed [20:0] r_V_20_fu_126_p0;
wire   [11:0] r_V_20_fu_126_p1;
wire   [32:0] r_V_19_fu_120_p2;
wire   [18:0] p_Val2_65_fu_453_p4;
wire   [0:0] tmp_94_fu_475_p3;
wire   [19:0] zext_ln377_10_fu_483_p1;
wire  signed [19:0] sext_ln823_fu_463_p1;
wire   [0:0] p_Result_58_fu_493_p3;
wire   [0:0] p_Result_57_fu_467_p3;
wire   [0:0] xor_ln896_33_fu_501_p2;
wire   [0:0] xor_ln888_fu_521_p2;
wire   [0:0] Range2_all_ones_22_fu_513_p3;
wire   [0:0] or_ln888_fu_527_p2;
wire   [0:0] tmp_97_fu_539_p3;
wire   [0:0] xor_ln890_10_fu_547_p2;
wire   [0:0] or_ln890_fu_553_p2;
wire   [0:0] carry_23_fu_507_p2;
wire   [0:0] deleted_zeros_10_fu_533_p2;
wire   [0:0] xor_ln895_33_fu_571_p2;
wire   [0:0] p_Result_56_fu_445_p3;
wire   [0:0] or_ln895_10_fu_577_p2;
wire   [0:0] xor_ln895_34_fu_583_p2;
wire   [0:0] deleted_ones_21_fu_559_p2;
wire   [0:0] xor_ln896_34_fu_595_p2;
wire   [0:0] and_ln891_10_fu_565_p2;
wire   [0:0] or_ln896_10_fu_601_p2;
wire   [0:0] xor_ln896_59_fu_607_p2;
wire   [0:0] underflow_21_fu_613_p2;
wire   [32:0] r_V_20_fu_126_p2;
wire   [18:0] p_Val2_68_fu_633_p4;
wire   [0:0] tmp_100_fu_655_p3;
wire   [19:0] zext_ln377_11_fu_663_p1;
wire  signed [19:0] sext_ln823_2_fu_643_p1;
wire   [0:0] p_Result_61_fu_673_p3;
wire   [0:0] p_Result_60_fu_647_p3;
wire   [0:0] xor_ln896_35_fu_681_p2;
wire   [0:0] xor_ln888_20_fu_701_p2;
wire   [0:0] Range2_all_ones_23_fu_693_p3;
wire   [0:0] or_ln888_9_fu_707_p2;
wire   [0:0] tmp_103_fu_719_p3;
wire   [0:0] xor_ln890_11_fu_727_p2;
wire   [0:0] or_ln890_9_fu_733_p2;
wire   [0:0] carry_25_fu_687_p2;
wire   [0:0] deleted_zeros_11_fu_713_p2;
wire   [0:0] xor_ln895_35_fu_751_p2;
wire   [0:0] p_Result_59_fu_625_p3;
wire   [0:0] or_ln895_11_fu_757_p2;
wire   [0:0] xor_ln895_36_fu_763_p2;
wire   [0:0] deleted_ones_22_fu_739_p2;
wire   [0:0] xor_ln896_36_fu_775_p2;
wire   [0:0] and_ln891_11_fu_745_p2;
wire   [0:0] or_ln896_11_fu_781_p2;
wire   [0:0] xor_ln896_60_fu_787_p2;
wire   [0:0] underflow_22_fu_793_p2;
wire   [20:0] a_V_1_fu_805_p4;
wire   [33:0] r_V_21_fu_124_p2;
wire   [19:0] p_Val2_71_fu_830_p4;
wire   [0:0] tmp_106_fu_852_p3;
wire   [20:0] zext_ln377_12_fu_860_p1;
wire  signed [20:0] sext_ln818_fu_840_p1;
wire   [0:0] p_Result_64_fu_870_p3;
wire   [0:0] p_Result_63_fu_844_p3;
wire   [0:0] xor_ln896_37_fu_878_p2;
wire   [0:0] xor_ln888_22_fu_898_p2;
wire   [0:0] Range2_all_ones_24_fu_890_p3;
wire   [0:0] or_ln888_10_fu_904_p2;
wire   [0:0] tmp_109_fu_916_p3;
wire   [0:0] xor_ln890_12_fu_924_p2;
wire   [0:0] or_ln890_10_fu_930_p2;
wire   [0:0] carry_27_fu_884_p2;
wire   [0:0] deleted_zeros_12_fu_910_p2;
wire   [0:0] xor_ln895_37_fu_948_p2;
wire   [0:0] p_Result_62_fu_822_p3;
wire   [0:0] or_ln895_12_fu_954_p2;
wire   [0:0] xor_ln895_38_fu_960_p2;
wire   [0:0] deleted_ones_23_fu_936_p2;
wire   [0:0] xor_ln896_38_fu_972_p2;
wire   [0:0] and_ln891_12_fu_942_p2;
wire   [0:0] or_ln896_12_fu_978_p2;
wire   [0:0] xor_ln896_61_fu_984_p2;
wire   [0:0] underflow_23_fu_990_p2;
wire   [33:0] r_V_22_fu_121_p2;
wire   [19:0] p_Val2_74_fu_1010_p4;
wire   [0:0] tmp_112_fu_1032_p3;
wire   [20:0] zext_ln377_13_fu_1040_p1;
wire  signed [20:0] sext_ln818_1_fu_1020_p1;
wire   [0:0] p_Result_67_fu_1050_p3;
wire   [0:0] p_Result_66_fu_1024_p3;
wire   [0:0] xor_ln896_39_fu_1058_p2;
wire   [0:0] xor_ln888_24_fu_1078_p2;
wire   [0:0] Range2_all_ones_25_fu_1070_p3;
wire   [0:0] or_ln888_11_fu_1084_p2;
wire   [0:0] tmp_115_fu_1096_p3;
wire   [0:0] xor_ln890_13_fu_1104_p2;
wire   [0:0] or_ln890_11_fu_1110_p2;
wire   [0:0] carry_29_fu_1064_p2;
wire   [0:0] deleted_zeros_13_fu_1090_p2;
wire   [0:0] xor_ln895_39_fu_1128_p2;
wire   [0:0] p_Result_65_fu_1002_p3;
wire   [0:0] or_ln895_13_fu_1134_p2;
wire   [0:0] xor_ln895_40_fu_1140_p2;
wire   [0:0] deleted_ones_24_fu_1116_p2;
wire   [0:0] xor_ln896_40_fu_1152_p2;
wire   [0:0] and_ln891_13_fu_1122_p2;
wire   [0:0] or_ln896_13_fu_1158_p2;
wire   [0:0] xor_ln896_62_fu_1164_p2;
wire   [0:0] underflow_24_fu_1170_p2;
wire   [33:0] r_V_23_fu_125_p2;
wire   [19:0] p_Val2_77_fu_1190_p4;
wire   [0:0] tmp_118_fu_1212_p3;
wire   [20:0] zext_ln377_14_fu_1220_p1;
wire  signed [20:0] sext_ln818_2_fu_1200_p1;
wire   [0:0] p_Result_70_fu_1230_p3;
wire   [0:0] p_Result_69_fu_1204_p3;
wire   [0:0] xor_ln896_41_fu_1238_p2;
wire   [0:0] xor_ln888_26_fu_1258_p2;
wire   [0:0] Range2_all_ones_26_fu_1250_p3;
wire   [0:0] or_ln888_12_fu_1264_p2;
wire   [0:0] tmp_121_fu_1276_p3;
wire   [0:0] xor_ln890_14_fu_1284_p2;
wire   [0:0] or_ln890_12_fu_1290_p2;
wire   [0:0] carry_31_fu_1244_p2;
wire   [0:0] deleted_zeros_14_fu_1270_p2;
wire   [0:0] xor_ln895_41_fu_1308_p2;
wire   [0:0] p_Result_68_fu_1182_p3;
wire   [0:0] or_ln895_14_fu_1314_p2;
wire   [0:0] xor_ln895_42_fu_1320_p2;
wire   [0:0] deleted_ones_25_fu_1296_p2;
wire   [0:0] xor_ln896_42_fu_1332_p2;
wire   [0:0] and_ln891_14_fu_1302_p2;
wire   [0:0] or_ln896_14_fu_1338_p2;
wire   [0:0] xor_ln896_63_fu_1344_p2;
wire   [0:0] underflow_25_fu_1350_p2;
wire   [36:0] r_V_18_fu_119_p2;
wire   [0:0] tmp_88_fu_1402_p3;
wire   [20:0] zext_ln377_fu_1410_p1;
wire   [20:0] p_Val2_62_fu_1384_p4;
wire   [0:0] p_Result_55_fu_1420_p3;
wire   [0:0] p_Result_54_fu_1394_p3;
wire   [0:0] xor_ln896_fu_1428_p2;
wire   [1:0] tmp_fu_1448_p4;
wire   [0:0] Range1_all_zeros_fu_1464_p2;
wire   [0:0] tmp_91_fu_1478_p3;
wire   [0:0] Range2_all_ones_fu_1440_p3;
wire   [0:0] xor_ln890_fu_1486_p2;
wire   [0:0] and_ln890_fu_1492_p2;
wire   [0:0] deleted_zeros_fu_1470_p3;
wire   [0:0] xor_ln895_fu_1506_p2;
wire   [0:0] or_ln895_fu_1512_p2;
wire   [0:0] xor_ln895_32_fu_1518_p2;
wire   [0:0] deleted_ones_fu_1498_p3;
wire   [0:0] xor_ln896_32_fu_1530_p2;
wire   [20:0] select_ln346_20_fu_1545_p3;
wire  signed [20:0] sext_ln856_fu_1542_p1;
wire   [20:0] select_ln346_21_fu_1562_p3;
wire  signed [20:0] sext_ln856_2_fu_1559_p1;
wire   [20:0] select_ln346_22_fu_1576_p3;
wire   [20:0] select_ln346_23_fu_1589_p3;
wire   [20:0] select_ln346_24_fu_1602_p3;
wire   [33:0] r_V_fu_123_p2;
wire   [19:0] p_Val2_80_fu_1629_p4;
wire   [0:0] tmp_124_fu_1651_p3;
wire   [20:0] zext_ln377_15_fu_1659_p1;
wire  signed [20:0] sext_ln818_3_fu_1639_p1;
wire   [0:0] p_Result_73_fu_1669_p3;
wire   [0:0] p_Result_72_fu_1643_p3;
wire   [0:0] xor_ln896_43_fu_1677_p2;
wire   [0:0] xor_ln888_28_fu_1697_p2;
wire   [0:0] Range2_all_ones_27_fu_1689_p3;
wire   [0:0] or_ln888_13_fu_1703_p2;
wire   [0:0] tmp_127_fu_1715_p3;
wire   [0:0] xor_ln890_15_fu_1723_p2;
wire   [0:0] or_ln890_13_fu_1729_p2;
wire   [0:0] carry_33_fu_1683_p2;
wire   [0:0] deleted_zeros_15_fu_1709_p2;
wire   [0:0] xor_ln895_43_fu_1747_p2;
wire   [0:0] p_Result_71_fu_1621_p3;
wire   [0:0] or_ln895_15_fu_1753_p2;
wire   [0:0] xor_ln895_44_fu_1759_p2;
wire   [0:0] deleted_ones_26_fu_1735_p2;
wire   [0:0] xor_ln896_44_fu_1771_p2;
wire   [0:0] and_ln891_15_fu_1741_p2;
wire   [0:0] or_ln896_15_fu_1777_p2;
wire   [0:0] xor_ln896_64_fu_1783_p2;
wire   [0:0] underflow_26_fu_1789_p2;
wire   [33:0] r_V_24_fu_118_p2;
wire   [19:0] p_Val2_83_fu_1809_p4;
wire   [0:0] tmp_130_fu_1831_p3;
wire   [20:0] zext_ln377_16_fu_1839_p1;
wire  signed [20:0] sext_ln818_4_fu_1819_p1;
wire   [0:0] p_Result_76_fu_1849_p3;
wire   [0:0] p_Result_75_fu_1823_p3;
wire   [0:0] xor_ln896_45_fu_1857_p2;
wire   [0:0] xor_ln888_30_fu_1877_p2;
wire   [0:0] Range2_all_ones_28_fu_1869_p3;
wire   [0:0] or_ln888_14_fu_1883_p2;
wire   [0:0] tmp_133_fu_1895_p3;
wire   [0:0] xor_ln890_16_fu_1903_p2;
wire   [0:0] or_ln890_14_fu_1909_p2;
wire   [0:0] carry_35_fu_1863_p2;
wire   [0:0] deleted_zeros_16_fu_1889_p2;
wire   [0:0] xor_ln895_45_fu_1927_p2;
wire   [0:0] p_Result_74_fu_1801_p3;
wire   [0:0] or_ln895_16_fu_1933_p2;
wire   [0:0] xor_ln895_46_fu_1939_p2;
wire   [0:0] deleted_ones_27_fu_1915_p2;
wire   [0:0] xor_ln896_46_fu_1951_p2;
wire   [0:0] and_ln891_16_fu_1921_p2;
wire   [0:0] or_ln896_16_fu_1957_p2;
wire   [0:0] xor_ln896_65_fu_1963_p2;
wire   [0:0] underflow_27_fu_1969_p2;
wire   [33:0] r_V_25_fu_122_p2;
wire   [19:0] p_Val2_86_fu_1989_p4;
wire   [0:0] tmp_136_fu_2011_p3;
wire   [20:0] zext_ln377_17_fu_2019_p1;
wire  signed [20:0] sext_ln818_5_fu_1999_p1;
wire   [0:0] p_Result_79_fu_2029_p3;
wire   [0:0] p_Result_78_fu_2003_p3;
wire   [0:0] xor_ln896_47_fu_2037_p2;
wire   [0:0] xor_ln888_32_fu_2057_p2;
wire   [0:0] Range2_all_ones_29_fu_2049_p3;
wire   [0:0] or_ln888_15_fu_2063_p2;
wire   [0:0] tmp_139_fu_2075_p3;
wire   [0:0] xor_ln890_17_fu_2083_p2;
wire   [0:0] or_ln890_15_fu_2089_p2;
wire   [0:0] carry_37_fu_2043_p2;
wire   [0:0] deleted_zeros_17_fu_2069_p2;
wire   [0:0] xor_ln895_47_fu_2107_p2;
wire   [0:0] p_Result_77_fu_1981_p3;
wire   [0:0] or_ln895_17_fu_2113_p2;
wire   [0:0] xor_ln895_48_fu_2119_p2;
wire   [0:0] deleted_ones_28_fu_2095_p2;
wire   [0:0] xor_ln896_48_fu_2131_p2;
wire   [0:0] and_ln891_17_fu_2101_p2;
wire   [0:0] or_ln896_17_fu_2137_p2;
wire   [0:0] xor_ln896_66_fu_2143_p2;
wire   [0:0] underflow_28_fu_2149_p2;
wire  signed [20:0] rhs_9_fu_1552_p3;
wire  signed [21:0] sext_ln813_15_fu_2161_p1;
wire   [21:0] ret_V_10_fu_2165_p2;
wire   [20:0] p_Val2_91_fu_2179_p2;
wire   [0:0] p_Result_82_fu_2171_p3;
wire   [0:0] p_Result_83_fu_2185_p3;
wire   [0:0] xor_ln895_50_fu_2193_p2;
wire   [0:0] xor_ln896_50_fu_2205_p2;
wire   [0:0] xor_ln302_22_fu_2217_p2;
wire   [0:0] overflow_30_fu_2199_p2;
wire   [0:0] xor_ln302_23_fu_2223_p2;
wire   [0:0] underflow_30_fu_2211_p2;
wire   [0:0] or_ln302_10_fu_2229_p2;
wire   [20:0] select_ln302_22_fu_2235_p3;
wire   [20:0] select_ln350_10_fu_2243_p3;
wire  signed [20:0] rhs_10_fu_1569_p3;
wire  signed [21:0] sext_ln813_16_fu_2259_p1;
wire   [21:0] ret_V_11_fu_2263_p2;
wire   [20:0] p_Val2_93_fu_2277_p2;
wire   [0:0] p_Result_84_fu_2269_p3;
wire   [0:0] p_Result_85_fu_2283_p3;
wire   [0:0] xor_ln895_51_fu_2291_p2;
wire   [0:0] xor_ln896_51_fu_2303_p2;
wire   [0:0] xor_ln302_24_fu_2315_p2;
wire   [0:0] overflow_31_fu_2297_p2;
wire   [0:0] xor_ln302_25_fu_2321_p2;
wire   [0:0] underflow_31_fu_2309_p2;
wire   [0:0] or_ln302_11_fu_2327_p2;
wire   [20:0] select_ln302_24_fu_2333_p3;
wire   [20:0] select_ln350_11_fu_2341_p3;
wire  signed [20:0] lhs_fu_2251_p3;
wire  signed [20:0] rhs_12_fu_1596_p3;
wire  signed [21:0] sext_ln813_19_fu_2361_p1;
wire  signed [21:0] sext_ln813_18_fu_2357_p1;
wire   [21:0] ret_V_13_fu_2365_p2;
wire   [20:0] p_Val2_98_fu_2379_p2;
wire   [0:0] p_Result_88_fu_2371_p3;
wire   [0:0] p_Result_89_fu_2385_p3;
wire   [0:0] xor_ln895_53_fu_2393_p2;
wire   [0:0] xor_ln896_53_fu_2405_p2;
wire   [0:0] xor_ln302_28_fu_2417_p2;
wire   [0:0] overflow_33_fu_2399_p2;
wire   [0:0] xor_ln302_29_fu_2423_p2;
wire   [0:0] underflow_33_fu_2411_p2;
wire   [0:0] or_ln302_13_fu_2429_p2;
wire   [20:0] select_ln302_28_fu_2435_p3;
wire   [20:0] select_ln350_13_fu_2443_p3;
wire  signed [20:0] lhs_5_fu_2349_p3;
wire  signed [20:0] rhs_13_fu_1609_p3;
wire  signed [21:0] sext_ln813_21_fu_2463_p1;
wire  signed [21:0] sext_ln813_20_fu_2459_p1;
wire   [21:0] ret_V_14_fu_2467_p2;
wire   [20:0] p_Val2_100_fu_2481_p2;
wire   [0:0] p_Result_90_fu_2473_p3;
wire   [0:0] p_Result_91_fu_2487_p3;
wire   [0:0] xor_ln895_54_fu_2495_p2;
wire   [0:0] xor_ln896_54_fu_2507_p2;
wire   [0:0] xor_ln302_30_fu_2519_p2;
wire   [0:0] overflow_34_fu_2501_p2;
wire   [0:0] xor_ln302_31_fu_2525_p2;
wire   [0:0] underflow_34_fu_2513_p2;
wire   [0:0] or_ln302_14_fu_2531_p2;
wire   [20:0] select_ln302_30_fu_2537_p3;
wire   [20:0] select_ln350_14_fu_2545_p3;
wire   [0:0] and_ln891_fu_2561_p2;
wire   [0:0] xor_ln896_58_fu_2565_p2;
wire   [0:0] underflow_fu_2570_p2;
wire   [0:0] or_ln346_fu_2582_p2;
wire   [20:0] select_ln346_19_fu_2575_p3;
wire   [20:0] select_ln346_25_fu_2594_p3;
wire   [20:0] select_ln346_26_fu_2607_p3;
wire   [20:0] select_ln346_27_fu_2620_p3;
wire  signed [20:0] rhs_fu_2587_p3;
wire  signed [21:0] sext_ln813_fu_2633_p1;
wire   [21:0] ret_V_fu_2637_p2;
wire   [20:0] p_Val2_89_fu_2651_p2;
wire   [0:0] p_Result_80_fu_2643_p3;
wire   [0:0] p_Result_81_fu_2657_p3;
wire   [0:0] xor_ln895_49_fu_2665_p2;
wire   [0:0] xor_ln896_49_fu_2677_p2;
wire   [0:0] xor_ln302_fu_2689_p2;
wire   [0:0] overflow_29_fu_2671_p2;
wire   [0:0] xor_ln302_21_fu_2695_p2;
wire   [0:0] underflow_29_fu_2683_p2;
wire   [0:0] or_ln302_fu_2701_p2;
wire   [20:0] select_ln302_fu_2707_p3;
wire   [20:0] select_ln350_fu_2715_p3;
wire  signed [21:0] sext_ln813_17_fu_2731_p1;
wire   [21:0] ret_V_12_fu_2734_p2;
wire   [20:0] p_Val2_96_fu_2748_p2;
wire   [0:0] p_Result_86_fu_2740_p3;
wire   [0:0] p_Result_87_fu_2753_p3;
wire   [0:0] xor_ln895_52_fu_2761_p2;
wire   [0:0] xor_ln896_52_fu_2773_p2;
wire   [0:0] xor_ln302_26_fu_2785_p2;
wire   [0:0] overflow_32_fu_2767_p2;
wire   [0:0] xor_ln302_27_fu_2791_p2;
wire   [0:0] underflow_32_fu_2779_p2;
wire   [0:0] or_ln302_12_fu_2797_p2;
wire   [20:0] select_ln302_26_fu_2803_p3;
wire   [20:0] select_ln350_12_fu_2811_p3;
wire  signed [20:0] lhs_6_fu_2819_p3;
wire  signed [20:0] rhs_14_fu_2601_p3;
wire  signed [21:0] sext_ln813_23_fu_2831_p1;
wire  signed [21:0] sext_ln813_22_fu_2827_p1;
wire   [21:0] ret_V_15_fu_2835_p2;
wire   [20:0] p_Val2_102_fu_2849_p2;
wire   [0:0] p_Result_92_fu_2841_p3;
wire   [0:0] p_Result_93_fu_2855_p3;
wire   [0:0] xor_ln895_55_fu_2863_p2;
wire   [0:0] xor_ln896_55_fu_2875_p2;
wire   [0:0] xor_ln302_32_fu_2887_p2;
wire   [0:0] overflow_35_fu_2869_p2;
wire   [0:0] xor_ln302_33_fu_2893_p2;
wire   [0:0] underflow_35_fu_2881_p2;
wire   [0:0] or_ln302_15_fu_2899_p2;
wire   [20:0] select_ln302_32_fu_2905_p3;
wire   [20:0] select_ln350_15_fu_2913_p3;
wire  signed [20:0] rhs_15_fu_2614_p3;
wire  signed [21:0] sext_ln813_25_fu_2932_p1;
wire  signed [21:0] sext_ln813_24_fu_2929_p1;
wire   [21:0] ret_V_16_fu_2936_p2;
wire   [20:0] p_Val2_104_fu_2950_p2;
wire   [0:0] p_Result_94_fu_2942_p3;
wire   [0:0] p_Result_95_fu_2955_p3;
wire   [0:0] xor_ln895_56_fu_2963_p2;
wire   [0:0] xor_ln896_56_fu_2975_p2;
wire   [0:0] xor_ln302_34_fu_2987_p2;
wire   [0:0] overflow_36_fu_2969_p2;
wire   [0:0] xor_ln302_35_fu_2993_p2;
wire   [0:0] underflow_36_fu_2981_p2;
wire   [0:0] or_ln302_16_fu_2999_p2;
wire   [20:0] select_ln302_34_fu_3005_p3;
wire   [20:0] select_ln350_16_fu_3013_p3;
wire  signed [20:0] rhs_16_fu_2627_p3;
wire  signed [21:0] sext_ln813_27_fu_3032_p1;
wire  signed [21:0] sext_ln813_26_fu_3029_p1;
wire   [21:0] ret_V_17_fu_3036_p2;
wire   [20:0] p_Val2_106_fu_3050_p2;
wire   [0:0] p_Result_96_fu_3042_p3;
wire   [0:0] p_Result_97_fu_3055_p3;
wire   [0:0] xor_ln895_57_fu_3063_p2;
wire   [0:0] xor_ln896_57_fu_3075_p2;
wire   [0:0] xor_ln302_36_fu_3087_p2;
wire   [0:0] overflow_37_fu_3069_p2;
wire   [0:0] xor_ln302_37_fu_3093_p2;
wire   [0:0] underflow_37_fu_3081_p2;
wire   [0:0] or_ln302_17_fu_3099_p2;
wire   [20:0] select_ln302_36_fu_3105_p3;
wire   [20:0] select_ln350_17_fu_3113_p3;
wire   [20:0] p_Val2_94_fu_2723_p3;
wire   [20:0] select_ln302_33_fu_2921_p3;
wire   [20:0] select_ln302_35_fu_3021_p3;
wire   [20:0] select_ln302_37_fu_3121_p3;
reg    ap_ce_reg;
reg   [62:0] p_read_int_reg;
reg   [20:0] ap_return_0_int_reg;
reg   [20:0] ap_return_1_int_reg;
reg   [20:0] ap_return_2_int_reg;
reg   [20:0] ap_return_3_int_reg;

motor_mul_21s_13ns_34_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 13 ),
    .dout_WIDTH( 34 ))
mul_21s_13ns_34_1_0_U1(
    .din0(r_V_24_fu_118_p0),
    .din1(r_V_24_fu_118_p1),
    .dout(r_V_24_fu_118_p2)
);

motor_mul_21s_16ns_37_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 37 ))
mul_21s_16ns_37_1_0_U2(
    .din0(a_V_reg_3153),
    .din1(r_V_18_fu_119_p1),
    .dout(r_V_18_fu_119_p2)
);

motor_mul_21s_12ns_33_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 12 ),
    .dout_WIDTH( 33 ))
mul_21s_12ns_33_1_0_U3(
    .din0(r_V_19_fu_120_p0),
    .din1(r_V_19_fu_120_p1),
    .dout(r_V_19_fu_120_p2)
);

motor_mul_21s_13s_34_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 13 ),
    .dout_WIDTH( 34 ))
mul_21s_13s_34_1_0_U4(
    .din0(r_V_22_fu_121_p0),
    .din1(r_V_22_fu_121_p1),
    .dout(r_V_22_fu_121_p2)
);

motor_mul_21s_13ns_34_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 13 ),
    .dout_WIDTH( 34 ))
mul_21s_13ns_34_1_0_U5(
    .din0(r_V_25_fu_122_p0),
    .din1(r_V_25_fu_122_p1),
    .dout(r_V_25_fu_122_p2)
);

motor_mul_21s_13s_34_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 13 ),
    .dout_WIDTH( 34 ))
mul_21s_13s_34_1_0_U6(
    .din0(r_V_fu_123_p0),
    .din1(r_V_fu_123_p1),
    .dout(r_V_fu_123_p2)
);

motor_mul_21s_13ns_34_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 13 ),
    .dout_WIDTH( 34 ))
mul_21s_13ns_34_1_0_U7(
    .din0(r_V_21_fu_124_p0),
    .din1(r_V_21_fu_124_p1),
    .dout(r_V_21_fu_124_p2)
);

motor_mul_21s_13s_34_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 13 ),
    .dout_WIDTH( 34 ))
mul_21s_13s_34_1_0_U8(
    .din0(r_V_23_fu_125_p0),
    .din1(r_V_23_fu_125_p1),
    .dout(r_V_23_fu_125_p2)
);

motor_mul_21s_12ns_33_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 12 ),
    .dout_WIDTH( 33 ))
mul_21s_12ns_33_1_0_U9(
    .din0(r_V_20_fu_126_p0),
    .din1(r_V_20_fu_126_p1),
    .dout(r_V_20_fu_126_p2)
);

always @ (posedge ap_clk) begin
    ap_ce_reg <= ap_ce;
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        Range1_all_ones_reg_3253 <= Range1_all_ones_fu_1458_p2;
        a_V_2_reg_3233 <= {{p_read_int_reg[62:42]}};
        a_V_reg_3153 <= a_V_fu_435_p1;
        carry_21_reg_3248 <= carry_21_fu_1434_p2;
        lhs_7_reg_3320 <= lhs_7_fu_2451_p3;
        lhs_8_reg_3326 <= lhs_8_fu_2553_p3;
        or_ln346_10_reg_3168 <= or_ln346_10_fu_619_p2;
        or_ln346_11_reg_3183 <= or_ln346_11_fu_799_p2;
        or_ln346_12_reg_3198 <= or_ln346_12_fu_996_p2;
        or_ln346_13_reg_3213 <= or_ln346_13_fu_1176_p2;
        or_ln346_14_reg_3228 <= or_ln346_14_fu_1356_p2;
        or_ln346_15_reg_3285 <= or_ln346_15_fu_1795_p2;
        or_ln346_16_reg_3300 <= or_ln346_16_fu_1975_p2;
        or_ln346_17_reg_3315 <= or_ln346_17_fu_2155_p2;
        or_ln896_reg_3264 <= or_ln896_fu_1536_p2;
        overflow_21_reg_3163 <= overflow_21_fu_589_p2;
        overflow_22_reg_3178 <= overflow_22_fu_769_p2;
        overflow_23_reg_3193 <= overflow_23_fu_966_p2;
        overflow_24_reg_3208 <= overflow_24_fu_1146_p2;
        overflow_25_reg_3223 <= overflow_25_fu_1326_p2;
        overflow_26_reg_3280 <= overflow_26_fu_1765_p2;
        overflow_27_reg_3295 <= overflow_27_fu_1945_p2;
        overflow_28_reg_3310 <= overflow_28_fu_2125_p2;
        overflow_reg_3258 <= overflow_fu_1524_p2;
        p_Result_s_reg_3238 <= r_V_18_fu_119_p2[32'd36];
        p_Val2_63_reg_3243 <= p_Val2_63_fu_1414_p2;
        p_Val2_66_reg_3158 <= p_Val2_66_fu_487_p2;
        p_Val2_69_reg_3173 <= p_Val2_69_fu_667_p2;
        p_Val2_72_reg_3188 <= p_Val2_72_fu_864_p2;
        p_Val2_75_reg_3203 <= p_Val2_75_fu_1044_p2;
        p_Val2_78_reg_3218 <= p_Val2_78_fu_1224_p2;
        p_Val2_81_reg_3275 <= p_Val2_81_fu_1663_p2;
        p_Val2_84_reg_3290 <= p_Val2_84_fu_1843_p2;
        p_Val2_87_reg_3305 <= p_Val2_87_fu_2023_p2;
        rhs_11_reg_3269 <= rhs_11_fu_1583_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce_reg)) begin
        ap_return_0_int_reg <= p_Val2_94_fu_2723_p3;
        ap_return_1_int_reg <= select_ln302_33_fu_2921_p3;
        ap_return_2_int_reg <= select_ln302_35_fu_3021_p3;
        ap_return_3_int_reg <= select_ln302_37_fu_3121_p3;
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
        ap_return_0 = p_Val2_94_fu_2723_p3;
    end else begin
        ap_return_0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_1 = ap_return_1_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_1 = select_ln302_33_fu_2921_p3;
    end else begin
        ap_return_1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_2 = ap_return_2_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_2 = select_ln302_35_fu_3021_p3;
    end else begin
        ap_return_2 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_3 = ap_return_3_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_3 = select_ln302_37_fu_3121_p3;
    end else begin
        ap_return_3 = 'bx;
    end
end

assign Range1_all_ones_fu_1458_p2 = ((tmp_fu_1448_p4 == 2'd3) ? 1'b1 : 1'b0);

assign Range1_all_zeros_fu_1464_p2 = ((tmp_fu_1448_p4 == 2'd0) ? 1'b1 : 1'b0);

assign Range2_all_ones_22_fu_513_p3 = r_V_19_fu_120_p2[32'd32];

assign Range2_all_ones_23_fu_693_p3 = r_V_20_fu_126_p2[32'd32];

assign Range2_all_ones_24_fu_890_p3 = r_V_21_fu_124_p2[32'd33];

assign Range2_all_ones_25_fu_1070_p3 = r_V_22_fu_121_p2[32'd33];

assign Range2_all_ones_26_fu_1250_p3 = r_V_23_fu_125_p2[32'd33];

assign Range2_all_ones_27_fu_1689_p3 = r_V_fu_123_p2[32'd33];

assign Range2_all_ones_28_fu_1869_p3 = r_V_24_fu_118_p2[32'd33];

assign Range2_all_ones_29_fu_2049_p3 = r_V_25_fu_122_p2[32'd33];

assign Range2_all_ones_fu_1440_p3 = r_V_18_fu_119_p2[32'd36];

assign a_V_1_fu_805_p4 = {{p_read_int_reg[41:21]}};

assign a_V_fu_435_p1 = p_read_int_reg[20:0];

assign and_ln890_fu_1492_p2 = (xor_ln890_fu_1486_p2 & Range2_all_ones_fu_1440_p3);

assign and_ln891_10_fu_565_p2 = (carry_23_fu_507_p2 & Range2_all_ones_22_fu_513_p3);

assign and_ln891_11_fu_745_p2 = (carry_25_fu_687_p2 & Range2_all_ones_23_fu_693_p3);

assign and_ln891_12_fu_942_p2 = (carry_27_fu_884_p2 & Range2_all_ones_24_fu_890_p3);

assign and_ln891_13_fu_1122_p2 = (carry_29_fu_1064_p2 & Range2_all_ones_25_fu_1070_p3);

assign and_ln891_14_fu_1302_p2 = (carry_31_fu_1244_p2 & Range2_all_ones_26_fu_1250_p3);

assign and_ln891_15_fu_1741_p2 = (carry_33_fu_1683_p2 & Range2_all_ones_27_fu_1689_p3);

assign and_ln891_16_fu_1921_p2 = (carry_35_fu_1863_p2 & Range2_all_ones_28_fu_1869_p3);

assign and_ln891_17_fu_2101_p2 = (carry_37_fu_2043_p2 & Range2_all_ones_29_fu_2049_p3);

assign and_ln891_fu_2561_p2 = (carry_21_reg_3248 & Range1_all_ones_reg_3253);

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign carry_21_fu_1434_p2 = (xor_ln896_fu_1428_p2 & p_Result_54_fu_1394_p3);

assign carry_23_fu_507_p2 = (xor_ln896_33_fu_501_p2 & p_Result_57_fu_467_p3);

assign carry_25_fu_687_p2 = (xor_ln896_35_fu_681_p2 & p_Result_60_fu_647_p3);

assign carry_27_fu_884_p2 = (xor_ln896_37_fu_878_p2 & p_Result_63_fu_844_p3);

assign carry_29_fu_1064_p2 = (xor_ln896_39_fu_1058_p2 & p_Result_66_fu_1024_p3);

assign carry_31_fu_1244_p2 = (xor_ln896_41_fu_1238_p2 & p_Result_69_fu_1204_p3);

assign carry_33_fu_1683_p2 = (xor_ln896_43_fu_1677_p2 & p_Result_72_fu_1643_p3);

assign carry_35_fu_1863_p2 = (xor_ln896_45_fu_1857_p2 & p_Result_75_fu_1823_p3);

assign carry_37_fu_2043_p2 = (xor_ln896_47_fu_2037_p2 & p_Result_78_fu_2003_p3);

assign deleted_ones_21_fu_559_p2 = (or_ln890_fu_553_p2 & Range2_all_ones_22_fu_513_p3);

assign deleted_ones_22_fu_739_p2 = (or_ln890_9_fu_733_p2 & Range2_all_ones_23_fu_693_p3);

assign deleted_ones_23_fu_936_p2 = (or_ln890_10_fu_930_p2 & Range2_all_ones_24_fu_890_p3);

assign deleted_ones_24_fu_1116_p2 = (or_ln890_11_fu_1110_p2 & Range2_all_ones_25_fu_1070_p3);

assign deleted_ones_25_fu_1296_p2 = (or_ln890_12_fu_1290_p2 & Range2_all_ones_26_fu_1250_p3);

assign deleted_ones_26_fu_1735_p2 = (or_ln890_13_fu_1729_p2 & Range2_all_ones_27_fu_1689_p3);

assign deleted_ones_27_fu_1915_p2 = (or_ln890_14_fu_1909_p2 & Range2_all_ones_28_fu_1869_p3);

assign deleted_ones_28_fu_2095_p2 = (or_ln890_15_fu_2089_p2 & Range2_all_ones_29_fu_2049_p3);

assign deleted_ones_fu_1498_p3 = ((carry_21_fu_1434_p2[0:0] == 1'b1) ? and_ln890_fu_1492_p2 : Range1_all_ones_fu_1458_p2);

assign deleted_zeros_10_fu_533_p2 = (or_ln888_fu_527_p2 ^ Range2_all_ones_22_fu_513_p3);

assign deleted_zeros_11_fu_713_p2 = (or_ln888_9_fu_707_p2 ^ Range2_all_ones_23_fu_693_p3);

assign deleted_zeros_12_fu_910_p2 = (or_ln888_10_fu_904_p2 ^ Range2_all_ones_24_fu_890_p3);

assign deleted_zeros_13_fu_1090_p2 = (or_ln888_11_fu_1084_p2 ^ Range2_all_ones_25_fu_1070_p3);

assign deleted_zeros_14_fu_1270_p2 = (or_ln888_12_fu_1264_p2 ^ Range2_all_ones_26_fu_1250_p3);

assign deleted_zeros_15_fu_1709_p2 = (or_ln888_13_fu_1703_p2 ^ Range2_all_ones_27_fu_1689_p3);

assign deleted_zeros_16_fu_1889_p2 = (or_ln888_14_fu_1883_p2 ^ Range2_all_ones_28_fu_1869_p3);

assign deleted_zeros_17_fu_2069_p2 = (or_ln888_15_fu_2063_p2 ^ Range2_all_ones_29_fu_2049_p3);

assign deleted_zeros_fu_1470_p3 = ((carry_21_fu_1434_p2[0:0] == 1'b1) ? Range1_all_ones_fu_1458_p2 : Range1_all_zeros_fu_1464_p2);

assign lhs_5_fu_2349_p3 = ((or_ln302_11_fu_2327_p2[0:0] == 1'b1) ? select_ln302_24_fu_2333_p3 : select_ln350_11_fu_2341_p3);

assign lhs_6_fu_2819_p3 = ((or_ln302_12_fu_2797_p2[0:0] == 1'b1) ? select_ln302_26_fu_2803_p3 : select_ln350_12_fu_2811_p3);

assign lhs_7_fu_2451_p3 = ((or_ln302_13_fu_2429_p2[0:0] == 1'b1) ? select_ln302_28_fu_2435_p3 : select_ln350_13_fu_2443_p3);

assign lhs_8_fu_2553_p3 = ((or_ln302_14_fu_2531_p2[0:0] == 1'b1) ? select_ln302_30_fu_2537_p3 : select_ln350_14_fu_2545_p3);

assign lhs_fu_2251_p3 = ((or_ln302_10_fu_2229_p2[0:0] == 1'b1) ? select_ln302_22_fu_2235_p3 : select_ln350_10_fu_2243_p3);

assign or_ln302_10_fu_2229_p2 = (xor_ln302_23_fu_2223_p2 | overflow_30_fu_2199_p2);

assign or_ln302_11_fu_2327_p2 = (xor_ln302_25_fu_2321_p2 | overflow_31_fu_2297_p2);

assign or_ln302_12_fu_2797_p2 = (xor_ln302_27_fu_2791_p2 | overflow_32_fu_2767_p2);

assign or_ln302_13_fu_2429_p2 = (xor_ln302_29_fu_2423_p2 | overflow_33_fu_2399_p2);

assign or_ln302_14_fu_2531_p2 = (xor_ln302_31_fu_2525_p2 | overflow_34_fu_2501_p2);

assign or_ln302_15_fu_2899_p2 = (xor_ln302_33_fu_2893_p2 | overflow_35_fu_2869_p2);

assign or_ln302_16_fu_2999_p2 = (xor_ln302_35_fu_2993_p2 | overflow_36_fu_2969_p2);

assign or_ln302_17_fu_3099_p2 = (xor_ln302_37_fu_3093_p2 | overflow_37_fu_3069_p2);

assign or_ln302_fu_2701_p2 = (xor_ln302_21_fu_2695_p2 | overflow_29_fu_2671_p2);

assign or_ln346_10_fu_619_p2 = (underflow_21_fu_613_p2 | overflow_21_fu_589_p2);

assign or_ln346_11_fu_799_p2 = (underflow_22_fu_793_p2 | overflow_22_fu_769_p2);

assign or_ln346_12_fu_996_p2 = (underflow_23_fu_990_p2 | overflow_23_fu_966_p2);

assign or_ln346_13_fu_1176_p2 = (underflow_24_fu_1170_p2 | overflow_24_fu_1146_p2);

assign or_ln346_14_fu_1356_p2 = (underflow_25_fu_1350_p2 | overflow_25_fu_1326_p2);

assign or_ln346_15_fu_1795_p2 = (underflow_26_fu_1789_p2 | overflow_26_fu_1765_p2);

assign or_ln346_16_fu_1975_p2 = (underflow_27_fu_1969_p2 | overflow_27_fu_1945_p2);

assign or_ln346_17_fu_2155_p2 = (underflow_28_fu_2149_p2 | overflow_28_fu_2125_p2);

assign or_ln346_fu_2582_p2 = (underflow_fu_2570_p2 | overflow_reg_3258);

assign or_ln888_10_fu_904_p2 = (xor_ln888_22_fu_898_p2 | p_Result_64_fu_870_p3);

assign or_ln888_11_fu_1084_p2 = (xor_ln888_24_fu_1078_p2 | p_Result_67_fu_1050_p3);

assign or_ln888_12_fu_1264_p2 = (xor_ln888_26_fu_1258_p2 | p_Result_70_fu_1230_p3);

assign or_ln888_13_fu_1703_p2 = (xor_ln888_28_fu_1697_p2 | p_Result_73_fu_1669_p3);

assign or_ln888_14_fu_1883_p2 = (xor_ln888_30_fu_1877_p2 | p_Result_76_fu_1849_p3);

assign or_ln888_15_fu_2063_p2 = (xor_ln888_32_fu_2057_p2 | p_Result_79_fu_2029_p3);

assign or_ln888_9_fu_707_p2 = (xor_ln888_20_fu_701_p2 | p_Result_61_fu_673_p3);

assign or_ln888_fu_527_p2 = (xor_ln888_fu_521_p2 | p_Result_58_fu_493_p3);

assign or_ln890_10_fu_930_p2 = (xor_ln890_12_fu_924_p2 | or_ln888_10_fu_904_p2);

assign or_ln890_11_fu_1110_p2 = (xor_ln890_13_fu_1104_p2 | or_ln888_11_fu_1084_p2);

assign or_ln890_12_fu_1290_p2 = (xor_ln890_14_fu_1284_p2 | or_ln888_12_fu_1264_p2);

assign or_ln890_13_fu_1729_p2 = (xor_ln890_15_fu_1723_p2 | or_ln888_13_fu_1703_p2);

assign or_ln890_14_fu_1909_p2 = (xor_ln890_16_fu_1903_p2 | or_ln888_14_fu_1883_p2);

assign or_ln890_15_fu_2089_p2 = (xor_ln890_17_fu_2083_p2 | or_ln888_15_fu_2063_p2);

assign or_ln890_9_fu_733_p2 = (xor_ln890_11_fu_727_p2 | or_ln888_9_fu_707_p2);

assign or_ln890_fu_553_p2 = (xor_ln890_10_fu_547_p2 | or_ln888_fu_527_p2);

assign or_ln895_10_fu_577_p2 = (xor_ln895_33_fu_571_p2 | p_Result_58_fu_493_p3);

assign or_ln895_11_fu_757_p2 = (xor_ln895_35_fu_751_p2 | p_Result_61_fu_673_p3);

assign or_ln895_12_fu_954_p2 = (xor_ln895_37_fu_948_p2 | p_Result_64_fu_870_p3);

assign or_ln895_13_fu_1134_p2 = (xor_ln895_39_fu_1128_p2 | p_Result_67_fu_1050_p3);

assign or_ln895_14_fu_1314_p2 = (xor_ln895_41_fu_1308_p2 | p_Result_70_fu_1230_p3);

assign or_ln895_15_fu_1753_p2 = (xor_ln895_43_fu_1747_p2 | p_Result_73_fu_1669_p3);

assign or_ln895_16_fu_1933_p2 = (xor_ln895_45_fu_1927_p2 | p_Result_76_fu_1849_p3);

assign or_ln895_17_fu_2113_p2 = (xor_ln895_47_fu_2107_p2 | p_Result_79_fu_2029_p3);

assign or_ln895_fu_1512_p2 = (xor_ln895_fu_1506_p2 | p_Result_55_fu_1420_p3);

assign or_ln896_10_fu_601_p2 = (xor_ln896_34_fu_595_p2 | xor_ln896_33_fu_501_p2);

assign or_ln896_11_fu_781_p2 = (xor_ln896_36_fu_775_p2 | xor_ln896_35_fu_681_p2);

assign or_ln896_12_fu_978_p2 = (xor_ln896_38_fu_972_p2 | xor_ln896_37_fu_878_p2);

assign or_ln896_13_fu_1158_p2 = (xor_ln896_40_fu_1152_p2 | xor_ln896_39_fu_1058_p2);

assign or_ln896_14_fu_1338_p2 = (xor_ln896_42_fu_1332_p2 | xor_ln896_41_fu_1238_p2);

assign or_ln896_15_fu_1777_p2 = (xor_ln896_44_fu_1771_p2 | xor_ln896_43_fu_1677_p2);

assign or_ln896_16_fu_1957_p2 = (xor_ln896_46_fu_1951_p2 | xor_ln896_45_fu_1857_p2);

assign or_ln896_17_fu_2137_p2 = (xor_ln896_48_fu_2131_p2 | xor_ln896_47_fu_2037_p2);

assign or_ln896_fu_1536_p2 = (xor_ln896_fu_1428_p2 | xor_ln896_32_fu_1530_p2);

assign overflow_21_fu_589_p2 = (xor_ln895_34_fu_583_p2 & or_ln895_10_fu_577_p2);

assign overflow_22_fu_769_p2 = (xor_ln895_36_fu_763_p2 & or_ln895_11_fu_757_p2);

assign overflow_23_fu_966_p2 = (xor_ln895_38_fu_960_p2 & or_ln895_12_fu_954_p2);

assign overflow_24_fu_1146_p2 = (xor_ln895_40_fu_1140_p2 & or_ln895_13_fu_1134_p2);

assign overflow_25_fu_1326_p2 = (xor_ln895_42_fu_1320_p2 & or_ln895_14_fu_1314_p2);

assign overflow_26_fu_1765_p2 = (xor_ln895_44_fu_1759_p2 & or_ln895_15_fu_1753_p2);

assign overflow_27_fu_1945_p2 = (xor_ln895_46_fu_1939_p2 & or_ln895_16_fu_1933_p2);

assign overflow_28_fu_2125_p2 = (xor_ln895_48_fu_2119_p2 & or_ln895_17_fu_2113_p2);

assign overflow_29_fu_2671_p2 = (xor_ln895_49_fu_2665_p2 & p_Result_81_fu_2657_p3);

assign overflow_30_fu_2199_p2 = (xor_ln895_50_fu_2193_p2 & p_Result_83_fu_2185_p3);

assign overflow_31_fu_2297_p2 = (xor_ln895_51_fu_2291_p2 & p_Result_85_fu_2283_p3);

assign overflow_32_fu_2767_p2 = (xor_ln895_52_fu_2761_p2 & p_Result_87_fu_2753_p3);

assign overflow_33_fu_2399_p2 = (xor_ln895_53_fu_2393_p2 & p_Result_89_fu_2385_p3);

assign overflow_34_fu_2501_p2 = (xor_ln895_54_fu_2495_p2 & p_Result_91_fu_2487_p3);

assign overflow_35_fu_2869_p2 = (xor_ln895_55_fu_2863_p2 & p_Result_93_fu_2855_p3);

assign overflow_36_fu_2969_p2 = (xor_ln895_56_fu_2963_p2 & p_Result_95_fu_2955_p3);

assign overflow_37_fu_3069_p2 = (xor_ln895_57_fu_3063_p2 & p_Result_97_fu_3055_p3);

assign overflow_fu_1524_p2 = (xor_ln895_32_fu_1518_p2 & or_ln895_fu_1512_p2);

assign p_Result_54_fu_1394_p3 = r_V_18_fu_119_p2[32'd34];

assign p_Result_55_fu_1420_p3 = p_Val2_63_fu_1414_p2[32'd20];

assign p_Result_56_fu_445_p3 = r_V_19_fu_120_p2[32'd32];

assign p_Result_57_fu_467_p3 = r_V_19_fu_120_p2[32'd32];

assign p_Result_58_fu_493_p3 = p_Val2_66_fu_487_p2[32'd19];

assign p_Result_59_fu_625_p3 = r_V_20_fu_126_p2[32'd32];

assign p_Result_60_fu_647_p3 = r_V_20_fu_126_p2[32'd32];

assign p_Result_61_fu_673_p3 = p_Val2_69_fu_667_p2[32'd19];

assign p_Result_62_fu_822_p3 = r_V_21_fu_124_p2[32'd33];

assign p_Result_63_fu_844_p3 = r_V_21_fu_124_p2[32'd33];

assign p_Result_64_fu_870_p3 = p_Val2_72_fu_864_p2[32'd20];

assign p_Result_65_fu_1002_p3 = r_V_22_fu_121_p2[32'd33];

assign p_Result_66_fu_1024_p3 = r_V_22_fu_121_p2[32'd33];

assign p_Result_67_fu_1050_p3 = p_Val2_75_fu_1044_p2[32'd20];

assign p_Result_68_fu_1182_p3 = r_V_23_fu_125_p2[32'd33];

assign p_Result_69_fu_1204_p3 = r_V_23_fu_125_p2[32'd33];

assign p_Result_70_fu_1230_p3 = p_Val2_78_fu_1224_p2[32'd20];

assign p_Result_71_fu_1621_p3 = r_V_fu_123_p2[32'd33];

assign p_Result_72_fu_1643_p3 = r_V_fu_123_p2[32'd33];

assign p_Result_73_fu_1669_p3 = p_Val2_81_fu_1663_p2[32'd20];

assign p_Result_74_fu_1801_p3 = r_V_24_fu_118_p2[32'd33];

assign p_Result_75_fu_1823_p3 = r_V_24_fu_118_p2[32'd33];

assign p_Result_76_fu_1849_p3 = p_Val2_84_fu_1843_p2[32'd20];

assign p_Result_77_fu_1981_p3 = r_V_25_fu_122_p2[32'd33];

assign p_Result_78_fu_2003_p3 = r_V_25_fu_122_p2[32'd33];

assign p_Result_79_fu_2029_p3 = p_Val2_87_fu_2023_p2[32'd20];

assign p_Result_80_fu_2643_p3 = ret_V_fu_2637_p2[32'd21];

assign p_Result_81_fu_2657_p3 = p_Val2_89_fu_2651_p2[32'd20];

assign p_Result_82_fu_2171_p3 = ret_V_10_fu_2165_p2[32'd21];

assign p_Result_83_fu_2185_p3 = p_Val2_91_fu_2179_p2[32'd20];

assign p_Result_84_fu_2269_p3 = ret_V_11_fu_2263_p2[32'd21];

assign p_Result_85_fu_2283_p3 = p_Val2_93_fu_2277_p2[32'd20];

assign p_Result_86_fu_2740_p3 = ret_V_12_fu_2734_p2[32'd21];

assign p_Result_87_fu_2753_p3 = p_Val2_96_fu_2748_p2[32'd20];

assign p_Result_88_fu_2371_p3 = ret_V_13_fu_2365_p2[32'd21];

assign p_Result_89_fu_2385_p3 = p_Val2_98_fu_2379_p2[32'd20];

assign p_Result_90_fu_2473_p3 = ret_V_14_fu_2467_p2[32'd21];

assign p_Result_91_fu_2487_p3 = p_Val2_100_fu_2481_p2[32'd20];

assign p_Result_92_fu_2841_p3 = ret_V_15_fu_2835_p2[32'd21];

assign p_Result_93_fu_2855_p3 = p_Val2_102_fu_2849_p2[32'd20];

assign p_Result_94_fu_2942_p3 = ret_V_16_fu_2936_p2[32'd21];

assign p_Result_95_fu_2955_p3 = p_Val2_104_fu_2950_p2[32'd20];

assign p_Result_96_fu_3042_p3 = ret_V_17_fu_3036_p2[32'd21];

assign p_Result_97_fu_3055_p3 = p_Val2_106_fu_3050_p2[32'd20];

assign p_Result_s_fu_1376_p3 = r_V_18_fu_119_p2[32'd36];

assign p_Val2_100_fu_2481_p2 = ($signed(rhs_13_fu_1609_p3) + $signed(lhs_5_fu_2349_p3));

assign p_Val2_102_fu_2849_p2 = ($signed(rhs_14_fu_2601_p3) + $signed(lhs_6_fu_2819_p3));

assign p_Val2_104_fu_2950_p2 = ($signed(rhs_15_fu_2614_p3) + $signed(lhs_7_reg_3320));

assign p_Val2_106_fu_3050_p2 = ($signed(rhs_16_fu_2627_p3) + $signed(lhs_8_reg_3326));

assign p_Val2_62_fu_1384_p4 = {{r_V_18_fu_119_p2[34:14]}};

assign p_Val2_63_fu_1414_p2 = (zext_ln377_fu_1410_p1 + p_Val2_62_fu_1384_p4);

assign p_Val2_65_fu_453_p4 = {{r_V_19_fu_120_p2[32:14]}};

assign p_Val2_66_fu_487_p2 = ($signed(zext_ln377_10_fu_483_p1) + $signed(sext_ln823_fu_463_p1));

assign p_Val2_68_fu_633_p4 = {{r_V_20_fu_126_p2[32:14]}};

assign p_Val2_69_fu_667_p2 = ($signed(zext_ln377_11_fu_663_p1) + $signed(sext_ln823_2_fu_643_p1));

assign p_Val2_71_fu_830_p4 = {{r_V_21_fu_124_p2[33:14]}};

assign p_Val2_72_fu_864_p2 = ($signed(zext_ln377_12_fu_860_p1) + $signed(sext_ln818_fu_840_p1));

assign p_Val2_74_fu_1010_p4 = {{r_V_22_fu_121_p2[33:14]}};

assign p_Val2_75_fu_1044_p2 = ($signed(zext_ln377_13_fu_1040_p1) + $signed(sext_ln818_1_fu_1020_p1));

assign p_Val2_77_fu_1190_p4 = {{r_V_23_fu_125_p2[33:14]}};

assign p_Val2_78_fu_1224_p2 = ($signed(zext_ln377_14_fu_1220_p1) + $signed(sext_ln818_2_fu_1200_p1));

assign p_Val2_80_fu_1629_p4 = {{r_V_fu_123_p2[33:14]}};

assign p_Val2_81_fu_1663_p2 = ($signed(zext_ln377_15_fu_1659_p1) + $signed(sext_ln818_3_fu_1639_p1));

assign p_Val2_83_fu_1809_p4 = {{r_V_24_fu_118_p2[33:14]}};

assign p_Val2_84_fu_1843_p2 = ($signed(zext_ln377_16_fu_1839_p1) + $signed(sext_ln818_4_fu_1819_p1));

assign p_Val2_86_fu_1989_p4 = {{r_V_25_fu_122_p2[33:14]}};

assign p_Val2_87_fu_2023_p2 = ($signed(zext_ln377_17_fu_2019_p1) + $signed(sext_ln818_5_fu_1999_p1));

assign p_Val2_89_fu_2651_p2 = ($signed(rhs_fu_2587_p3) + $signed(21'd2096262));

assign p_Val2_91_fu_2179_p2 = ($signed(rhs_9_fu_1552_p3) + $signed(21'd2097006));

assign p_Val2_93_fu_2277_p2 = ($signed(rhs_10_fu_1569_p3) + $signed(21'd2095454));

assign p_Val2_94_fu_2723_p3 = ((or_ln302_fu_2701_p2[0:0] == 1'b1) ? select_ln302_fu_2707_p3 : select_ln350_fu_2715_p3);

assign p_Val2_96_fu_2748_p2 = ($signed(rhs_11_reg_3269) + $signed(21'd5636));

assign p_Val2_98_fu_2379_p2 = ($signed(rhs_12_fu_1596_p3) + $signed(lhs_fu_2251_p3));

assign r_V_18_fu_119_p1 = 37'd25189;

assign r_V_19_fu_120_p0 = sext_ln70_fu_439_p1;

assign r_V_19_fu_120_p1 = 33'd2020;

assign r_V_20_fu_126_p0 = sext_ln70_fu_439_p1;

assign r_V_20_fu_126_p1 = 33'd1831;

assign r_V_21_fu_124_p0 = sext_ln70_8_fu_815_p1;

assign r_V_21_fu_124_p1 = 34'd2972;

assign r_V_22_fu_121_p0 = sext_ln70_8_fu_815_p1;

assign r_V_22_fu_121_p1 = 34'd17179866600;

assign r_V_23_fu_125_p0 = sext_ln70_8_fu_815_p1;

assign r_V_23_fu_125_p1 = 34'd17179866719;

assign r_V_24_fu_118_p0 = sext_ln70_9_fu_1615_p1;

assign r_V_24_fu_118_p1 = 34'd2573;

assign r_V_25_fu_122_p0 = sext_ln70_9_fu_1615_p1;

assign r_V_25_fu_122_p1 = 34'd2473;

assign r_V_fu_123_p0 = sext_ln70_9_fu_1615_p1;

assign r_V_fu_123_p1 = 34'd17179866207;

assign ret_V_10_fu_2165_p2 = ($signed(sext_ln813_15_fu_2161_p1) + $signed(22'd4194158));

assign ret_V_11_fu_2263_p2 = ($signed(sext_ln813_16_fu_2259_p1) + $signed(22'd4192606));

assign ret_V_12_fu_2734_p2 = ($signed(sext_ln813_17_fu_2731_p1) + $signed(22'd5636));

assign ret_V_13_fu_2365_p2 = ($signed(sext_ln813_19_fu_2361_p1) + $signed(sext_ln813_18_fu_2357_p1));

assign ret_V_14_fu_2467_p2 = ($signed(sext_ln813_21_fu_2463_p1) + $signed(sext_ln813_20_fu_2459_p1));

assign ret_V_15_fu_2835_p2 = ($signed(sext_ln813_23_fu_2831_p1) + $signed(sext_ln813_22_fu_2827_p1));

assign ret_V_16_fu_2936_p2 = ($signed(sext_ln813_25_fu_2932_p1) + $signed(sext_ln813_24_fu_2929_p1));

assign ret_V_17_fu_3036_p2 = ($signed(sext_ln813_27_fu_3032_p1) + $signed(sext_ln813_26_fu_3029_p1));

assign ret_V_fu_2637_p2 = ($signed(sext_ln813_fu_2633_p1) + $signed(22'd4193414));

assign rhs_10_fu_1569_p3 = ((or_ln346_11_reg_3183[0:0] == 1'b1) ? select_ln346_21_fu_1562_p3 : sext_ln856_2_fu_1559_p1);

assign rhs_11_fu_1583_p3 = ((or_ln346_12_reg_3198[0:0] == 1'b1) ? select_ln346_22_fu_1576_p3 : p_Val2_72_reg_3188);

assign rhs_12_fu_1596_p3 = ((or_ln346_13_reg_3213[0:0] == 1'b1) ? select_ln346_23_fu_1589_p3 : p_Val2_75_reg_3203);

assign rhs_13_fu_1609_p3 = ((or_ln346_14_reg_3228[0:0] == 1'b1) ? select_ln346_24_fu_1602_p3 : p_Val2_78_reg_3218);

assign rhs_14_fu_2601_p3 = ((or_ln346_15_reg_3285[0:0] == 1'b1) ? select_ln346_25_fu_2594_p3 : p_Val2_81_reg_3275);

assign rhs_15_fu_2614_p3 = ((or_ln346_16_reg_3300[0:0] == 1'b1) ? select_ln346_26_fu_2607_p3 : p_Val2_84_reg_3290);

assign rhs_16_fu_2627_p3 = ((or_ln346_17_reg_3315[0:0] == 1'b1) ? select_ln346_27_fu_2620_p3 : p_Val2_87_reg_3305);

assign rhs_9_fu_1552_p3 = ((or_ln346_10_reg_3168[0:0] == 1'b1) ? select_ln346_20_fu_1545_p3 : sext_ln856_fu_1542_p1);

assign rhs_fu_2587_p3 = ((or_ln346_fu_2582_p2[0:0] == 1'b1) ? select_ln346_19_fu_2575_p3 : p_Val2_63_reg_3243);

assign select_ln302_22_fu_2235_p3 = ((xor_ln302_22_fu_2217_p2[0:0] == 1'b1) ? 21'd1048575 : p_Val2_91_fu_2179_p2);

assign select_ln302_24_fu_2333_p3 = ((xor_ln302_24_fu_2315_p2[0:0] == 1'b1) ? 21'd1048575 : p_Val2_93_fu_2277_p2);

assign select_ln302_26_fu_2803_p3 = ((xor_ln302_26_fu_2785_p2[0:0] == 1'b1) ? 21'd1048575 : p_Val2_96_fu_2748_p2);

assign select_ln302_28_fu_2435_p3 = ((xor_ln302_28_fu_2417_p2[0:0] == 1'b1) ? 21'd1048575 : p_Val2_98_fu_2379_p2);

assign select_ln302_30_fu_2537_p3 = ((xor_ln302_30_fu_2519_p2[0:0] == 1'b1) ? 21'd1048575 : p_Val2_100_fu_2481_p2);

assign select_ln302_32_fu_2905_p3 = ((xor_ln302_32_fu_2887_p2[0:0] == 1'b1) ? 21'd1048575 : p_Val2_102_fu_2849_p2);

assign select_ln302_33_fu_2921_p3 = ((or_ln302_15_fu_2899_p2[0:0] == 1'b1) ? select_ln302_32_fu_2905_p3 : select_ln350_15_fu_2913_p3);

assign select_ln302_34_fu_3005_p3 = ((xor_ln302_34_fu_2987_p2[0:0] == 1'b1) ? 21'd1048575 : p_Val2_104_fu_2950_p2);

assign select_ln302_35_fu_3021_p3 = ((or_ln302_16_fu_2999_p2[0:0] == 1'b1) ? select_ln302_34_fu_3005_p3 : select_ln350_16_fu_3013_p3);

assign select_ln302_36_fu_3105_p3 = ((xor_ln302_36_fu_3087_p2[0:0] == 1'b1) ? 21'd1048575 : p_Val2_106_fu_3050_p2);

assign select_ln302_37_fu_3121_p3 = ((or_ln302_17_fu_3099_p2[0:0] == 1'b1) ? select_ln302_36_fu_3105_p3 : select_ln350_17_fu_3113_p3);

assign select_ln302_fu_2707_p3 = ((xor_ln302_fu_2689_p2[0:0] == 1'b1) ? 21'd1048575 : p_Val2_89_fu_2651_p2);

assign select_ln346_19_fu_2575_p3 = ((overflow_reg_3258[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_20_fu_1545_p3 = ((overflow_21_reg_3163[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_21_fu_1562_p3 = ((overflow_22_reg_3178[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_22_fu_1576_p3 = ((overflow_23_reg_3193[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_23_fu_1589_p3 = ((overflow_24_reg_3208[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_24_fu_1602_p3 = ((overflow_25_reg_3223[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_25_fu_2594_p3 = ((overflow_26_reg_3280[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_26_fu_2607_p3 = ((overflow_27_reg_3295[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_27_fu_2620_p3 = ((overflow_28_reg_3310[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln350_10_fu_2243_p3 = ((underflow_30_fu_2211_p2[0:0] == 1'b1) ? 21'd1048576 : p_Val2_91_fu_2179_p2);

assign select_ln350_11_fu_2341_p3 = ((underflow_31_fu_2309_p2[0:0] == 1'b1) ? 21'd1048576 : p_Val2_93_fu_2277_p2);

assign select_ln350_12_fu_2811_p3 = ((underflow_32_fu_2779_p2[0:0] == 1'b1) ? 21'd1048576 : p_Val2_96_fu_2748_p2);

assign select_ln350_13_fu_2443_p3 = ((underflow_33_fu_2411_p2[0:0] == 1'b1) ? 21'd1048576 : p_Val2_98_fu_2379_p2);

assign select_ln350_14_fu_2545_p3 = ((underflow_34_fu_2513_p2[0:0] == 1'b1) ? 21'd1048576 : p_Val2_100_fu_2481_p2);

assign select_ln350_15_fu_2913_p3 = ((underflow_35_fu_2881_p2[0:0] == 1'b1) ? 21'd1048576 : p_Val2_102_fu_2849_p2);

assign select_ln350_16_fu_3013_p3 = ((underflow_36_fu_2981_p2[0:0] == 1'b1) ? 21'd1048576 : p_Val2_104_fu_2950_p2);

assign select_ln350_17_fu_3113_p3 = ((underflow_37_fu_3081_p2[0:0] == 1'b1) ? 21'd1048576 : p_Val2_106_fu_3050_p2);

assign select_ln350_fu_2715_p3 = ((underflow_29_fu_2683_p2[0:0] == 1'b1) ? 21'd1048576 : p_Val2_89_fu_2651_p2);

assign sext_ln70_8_fu_815_p1 = $signed(a_V_1_fu_805_p4);

assign sext_ln70_9_fu_1615_p1 = $signed(a_V_2_reg_3233);

assign sext_ln70_fu_439_p1 = a_V_fu_435_p1;

assign sext_ln813_15_fu_2161_p1 = rhs_9_fu_1552_p3;

assign sext_ln813_16_fu_2259_p1 = rhs_10_fu_1569_p3;

assign sext_ln813_17_fu_2731_p1 = rhs_11_reg_3269;

assign sext_ln813_18_fu_2357_p1 = lhs_fu_2251_p3;

assign sext_ln813_19_fu_2361_p1 = rhs_12_fu_1596_p3;

assign sext_ln813_20_fu_2459_p1 = lhs_5_fu_2349_p3;

assign sext_ln813_21_fu_2463_p1 = rhs_13_fu_1609_p3;

assign sext_ln813_22_fu_2827_p1 = lhs_6_fu_2819_p3;

assign sext_ln813_23_fu_2831_p1 = rhs_14_fu_2601_p3;

assign sext_ln813_24_fu_2929_p1 = lhs_7_reg_3320;

assign sext_ln813_25_fu_2932_p1 = rhs_15_fu_2614_p3;

assign sext_ln813_26_fu_3029_p1 = lhs_8_reg_3326;

assign sext_ln813_27_fu_3032_p1 = rhs_16_fu_2627_p3;

assign sext_ln813_fu_2633_p1 = rhs_fu_2587_p3;

assign sext_ln818_1_fu_1020_p1 = $signed(p_Val2_74_fu_1010_p4);

assign sext_ln818_2_fu_1200_p1 = $signed(p_Val2_77_fu_1190_p4);

assign sext_ln818_3_fu_1639_p1 = $signed(p_Val2_80_fu_1629_p4);

assign sext_ln818_4_fu_1819_p1 = $signed(p_Val2_83_fu_1809_p4);

assign sext_ln818_5_fu_1999_p1 = $signed(p_Val2_86_fu_1989_p4);

assign sext_ln818_fu_840_p1 = $signed(p_Val2_71_fu_830_p4);

assign sext_ln823_2_fu_643_p1 = $signed(p_Val2_68_fu_633_p4);

assign sext_ln823_fu_463_p1 = $signed(p_Val2_65_fu_453_p4);

assign sext_ln856_2_fu_1559_p1 = p_Val2_69_reg_3173;

assign sext_ln856_fu_1542_p1 = p_Val2_66_reg_3158;

assign tmp_100_fu_655_p3 = r_V_20_fu_126_p2[32'd13];

assign tmp_103_fu_719_p3 = r_V_20_fu_126_p2[32'd32];

assign tmp_106_fu_852_p3 = r_V_21_fu_124_p2[32'd13];

assign tmp_109_fu_916_p3 = r_V_21_fu_124_p2[32'd33];

assign tmp_112_fu_1032_p3 = r_V_22_fu_121_p2[32'd13];

assign tmp_115_fu_1096_p3 = r_V_22_fu_121_p2[32'd33];

assign tmp_118_fu_1212_p3 = r_V_23_fu_125_p2[32'd13];

assign tmp_121_fu_1276_p3 = r_V_23_fu_125_p2[32'd33];

assign tmp_124_fu_1651_p3 = r_V_fu_123_p2[32'd13];

assign tmp_127_fu_1715_p3 = r_V_fu_123_p2[32'd33];

assign tmp_130_fu_1831_p3 = r_V_24_fu_118_p2[32'd13];

assign tmp_133_fu_1895_p3 = r_V_24_fu_118_p2[32'd33];

assign tmp_136_fu_2011_p3 = r_V_25_fu_122_p2[32'd13];

assign tmp_139_fu_2075_p3 = r_V_25_fu_122_p2[32'd33];

assign tmp_88_fu_1402_p3 = r_V_18_fu_119_p2[32'd13];

assign tmp_91_fu_1478_p3 = r_V_18_fu_119_p2[32'd35];

assign tmp_94_fu_475_p3 = r_V_19_fu_120_p2[32'd13];

assign tmp_97_fu_539_p3 = r_V_19_fu_120_p2[32'd32];

assign tmp_fu_1448_p4 = {{r_V_18_fu_119_p2[36:35]}};

assign underflow_21_fu_613_p2 = (xor_ln896_59_fu_607_p2 & p_Result_56_fu_445_p3);

assign underflow_22_fu_793_p2 = (xor_ln896_60_fu_787_p2 & p_Result_59_fu_625_p3);

assign underflow_23_fu_990_p2 = (xor_ln896_61_fu_984_p2 & p_Result_62_fu_822_p3);

assign underflow_24_fu_1170_p2 = (xor_ln896_62_fu_1164_p2 & p_Result_65_fu_1002_p3);

assign underflow_25_fu_1350_p2 = (xor_ln896_63_fu_1344_p2 & p_Result_68_fu_1182_p3);

assign underflow_26_fu_1789_p2 = (xor_ln896_64_fu_1783_p2 & p_Result_71_fu_1621_p3);

assign underflow_27_fu_1969_p2 = (xor_ln896_65_fu_1963_p2 & p_Result_74_fu_1801_p3);

assign underflow_28_fu_2149_p2 = (xor_ln896_66_fu_2143_p2 & p_Result_77_fu_1981_p3);

assign underflow_29_fu_2683_p2 = (xor_ln896_49_fu_2677_p2 & p_Result_80_fu_2643_p3);

assign underflow_30_fu_2211_p2 = (xor_ln896_50_fu_2205_p2 & p_Result_82_fu_2171_p3);

assign underflow_31_fu_2309_p2 = (xor_ln896_51_fu_2303_p2 & p_Result_84_fu_2269_p3);

assign underflow_32_fu_2779_p2 = (xor_ln896_52_fu_2773_p2 & p_Result_86_fu_2740_p3);

assign underflow_33_fu_2411_p2 = (xor_ln896_53_fu_2405_p2 & p_Result_88_fu_2371_p3);

assign underflow_34_fu_2513_p2 = (xor_ln896_54_fu_2507_p2 & p_Result_90_fu_2473_p3);

assign underflow_35_fu_2881_p2 = (xor_ln896_55_fu_2875_p2 & p_Result_92_fu_2841_p3);

assign underflow_36_fu_2981_p2 = (xor_ln896_56_fu_2975_p2 & p_Result_94_fu_2942_p3);

assign underflow_37_fu_3081_p2 = (xor_ln896_57_fu_3075_p2 & p_Result_96_fu_3042_p3);

assign underflow_fu_2570_p2 = (xor_ln896_58_fu_2565_p2 & p_Result_s_reg_3238);

assign xor_ln302_21_fu_2695_p2 = (xor_ln302_fu_2689_p2 ^ 1'd1);

assign xor_ln302_22_fu_2217_p2 = (p_Result_83_fu_2185_p3 ^ p_Result_82_fu_2171_p3);

assign xor_ln302_23_fu_2223_p2 = (xor_ln302_22_fu_2217_p2 ^ 1'd1);

assign xor_ln302_24_fu_2315_p2 = (p_Result_85_fu_2283_p3 ^ p_Result_84_fu_2269_p3);

assign xor_ln302_25_fu_2321_p2 = (xor_ln302_24_fu_2315_p2 ^ 1'd1);

assign xor_ln302_26_fu_2785_p2 = (p_Result_87_fu_2753_p3 ^ p_Result_86_fu_2740_p3);

assign xor_ln302_27_fu_2791_p2 = (xor_ln302_26_fu_2785_p2 ^ 1'd1);

assign xor_ln302_28_fu_2417_p2 = (p_Result_89_fu_2385_p3 ^ p_Result_88_fu_2371_p3);

assign xor_ln302_29_fu_2423_p2 = (xor_ln302_28_fu_2417_p2 ^ 1'd1);

assign xor_ln302_30_fu_2519_p2 = (p_Result_91_fu_2487_p3 ^ p_Result_90_fu_2473_p3);

assign xor_ln302_31_fu_2525_p2 = (xor_ln302_30_fu_2519_p2 ^ 1'd1);

assign xor_ln302_32_fu_2887_p2 = (p_Result_93_fu_2855_p3 ^ p_Result_92_fu_2841_p3);

assign xor_ln302_33_fu_2893_p2 = (xor_ln302_32_fu_2887_p2 ^ 1'd1);

assign xor_ln302_34_fu_2987_p2 = (p_Result_95_fu_2955_p3 ^ p_Result_94_fu_2942_p3);

assign xor_ln302_35_fu_2993_p2 = (xor_ln302_34_fu_2987_p2 ^ 1'd1);

assign xor_ln302_36_fu_3087_p2 = (p_Result_97_fu_3055_p3 ^ p_Result_96_fu_3042_p3);

assign xor_ln302_37_fu_3093_p2 = (xor_ln302_36_fu_3087_p2 ^ 1'd1);

assign xor_ln302_fu_2689_p2 = (p_Result_81_fu_2657_p3 ^ p_Result_80_fu_2643_p3);

assign xor_ln888_20_fu_701_p2 = (p_Result_60_fu_647_p3 ^ 1'd1);

assign xor_ln888_22_fu_898_p2 = (p_Result_63_fu_844_p3 ^ 1'd1);

assign xor_ln888_24_fu_1078_p2 = (p_Result_66_fu_1024_p3 ^ 1'd1);

assign xor_ln888_26_fu_1258_p2 = (p_Result_69_fu_1204_p3 ^ 1'd1);

assign xor_ln888_28_fu_1697_p2 = (p_Result_72_fu_1643_p3 ^ 1'd1);

assign xor_ln888_30_fu_1877_p2 = (p_Result_75_fu_1823_p3 ^ 1'd1);

assign xor_ln888_32_fu_2057_p2 = (p_Result_78_fu_2003_p3 ^ 1'd1);

assign xor_ln888_fu_521_p2 = (p_Result_57_fu_467_p3 ^ 1'd1);

assign xor_ln890_10_fu_547_p2 = (tmp_97_fu_539_p3 ^ 1'd1);

assign xor_ln890_11_fu_727_p2 = (tmp_103_fu_719_p3 ^ 1'd1);

assign xor_ln890_12_fu_924_p2 = (tmp_109_fu_916_p3 ^ 1'd1);

assign xor_ln890_13_fu_1104_p2 = (tmp_115_fu_1096_p3 ^ 1'd1);

assign xor_ln890_14_fu_1284_p2 = (tmp_121_fu_1276_p3 ^ 1'd1);

assign xor_ln890_15_fu_1723_p2 = (tmp_127_fu_1715_p3 ^ 1'd1);

assign xor_ln890_16_fu_1903_p2 = (tmp_133_fu_1895_p3 ^ 1'd1);

assign xor_ln890_17_fu_2083_p2 = (tmp_139_fu_2075_p3 ^ 1'd1);

assign xor_ln890_fu_1486_p2 = (tmp_91_fu_1478_p3 ^ 1'd1);

assign xor_ln895_32_fu_1518_p2 = (p_Result_s_fu_1376_p3 ^ 1'd1);

assign xor_ln895_33_fu_571_p2 = (deleted_zeros_10_fu_533_p2 ^ 1'd1);

assign xor_ln895_34_fu_583_p2 = (p_Result_56_fu_445_p3 ^ 1'd1);

assign xor_ln895_35_fu_751_p2 = (deleted_zeros_11_fu_713_p2 ^ 1'd1);

assign xor_ln895_36_fu_763_p2 = (p_Result_59_fu_625_p3 ^ 1'd1);

assign xor_ln895_37_fu_948_p2 = (deleted_zeros_12_fu_910_p2 ^ 1'd1);

assign xor_ln895_38_fu_960_p2 = (p_Result_62_fu_822_p3 ^ 1'd1);

assign xor_ln895_39_fu_1128_p2 = (deleted_zeros_13_fu_1090_p2 ^ 1'd1);

assign xor_ln895_40_fu_1140_p2 = (p_Result_65_fu_1002_p3 ^ 1'd1);

assign xor_ln895_41_fu_1308_p2 = (deleted_zeros_14_fu_1270_p2 ^ 1'd1);

assign xor_ln895_42_fu_1320_p2 = (p_Result_68_fu_1182_p3 ^ 1'd1);

assign xor_ln895_43_fu_1747_p2 = (deleted_zeros_15_fu_1709_p2 ^ 1'd1);

assign xor_ln895_44_fu_1759_p2 = (p_Result_71_fu_1621_p3 ^ 1'd1);

assign xor_ln895_45_fu_1927_p2 = (deleted_zeros_16_fu_1889_p2 ^ 1'd1);

assign xor_ln895_46_fu_1939_p2 = (p_Result_74_fu_1801_p3 ^ 1'd1);

assign xor_ln895_47_fu_2107_p2 = (deleted_zeros_17_fu_2069_p2 ^ 1'd1);

assign xor_ln895_48_fu_2119_p2 = (p_Result_77_fu_1981_p3 ^ 1'd1);

assign xor_ln895_49_fu_2665_p2 = (p_Result_80_fu_2643_p3 ^ 1'd1);

assign xor_ln895_50_fu_2193_p2 = (p_Result_82_fu_2171_p3 ^ 1'd1);

assign xor_ln895_51_fu_2291_p2 = (p_Result_84_fu_2269_p3 ^ 1'd1);

assign xor_ln895_52_fu_2761_p2 = (p_Result_86_fu_2740_p3 ^ 1'd1);

assign xor_ln895_53_fu_2393_p2 = (p_Result_88_fu_2371_p3 ^ 1'd1);

assign xor_ln895_54_fu_2495_p2 = (p_Result_90_fu_2473_p3 ^ 1'd1);

assign xor_ln895_55_fu_2863_p2 = (p_Result_92_fu_2841_p3 ^ 1'd1);

assign xor_ln895_56_fu_2963_p2 = (p_Result_94_fu_2942_p3 ^ 1'd1);

assign xor_ln895_57_fu_3063_p2 = (p_Result_96_fu_3042_p3 ^ 1'd1);

assign xor_ln895_fu_1506_p2 = (deleted_zeros_fu_1470_p3 ^ 1'd1);

assign xor_ln896_32_fu_1530_p2 = (deleted_ones_fu_1498_p3 ^ 1'd1);

assign xor_ln896_33_fu_501_p2 = (p_Result_58_fu_493_p3 ^ 1'd1);

assign xor_ln896_34_fu_595_p2 = (deleted_ones_21_fu_559_p2 ^ 1'd1);

assign xor_ln896_35_fu_681_p2 = (p_Result_61_fu_673_p3 ^ 1'd1);

assign xor_ln896_36_fu_775_p2 = (deleted_ones_22_fu_739_p2 ^ 1'd1);

assign xor_ln896_37_fu_878_p2 = (p_Result_64_fu_870_p3 ^ 1'd1);

assign xor_ln896_38_fu_972_p2 = (deleted_ones_23_fu_936_p2 ^ 1'd1);

assign xor_ln896_39_fu_1058_p2 = (p_Result_67_fu_1050_p3 ^ 1'd1);

assign xor_ln896_40_fu_1152_p2 = (deleted_ones_24_fu_1116_p2 ^ 1'd1);

assign xor_ln896_41_fu_1238_p2 = (p_Result_70_fu_1230_p3 ^ 1'd1);

assign xor_ln896_42_fu_1332_p2 = (deleted_ones_25_fu_1296_p2 ^ 1'd1);

assign xor_ln896_43_fu_1677_p2 = (p_Result_73_fu_1669_p3 ^ 1'd1);

assign xor_ln896_44_fu_1771_p2 = (deleted_ones_26_fu_1735_p2 ^ 1'd1);

assign xor_ln896_45_fu_1857_p2 = (p_Result_76_fu_1849_p3 ^ 1'd1);

assign xor_ln896_46_fu_1951_p2 = (deleted_ones_27_fu_1915_p2 ^ 1'd1);

assign xor_ln896_47_fu_2037_p2 = (p_Result_79_fu_2029_p3 ^ 1'd1);

assign xor_ln896_48_fu_2131_p2 = (deleted_ones_28_fu_2095_p2 ^ 1'd1);

assign xor_ln896_49_fu_2677_p2 = (p_Result_81_fu_2657_p3 ^ 1'd1);

assign xor_ln896_50_fu_2205_p2 = (p_Result_83_fu_2185_p3 ^ 1'd1);

assign xor_ln896_51_fu_2303_p2 = (p_Result_85_fu_2283_p3 ^ 1'd1);

assign xor_ln896_52_fu_2773_p2 = (p_Result_87_fu_2753_p3 ^ 1'd1);

assign xor_ln896_53_fu_2405_p2 = (p_Result_89_fu_2385_p3 ^ 1'd1);

assign xor_ln896_54_fu_2507_p2 = (p_Result_91_fu_2487_p3 ^ 1'd1);

assign xor_ln896_55_fu_2875_p2 = (p_Result_93_fu_2855_p3 ^ 1'd1);

assign xor_ln896_56_fu_2975_p2 = (p_Result_95_fu_2955_p3 ^ 1'd1);

assign xor_ln896_57_fu_3075_p2 = (p_Result_97_fu_3055_p3 ^ 1'd1);

assign xor_ln896_58_fu_2565_p2 = (or_ln896_reg_3264 ^ and_ln891_fu_2561_p2);

assign xor_ln896_59_fu_607_p2 = (or_ln896_10_fu_601_p2 ^ and_ln891_10_fu_565_p2);

assign xor_ln896_60_fu_787_p2 = (or_ln896_11_fu_781_p2 ^ and_ln891_11_fu_745_p2);

assign xor_ln896_61_fu_984_p2 = (or_ln896_12_fu_978_p2 ^ and_ln891_12_fu_942_p2);

assign xor_ln896_62_fu_1164_p2 = (or_ln896_13_fu_1158_p2 ^ and_ln891_13_fu_1122_p2);

assign xor_ln896_63_fu_1344_p2 = (or_ln896_14_fu_1338_p2 ^ and_ln891_14_fu_1302_p2);

assign xor_ln896_64_fu_1783_p2 = (or_ln896_15_fu_1777_p2 ^ and_ln891_15_fu_1741_p2);

assign xor_ln896_65_fu_1963_p2 = (or_ln896_16_fu_1957_p2 ^ and_ln891_16_fu_1921_p2);

assign xor_ln896_66_fu_2143_p2 = (or_ln896_17_fu_2137_p2 ^ and_ln891_17_fu_2101_p2);

assign xor_ln896_fu_1428_p2 = (p_Result_55_fu_1420_p3 ^ 1'd1);

assign zext_ln377_10_fu_483_p1 = tmp_94_fu_475_p3;

assign zext_ln377_11_fu_663_p1 = tmp_100_fu_655_p3;

assign zext_ln377_12_fu_860_p1 = tmp_106_fu_852_p3;

assign zext_ln377_13_fu_1040_p1 = tmp_112_fu_1032_p3;

assign zext_ln377_14_fu_1220_p1 = tmp_118_fu_1212_p3;

assign zext_ln377_15_fu_1659_p1 = tmp_124_fu_1651_p3;

assign zext_ln377_16_fu_1839_p1 = tmp_130_fu_1831_p3;

assign zext_ln377_17_fu_2019_p1 = tmp_136_fu_2011_p3;

assign zext_ln377_fu_1410_p1 = tmp_88_fu_1402_p3;

endmodule //motor_dense_latency_ap_fixed_21_7_0_0_0_ap_fixed_21_7_0_0_0_config2_s
