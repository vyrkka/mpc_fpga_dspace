module motor_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s (
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
input  [95:0] p_read;
output  [31:0] ap_return_0;
output  [31:0] ap_return_1;
output  [31:0] ap_return_2;
output  [31:0] ap_return_3;
input   ap_ce;

reg[31:0] ap_return_0;
reg[31:0] ap_return_1;
reg[31:0] ap_return_2;
reg[31:0] ap_return_3;

wire   [53:0] r_V_26_fu_106_p2;
reg   [53:0] r_V_26_reg_313;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
wire   [53:0] r_V_27_fu_112_p2;
reg   [53:0] r_V_27_reg_317;
wire   [53:0] r_V_28_fu_110_p2;
reg   [53:0] r_V_28_reg_321;
wire   [53:0] r_V_29_fu_107_p2;
reg   [53:0] r_V_29_reg_325;
wire   [53:0] r_V_30_fu_111_p2;
reg   [53:0] r_V_30_reg_329;
wire   [56:0] r_V_25_fu_105_p2;
reg   [56:0] r_V_25_reg_413;
wire   [53:0] r_V_fu_109_p2;
reg   [53:0] r_V_reg_417;
wire   [53:0] r_V_31_fu_104_p2;
reg   [53:0] r_V_31_reg_421;
wire   [53:0] r_V_32_fu_108_p2;
reg   [53:0] r_V_32_reg_425;
wire  signed [31:0] a_V_fu_430_p1;
reg  signed [31:0] a_V_reg_3104;
reg   [0:0] p_Result_89_reg_3109;
reg   [0:0] p_Result_90_reg_3115;
wire  signed [30:0] p_Val2_101_fu_482_p2;
reg  signed [30:0] p_Val2_101_reg_3121;
reg   [0:0] p_Result_91_reg_3126;
reg   [0:0] Range2_all_ones_17_reg_3133;
reg   [0:0] p_Result_92_reg_3140;
reg   [0:0] p_Result_93_reg_3146;
wire  signed [30:0] p_Val2_104_fu_546_p2;
reg  signed [30:0] p_Val2_104_reg_3152;
reg   [0:0] p_Result_94_reg_3157;
reg   [0:0] Range2_all_ones_18_reg_3164;
reg   [0:0] p_Result_95_reg_3171;
reg   [29:0] p_Val2_106_reg_3177;
reg   [0:0] p_Result_96_reg_3182;
reg   [0:0] tmp_154_reg_3188;
reg   [0:0] Range2_all_ones_19_reg_3193;
reg   [0:0] p_Result_98_reg_3200;
reg   [29:0] p_Val2_109_reg_3206;
reg   [0:0] p_Result_99_reg_3211;
reg   [0:0] tmp_160_reg_3217;
reg   [0:0] Range2_all_ones_20_reg_3222;
reg   [0:0] p_Result_101_reg_3229;
reg   [29:0] p_Val2_112_reg_3235;
reg   [0:0] p_Result_102_reg_3240;
reg   [0:0] tmp_166_reg_3246;
reg   [0:0] Range2_all_ones_21_reg_3251;
reg   [31:0] a_V_2_reg_3258;
reg   [0:0] p_Result_s_reg_3263;
reg   [31:0] p_Val2_97_reg_3269;
reg   [0:0] p_Result_87_reg_3274;
reg   [0:0] tmp_reg_3280;
reg   [0:0] Range2_all_ones_reg_3285;
wire  signed [31:0] rhs_18_fu_1158_p3;
reg  signed [31:0] rhs_18_reg_3292;
reg   [0:0] p_Result_104_reg_3298;
reg   [29:0] p_Val2_115_reg_3304;
reg   [0:0] p_Result_105_reg_3309;
reg   [0:0] tmp_172_reg_3315;
reg   [0:0] Range2_all_ones_22_reg_3320;
reg   [0:0] p_Result_107_reg_3327;
reg   [29:0] p_Val2_118_reg_3333;
reg   [0:0] p_Result_108_reg_3338;
reg   [0:0] tmp_178_reg_3344;
reg   [0:0] Range2_all_ones_23_reg_3349;
reg   [0:0] p_Result_110_reg_3356;
reg   [29:0] p_Val2_121_reg_3362;
reg   [0:0] p_Result_111_reg_3367;
reg   [0:0] tmp_184_reg_3373;
reg   [0:0] Range2_all_ones_24_reg_3378;
wire  signed [31:0] lhs_12_fu_1886_p3;
reg  signed [31:0] lhs_12_reg_3385;
wire  signed [31:0] lhs_13_fu_1988_p3;
reg  signed [31:0] lhs_13_reg_3391;
wire  signed [31:0] r_V_31_fu_104_p0;
wire  signed [53:0] sext_ln70_15_fu_1464_p1;
wire   [22:0] r_V_31_fu_104_p1;
wire    ap_block_pp0_stage0;
wire   [25:0] r_V_25_fu_105_p1;
wire  signed [31:0] r_V_26_fu_106_p0;
wire  signed [53:0] sext_ln70_fu_434_p1;
wire   [22:0] r_V_26_fu_106_p1;
wire  signed [31:0] r_V_29_fu_107_p0;
wire  signed [53:0] sext_ln70_14_fu_578_p1;
wire  signed [22:0] r_V_29_fu_107_p1;
wire  signed [31:0] r_V_32_fu_108_p0;
wire   [22:0] r_V_32_fu_108_p1;
wire  signed [31:0] r_V_fu_109_p0;
wire  signed [22:0] r_V_fu_109_p1;
wire  signed [31:0] r_V_28_fu_110_p0;
wire   [22:0] r_V_28_fu_110_p1;
wire  signed [31:0] r_V_30_fu_111_p0;
wire  signed [22:0] r_V_30_fu_111_p1;
wire  signed [31:0] r_V_27_fu_112_p0;
wire   [22:0] r_V_27_fu_112_p1;
wire   [29:0] p_Val2_100_fu_448_p4;
wire   [0:0] tmp_142_fu_470_p3;
wire   [30:0] zext_ln377_17_fu_478_p1;
wire  signed [30:0] sext_ln823_fu_458_p1;
wire   [29:0] p_Val2_103_fu_512_p4;
wire   [0:0] tmp_148_fu_534_p3;
wire   [30:0] zext_ln377_18_fu_542_p1;
wire  signed [30:0] sext_ln823_9_fu_522_p1;
wire   [31:0] a_V_1_fu_568_p4;
wire   [0:0] xor_ln896_53_fu_770_p2;
wire   [0:0] xor_ln888_36_fu_780_p2;
wire   [0:0] or_ln888_17_fu_785_p2;
wire   [0:0] tmp_145_fu_795_p3;
wire   [0:0] xor_ln890_17_fu_803_p2;
wire   [0:0] or_ln890_17_fu_809_p2;
wire   [0:0] carry_37_fu_775_p2;
wire   [0:0] deleted_zeros_17_fu_790_p2;
wire   [0:0] xor_ln895_53_fu_825_p2;
wire   [0:0] or_ln895_17_fu_831_p2;
wire   [0:0] xor_ln895_54_fu_836_p2;
wire   [0:0] deleted_ones_34_fu_815_p2;
wire   [0:0] xor_ln896_54_fu_847_p2;
wire   [0:0] and_ln891_17_fu_820_p2;
wire   [0:0] or_ln896_17_fu_853_p2;
wire   [0:0] xor_ln896_79_fu_859_p2;
wire   [0:0] overflow_34_fu_841_p2;
wire   [0:0] underflow_34_fu_865_p2;
wire   [0:0] or_ln346_17_fu_878_p2;
wire   [31:0] select_ln346_30_fu_870_p3;
wire  signed [31:0] sext_ln856_fu_767_p1;
wire   [0:0] xor_ln896_55_fu_895_p2;
wire   [0:0] xor_ln888_38_fu_905_p2;
wire   [0:0] or_ln888_18_fu_910_p2;
wire   [0:0] tmp_151_fu_920_p3;
wire   [0:0] xor_ln890_18_fu_928_p2;
wire   [0:0] or_ln890_18_fu_934_p2;
wire   [0:0] carry_39_fu_900_p2;
wire   [0:0] deleted_zeros_18_fu_915_p2;
wire   [0:0] xor_ln895_55_fu_950_p2;
wire   [0:0] or_ln895_18_fu_956_p2;
wire   [0:0] xor_ln895_56_fu_961_p2;
wire   [0:0] deleted_ones_35_fu_940_p2;
wire   [0:0] xor_ln896_56_fu_972_p2;
wire   [0:0] and_ln891_18_fu_945_p2;
wire   [0:0] or_ln896_18_fu_978_p2;
wire   [0:0] xor_ln896_80_fu_984_p2;
wire   [0:0] overflow_35_fu_966_p2;
wire   [0:0] underflow_35_fu_990_p2;
wire   [0:0] or_ln346_18_fu_1003_p2;
wire   [31:0] select_ln346_31_fu_995_p3;
wire  signed [31:0] sext_ln856_9_fu_892_p1;
wire   [30:0] zext_ln377_19_fu_1020_p1;
wire  signed [30:0] sext_ln823_10_fu_1017_p1;
wire  signed [30:0] p_Val2_107_fu_1023_p2;
wire   [0:0] p_Result_97_fu_1033_p3;
wire   [0:0] xor_ln896_57_fu_1041_p2;
wire   [0:0] xor_ln888_40_fu_1052_p2;
wire   [0:0] or_ln888_19_fu_1057_p2;
wire   [0:0] tmp_157_fu_1068_p3;
wire   [0:0] xor_ln890_19_fu_1076_p2;
wire   [0:0] or_ln890_19_fu_1082_p2;
wire   [0:0] carry_41_fu_1047_p2;
wire   [0:0] deleted_zeros_19_fu_1063_p2;
wire   [0:0] xor_ln895_57_fu_1098_p2;
wire   [0:0] or_ln895_19_fu_1104_p2;
wire   [0:0] xor_ln895_58_fu_1110_p2;
wire   [0:0] deleted_ones_36_fu_1088_p2;
wire   [0:0] xor_ln896_58_fu_1121_p2;
wire   [0:0] and_ln891_19_fu_1093_p2;
wire   [0:0] or_ln896_19_fu_1127_p2;
wire   [0:0] xor_ln896_81_fu_1133_p2;
wire   [0:0] overflow_36_fu_1115_p2;
wire   [0:0] underflow_36_fu_1139_p2;
wire   [0:0] or_ln346_19_fu_1152_p2;
wire   [31:0] select_ln346_32_fu_1144_p3;
wire  signed [31:0] sext_ln856_10_fu_1029_p1;
wire   [30:0] zext_ln377_20_fu_1169_p1;
wire  signed [30:0] sext_ln823_11_fu_1166_p1;
wire  signed [30:0] p_Val2_110_fu_1172_p2;
wire   [0:0] p_Result_100_fu_1182_p3;
wire   [0:0] xor_ln896_59_fu_1190_p2;
wire   [0:0] xor_ln888_42_fu_1201_p2;
wire   [0:0] or_ln888_20_fu_1206_p2;
wire   [0:0] tmp_163_fu_1217_p3;
wire   [0:0] xor_ln890_20_fu_1225_p2;
wire   [0:0] or_ln890_20_fu_1231_p2;
wire   [0:0] carry_43_fu_1196_p2;
wire   [0:0] deleted_zeros_20_fu_1212_p2;
wire   [0:0] xor_ln895_59_fu_1247_p2;
wire   [0:0] or_ln895_20_fu_1253_p2;
wire   [0:0] xor_ln895_60_fu_1259_p2;
wire   [0:0] deleted_ones_37_fu_1237_p2;
wire   [0:0] xor_ln896_60_fu_1270_p2;
wire   [0:0] and_ln891_20_fu_1242_p2;
wire   [0:0] or_ln896_20_fu_1276_p2;
wire   [0:0] xor_ln896_82_fu_1282_p2;
wire   [0:0] overflow_37_fu_1264_p2;
wire   [0:0] underflow_37_fu_1288_p2;
wire   [0:0] or_ln346_20_fu_1301_p2;
wire   [31:0] select_ln346_33_fu_1293_p3;
wire  signed [31:0] sext_ln856_11_fu_1178_p1;
wire   [30:0] zext_ln377_21_fu_1318_p1;
wire  signed [30:0] sext_ln823_12_fu_1315_p1;
wire  signed [30:0] p_Val2_113_fu_1321_p2;
wire   [0:0] p_Result_103_fu_1331_p3;
wire   [0:0] xor_ln896_61_fu_1339_p2;
wire   [0:0] xor_ln888_44_fu_1350_p2;
wire   [0:0] or_ln888_21_fu_1355_p2;
wire   [0:0] tmp_169_fu_1366_p3;
wire   [0:0] xor_ln890_21_fu_1374_p2;
wire   [0:0] or_ln890_21_fu_1380_p2;
wire   [0:0] carry_45_fu_1345_p2;
wire   [0:0] deleted_zeros_21_fu_1361_p2;
wire   [0:0] xor_ln895_61_fu_1396_p2;
wire   [0:0] or_ln895_21_fu_1402_p2;
wire   [0:0] xor_ln895_62_fu_1408_p2;
wire   [0:0] deleted_ones_38_fu_1386_p2;
wire   [0:0] xor_ln896_62_fu_1419_p2;
wire   [0:0] and_ln891_21_fu_1391_p2;
wire   [0:0] or_ln896_21_fu_1425_p2;
wire   [0:0] xor_ln896_83_fu_1431_p2;
wire   [0:0] overflow_38_fu_1413_p2;
wire   [0:0] underflow_38_fu_1437_p2;
wire   [0:0] or_ln346_21_fu_1450_p2;
wire   [31:0] select_ln346_34_fu_1442_p3;
wire  signed [31:0] sext_ln856_12_fu_1327_p1;
wire  signed [31:0] rhs_16_fu_884_p3;
wire  signed [32:0] sext_ln813_27_fu_1596_p1;
wire   [32:0] ret_V_16_fu_1600_p2;
wire   [31:0] p_Val2_126_fu_1614_p2;
wire   [0:0] p_Result_115_fu_1606_p3;
wire   [0:0] p_Result_116_fu_1620_p3;
wire   [0:0] xor_ln895_70_fu_1628_p2;
wire   [0:0] xor_ln896_70_fu_1640_p2;
wire   [0:0] xor_ln302_34_fu_1652_p2;
wire   [0:0] overflow_43_fu_1634_p2;
wire   [0:0] xor_ln302_35_fu_1658_p2;
wire   [0:0] underflow_43_fu_1646_p2;
wire   [0:0] or_ln302_16_fu_1664_p2;
wire   [31:0] select_ln302_34_fu_1670_p3;
wire   [31:0] select_ln350_16_fu_1678_p3;
wire  signed [31:0] rhs_17_fu_1009_p3;
wire  signed [32:0] sext_ln813_28_fu_1694_p1;
wire   [32:0] ret_V_17_fu_1698_p2;
wire   [31:0] p_Val2_128_fu_1712_p2;
wire   [0:0] p_Result_117_fu_1704_p3;
wire   [0:0] p_Result_118_fu_1718_p3;
wire   [0:0] xor_ln895_71_fu_1726_p2;
wire   [0:0] xor_ln896_71_fu_1738_p2;
wire   [0:0] xor_ln302_36_fu_1750_p2;
wire   [0:0] overflow_44_fu_1732_p2;
wire   [0:0] xor_ln302_37_fu_1756_p2;
wire   [0:0] underflow_44_fu_1744_p2;
wire   [0:0] or_ln302_17_fu_1762_p2;
wire   [31:0] select_ln302_36_fu_1768_p3;
wire   [31:0] select_ln350_17_fu_1776_p3;
wire  signed [31:0] lhs_fu_1686_p3;
wire  signed [31:0] rhs_19_fu_1307_p3;
wire  signed [32:0] sext_ln813_31_fu_1796_p1;
wire  signed [32:0] sext_ln813_30_fu_1792_p1;
wire   [32:0] ret_V_19_fu_1800_p2;
wire   [31:0] p_Val2_133_fu_1814_p2;
wire   [0:0] p_Result_121_fu_1806_p3;
wire   [0:0] p_Result_122_fu_1820_p3;
wire   [0:0] xor_ln895_73_fu_1828_p2;
wire   [0:0] xor_ln896_73_fu_1840_p2;
wire   [0:0] xor_ln302_40_fu_1852_p2;
wire   [0:0] overflow_46_fu_1834_p2;
wire   [0:0] xor_ln302_41_fu_1858_p2;
wire   [0:0] underflow_46_fu_1846_p2;
wire   [0:0] or_ln302_19_fu_1864_p2;
wire   [31:0] select_ln302_40_fu_1870_p3;
wire   [31:0] select_ln350_19_fu_1878_p3;
wire  signed [31:0] lhs_10_fu_1784_p3;
wire  signed [31:0] rhs_20_fu_1456_p3;
wire  signed [32:0] sext_ln813_33_fu_1898_p1;
wire  signed [32:0] sext_ln813_32_fu_1894_p1;
wire   [32:0] ret_V_20_fu_1902_p2;
wire   [31:0] p_Val2_135_fu_1916_p2;
wire   [0:0] p_Result_123_fu_1908_p3;
wire   [0:0] p_Result_124_fu_1922_p3;
wire   [0:0] xor_ln895_74_fu_1930_p2;
wire   [0:0] xor_ln896_74_fu_1942_p2;
wire   [0:0] xor_ln302_42_fu_1954_p2;
wire   [0:0] overflow_47_fu_1936_p2;
wire   [0:0] xor_ln302_43_fu_1960_p2;
wire   [0:0] underflow_47_fu_1948_p2;
wire   [0:0] or_ln302_20_fu_1966_p2;
wire   [31:0] select_ln302_42_fu_1972_p3;
wire   [31:0] select_ln350_20_fu_1980_p3;
wire   [31:0] zext_ln377_fu_1996_p1;
wire   [31:0] p_Val2_98_fu_1999_p2;
wire   [0:0] p_Result_88_fu_2004_p3;
wire   [0:0] xor_ln896_fu_2012_p2;
wire   [0:0] xor_ln888_fu_2023_p2;
wire   [0:0] or_ln888_fu_2028_p2;
wire   [0:0] tmp_139_fu_2039_p3;
wire   [0:0] xor_ln890_fu_2047_p2;
wire   [0:0] or_ln890_fu_2053_p2;
wire   [0:0] carry_35_fu_2018_p2;
wire   [0:0] deleted_zeros_fu_2034_p2;
wire   [0:0] xor_ln895_fu_2069_p2;
wire   [0:0] or_ln895_fu_2075_p2;
wire   [0:0] xor_ln895_52_fu_2081_p2;
wire   [0:0] deleted_ones_fu_2059_p2;
wire   [0:0] xor_ln896_52_fu_2092_p2;
wire   [0:0] and_ln891_fu_2064_p2;
wire   [0:0] or_ln896_fu_2098_p2;
wire   [0:0] xor_ln896_78_fu_2104_p2;
wire   [0:0] overflow_fu_2086_p2;
wire   [0:0] underflow_fu_2110_p2;
wire   [0:0] or_ln346_fu_2123_p2;
wire   [31:0] select_ln346_29_fu_2115_p3;
wire   [30:0] zext_ln377_22_fu_2140_p1;
wire  signed [30:0] sext_ln823_13_fu_2137_p1;
wire  signed [30:0] p_Val2_116_fu_2143_p2;
wire   [0:0] p_Result_106_fu_2153_p3;
wire   [0:0] xor_ln896_63_fu_2161_p2;
wire   [0:0] xor_ln888_46_fu_2172_p2;
wire   [0:0] or_ln888_22_fu_2177_p2;
wire   [0:0] tmp_175_fu_2188_p3;
wire   [0:0] xor_ln890_22_fu_2196_p2;
wire   [0:0] or_ln890_22_fu_2202_p2;
wire   [0:0] carry_47_fu_2167_p2;
wire   [0:0] deleted_zeros_22_fu_2183_p2;
wire   [0:0] xor_ln895_63_fu_2218_p2;
wire   [0:0] or_ln895_22_fu_2224_p2;
wire   [0:0] xor_ln895_64_fu_2230_p2;
wire   [0:0] deleted_ones_39_fu_2208_p2;
wire   [0:0] xor_ln896_64_fu_2241_p2;
wire   [0:0] and_ln891_22_fu_2213_p2;
wire   [0:0] or_ln896_22_fu_2247_p2;
wire   [0:0] xor_ln896_84_fu_2253_p2;
wire   [0:0] overflow_39_fu_2235_p2;
wire   [0:0] underflow_39_fu_2259_p2;
wire   [0:0] or_ln346_22_fu_2272_p2;
wire   [31:0] select_ln346_35_fu_2264_p3;
wire  signed [31:0] sext_ln856_13_fu_2149_p1;
wire   [30:0] zext_ln377_23_fu_2289_p1;
wire  signed [30:0] sext_ln823_14_fu_2286_p1;
wire  signed [30:0] p_Val2_119_fu_2292_p2;
wire   [0:0] p_Result_109_fu_2302_p3;
wire   [0:0] xor_ln896_65_fu_2310_p2;
wire   [0:0] xor_ln888_48_fu_2321_p2;
wire   [0:0] or_ln888_23_fu_2326_p2;
wire   [0:0] tmp_181_fu_2337_p3;
wire   [0:0] xor_ln890_23_fu_2345_p2;
wire   [0:0] or_ln890_23_fu_2351_p2;
wire   [0:0] carry_49_fu_2316_p2;
wire   [0:0] deleted_zeros_23_fu_2332_p2;
wire   [0:0] xor_ln895_65_fu_2367_p2;
wire   [0:0] or_ln895_23_fu_2373_p2;
wire   [0:0] xor_ln895_66_fu_2379_p2;
wire   [0:0] deleted_ones_40_fu_2357_p2;
wire   [0:0] xor_ln896_66_fu_2390_p2;
wire   [0:0] and_ln891_23_fu_2362_p2;
wire   [0:0] or_ln896_23_fu_2396_p2;
wire   [0:0] xor_ln896_85_fu_2402_p2;
wire   [0:0] overflow_40_fu_2384_p2;
wire   [0:0] underflow_40_fu_2408_p2;
wire   [0:0] or_ln346_23_fu_2421_p2;
wire   [31:0] select_ln346_36_fu_2413_p3;
wire  signed [31:0] sext_ln856_14_fu_2298_p1;
wire   [30:0] zext_ln377_24_fu_2438_p1;
wire  signed [30:0] sext_ln823_15_fu_2435_p1;
wire  signed [30:0] p_Val2_122_fu_2441_p2;
wire   [0:0] p_Result_112_fu_2451_p3;
wire   [0:0] xor_ln896_67_fu_2459_p2;
wire   [0:0] xor_ln888_50_fu_2470_p2;
wire   [0:0] or_ln888_24_fu_2475_p2;
wire   [0:0] tmp_187_fu_2486_p3;
wire   [0:0] xor_ln890_24_fu_2494_p2;
wire   [0:0] or_ln890_24_fu_2500_p2;
wire   [0:0] carry_51_fu_2465_p2;
wire   [0:0] deleted_zeros_24_fu_2481_p2;
wire   [0:0] xor_ln895_67_fu_2516_p2;
wire   [0:0] or_ln895_24_fu_2522_p2;
wire   [0:0] xor_ln895_68_fu_2528_p2;
wire   [0:0] deleted_ones_41_fu_2506_p2;
wire   [0:0] xor_ln896_68_fu_2539_p2;
wire   [0:0] and_ln891_24_fu_2511_p2;
wire   [0:0] or_ln896_24_fu_2545_p2;
wire   [0:0] xor_ln896_86_fu_2551_p2;
wire   [0:0] overflow_41_fu_2533_p2;
wire   [0:0] underflow_41_fu_2557_p2;
wire   [0:0] or_ln346_24_fu_2570_p2;
wire   [31:0] select_ln346_37_fu_2562_p3;
wire  signed [31:0] sext_ln856_15_fu_2447_p1;
wire  signed [31:0] rhs_fu_2129_p3;
wire  signed [32:0] sext_ln813_fu_2584_p1;
wire   [32:0] ret_V_fu_2588_p2;
wire   [31:0] p_Val2_124_fu_2602_p2;
wire   [0:0] p_Result_113_fu_2594_p3;
wire   [0:0] p_Result_114_fu_2608_p3;
wire   [0:0] xor_ln895_69_fu_2616_p2;
wire   [0:0] xor_ln896_69_fu_2628_p2;
wire   [0:0] xor_ln302_fu_2640_p2;
wire   [0:0] overflow_42_fu_2622_p2;
wire   [0:0] xor_ln302_33_fu_2646_p2;
wire   [0:0] underflow_42_fu_2634_p2;
wire   [0:0] or_ln302_fu_2652_p2;
wire   [31:0] select_ln302_fu_2658_p3;
wire   [31:0] select_ln350_fu_2666_p3;
wire  signed [32:0] sext_ln813_29_fu_2682_p1;
wire   [32:0] ret_V_18_fu_2685_p2;
wire   [31:0] p_Val2_131_fu_2699_p2;
wire   [0:0] p_Result_119_fu_2691_p3;
wire   [0:0] p_Result_120_fu_2704_p3;
wire   [0:0] xor_ln895_72_fu_2712_p2;
wire   [0:0] xor_ln896_72_fu_2724_p2;
wire   [0:0] xor_ln302_38_fu_2736_p2;
wire   [0:0] overflow_45_fu_2718_p2;
wire   [0:0] xor_ln302_39_fu_2742_p2;
wire   [0:0] underflow_45_fu_2730_p2;
wire   [0:0] or_ln302_18_fu_2748_p2;
wire   [31:0] select_ln302_38_fu_2754_p3;
wire   [31:0] select_ln350_18_fu_2762_p3;
wire  signed [31:0] lhs_11_fu_2770_p3;
wire  signed [31:0] rhs_21_fu_2278_p3;
wire  signed [32:0] sext_ln813_35_fu_2782_p1;
wire  signed [32:0] sext_ln813_34_fu_2778_p1;
wire   [32:0] ret_V_21_fu_2786_p2;
wire   [31:0] p_Val2_137_fu_2800_p2;
wire   [0:0] p_Result_125_fu_2792_p3;
wire   [0:0] p_Result_126_fu_2806_p3;
wire   [0:0] xor_ln895_75_fu_2814_p2;
wire   [0:0] xor_ln896_75_fu_2826_p2;
wire   [0:0] xor_ln302_44_fu_2838_p2;
wire   [0:0] overflow_48_fu_2820_p2;
wire   [0:0] xor_ln302_45_fu_2844_p2;
wire   [0:0] underflow_48_fu_2832_p2;
wire   [0:0] or_ln302_21_fu_2850_p2;
wire   [31:0] select_ln302_44_fu_2856_p3;
wire   [31:0] select_ln350_21_fu_2864_p3;
wire  signed [31:0] rhs_22_fu_2427_p3;
wire  signed [32:0] sext_ln813_37_fu_2883_p1;
wire  signed [32:0] sext_ln813_36_fu_2880_p1;
wire   [32:0] ret_V_22_fu_2887_p2;
wire   [31:0] p_Val2_139_fu_2901_p2;
wire   [0:0] p_Result_127_fu_2893_p3;
wire   [0:0] p_Result_128_fu_2906_p3;
wire   [0:0] xor_ln895_76_fu_2914_p2;
wire   [0:0] xor_ln896_76_fu_2926_p2;
wire   [0:0] xor_ln302_46_fu_2938_p2;
wire   [0:0] overflow_49_fu_2920_p2;
wire   [0:0] xor_ln302_47_fu_2944_p2;
wire   [0:0] underflow_49_fu_2932_p2;
wire   [0:0] or_ln302_22_fu_2950_p2;
wire   [31:0] select_ln302_46_fu_2956_p3;
wire   [31:0] select_ln350_22_fu_2964_p3;
wire  signed [31:0] rhs_23_fu_2576_p3;
wire  signed [32:0] sext_ln813_39_fu_2983_p1;
wire  signed [32:0] sext_ln813_38_fu_2980_p1;
wire   [32:0] ret_V_23_fu_2987_p2;
wire   [31:0] p_Val2_141_fu_3001_p2;
wire   [0:0] p_Result_129_fu_2993_p3;
wire   [0:0] p_Result_130_fu_3006_p3;
wire   [0:0] xor_ln895_77_fu_3014_p2;
wire   [0:0] xor_ln896_77_fu_3026_p2;
wire   [0:0] xor_ln302_48_fu_3038_p2;
wire   [0:0] overflow_50_fu_3020_p2;
wire   [0:0] xor_ln302_49_fu_3044_p2;
wire   [0:0] underflow_50_fu_3032_p2;
wire   [0:0] or_ln302_23_fu_3050_p2;
wire   [31:0] select_ln302_48_fu_3056_p3;
wire   [31:0] select_ln350_23_fu_3064_p3;
wire   [31:0] p_Val2_129_fu_2674_p3;
wire   [31:0] select_ln302_45_fu_2872_p3;
wire   [31:0] select_ln302_47_fu_2972_p3;
wire   [31:0] select_ln302_49_fu_3072_p3;
reg    ap_ce_reg;
reg   [95:0] p_read_int_reg;
reg   [31:0] ap_return_0_int_reg;
reg   [31:0] ap_return_1_int_reg;
reg   [31:0] ap_return_2_int_reg;
reg   [31:0] ap_return_3_int_reg;

motor_mul_32s_23ns_54_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 23 ),
    .dout_WIDTH( 54 ))
mul_32s_23ns_54_1_0_U1(
    .din0(r_V_31_fu_104_p0),
    .din1(r_V_31_fu_104_p1),
    .dout(r_V_31_fu_104_p2)
);

motor_mul_32s_26ns_57_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 26 ),
    .dout_WIDTH( 57 ))
mul_32s_26ns_57_1_0_U2(
    .din0(a_V_reg_3104),
    .din1(r_V_25_fu_105_p1),
    .dout(r_V_25_fu_105_p2)
);

motor_mul_32s_23ns_54_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 23 ),
    .dout_WIDTH( 54 ))
mul_32s_23ns_54_1_0_U3(
    .din0(r_V_26_fu_106_p0),
    .din1(r_V_26_fu_106_p1),
    .dout(r_V_26_fu_106_p2)
);

motor_mul_32s_23s_54_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 23 ),
    .dout_WIDTH( 54 ))
mul_32s_23s_54_1_0_U4(
    .din0(r_V_29_fu_107_p0),
    .din1(r_V_29_fu_107_p1),
    .dout(r_V_29_fu_107_p2)
);

motor_mul_32s_23ns_54_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 23 ),
    .dout_WIDTH( 54 ))
mul_32s_23ns_54_1_0_U5(
    .din0(r_V_32_fu_108_p0),
    .din1(r_V_32_fu_108_p1),
    .dout(r_V_32_fu_108_p2)
);

motor_mul_32s_23s_54_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 23 ),
    .dout_WIDTH( 54 ))
mul_32s_23s_54_1_0_U6(
    .din0(r_V_fu_109_p0),
    .din1(r_V_fu_109_p1),
    .dout(r_V_fu_109_p2)
);

motor_mul_32s_23ns_54_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 23 ),
    .dout_WIDTH( 54 ))
mul_32s_23ns_54_1_0_U7(
    .din0(r_V_28_fu_110_p0),
    .din1(r_V_28_fu_110_p1),
    .dout(r_V_28_fu_110_p2)
);

motor_mul_32s_23s_54_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 23 ),
    .dout_WIDTH( 54 ))
mul_32s_23s_54_1_0_U8(
    .din0(r_V_30_fu_111_p0),
    .din1(r_V_30_fu_111_p1),
    .dout(r_V_30_fu_111_p2)
);

motor_mul_32s_23ns_54_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 23 ),
    .dout_WIDTH( 54 ))
mul_32s_23ns_54_1_0_U9(
    .din0(r_V_27_fu_112_p0),
    .din1(r_V_27_fu_112_p1),
    .dout(r_V_27_fu_112_p2)
);

always @ (posedge ap_clk) begin
    ap_ce_reg <= ap_ce;
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        Range2_all_ones_17_reg_3133 <= r_V_26_fu_106_p2[32'd53];
        Range2_all_ones_18_reg_3164 <= r_V_27_fu_112_p2[32'd53];
        Range2_all_ones_19_reg_3193 <= r_V_28_fu_110_p2[32'd53];
        Range2_all_ones_20_reg_3222 <= r_V_29_fu_107_p2[32'd53];
        Range2_all_ones_21_reg_3251 <= r_V_30_fu_111_p2[32'd53];
        Range2_all_ones_22_reg_3320 <= r_V_fu_109_p2[32'd53];
        Range2_all_ones_23_reg_3349 <= r_V_31_fu_104_p2[32'd53];
        Range2_all_ones_24_reg_3378 <= r_V_32_fu_108_p2[32'd53];
        Range2_all_ones_reg_3285 <= r_V_25_fu_105_p2[32'd56];
        a_V_2_reg_3258 <= {{p_read_int_reg[95:64]}};
        a_V_reg_3104 <= a_V_fu_430_p1;
        lhs_12_reg_3385 <= lhs_12_fu_1886_p3;
        lhs_13_reg_3391 <= lhs_13_fu_1988_p3;
        p_Result_101_reg_3229 <= r_V_30_fu_111_p2[32'd53];
        p_Result_102_reg_3240 <= r_V_30_fu_111_p2[32'd53];
        p_Result_104_reg_3298 <= r_V_fu_109_p2[32'd53];
        p_Result_105_reg_3309 <= r_V_fu_109_p2[32'd53];
        p_Result_107_reg_3327 <= r_V_31_fu_104_p2[32'd53];
        p_Result_108_reg_3338 <= r_V_31_fu_104_p2[32'd53];
        p_Result_110_reg_3356 <= r_V_32_fu_108_p2[32'd53];
        p_Result_111_reg_3367 <= r_V_32_fu_108_p2[32'd53];
        p_Result_87_reg_3274 <= r_V_25_fu_105_p2[32'd55];
        p_Result_89_reg_3109 <= r_V_26_fu_106_p2[32'd53];
        p_Result_90_reg_3115 <= r_V_26_fu_106_p2[32'd53];
        p_Result_91_reg_3126 <= p_Val2_101_fu_482_p2[32'd30];
        p_Result_92_reg_3140 <= r_V_27_fu_112_p2[32'd53];
        p_Result_93_reg_3146 <= r_V_27_fu_112_p2[32'd53];
        p_Result_94_reg_3157 <= p_Val2_104_fu_546_p2[32'd30];
        p_Result_95_reg_3171 <= r_V_28_fu_110_p2[32'd53];
        p_Result_96_reg_3182 <= r_V_28_fu_110_p2[32'd53];
        p_Result_98_reg_3200 <= r_V_29_fu_107_p2[32'd53];
        p_Result_99_reg_3211 <= r_V_29_fu_107_p2[32'd53];
        p_Result_s_reg_3263 <= r_V_25_fu_105_p2[32'd56];
        p_Val2_101_reg_3121 <= p_Val2_101_fu_482_p2;
        p_Val2_104_reg_3152 <= p_Val2_104_fu_546_p2;
        p_Val2_106_reg_3177 <= {{r_V_28_fu_110_p2[53:24]}};
        p_Val2_109_reg_3206 <= {{r_V_29_fu_107_p2[53:24]}};
        p_Val2_112_reg_3235 <= {{r_V_30_fu_111_p2[53:24]}};
        p_Val2_115_reg_3304 <= {{r_V_fu_109_p2[53:24]}};
        p_Val2_118_reg_3333 <= {{r_V_31_fu_104_p2[53:24]}};
        p_Val2_121_reg_3362 <= {{r_V_32_fu_108_p2[53:24]}};
        p_Val2_97_reg_3269 <= {{r_V_25_fu_105_p2[55:24]}};
        r_V_25_reg_413 <= r_V_25_fu_105_p2;
        r_V_26_reg_313 <= r_V_26_fu_106_p2;
        r_V_27_reg_317 <= r_V_27_fu_112_p2;
        r_V_28_reg_321 <= r_V_28_fu_110_p2;
        r_V_29_reg_325 <= r_V_29_fu_107_p2;
        r_V_30_reg_329 <= r_V_30_fu_111_p2;
        r_V_31_reg_421 <= r_V_31_fu_104_p2;
        r_V_32_reg_425 <= r_V_32_fu_108_p2;
        r_V_reg_417 <= r_V_fu_109_p2;
        rhs_18_reg_3292 <= rhs_18_fu_1158_p3;
        tmp_154_reg_3188 <= r_V_28_fu_110_p2[32'd23];
        tmp_160_reg_3217 <= r_V_29_fu_107_p2[32'd23];
        tmp_166_reg_3246 <= r_V_30_fu_111_p2[32'd23];
        tmp_172_reg_3315 <= r_V_fu_109_p2[32'd23];
        tmp_178_reg_3344 <= r_V_31_fu_104_p2[32'd23];
        tmp_184_reg_3373 <= r_V_32_fu_108_p2[32'd23];
        tmp_reg_3280 <= r_V_25_fu_105_p2[32'd23];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce_reg)) begin
        ap_return_0_int_reg <= p_Val2_129_fu_2674_p3;
        ap_return_1_int_reg <= select_ln302_45_fu_2872_p3;
        ap_return_2_int_reg <= select_ln302_47_fu_2972_p3;
        ap_return_3_int_reg <= select_ln302_49_fu_3072_p3;
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
        ap_return_0 = p_Val2_129_fu_2674_p3;
    end else begin
        ap_return_0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_1 = ap_return_1_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_1 = select_ln302_45_fu_2872_p3;
    end else begin
        ap_return_1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_2 = ap_return_2_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_2 = select_ln302_47_fu_2972_p3;
    end else begin
        ap_return_2 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_3 = ap_return_3_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_3 = select_ln302_49_fu_3072_p3;
    end else begin
        ap_return_3 = 'bx;
    end
end

assign a_V_1_fu_568_p4 = {{p_read_int_reg[63:32]}};

assign a_V_fu_430_p1 = p_read_int_reg[31:0];

assign and_ln891_17_fu_820_p2 = (carry_37_fu_775_p2 & Range2_all_ones_17_reg_3133);

assign and_ln891_18_fu_945_p2 = (carry_39_fu_900_p2 & Range2_all_ones_18_reg_3164);

assign and_ln891_19_fu_1093_p2 = (carry_41_fu_1047_p2 & Range2_all_ones_19_reg_3193);

assign and_ln891_20_fu_1242_p2 = (carry_43_fu_1196_p2 & Range2_all_ones_20_reg_3222);

assign and_ln891_21_fu_1391_p2 = (carry_45_fu_1345_p2 & Range2_all_ones_21_reg_3251);

assign and_ln891_22_fu_2213_p2 = (carry_47_fu_2167_p2 & Range2_all_ones_22_reg_3320);

assign and_ln891_23_fu_2362_p2 = (carry_49_fu_2316_p2 & Range2_all_ones_23_reg_3349);

assign and_ln891_24_fu_2511_p2 = (carry_51_fu_2465_p2 & Range2_all_ones_24_reg_3378);

assign and_ln891_fu_2064_p2 = (carry_35_fu_2018_p2 & Range2_all_ones_reg_3285);

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign carry_35_fu_2018_p2 = (xor_ln896_fu_2012_p2 & p_Result_87_reg_3274);

assign carry_37_fu_775_p2 = (xor_ln896_53_fu_770_p2 & p_Result_90_reg_3115);

assign carry_39_fu_900_p2 = (xor_ln896_55_fu_895_p2 & p_Result_93_reg_3146);

assign carry_41_fu_1047_p2 = (xor_ln896_57_fu_1041_p2 & p_Result_96_reg_3182);

assign carry_43_fu_1196_p2 = (xor_ln896_59_fu_1190_p2 & p_Result_99_reg_3211);

assign carry_45_fu_1345_p2 = (xor_ln896_61_fu_1339_p2 & p_Result_102_reg_3240);

assign carry_47_fu_2167_p2 = (xor_ln896_63_fu_2161_p2 & p_Result_105_reg_3309);

assign carry_49_fu_2316_p2 = (xor_ln896_65_fu_2310_p2 & p_Result_108_reg_3338);

assign carry_51_fu_2465_p2 = (xor_ln896_67_fu_2459_p2 & p_Result_111_reg_3367);

assign deleted_ones_34_fu_815_p2 = (or_ln890_17_fu_809_p2 & Range2_all_ones_17_reg_3133);

assign deleted_ones_35_fu_940_p2 = (or_ln890_18_fu_934_p2 & Range2_all_ones_18_reg_3164);

assign deleted_ones_36_fu_1088_p2 = (or_ln890_19_fu_1082_p2 & Range2_all_ones_19_reg_3193);

assign deleted_ones_37_fu_1237_p2 = (or_ln890_20_fu_1231_p2 & Range2_all_ones_20_reg_3222);

assign deleted_ones_38_fu_1386_p2 = (or_ln890_21_fu_1380_p2 & Range2_all_ones_21_reg_3251);

assign deleted_ones_39_fu_2208_p2 = (or_ln890_22_fu_2202_p2 & Range2_all_ones_22_reg_3320);

assign deleted_ones_40_fu_2357_p2 = (or_ln890_23_fu_2351_p2 & Range2_all_ones_23_reg_3349);

assign deleted_ones_41_fu_2506_p2 = (or_ln890_24_fu_2500_p2 & Range2_all_ones_24_reg_3378);

assign deleted_ones_fu_2059_p2 = (or_ln890_fu_2053_p2 & Range2_all_ones_reg_3285);

assign deleted_zeros_17_fu_790_p2 = (or_ln888_17_fu_785_p2 ^ Range2_all_ones_17_reg_3133);

assign deleted_zeros_18_fu_915_p2 = (or_ln888_18_fu_910_p2 ^ Range2_all_ones_18_reg_3164);

assign deleted_zeros_19_fu_1063_p2 = (or_ln888_19_fu_1057_p2 ^ Range2_all_ones_19_reg_3193);

assign deleted_zeros_20_fu_1212_p2 = (or_ln888_20_fu_1206_p2 ^ Range2_all_ones_20_reg_3222);

assign deleted_zeros_21_fu_1361_p2 = (or_ln888_21_fu_1355_p2 ^ Range2_all_ones_21_reg_3251);

assign deleted_zeros_22_fu_2183_p2 = (or_ln888_22_fu_2177_p2 ^ Range2_all_ones_22_reg_3320);

assign deleted_zeros_23_fu_2332_p2 = (or_ln888_23_fu_2326_p2 ^ Range2_all_ones_23_reg_3349);

assign deleted_zeros_24_fu_2481_p2 = (or_ln888_24_fu_2475_p2 ^ Range2_all_ones_24_reg_3378);

assign deleted_zeros_fu_2034_p2 = (or_ln888_fu_2028_p2 ^ Range2_all_ones_reg_3285);

assign lhs_10_fu_1784_p3 = ((or_ln302_17_fu_1762_p2[0:0] == 1'b1) ? select_ln302_36_fu_1768_p3 : select_ln350_17_fu_1776_p3);

assign lhs_11_fu_2770_p3 = ((or_ln302_18_fu_2748_p2[0:0] == 1'b1) ? select_ln302_38_fu_2754_p3 : select_ln350_18_fu_2762_p3);

assign lhs_12_fu_1886_p3 = ((or_ln302_19_fu_1864_p2[0:0] == 1'b1) ? select_ln302_40_fu_1870_p3 : select_ln350_19_fu_1878_p3);

assign lhs_13_fu_1988_p3 = ((or_ln302_20_fu_1966_p2[0:0] == 1'b1) ? select_ln302_42_fu_1972_p3 : select_ln350_20_fu_1980_p3);

assign lhs_fu_1686_p3 = ((or_ln302_16_fu_1664_p2[0:0] == 1'b1) ? select_ln302_34_fu_1670_p3 : select_ln350_16_fu_1678_p3);

assign or_ln302_16_fu_1664_p2 = (xor_ln302_35_fu_1658_p2 | overflow_43_fu_1634_p2);

assign or_ln302_17_fu_1762_p2 = (xor_ln302_37_fu_1756_p2 | overflow_44_fu_1732_p2);

assign or_ln302_18_fu_2748_p2 = (xor_ln302_39_fu_2742_p2 | overflow_45_fu_2718_p2);

assign or_ln302_19_fu_1864_p2 = (xor_ln302_41_fu_1858_p2 | overflow_46_fu_1834_p2);

assign or_ln302_20_fu_1966_p2 = (xor_ln302_43_fu_1960_p2 | overflow_47_fu_1936_p2);

assign or_ln302_21_fu_2850_p2 = (xor_ln302_45_fu_2844_p2 | overflow_48_fu_2820_p2);

assign or_ln302_22_fu_2950_p2 = (xor_ln302_47_fu_2944_p2 | overflow_49_fu_2920_p2);

assign or_ln302_23_fu_3050_p2 = (xor_ln302_49_fu_3044_p2 | overflow_50_fu_3020_p2);

assign or_ln302_fu_2652_p2 = (xor_ln302_33_fu_2646_p2 | overflow_42_fu_2622_p2);

assign or_ln346_17_fu_878_p2 = (underflow_34_fu_865_p2 | overflow_34_fu_841_p2);

assign or_ln346_18_fu_1003_p2 = (underflow_35_fu_990_p2 | overflow_35_fu_966_p2);

assign or_ln346_19_fu_1152_p2 = (underflow_36_fu_1139_p2 | overflow_36_fu_1115_p2);

assign or_ln346_20_fu_1301_p2 = (underflow_37_fu_1288_p2 | overflow_37_fu_1264_p2);

assign or_ln346_21_fu_1450_p2 = (underflow_38_fu_1437_p2 | overflow_38_fu_1413_p2);

assign or_ln346_22_fu_2272_p2 = (underflow_39_fu_2259_p2 | overflow_39_fu_2235_p2);

assign or_ln346_23_fu_2421_p2 = (underflow_40_fu_2408_p2 | overflow_40_fu_2384_p2);

assign or_ln346_24_fu_2570_p2 = (underflow_41_fu_2557_p2 | overflow_41_fu_2533_p2);

assign or_ln346_fu_2123_p2 = (underflow_fu_2110_p2 | overflow_fu_2086_p2);

assign or_ln888_17_fu_785_p2 = (xor_ln888_36_fu_780_p2 | p_Result_91_reg_3126);

assign or_ln888_18_fu_910_p2 = (xor_ln888_38_fu_905_p2 | p_Result_94_reg_3157);

assign or_ln888_19_fu_1057_p2 = (xor_ln888_40_fu_1052_p2 | p_Result_97_fu_1033_p3);

assign or_ln888_20_fu_1206_p2 = (xor_ln888_42_fu_1201_p2 | p_Result_100_fu_1182_p3);

assign or_ln888_21_fu_1355_p2 = (xor_ln888_44_fu_1350_p2 | p_Result_103_fu_1331_p3);

assign or_ln888_22_fu_2177_p2 = (xor_ln888_46_fu_2172_p2 | p_Result_106_fu_2153_p3);

assign or_ln888_23_fu_2326_p2 = (xor_ln888_48_fu_2321_p2 | p_Result_109_fu_2302_p3);

assign or_ln888_24_fu_2475_p2 = (xor_ln888_50_fu_2470_p2 | p_Result_112_fu_2451_p3);

assign or_ln888_fu_2028_p2 = (xor_ln888_fu_2023_p2 | p_Result_88_fu_2004_p3);

assign or_ln890_17_fu_809_p2 = (xor_ln890_17_fu_803_p2 | or_ln888_17_fu_785_p2);

assign or_ln890_18_fu_934_p2 = (xor_ln890_18_fu_928_p2 | or_ln888_18_fu_910_p2);

assign or_ln890_19_fu_1082_p2 = (xor_ln890_19_fu_1076_p2 | or_ln888_19_fu_1057_p2);

assign or_ln890_20_fu_1231_p2 = (xor_ln890_20_fu_1225_p2 | or_ln888_20_fu_1206_p2);

assign or_ln890_21_fu_1380_p2 = (xor_ln890_21_fu_1374_p2 | or_ln888_21_fu_1355_p2);

assign or_ln890_22_fu_2202_p2 = (xor_ln890_22_fu_2196_p2 | or_ln888_22_fu_2177_p2);

assign or_ln890_23_fu_2351_p2 = (xor_ln890_23_fu_2345_p2 | or_ln888_23_fu_2326_p2);

assign or_ln890_24_fu_2500_p2 = (xor_ln890_24_fu_2494_p2 | or_ln888_24_fu_2475_p2);

assign or_ln890_fu_2053_p2 = (xor_ln890_fu_2047_p2 | or_ln888_fu_2028_p2);

assign or_ln895_17_fu_831_p2 = (xor_ln895_53_fu_825_p2 | p_Result_91_reg_3126);

assign or_ln895_18_fu_956_p2 = (xor_ln895_55_fu_950_p2 | p_Result_94_reg_3157);

assign or_ln895_19_fu_1104_p2 = (xor_ln895_57_fu_1098_p2 | p_Result_97_fu_1033_p3);

assign or_ln895_20_fu_1253_p2 = (xor_ln895_59_fu_1247_p2 | p_Result_100_fu_1182_p3);

assign or_ln895_21_fu_1402_p2 = (xor_ln895_61_fu_1396_p2 | p_Result_103_fu_1331_p3);

assign or_ln895_22_fu_2224_p2 = (xor_ln895_63_fu_2218_p2 | p_Result_106_fu_2153_p3);

assign or_ln895_23_fu_2373_p2 = (xor_ln895_65_fu_2367_p2 | p_Result_109_fu_2302_p3);

assign or_ln895_24_fu_2522_p2 = (xor_ln895_67_fu_2516_p2 | p_Result_112_fu_2451_p3);

assign or_ln895_fu_2075_p2 = (xor_ln895_fu_2069_p2 | p_Result_88_fu_2004_p3);

assign or_ln896_17_fu_853_p2 = (xor_ln896_54_fu_847_p2 | xor_ln896_53_fu_770_p2);

assign or_ln896_18_fu_978_p2 = (xor_ln896_56_fu_972_p2 | xor_ln896_55_fu_895_p2);

assign or_ln896_19_fu_1127_p2 = (xor_ln896_58_fu_1121_p2 | xor_ln896_57_fu_1041_p2);

assign or_ln896_20_fu_1276_p2 = (xor_ln896_60_fu_1270_p2 | xor_ln896_59_fu_1190_p2);

assign or_ln896_21_fu_1425_p2 = (xor_ln896_62_fu_1419_p2 | xor_ln896_61_fu_1339_p2);

assign or_ln896_22_fu_2247_p2 = (xor_ln896_64_fu_2241_p2 | xor_ln896_63_fu_2161_p2);

assign or_ln896_23_fu_2396_p2 = (xor_ln896_66_fu_2390_p2 | xor_ln896_65_fu_2310_p2);

assign or_ln896_24_fu_2545_p2 = (xor_ln896_68_fu_2539_p2 | xor_ln896_67_fu_2459_p2);

assign or_ln896_fu_2098_p2 = (xor_ln896_fu_2012_p2 | xor_ln896_52_fu_2092_p2);

assign overflow_34_fu_841_p2 = (xor_ln895_54_fu_836_p2 & or_ln895_17_fu_831_p2);

assign overflow_35_fu_966_p2 = (xor_ln895_56_fu_961_p2 & or_ln895_18_fu_956_p2);

assign overflow_36_fu_1115_p2 = (xor_ln895_58_fu_1110_p2 & or_ln895_19_fu_1104_p2);

assign overflow_37_fu_1264_p2 = (xor_ln895_60_fu_1259_p2 & or_ln895_20_fu_1253_p2);

assign overflow_38_fu_1413_p2 = (xor_ln895_62_fu_1408_p2 & or_ln895_21_fu_1402_p2);

assign overflow_39_fu_2235_p2 = (xor_ln895_64_fu_2230_p2 & or_ln895_22_fu_2224_p2);

assign overflow_40_fu_2384_p2 = (xor_ln895_66_fu_2379_p2 & or_ln895_23_fu_2373_p2);

assign overflow_41_fu_2533_p2 = (xor_ln895_68_fu_2528_p2 & or_ln895_24_fu_2522_p2);

assign overflow_42_fu_2622_p2 = (xor_ln895_69_fu_2616_p2 & p_Result_114_fu_2608_p3);

assign overflow_43_fu_1634_p2 = (xor_ln895_70_fu_1628_p2 & p_Result_116_fu_1620_p3);

assign overflow_44_fu_1732_p2 = (xor_ln895_71_fu_1726_p2 & p_Result_118_fu_1718_p3);

assign overflow_45_fu_2718_p2 = (xor_ln895_72_fu_2712_p2 & p_Result_120_fu_2704_p3);

assign overflow_46_fu_1834_p2 = (xor_ln895_73_fu_1828_p2 & p_Result_122_fu_1820_p3);

assign overflow_47_fu_1936_p2 = (xor_ln895_74_fu_1930_p2 & p_Result_124_fu_1922_p3);

assign overflow_48_fu_2820_p2 = (xor_ln895_75_fu_2814_p2 & p_Result_126_fu_2806_p3);

assign overflow_49_fu_2920_p2 = (xor_ln895_76_fu_2914_p2 & p_Result_128_fu_2906_p3);

assign overflow_50_fu_3020_p2 = (xor_ln895_77_fu_3014_p2 & p_Result_130_fu_3006_p3);

assign overflow_fu_2086_p2 = (xor_ln895_52_fu_2081_p2 & or_ln895_fu_2075_p2);

assign p_Result_100_fu_1182_p3 = p_Val2_110_fu_1172_p2[32'd30];

assign p_Result_103_fu_1331_p3 = p_Val2_113_fu_1321_p2[32'd30];

assign p_Result_106_fu_2153_p3 = p_Val2_116_fu_2143_p2[32'd30];

assign p_Result_109_fu_2302_p3 = p_Val2_119_fu_2292_p2[32'd30];

assign p_Result_112_fu_2451_p3 = p_Val2_122_fu_2441_p2[32'd30];

assign p_Result_113_fu_2594_p3 = ret_V_fu_2588_p2[32'd32];

assign p_Result_114_fu_2608_p3 = p_Val2_124_fu_2602_p2[32'd31];

assign p_Result_115_fu_1606_p3 = ret_V_16_fu_1600_p2[32'd32];

assign p_Result_116_fu_1620_p3 = p_Val2_126_fu_1614_p2[32'd31];

assign p_Result_117_fu_1704_p3 = ret_V_17_fu_1698_p2[32'd32];

assign p_Result_118_fu_1718_p3 = p_Val2_128_fu_1712_p2[32'd31];

assign p_Result_119_fu_2691_p3 = ret_V_18_fu_2685_p2[32'd32];

assign p_Result_120_fu_2704_p3 = p_Val2_131_fu_2699_p2[32'd31];

assign p_Result_121_fu_1806_p3 = ret_V_19_fu_1800_p2[32'd32];

assign p_Result_122_fu_1820_p3 = p_Val2_133_fu_1814_p2[32'd31];

assign p_Result_123_fu_1908_p3 = ret_V_20_fu_1902_p2[32'd32];

assign p_Result_124_fu_1922_p3 = p_Val2_135_fu_1916_p2[32'd31];

assign p_Result_125_fu_2792_p3 = ret_V_21_fu_2786_p2[32'd32];

assign p_Result_126_fu_2806_p3 = p_Val2_137_fu_2800_p2[32'd31];

assign p_Result_127_fu_2893_p3 = ret_V_22_fu_2887_p2[32'd32];

assign p_Result_128_fu_2906_p3 = p_Val2_139_fu_2901_p2[32'd31];

assign p_Result_129_fu_2993_p3 = ret_V_23_fu_2987_p2[32'd32];

assign p_Result_130_fu_3006_p3 = p_Val2_141_fu_3001_p2[32'd31];

assign p_Result_88_fu_2004_p3 = p_Val2_98_fu_1999_p2[32'd31];

assign p_Result_97_fu_1033_p3 = p_Val2_107_fu_1023_p2[32'd30];

assign p_Val2_100_fu_448_p4 = {{r_V_26_fu_106_p2[53:24]}};

assign p_Val2_101_fu_482_p2 = ($signed(zext_ln377_17_fu_478_p1) + $signed(sext_ln823_fu_458_p1));

assign p_Val2_103_fu_512_p4 = {{r_V_27_fu_112_p2[53:24]}};

assign p_Val2_104_fu_546_p2 = ($signed(zext_ln377_18_fu_542_p1) + $signed(sext_ln823_9_fu_522_p1));

assign p_Val2_107_fu_1023_p2 = ($signed(zext_ln377_19_fu_1020_p1) + $signed(sext_ln823_10_fu_1017_p1));

assign p_Val2_110_fu_1172_p2 = ($signed(zext_ln377_20_fu_1169_p1) + $signed(sext_ln823_11_fu_1166_p1));

assign p_Val2_113_fu_1321_p2 = ($signed(zext_ln377_21_fu_1318_p1) + $signed(sext_ln823_12_fu_1315_p1));

assign p_Val2_116_fu_2143_p2 = ($signed(zext_ln377_22_fu_2140_p1) + $signed(sext_ln823_13_fu_2137_p1));

assign p_Val2_119_fu_2292_p2 = ($signed(zext_ln377_23_fu_2289_p1) + $signed(sext_ln823_14_fu_2286_p1));

assign p_Val2_122_fu_2441_p2 = ($signed(zext_ln377_24_fu_2438_p1) + $signed(sext_ln823_15_fu_2435_p1));

assign p_Val2_124_fu_2602_p2 = ($signed(rhs_fu_2129_p3) + $signed(32'd4294057118));

assign p_Val2_126_fu_1614_p2 = ($signed(rhs_16_fu_884_p3) + $signed(32'd4294697172));

assign p_Val2_128_fu_1712_p2 = ($signed(rhs_17_fu_1009_p3) + $signed(32'd4293009208));

assign p_Val2_129_fu_2674_p3 = ((or_ln302_fu_2652_p2[0:0] == 1'b1) ? select_ln302_fu_2658_p3 : select_ln350_fu_2666_p3);

assign p_Val2_131_fu_2699_p2 = ($signed(rhs_18_reg_3292) + $signed(32'd5765636));

assign p_Val2_133_fu_1814_p2 = ($signed(rhs_19_fu_1307_p3) + $signed(lhs_fu_1686_p3));

assign p_Val2_135_fu_1916_p2 = ($signed(rhs_20_fu_1456_p3) + $signed(lhs_10_fu_1784_p3));

assign p_Val2_137_fu_2800_p2 = ($signed(rhs_21_fu_2278_p3) + $signed(lhs_11_fu_2770_p3));

assign p_Val2_139_fu_2901_p2 = ($signed(rhs_22_fu_2427_p3) + $signed(lhs_12_reg_3385));

assign p_Val2_141_fu_3001_p2 = ($signed(rhs_23_fu_2576_p3) + $signed(lhs_13_reg_3391));

assign p_Val2_98_fu_1999_p2 = (zext_ln377_fu_1996_p1 + p_Val2_97_reg_3269);

assign r_V_25_fu_105_p1 = 57'd25766628;

assign r_V_26_fu_106_p0 = sext_ln70_fu_434_p1;

assign r_V_26_fu_106_p1 = 54'd2291250;

assign r_V_27_fu_112_p0 = sext_ln70_fu_434_p1;

assign r_V_27_fu_112_p1 = 54'd2264876;

assign r_V_28_fu_110_p0 = sext_ln70_14_fu_578_p1;

assign r_V_28_fu_110_p1 = 54'd3046284;

assign r_V_29_fu_107_p0 = sext_ln70_14_fu_578_p1;

assign r_V_29_fu_107_p1 = 54'd18014398506808642;

assign r_V_30_fu_111_p0 = sext_ln70_14_fu_578_p1;

assign r_V_30_fu_111_p1 = 54'd18014398506836554;

assign r_V_31_fu_104_p0 = sext_ln70_15_fu_1464_p1;

assign r_V_31_fu_104_p1 = 54'd2644459;

assign r_V_32_fu_108_p0 = sext_ln70_15_fu_1464_p1;

assign r_V_32_fu_108_p1 = 54'd2578651;

assign r_V_fu_109_p0 = sext_ln70_15_fu_1464_p1;

assign r_V_fu_109_p1 = 54'd18014398506422962;

assign ret_V_16_fu_1600_p2 = ($signed(sext_ln813_27_fu_1596_p1) + $signed(33'd8589664468));

assign ret_V_17_fu_1698_p2 = ($signed(sext_ln813_28_fu_1694_p1) + $signed(33'd8587976504));

assign ret_V_18_fu_2685_p2 = ($signed(sext_ln813_29_fu_2682_p1) + $signed(33'd5765636));

assign ret_V_19_fu_1800_p2 = ($signed(sext_ln813_31_fu_1796_p1) + $signed(sext_ln813_30_fu_1792_p1));

assign ret_V_20_fu_1902_p2 = ($signed(sext_ln813_33_fu_1898_p1) + $signed(sext_ln813_32_fu_1894_p1));

assign ret_V_21_fu_2786_p2 = ($signed(sext_ln813_35_fu_2782_p1) + $signed(sext_ln813_34_fu_2778_p1));

assign ret_V_22_fu_2887_p2 = ($signed(sext_ln813_37_fu_2883_p1) + $signed(sext_ln813_36_fu_2880_p1));

assign ret_V_23_fu_2987_p2 = ($signed(sext_ln813_39_fu_2983_p1) + $signed(sext_ln813_38_fu_2980_p1));

assign ret_V_fu_2588_p2 = ($signed(sext_ln813_fu_2584_p1) + $signed(33'd8589024414));

assign rhs_16_fu_884_p3 = ((or_ln346_17_fu_878_p2[0:0] == 1'b1) ? select_ln346_30_fu_870_p3 : sext_ln856_fu_767_p1);

assign rhs_17_fu_1009_p3 = ((or_ln346_18_fu_1003_p2[0:0] == 1'b1) ? select_ln346_31_fu_995_p3 : sext_ln856_9_fu_892_p1);

assign rhs_18_fu_1158_p3 = ((or_ln346_19_fu_1152_p2[0:0] == 1'b1) ? select_ln346_32_fu_1144_p3 : sext_ln856_10_fu_1029_p1);

assign rhs_19_fu_1307_p3 = ((or_ln346_20_fu_1301_p2[0:0] == 1'b1) ? select_ln346_33_fu_1293_p3 : sext_ln856_11_fu_1178_p1);

assign rhs_20_fu_1456_p3 = ((or_ln346_21_fu_1450_p2[0:0] == 1'b1) ? select_ln346_34_fu_1442_p3 : sext_ln856_12_fu_1327_p1);

assign rhs_21_fu_2278_p3 = ((or_ln346_22_fu_2272_p2[0:0] == 1'b1) ? select_ln346_35_fu_2264_p3 : sext_ln856_13_fu_2149_p1);

assign rhs_22_fu_2427_p3 = ((or_ln346_23_fu_2421_p2[0:0] == 1'b1) ? select_ln346_36_fu_2413_p3 : sext_ln856_14_fu_2298_p1);

assign rhs_23_fu_2576_p3 = ((or_ln346_24_fu_2570_p2[0:0] == 1'b1) ? select_ln346_37_fu_2562_p3 : sext_ln856_15_fu_2447_p1);

assign rhs_fu_2129_p3 = ((or_ln346_fu_2123_p2[0:0] == 1'b1) ? select_ln346_29_fu_2115_p3 : p_Val2_98_fu_1999_p2);

assign select_ln302_34_fu_1670_p3 = ((xor_ln302_34_fu_1652_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_126_fu_1614_p2);

assign select_ln302_36_fu_1768_p3 = ((xor_ln302_36_fu_1750_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_128_fu_1712_p2);

assign select_ln302_38_fu_2754_p3 = ((xor_ln302_38_fu_2736_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_131_fu_2699_p2);

assign select_ln302_40_fu_1870_p3 = ((xor_ln302_40_fu_1852_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_133_fu_1814_p2);

assign select_ln302_42_fu_1972_p3 = ((xor_ln302_42_fu_1954_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_135_fu_1916_p2);

assign select_ln302_44_fu_2856_p3 = ((xor_ln302_44_fu_2838_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_137_fu_2800_p2);

assign select_ln302_45_fu_2872_p3 = ((or_ln302_21_fu_2850_p2[0:0] == 1'b1) ? select_ln302_44_fu_2856_p3 : select_ln350_21_fu_2864_p3);

assign select_ln302_46_fu_2956_p3 = ((xor_ln302_46_fu_2938_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_139_fu_2901_p2);

assign select_ln302_47_fu_2972_p3 = ((or_ln302_22_fu_2950_p2[0:0] == 1'b1) ? select_ln302_46_fu_2956_p3 : select_ln350_22_fu_2964_p3);

assign select_ln302_48_fu_3056_p3 = ((xor_ln302_48_fu_3038_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_141_fu_3001_p2);

assign select_ln302_49_fu_3072_p3 = ((or_ln302_23_fu_3050_p2[0:0] == 1'b1) ? select_ln302_48_fu_3056_p3 : select_ln350_23_fu_3064_p3);

assign select_ln302_fu_2658_p3 = ((xor_ln302_fu_2640_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_124_fu_2602_p2);

assign select_ln346_29_fu_2115_p3 = ((overflow_fu_2086_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_30_fu_870_p3 = ((overflow_34_fu_841_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_31_fu_995_p3 = ((overflow_35_fu_966_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_32_fu_1144_p3 = ((overflow_36_fu_1115_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_33_fu_1293_p3 = ((overflow_37_fu_1264_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_34_fu_1442_p3 = ((overflow_38_fu_1413_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_35_fu_2264_p3 = ((overflow_39_fu_2235_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_36_fu_2413_p3 = ((overflow_40_fu_2384_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_37_fu_2562_p3 = ((overflow_41_fu_2533_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln350_16_fu_1678_p3 = ((underflow_43_fu_1646_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_126_fu_1614_p2);

assign select_ln350_17_fu_1776_p3 = ((underflow_44_fu_1744_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_128_fu_1712_p2);

assign select_ln350_18_fu_2762_p3 = ((underflow_45_fu_2730_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_131_fu_2699_p2);

assign select_ln350_19_fu_1878_p3 = ((underflow_46_fu_1846_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_133_fu_1814_p2);

assign select_ln350_20_fu_1980_p3 = ((underflow_47_fu_1948_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_135_fu_1916_p2);

assign select_ln350_21_fu_2864_p3 = ((underflow_48_fu_2832_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_137_fu_2800_p2);

assign select_ln350_22_fu_2964_p3 = ((underflow_49_fu_2932_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_139_fu_2901_p2);

assign select_ln350_23_fu_3064_p3 = ((underflow_50_fu_3032_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_141_fu_3001_p2);

assign select_ln350_fu_2666_p3 = ((underflow_42_fu_2634_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_124_fu_2602_p2);

assign sext_ln70_14_fu_578_p1 = $signed(a_V_1_fu_568_p4);

assign sext_ln70_15_fu_1464_p1 = $signed(a_V_2_reg_3258);

assign sext_ln70_fu_434_p1 = a_V_fu_430_p1;

assign sext_ln813_27_fu_1596_p1 = rhs_16_fu_884_p3;

assign sext_ln813_28_fu_1694_p1 = rhs_17_fu_1009_p3;

assign sext_ln813_29_fu_2682_p1 = rhs_18_reg_3292;

assign sext_ln813_30_fu_1792_p1 = lhs_fu_1686_p3;

assign sext_ln813_31_fu_1796_p1 = rhs_19_fu_1307_p3;

assign sext_ln813_32_fu_1894_p1 = lhs_10_fu_1784_p3;

assign sext_ln813_33_fu_1898_p1 = rhs_20_fu_1456_p3;

assign sext_ln813_34_fu_2778_p1 = lhs_11_fu_2770_p3;

assign sext_ln813_35_fu_2782_p1 = rhs_21_fu_2278_p3;

assign sext_ln813_36_fu_2880_p1 = lhs_12_reg_3385;

assign sext_ln813_37_fu_2883_p1 = rhs_22_fu_2427_p3;

assign sext_ln813_38_fu_2980_p1 = lhs_13_reg_3391;

assign sext_ln813_39_fu_2983_p1 = rhs_23_fu_2576_p3;

assign sext_ln813_fu_2584_p1 = rhs_fu_2129_p3;

assign sext_ln823_10_fu_1017_p1 = $signed(p_Val2_106_reg_3177);

assign sext_ln823_11_fu_1166_p1 = $signed(p_Val2_109_reg_3206);

assign sext_ln823_12_fu_1315_p1 = $signed(p_Val2_112_reg_3235);

assign sext_ln823_13_fu_2137_p1 = $signed(p_Val2_115_reg_3304);

assign sext_ln823_14_fu_2286_p1 = $signed(p_Val2_118_reg_3333);

assign sext_ln823_15_fu_2435_p1 = $signed(p_Val2_121_reg_3362);

assign sext_ln823_9_fu_522_p1 = $signed(p_Val2_103_fu_512_p4);

assign sext_ln823_fu_458_p1 = $signed(p_Val2_100_fu_448_p4);

assign sext_ln856_10_fu_1029_p1 = p_Val2_107_fu_1023_p2;

assign sext_ln856_11_fu_1178_p1 = p_Val2_110_fu_1172_p2;

assign sext_ln856_12_fu_1327_p1 = p_Val2_113_fu_1321_p2;

assign sext_ln856_13_fu_2149_p1 = p_Val2_116_fu_2143_p2;

assign sext_ln856_14_fu_2298_p1 = p_Val2_119_fu_2292_p2;

assign sext_ln856_15_fu_2447_p1 = p_Val2_122_fu_2441_p2;

assign sext_ln856_9_fu_892_p1 = p_Val2_104_reg_3152;

assign sext_ln856_fu_767_p1 = p_Val2_101_reg_3121;

assign tmp_139_fu_2039_p3 = r_V_25_reg_413[32'd56];

assign tmp_142_fu_470_p3 = r_V_26_fu_106_p2[32'd23];

assign tmp_145_fu_795_p3 = r_V_26_reg_313[32'd53];

assign tmp_148_fu_534_p3 = r_V_27_fu_112_p2[32'd23];

assign tmp_151_fu_920_p3 = r_V_27_reg_317[32'd53];

assign tmp_157_fu_1068_p3 = r_V_28_reg_321[32'd53];

assign tmp_163_fu_1217_p3 = r_V_29_reg_325[32'd53];

assign tmp_169_fu_1366_p3 = r_V_30_reg_329[32'd53];

assign tmp_175_fu_2188_p3 = r_V_reg_417[32'd53];

assign tmp_181_fu_2337_p3 = r_V_31_reg_421[32'd53];

assign tmp_187_fu_2486_p3 = r_V_32_reg_425[32'd53];

assign underflow_34_fu_865_p2 = (xor_ln896_79_fu_859_p2 & p_Result_89_reg_3109);

assign underflow_35_fu_990_p2 = (xor_ln896_80_fu_984_p2 & p_Result_92_reg_3140);

assign underflow_36_fu_1139_p2 = (xor_ln896_81_fu_1133_p2 & p_Result_95_reg_3171);

assign underflow_37_fu_1288_p2 = (xor_ln896_82_fu_1282_p2 & p_Result_98_reg_3200);

assign underflow_38_fu_1437_p2 = (xor_ln896_83_fu_1431_p2 & p_Result_101_reg_3229);

assign underflow_39_fu_2259_p2 = (xor_ln896_84_fu_2253_p2 & p_Result_104_reg_3298);

assign underflow_40_fu_2408_p2 = (xor_ln896_85_fu_2402_p2 & p_Result_107_reg_3327);

assign underflow_41_fu_2557_p2 = (xor_ln896_86_fu_2551_p2 & p_Result_110_reg_3356);

assign underflow_42_fu_2634_p2 = (xor_ln896_69_fu_2628_p2 & p_Result_113_fu_2594_p3);

assign underflow_43_fu_1646_p2 = (xor_ln896_70_fu_1640_p2 & p_Result_115_fu_1606_p3);

assign underflow_44_fu_1744_p2 = (xor_ln896_71_fu_1738_p2 & p_Result_117_fu_1704_p3);

assign underflow_45_fu_2730_p2 = (xor_ln896_72_fu_2724_p2 & p_Result_119_fu_2691_p3);

assign underflow_46_fu_1846_p2 = (xor_ln896_73_fu_1840_p2 & p_Result_121_fu_1806_p3);

assign underflow_47_fu_1948_p2 = (xor_ln896_74_fu_1942_p2 & p_Result_123_fu_1908_p3);

assign underflow_48_fu_2832_p2 = (xor_ln896_75_fu_2826_p2 & p_Result_125_fu_2792_p3);

assign underflow_49_fu_2932_p2 = (xor_ln896_76_fu_2926_p2 & p_Result_127_fu_2893_p3);

assign underflow_50_fu_3032_p2 = (xor_ln896_77_fu_3026_p2 & p_Result_129_fu_2993_p3);

assign underflow_fu_2110_p2 = (xor_ln896_78_fu_2104_p2 & p_Result_s_reg_3263);

assign xor_ln302_33_fu_2646_p2 = (xor_ln302_fu_2640_p2 ^ 1'd1);

assign xor_ln302_34_fu_1652_p2 = (p_Result_116_fu_1620_p3 ^ p_Result_115_fu_1606_p3);

assign xor_ln302_35_fu_1658_p2 = (xor_ln302_34_fu_1652_p2 ^ 1'd1);

assign xor_ln302_36_fu_1750_p2 = (p_Result_118_fu_1718_p3 ^ p_Result_117_fu_1704_p3);

assign xor_ln302_37_fu_1756_p2 = (xor_ln302_36_fu_1750_p2 ^ 1'd1);

assign xor_ln302_38_fu_2736_p2 = (p_Result_120_fu_2704_p3 ^ p_Result_119_fu_2691_p3);

assign xor_ln302_39_fu_2742_p2 = (xor_ln302_38_fu_2736_p2 ^ 1'd1);

assign xor_ln302_40_fu_1852_p2 = (p_Result_122_fu_1820_p3 ^ p_Result_121_fu_1806_p3);

assign xor_ln302_41_fu_1858_p2 = (xor_ln302_40_fu_1852_p2 ^ 1'd1);

assign xor_ln302_42_fu_1954_p2 = (p_Result_124_fu_1922_p3 ^ p_Result_123_fu_1908_p3);

assign xor_ln302_43_fu_1960_p2 = (xor_ln302_42_fu_1954_p2 ^ 1'd1);

assign xor_ln302_44_fu_2838_p2 = (p_Result_126_fu_2806_p3 ^ p_Result_125_fu_2792_p3);

assign xor_ln302_45_fu_2844_p2 = (xor_ln302_44_fu_2838_p2 ^ 1'd1);

assign xor_ln302_46_fu_2938_p2 = (p_Result_128_fu_2906_p3 ^ p_Result_127_fu_2893_p3);

assign xor_ln302_47_fu_2944_p2 = (xor_ln302_46_fu_2938_p2 ^ 1'd1);

assign xor_ln302_48_fu_3038_p2 = (p_Result_130_fu_3006_p3 ^ p_Result_129_fu_2993_p3);

assign xor_ln302_49_fu_3044_p2 = (xor_ln302_48_fu_3038_p2 ^ 1'd1);

assign xor_ln302_fu_2640_p2 = (p_Result_114_fu_2608_p3 ^ p_Result_113_fu_2594_p3);

assign xor_ln888_36_fu_780_p2 = (p_Result_90_reg_3115 ^ 1'd1);

assign xor_ln888_38_fu_905_p2 = (p_Result_93_reg_3146 ^ 1'd1);

assign xor_ln888_40_fu_1052_p2 = (p_Result_96_reg_3182 ^ 1'd1);

assign xor_ln888_42_fu_1201_p2 = (p_Result_99_reg_3211 ^ 1'd1);

assign xor_ln888_44_fu_1350_p2 = (p_Result_102_reg_3240 ^ 1'd1);

assign xor_ln888_46_fu_2172_p2 = (p_Result_105_reg_3309 ^ 1'd1);

assign xor_ln888_48_fu_2321_p2 = (p_Result_108_reg_3338 ^ 1'd1);

assign xor_ln888_50_fu_2470_p2 = (p_Result_111_reg_3367 ^ 1'd1);

assign xor_ln888_fu_2023_p2 = (p_Result_87_reg_3274 ^ 1'd1);

assign xor_ln890_17_fu_803_p2 = (tmp_145_fu_795_p3 ^ 1'd1);

assign xor_ln890_18_fu_928_p2 = (tmp_151_fu_920_p3 ^ 1'd1);

assign xor_ln890_19_fu_1076_p2 = (tmp_157_fu_1068_p3 ^ 1'd1);

assign xor_ln890_20_fu_1225_p2 = (tmp_163_fu_1217_p3 ^ 1'd1);

assign xor_ln890_21_fu_1374_p2 = (tmp_169_fu_1366_p3 ^ 1'd1);

assign xor_ln890_22_fu_2196_p2 = (tmp_175_fu_2188_p3 ^ 1'd1);

assign xor_ln890_23_fu_2345_p2 = (tmp_181_fu_2337_p3 ^ 1'd1);

assign xor_ln890_24_fu_2494_p2 = (tmp_187_fu_2486_p3 ^ 1'd1);

assign xor_ln890_fu_2047_p2 = (tmp_139_fu_2039_p3 ^ 1'd1);

assign xor_ln895_52_fu_2081_p2 = (p_Result_s_reg_3263 ^ 1'd1);

assign xor_ln895_53_fu_825_p2 = (deleted_zeros_17_fu_790_p2 ^ 1'd1);

assign xor_ln895_54_fu_836_p2 = (p_Result_89_reg_3109 ^ 1'd1);

assign xor_ln895_55_fu_950_p2 = (deleted_zeros_18_fu_915_p2 ^ 1'd1);

assign xor_ln895_56_fu_961_p2 = (p_Result_92_reg_3140 ^ 1'd1);

assign xor_ln895_57_fu_1098_p2 = (deleted_zeros_19_fu_1063_p2 ^ 1'd1);

assign xor_ln895_58_fu_1110_p2 = (p_Result_95_reg_3171 ^ 1'd1);

assign xor_ln895_59_fu_1247_p2 = (deleted_zeros_20_fu_1212_p2 ^ 1'd1);

assign xor_ln895_60_fu_1259_p2 = (p_Result_98_reg_3200 ^ 1'd1);

assign xor_ln895_61_fu_1396_p2 = (deleted_zeros_21_fu_1361_p2 ^ 1'd1);

assign xor_ln895_62_fu_1408_p2 = (p_Result_101_reg_3229 ^ 1'd1);

assign xor_ln895_63_fu_2218_p2 = (deleted_zeros_22_fu_2183_p2 ^ 1'd1);

assign xor_ln895_64_fu_2230_p2 = (p_Result_104_reg_3298 ^ 1'd1);

assign xor_ln895_65_fu_2367_p2 = (deleted_zeros_23_fu_2332_p2 ^ 1'd1);

assign xor_ln895_66_fu_2379_p2 = (p_Result_107_reg_3327 ^ 1'd1);

assign xor_ln895_67_fu_2516_p2 = (deleted_zeros_24_fu_2481_p2 ^ 1'd1);

assign xor_ln895_68_fu_2528_p2 = (p_Result_110_reg_3356 ^ 1'd1);

assign xor_ln895_69_fu_2616_p2 = (p_Result_113_fu_2594_p3 ^ 1'd1);

assign xor_ln895_70_fu_1628_p2 = (p_Result_115_fu_1606_p3 ^ 1'd1);

assign xor_ln895_71_fu_1726_p2 = (p_Result_117_fu_1704_p3 ^ 1'd1);

assign xor_ln895_72_fu_2712_p2 = (p_Result_119_fu_2691_p3 ^ 1'd1);

assign xor_ln895_73_fu_1828_p2 = (p_Result_121_fu_1806_p3 ^ 1'd1);

assign xor_ln895_74_fu_1930_p2 = (p_Result_123_fu_1908_p3 ^ 1'd1);

assign xor_ln895_75_fu_2814_p2 = (p_Result_125_fu_2792_p3 ^ 1'd1);

assign xor_ln895_76_fu_2914_p2 = (p_Result_127_fu_2893_p3 ^ 1'd1);

assign xor_ln895_77_fu_3014_p2 = (p_Result_129_fu_2993_p3 ^ 1'd1);

assign xor_ln895_fu_2069_p2 = (deleted_zeros_fu_2034_p2 ^ 1'd1);

assign xor_ln896_52_fu_2092_p2 = (deleted_ones_fu_2059_p2 ^ 1'd1);

assign xor_ln896_53_fu_770_p2 = (p_Result_91_reg_3126 ^ 1'd1);

assign xor_ln896_54_fu_847_p2 = (deleted_ones_34_fu_815_p2 ^ 1'd1);

assign xor_ln896_55_fu_895_p2 = (p_Result_94_reg_3157 ^ 1'd1);

assign xor_ln896_56_fu_972_p2 = (deleted_ones_35_fu_940_p2 ^ 1'd1);

assign xor_ln896_57_fu_1041_p2 = (p_Result_97_fu_1033_p3 ^ 1'd1);

assign xor_ln896_58_fu_1121_p2 = (deleted_ones_36_fu_1088_p2 ^ 1'd1);

assign xor_ln896_59_fu_1190_p2 = (p_Result_100_fu_1182_p3 ^ 1'd1);

assign xor_ln896_60_fu_1270_p2 = (deleted_ones_37_fu_1237_p2 ^ 1'd1);

assign xor_ln896_61_fu_1339_p2 = (p_Result_103_fu_1331_p3 ^ 1'd1);

assign xor_ln896_62_fu_1419_p2 = (deleted_ones_38_fu_1386_p2 ^ 1'd1);

assign xor_ln896_63_fu_2161_p2 = (p_Result_106_fu_2153_p3 ^ 1'd1);

assign xor_ln896_64_fu_2241_p2 = (deleted_ones_39_fu_2208_p2 ^ 1'd1);

assign xor_ln896_65_fu_2310_p2 = (p_Result_109_fu_2302_p3 ^ 1'd1);

assign xor_ln896_66_fu_2390_p2 = (deleted_ones_40_fu_2357_p2 ^ 1'd1);

assign xor_ln896_67_fu_2459_p2 = (p_Result_112_fu_2451_p3 ^ 1'd1);

assign xor_ln896_68_fu_2539_p2 = (deleted_ones_41_fu_2506_p2 ^ 1'd1);

assign xor_ln896_69_fu_2628_p2 = (p_Result_114_fu_2608_p3 ^ 1'd1);

assign xor_ln896_70_fu_1640_p2 = (p_Result_116_fu_1620_p3 ^ 1'd1);

assign xor_ln896_71_fu_1738_p2 = (p_Result_118_fu_1718_p3 ^ 1'd1);

assign xor_ln896_72_fu_2724_p2 = (p_Result_120_fu_2704_p3 ^ 1'd1);

assign xor_ln896_73_fu_1840_p2 = (p_Result_122_fu_1820_p3 ^ 1'd1);

assign xor_ln896_74_fu_1942_p2 = (p_Result_124_fu_1922_p3 ^ 1'd1);

assign xor_ln896_75_fu_2826_p2 = (p_Result_126_fu_2806_p3 ^ 1'd1);

assign xor_ln896_76_fu_2926_p2 = (p_Result_128_fu_2906_p3 ^ 1'd1);

assign xor_ln896_77_fu_3026_p2 = (p_Result_130_fu_3006_p3 ^ 1'd1);

assign xor_ln896_78_fu_2104_p2 = (or_ln896_fu_2098_p2 ^ and_ln891_fu_2064_p2);

assign xor_ln896_79_fu_859_p2 = (or_ln896_17_fu_853_p2 ^ and_ln891_17_fu_820_p2);

assign xor_ln896_80_fu_984_p2 = (or_ln896_18_fu_978_p2 ^ and_ln891_18_fu_945_p2);

assign xor_ln896_81_fu_1133_p2 = (or_ln896_19_fu_1127_p2 ^ and_ln891_19_fu_1093_p2);

assign xor_ln896_82_fu_1282_p2 = (or_ln896_20_fu_1276_p2 ^ and_ln891_20_fu_1242_p2);

assign xor_ln896_83_fu_1431_p2 = (or_ln896_21_fu_1425_p2 ^ and_ln891_21_fu_1391_p2);

assign xor_ln896_84_fu_2253_p2 = (or_ln896_22_fu_2247_p2 ^ and_ln891_22_fu_2213_p2);

assign xor_ln896_85_fu_2402_p2 = (or_ln896_23_fu_2396_p2 ^ and_ln891_23_fu_2362_p2);

assign xor_ln896_86_fu_2551_p2 = (or_ln896_24_fu_2545_p2 ^ and_ln891_24_fu_2511_p2);

assign xor_ln896_fu_2012_p2 = (p_Result_88_fu_2004_p3 ^ 1'd1);

assign zext_ln377_17_fu_478_p1 = tmp_142_fu_470_p3;

assign zext_ln377_18_fu_542_p1 = tmp_148_fu_534_p3;

assign zext_ln377_19_fu_1020_p1 = tmp_154_reg_3188;

assign zext_ln377_20_fu_1169_p1 = tmp_160_reg_3217;

assign zext_ln377_21_fu_1318_p1 = tmp_166_reg_3246;

assign zext_ln377_22_fu_2140_p1 = tmp_172_reg_3315;

assign zext_ln377_23_fu_2289_p1 = tmp_178_reg_3344;

assign zext_ln377_24_fu_2438_p1 = tmp_184_reg_3373;

assign zext_ln377_fu_1996_p1 = tmp_reg_3280;

endmodule //motor_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s
