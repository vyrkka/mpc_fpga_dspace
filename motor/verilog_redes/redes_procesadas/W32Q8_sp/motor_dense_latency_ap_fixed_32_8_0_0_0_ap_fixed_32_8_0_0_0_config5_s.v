module motor_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s (
        ap_clk,
        ap_rst,
        p_read,
        p_read1,
        p_read2,
        p_read3,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
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
output  [31:0] ap_return_3;
input   ap_ce;

reg[31:0] ap_return_0;
reg[31:0] ap_return_1;
reg[31:0] ap_return_2;
reg[31:0] ap_return_3;

wire   [54:0] r_V_fu_150_p2;
reg   [54:0] r_V_reg_418;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
wire   [55:0] r_V_6_fu_148_p2;
reg   [55:0] r_V_6_reg_422;
wire   [51:0] r_V_7_fu_157_p2;
reg   [51:0] r_V_7_reg_426;
wire   [54:0] r_V_8_fu_153_p2;
reg   [54:0] r_V_8_reg_430;
wire   [49:0] r_V_10_fu_146_p2;
reg   [49:0] r_V_10_reg_434;
wire   [54:0] r_V_9_fu_152_p2;
reg   [54:0] r_V_9_reg_662;
wire   [48:0] r_V_11_fu_154_p2;
reg   [48:0] r_V_11_reg_666;
wire   [48:0] r_V_12_fu_155_p2;
reg   [48:0] r_V_12_reg_670;
wire   [54:0] r_V_13_fu_151_p2;
reg   [54:0] r_V_13_reg_674;
wire   [49:0] r_V_14_fu_156_p2;
reg   [49:0] r_V_14_reg_678;
wire   [49:0] r_V_15_fu_147_p2;
reg   [49:0] r_V_15_reg_682;
wire   [49:0] r_V_16_fu_149_p2;
reg   [49:0] r_V_16_reg_686;
reg  signed [31:0] p_read_10_reg_4123;
reg  signed [31:0] p_read_11_reg_4129;
reg   [0:0] p_Result_s_reg_4135;
reg   [0:0] p_Result_30_reg_4141;
wire   [31:0] p_Val2_35_fu_748_p2;
reg   [31:0] p_Val2_35_reg_4147;
reg   [0:0] p_Result_31_reg_4152;
reg   [0:0] Range2_all_ones_reg_4159;
reg   [0:0] p_Result_32_reg_4166;
reg   [31:0] p_Val2_37_reg_4172;
reg   [0:0] p_Result_33_reg_4177;
reg   [0:0] tmp_51_reg_4183;
reg   [0:0] Range2_all_ones_6_reg_4188;
reg   [0:0] p_Result_35_reg_4195;
reg   [27:0] p_Val2_39_reg_4201;
reg   [0:0] p_Result_36_reg_4206;
reg   [0:0] tmp_57_reg_4212;
reg   [0:0] Range2_all_ones_7_reg_4217;
reg   [0:0] p_Result_38_reg_4224;
reg   [30:0] p_Val2_42_reg_4230;
reg   [0:0] p_Result_39_reg_4235;
reg   [0:0] tmp_63_reg_4241;
reg   [0:0] Range2_all_ones_8_reg_4246;
reg   [0:0] p_Result_44_reg_4253;
reg   [25:0] p_Val2_48_reg_4259;
reg   [0:0] p_Result_45_reg_4264;
reg   [0:0] tmp_75_reg_4270;
reg   [0:0] Range2_all_ones_10_reg_4275;
reg   [0:0] p_Result_41_reg_4282;
reg   [0:0] p_Result_42_reg_4288;
wire   [31:0] p_Val2_46_fu_1555_p2;
reg   [31:0] p_Val2_46_reg_4294;
reg   [0:0] p_Result_43_reg_4299;
reg   [0:0] Range2_all_ones_9_reg_4306;
reg   [0:0] p_Result_47_reg_4313;
reg   [0:0] p_Result_48_reg_4319;
wire  signed [25:0] p_Val2_52_fu_1768_p2;
reg  signed [25:0] p_Val2_52_reg_4325;
reg   [0:0] p_Result_49_reg_4330;
reg   [0:0] Range2_all_ones_11_reg_4337;
reg   [0:0] p_Result_50_reg_4344;
reg   [0:0] p_Result_51_reg_4350;
wire  signed [25:0] p_Val2_55_fu_1832_p2;
reg  signed [25:0] p_Val2_55_reg_4356;
reg   [0:0] p_Result_52_reg_4361;
reg   [0:0] Range2_all_ones_12_reg_4368;
reg   [0:0] p_Result_53_reg_4375;
reg   [30:0] p_Val2_57_reg_4381;
reg   [0:0] p_Result_54_reg_4386;
reg   [0:0] tmp_93_reg_4392;
reg   [0:0] Range2_all_ones_13_reg_4397;
reg   [0:0] p_Result_56_reg_4404;
reg   [25:0] p_Val2_60_reg_4410;
reg   [0:0] p_Result_57_reg_4415;
reg   [0:0] tmp_99_reg_4421;
reg   [0:0] Range2_all_ones_14_reg_4426;
reg   [0:0] p_Result_59_reg_4433;
reg   [25:0] p_Val2_63_reg_4439;
reg   [0:0] p_Result_60_reg_4444;
reg   [0:0] tmp_105_reg_4450;
reg   [0:0] Range2_all_ones_15_reg_4455;
reg   [0:0] p_Result_62_reg_4462;
reg   [25:0] p_Val2_66_reg_4468;
reg   [0:0] p_Result_63_reg_4473;
reg   [0:0] tmp_111_reg_4479;
reg   [0:0] Range2_all_ones_16_reg_4484;
wire  signed [31:0] p_Val2_95_fu_2220_p3;
reg  signed [31:0] p_Val2_95_reg_4491;
wire  signed [31:0] p_Val2_96_fu_2322_p3;
reg  signed [31:0] p_Val2_96_reg_4497;
wire  signed [31:0] lhs_7_fu_2424_p3;
reg  signed [31:0] lhs_7_reg_4503;
wire  signed [17:0] r_V_10_fu_146_p1;
wire    ap_block_pp0_stage0;
wire  signed [31:0] r_V_15_fu_147_p0;
wire  signed [49:0] sext_ln70_11_fu_1854_p1;
wire  signed [17:0] r_V_15_fu_147_p1;
wire   [24:0] r_V_6_fu_148_p1;
wire  signed [31:0] r_V_16_fu_149_p0;
wire  signed [17:0] r_V_16_fu_149_p1;
wire  signed [23:0] r_V_fu_150_p1;
wire   [23:0] r_V_13_fu_151_p1;
wire  signed [23:0] r_V_9_fu_152_p1;
wire   [23:0] r_V_8_fu_153_p1;
wire  signed [31:0] r_V_11_fu_154_p0;
wire  signed [48:0] sext_ln70_8_fu_1504_p1;
wire   [16:0] r_V_11_fu_154_p1;
wire  signed [31:0] r_V_12_fu_155_p0;
wire   [16:0] r_V_12_fu_155_p1;
wire  signed [31:0] r_V_14_fu_156_p0;
wire   [17:0] r_V_14_fu_156_p1;
wire  signed [20:0] r_V_7_fu_157_p1;
wire   [30:0] p_Val2_34_fu_714_p4;
wire   [0:0] tmp_fu_736_p3;
wire   [31:0] zext_ln377_fu_744_p1;
wire  signed [31:0] sext_ln818_fu_724_p1;
wire   [0:0] xor_ln896_fu_948_p2;
wire   [0:0] xor_ln888_fu_958_p2;
wire   [0:0] or_ln888_fu_963_p2;
wire   [0:0] tmp_48_fu_973_p3;
wire   [0:0] xor_ln890_fu_981_p2;
wire   [0:0] or_ln890_fu_987_p2;
wire   [0:0] carry_12_fu_953_p2;
wire   [0:0] deleted_zeros_fu_968_p2;
wire   [0:0] xor_ln895_fu_1003_p2;
wire   [0:0] or_ln895_fu_1009_p2;
wire   [0:0] xor_ln895_18_fu_1014_p2;
wire   [0:0] deleted_ones_fu_993_p2;
wire   [0:0] xor_ln896_18_fu_1025_p2;
wire   [0:0] and_ln891_fu_998_p2;
wire   [0:0] or_ln896_fu_1031_p2;
wire   [0:0] xor_ln896_52_fu_1037_p2;
wire   [0:0] overflow_fu_1019_p2;
wire   [0:0] underflow_fu_1043_p2;
wire   [0:0] or_ln346_fu_1056_p2;
wire   [31:0] select_ln346_fu_1048_p3;
wire   [31:0] zext_ln377_6_fu_1069_p1;
wire   [31:0] p_Val2_38_fu_1072_p2;
wire   [0:0] p_Result_34_fu_1077_p3;
wire   [0:0] xor_ln896_19_fu_1085_p2;
wire   [0:0] xor_ln888_13_fu_1096_p2;
wire   [0:0] or_ln888_6_fu_1101_p2;
wire   [0:0] tmp_54_fu_1112_p3;
wire   [0:0] xor_ln890_6_fu_1120_p2;
wire   [0:0] or_ln890_6_fu_1126_p2;
wire   [0:0] carry_14_fu_1091_p2;
wire   [0:0] deleted_zeros_6_fu_1107_p2;
wire   [0:0] xor_ln895_19_fu_1142_p2;
wire   [0:0] or_ln895_6_fu_1148_p2;
wire   [0:0] xor_ln895_20_fu_1154_p2;
wire   [0:0] deleted_ones_12_fu_1132_p2;
wire   [0:0] xor_ln896_20_fu_1165_p2;
wire   [0:0] and_ln891_6_fu_1137_p2;
wire   [0:0] or_ln896_6_fu_1171_p2;
wire   [0:0] xor_ln896_53_fu_1177_p2;
wire   [0:0] overflow_12_fu_1159_p2;
wire   [0:0] underflow_12_fu_1183_p2;
wire   [0:0] or_ln346_6_fu_1196_p2;
wire   [31:0] select_ln346_13_fu_1188_p3;
wire   [28:0] zext_ln377_7_fu_1213_p1;
wire  signed [28:0] sext_ln823_fu_1210_p1;
wire  signed [28:0] p_Val2_40_fu_1216_p2;
wire   [0:0] p_Result_37_fu_1226_p3;
wire   [0:0] xor_ln896_21_fu_1234_p2;
wire   [0:0] xor_ln888_15_fu_1245_p2;
wire   [0:0] or_ln888_7_fu_1250_p2;
wire   [0:0] tmp_60_fu_1261_p3;
wire   [0:0] xor_ln890_7_fu_1269_p2;
wire   [0:0] or_ln890_7_fu_1275_p2;
wire   [0:0] carry_16_fu_1240_p2;
wire   [0:0] deleted_zeros_7_fu_1256_p2;
wire   [0:0] xor_ln895_21_fu_1291_p2;
wire   [0:0] or_ln895_7_fu_1297_p2;
wire   [0:0] xor_ln895_22_fu_1303_p2;
wire   [0:0] deleted_ones_13_fu_1281_p2;
wire   [0:0] xor_ln896_22_fu_1314_p2;
wire   [0:0] and_ln891_7_fu_1286_p2;
wire   [0:0] or_ln896_7_fu_1320_p2;
wire   [0:0] xor_ln896_54_fu_1326_p2;
wire   [0:0] overflow_13_fu_1308_p2;
wire   [0:0] underflow_13_fu_1332_p2;
wire   [0:0] or_ln346_7_fu_1345_p2;
wire   [31:0] select_ln346_15_fu_1337_p3;
wire  signed [31:0] sext_ln856_fu_1222_p1;
wire   [31:0] zext_ln377_8_fu_1362_p1;
wire  signed [31:0] sext_ln818_1_fu_1359_p1;
wire   [31:0] p_Val2_43_fu_1365_p2;
wire   [0:0] p_Result_40_fu_1371_p3;
wire   [0:0] xor_ln896_23_fu_1379_p2;
wire   [0:0] xor_ln888_17_fu_1390_p2;
wire   [0:0] or_ln888_8_fu_1395_p2;
wire   [0:0] tmp_66_fu_1406_p3;
wire   [0:0] xor_ln890_8_fu_1414_p2;
wire   [0:0] or_ln890_8_fu_1420_p2;
wire   [0:0] carry_18_fu_1385_p2;
wire   [0:0] deleted_zeros_8_fu_1401_p2;
wire   [0:0] xor_ln895_23_fu_1436_p2;
wire   [0:0] or_ln895_8_fu_1442_p2;
wire   [0:0] xor_ln895_24_fu_1448_p2;
wire   [0:0] deleted_ones_14_fu_1426_p2;
wire   [0:0] xor_ln896_24_fu_1459_p2;
wire   [0:0] and_ln891_8_fu_1431_p2;
wire   [0:0] or_ln896_8_fu_1465_p2;
wire   [0:0] xor_ln896_55_fu_1471_p2;
wire   [0:0] overflow_14_fu_1453_p2;
wire   [0:0] underflow_14_fu_1477_p2;
wire   [0:0] or_ln346_8_fu_1490_p2;
wire   [31:0] select_ln346_17_fu_1482_p3;
wire   [30:0] p_Val2_45_fu_1521_p4;
wire   [0:0] tmp_69_fu_1543_p3;
wire   [31:0] zext_ln377_9_fu_1551_p1;
wire  signed [31:0] sext_ln818_2_fu_1531_p1;
wire   [26:0] zext_ln377_10_fu_1580_p1;
wire  signed [26:0] sext_ln823_3_fu_1577_p1;
wire  signed [26:0] p_Val2_49_fu_1583_p2;
wire   [0:0] p_Result_46_fu_1593_p3;
wire   [0:0] xor_ln896_27_fu_1601_p2;
wire   [0:0] xor_ln888_21_fu_1612_p2;
wire   [0:0] or_ln888_10_fu_1617_p2;
wire   [0:0] tmp_78_fu_1628_p3;
wire   [0:0] xor_ln890_10_fu_1636_p2;
wire   [0:0] or_ln890_10_fu_1642_p2;
wire   [0:0] carry_22_fu_1607_p2;
wire   [0:0] deleted_zeros_10_fu_1623_p2;
wire   [0:0] xor_ln895_27_fu_1658_p2;
wire   [0:0] or_ln895_10_fu_1664_p2;
wire   [0:0] xor_ln895_28_fu_1670_p2;
wire   [0:0] deleted_ones_16_fu_1648_p2;
wire   [0:0] xor_ln896_28_fu_1681_p2;
wire   [0:0] and_ln891_10_fu_1653_p2;
wire   [0:0] or_ln896_10_fu_1687_p2;
wire   [0:0] xor_ln896_57_fu_1693_p2;
wire   [0:0] overflow_16_fu_1675_p2;
wire   [0:0] underflow_16_fu_1699_p2;
wire   [0:0] or_ln346_10_fu_1712_p2;
wire   [31:0] select_ln346_21_fu_1704_p3;
wire  signed [31:0] sext_ln856_3_fu_1589_p1;
wire   [24:0] p_Val2_51_fu_1734_p4;
wire   [0:0] tmp_81_fu_1756_p3;
wire   [25:0] zext_ln377_11_fu_1764_p1;
wire  signed [25:0] sext_ln823_4_fu_1744_p1;
wire   [24:0] p_Val2_54_fu_1798_p4;
wire   [0:0] tmp_87_fu_1820_p3;
wire   [25:0] zext_ln377_12_fu_1828_p1;
wire  signed [25:0] sext_ln823_5_fu_1808_p1;
wire  signed [31:0] rhs_fu_1062_p3;
wire  signed [32:0] sext_ln813_fu_2032_p1;
wire   [32:0] ret_V_fu_2036_p2;
wire   [31:0] p_Val2_69_fu_2050_p2;
wire   [0:0] p_Result_65_fu_2042_p3;
wire   [0:0] p_Result_66_fu_2056_p3;
wire   [0:0] xor_ln895_41_fu_2064_p2;
wire   [0:0] xor_ln896_41_fu_2076_p2;
wire   [0:0] xor_ln302_fu_2088_p2;
wire   [0:0] overflow_23_fu_2070_p2;
wire   [0:0] xor_ln302_12_fu_2094_p2;
wire   [0:0] underflow_23_fu_2082_p2;
wire   [0:0] or_ln302_fu_2100_p2;
wire   [31:0] select_ln302_fu_2106_p3;
wire   [31:0] select_ln350_fu_2114_p3;
wire  signed [31:0] rhs_6_fu_1351_p3;
wire  signed [32:0] sext_ln813_9_fu_2130_p1;
wire   [32:0] ret_V_6_fu_2134_p2;
wire   [31:0] p_Val2_72_fu_2148_p2;
wire   [0:0] p_Result_67_fu_2140_p3;
wire   [0:0] p_Result_68_fu_2154_p3;
wire   [0:0] xor_ln895_42_fu_2162_p2;
wire   [0:0] xor_ln896_42_fu_2174_p2;
wire   [0:0] xor_ln302_13_fu_2186_p2;
wire   [0:0] overflow_24_fu_2168_p2;
wire   [0:0] xor_ln302_14_fu_2192_p2;
wire   [0:0] underflow_24_fu_2180_p2;
wire   [0:0] or_ln302_6_fu_2198_p2;
wire   [31:0] select_ln302_13_fu_2204_p3;
wire   [31:0] select_ln350_6_fu_2212_p3;
wire  signed [31:0] p_Val2_94_fu_2122_p3;
wire  signed [31:0] rhs_7_fu_1496_p3;
wire  signed [32:0] sext_ln813_11_fu_2232_p1;
wire  signed [32:0] sext_ln813_10_fu_2228_p1;
wire   [32:0] ret_V_7_fu_2236_p2;
wire   [31:0] p_Val2_76_fu_2250_p2;
wire   [0:0] p_Result_69_fu_2242_p3;
wire   [0:0] p_Result_70_fu_2256_p3;
wire   [0:0] xor_ln895_43_fu_2264_p2;
wire   [0:0] xor_ln896_43_fu_2276_p2;
wire   [0:0] xor_ln302_15_fu_2288_p2;
wire   [0:0] overflow_25_fu_2270_p2;
wire   [0:0] xor_ln302_16_fu_2294_p2;
wire   [0:0] underflow_25_fu_2282_p2;
wire   [0:0] or_ln302_7_fu_2300_p2;
wire   [31:0] select_ln302_15_fu_2306_p3;
wire   [31:0] select_ln350_7_fu_2314_p3;
wire  signed [31:0] p_Val2_s_fu_1202_p3;
wire  signed [31:0] rhs_9_fu_1718_p3;
wire  signed [32:0] sext_ln813_15_fu_2334_p1;
wire  signed [32:0] sext_ln813_14_fu_2330_p1;
wire   [32:0] ret_V_9_fu_2338_p2;
wire   [31:0] p_Val2_81_fu_2352_p2;
wire   [0:0] p_Result_73_fu_2344_p3;
wire   [0:0] p_Result_74_fu_2358_p3;
wire   [0:0] xor_ln895_45_fu_2366_p2;
wire   [0:0] xor_ln896_45_fu_2378_p2;
wire   [0:0] xor_ln302_19_fu_2390_p2;
wire   [0:0] overflow_27_fu_2372_p2;
wire   [0:0] xor_ln302_20_fu_2396_p2;
wire   [0:0] underflow_27_fu_2384_p2;
wire   [0:0] or_ln302_9_fu_2402_p2;
wire   [31:0] select_ln302_19_fu_2408_p3;
wire   [31:0] select_ln350_9_fu_2416_p3;
wire   [0:0] xor_ln896_25_fu_2432_p2;
wire   [0:0] xor_ln888_19_fu_2442_p2;
wire   [0:0] or_ln888_9_fu_2447_p2;
wire   [0:0] tmp_72_fu_2457_p3;
wire   [0:0] xor_ln890_9_fu_2465_p2;
wire   [0:0] or_ln890_9_fu_2471_p2;
wire   [0:0] carry_20_fu_2437_p2;
wire   [0:0] deleted_zeros_9_fu_2452_p2;
wire   [0:0] xor_ln895_25_fu_2487_p2;
wire   [0:0] or_ln895_9_fu_2493_p2;
wire   [0:0] xor_ln895_26_fu_2498_p2;
wire   [0:0] deleted_ones_15_fu_2477_p2;
wire   [0:0] xor_ln896_26_fu_2509_p2;
wire   [0:0] and_ln891_9_fu_2482_p2;
wire   [0:0] or_ln896_9_fu_2515_p2;
wire   [0:0] xor_ln896_56_fu_2521_p2;
wire   [0:0] overflow_15_fu_2503_p2;
wire   [0:0] underflow_15_fu_2527_p2;
wire   [0:0] or_ln346_9_fu_2540_p2;
wire   [31:0] select_ln346_19_fu_2532_p3;
wire   [0:0] xor_ln896_29_fu_2556_p2;
wire   [0:0] xor_ln888_23_fu_2566_p2;
wire   [0:0] or_ln888_11_fu_2571_p2;
wire   [0:0] tmp_84_fu_2581_p3;
wire   [0:0] xor_ln890_11_fu_2589_p2;
wire   [0:0] or_ln890_11_fu_2595_p2;
wire   [0:0] carry_24_fu_2561_p2;
wire   [0:0] deleted_zeros_11_fu_2576_p2;
wire   [0:0] xor_ln895_29_fu_2611_p2;
wire   [0:0] or_ln895_11_fu_2617_p2;
wire   [0:0] xor_ln895_30_fu_2622_p2;
wire   [0:0] deleted_ones_17_fu_2601_p2;
wire   [0:0] xor_ln896_30_fu_2633_p2;
wire   [0:0] and_ln891_11_fu_2606_p2;
wire   [0:0] or_ln896_11_fu_2639_p2;
wire   [0:0] xor_ln896_58_fu_2645_p2;
wire   [0:0] overflow_17_fu_2627_p2;
wire   [0:0] underflow_17_fu_2651_p2;
wire   [0:0] or_ln346_11_fu_2664_p2;
wire   [31:0] select_ln346_23_fu_2656_p3;
wire  signed [31:0] sext_ln856_4_fu_2553_p1;
wire   [0:0] xor_ln896_31_fu_2681_p2;
wire   [0:0] xor_ln888_25_fu_2691_p2;
wire   [0:0] or_ln888_12_fu_2696_p2;
wire   [0:0] tmp_90_fu_2706_p3;
wire   [0:0] xor_ln890_12_fu_2714_p2;
wire   [0:0] or_ln890_12_fu_2720_p2;
wire   [0:0] carry_26_fu_2686_p2;
wire   [0:0] deleted_zeros_12_fu_2701_p2;
wire   [0:0] xor_ln895_31_fu_2736_p2;
wire   [0:0] or_ln895_12_fu_2742_p2;
wire   [0:0] xor_ln895_32_fu_2747_p2;
wire   [0:0] deleted_ones_18_fu_2726_p2;
wire   [0:0] xor_ln896_32_fu_2758_p2;
wire   [0:0] and_ln891_12_fu_2731_p2;
wire   [0:0] or_ln896_12_fu_2764_p2;
wire   [0:0] xor_ln896_59_fu_2770_p2;
wire   [0:0] overflow_18_fu_2752_p2;
wire   [0:0] underflow_18_fu_2776_p2;
wire   [0:0] or_ln346_12_fu_2789_p2;
wire   [31:0] select_ln346_24_fu_2781_p3;
wire  signed [31:0] sext_ln856_5_fu_2678_p1;
wire   [31:0] zext_ln377_13_fu_2806_p1;
wire  signed [31:0] sext_ln818_3_fu_2803_p1;
wire   [31:0] p_Val2_58_fu_2809_p2;
wire   [0:0] p_Result_55_fu_2815_p3;
wire   [0:0] xor_ln896_33_fu_2823_p2;
wire   [0:0] xor_ln888_27_fu_2834_p2;
wire   [0:0] or_ln888_13_fu_2839_p2;
wire   [0:0] tmp_96_fu_2850_p3;
wire   [0:0] xor_ln890_13_fu_2858_p2;
wire   [0:0] or_ln890_13_fu_2864_p2;
wire   [0:0] carry_28_fu_2829_p2;
wire   [0:0] deleted_zeros_13_fu_2845_p2;
wire   [0:0] xor_ln895_33_fu_2880_p2;
wire   [0:0] or_ln895_13_fu_2886_p2;
wire   [0:0] xor_ln895_34_fu_2892_p2;
wire   [0:0] deleted_ones_19_fu_2870_p2;
wire   [0:0] xor_ln896_34_fu_2903_p2;
wire   [0:0] and_ln891_13_fu_2875_p2;
wire   [0:0] or_ln896_13_fu_2909_p2;
wire   [0:0] xor_ln896_60_fu_2915_p2;
wire   [0:0] overflow_19_fu_2897_p2;
wire   [0:0] underflow_19_fu_2921_p2;
wire   [0:0] or_ln346_13_fu_2934_p2;
wire   [31:0] select_ln346_25_fu_2926_p3;
wire   [26:0] zext_ln377_14_fu_2951_p1;
wire  signed [26:0] sext_ln823_6_fu_2948_p1;
wire  signed [26:0] p_Val2_61_fu_2954_p2;
wire   [0:0] p_Result_58_fu_2964_p3;
wire   [0:0] xor_ln896_35_fu_2972_p2;
wire   [0:0] xor_ln888_29_fu_2983_p2;
wire   [0:0] or_ln888_14_fu_2988_p2;
wire   [0:0] tmp_102_fu_2999_p3;
wire   [0:0] xor_ln890_14_fu_3007_p2;
wire   [0:0] or_ln890_14_fu_3013_p2;
wire   [0:0] carry_30_fu_2978_p2;
wire   [0:0] deleted_zeros_14_fu_2994_p2;
wire   [0:0] xor_ln895_35_fu_3029_p2;
wire   [0:0] or_ln895_14_fu_3035_p2;
wire   [0:0] xor_ln895_36_fu_3041_p2;
wire   [0:0] deleted_ones_20_fu_3019_p2;
wire   [0:0] xor_ln896_36_fu_3052_p2;
wire   [0:0] and_ln891_14_fu_3024_p2;
wire   [0:0] or_ln896_14_fu_3058_p2;
wire   [0:0] xor_ln896_61_fu_3064_p2;
wire   [0:0] overflow_20_fu_3046_p2;
wire   [0:0] underflow_20_fu_3070_p2;
wire   [0:0] or_ln346_14_fu_3083_p2;
wire   [31:0] select_ln346_26_fu_3075_p3;
wire  signed [31:0] sext_ln856_6_fu_2960_p1;
wire   [26:0] zext_ln377_15_fu_3100_p1;
wire  signed [26:0] sext_ln823_7_fu_3097_p1;
wire  signed [26:0] p_Val2_64_fu_3103_p2;
wire   [0:0] p_Result_61_fu_3113_p3;
wire   [0:0] xor_ln896_37_fu_3121_p2;
wire   [0:0] xor_ln888_31_fu_3132_p2;
wire   [0:0] or_ln888_15_fu_3137_p2;
wire   [0:0] tmp_108_fu_3148_p3;
wire   [0:0] xor_ln890_15_fu_3156_p2;
wire   [0:0] or_ln890_15_fu_3162_p2;
wire   [0:0] carry_32_fu_3127_p2;
wire   [0:0] deleted_zeros_15_fu_3143_p2;
wire   [0:0] xor_ln895_37_fu_3178_p2;
wire   [0:0] or_ln895_15_fu_3184_p2;
wire   [0:0] xor_ln895_38_fu_3190_p2;
wire   [0:0] deleted_ones_21_fu_3168_p2;
wire   [0:0] xor_ln896_38_fu_3201_p2;
wire   [0:0] and_ln891_15_fu_3173_p2;
wire   [0:0] or_ln896_15_fu_3207_p2;
wire   [0:0] xor_ln896_62_fu_3213_p2;
wire   [0:0] overflow_21_fu_3195_p2;
wire   [0:0] underflow_21_fu_3219_p2;
wire   [0:0] or_ln346_15_fu_3232_p2;
wire   [31:0] select_ln346_27_fu_3224_p3;
wire  signed [31:0] sext_ln856_7_fu_3109_p1;
wire   [26:0] zext_ln377_16_fu_3249_p1;
wire  signed [26:0] sext_ln823_8_fu_3246_p1;
wire  signed [26:0] p_Val2_67_fu_3252_p2;
wire   [0:0] p_Result_64_fu_3262_p3;
wire   [0:0] xor_ln896_39_fu_3270_p2;
wire   [0:0] xor_ln888_33_fu_3281_p2;
wire   [0:0] or_ln888_16_fu_3286_p2;
wire   [0:0] tmp_114_fu_3297_p3;
wire   [0:0] xor_ln890_16_fu_3305_p2;
wire   [0:0] or_ln890_16_fu_3311_p2;
wire   [0:0] carry_34_fu_3276_p2;
wire   [0:0] deleted_zeros_16_fu_3292_p2;
wire   [0:0] xor_ln895_39_fu_3327_p2;
wire   [0:0] or_ln895_16_fu_3333_p2;
wire   [0:0] xor_ln895_40_fu_3339_p2;
wire   [0:0] deleted_ones_22_fu_3317_p2;
wire   [0:0] xor_ln896_40_fu_3350_p2;
wire   [0:0] and_ln891_16_fu_3322_p2;
wire   [0:0] or_ln896_16_fu_3356_p2;
wire   [0:0] xor_ln896_63_fu_3362_p2;
wire   [0:0] overflow_22_fu_3344_p2;
wire   [0:0] underflow_22_fu_3368_p2;
wire   [0:0] or_ln346_16_fu_3381_p2;
wire   [31:0] select_ln346_28_fu_3373_p3;
wire  signed [31:0] sext_ln856_8_fu_3258_p1;
wire  signed [31:0] rhs_8_fu_2546_p3;
wire  signed [32:0] sext_ln813_13_fu_3398_p1;
wire  signed [32:0] sext_ln813_12_fu_3395_p1;
wire   [32:0] ret_V_8_fu_3402_p2;
wire   [31:0] p_Val2_79_fu_3416_p2;
wire   [0:0] p_Result_71_fu_3408_p3;
wire   [0:0] p_Result_72_fu_3421_p3;
wire   [0:0] xor_ln895_44_fu_3429_p2;
wire   [0:0] xor_ln896_44_fu_3441_p2;
wire   [0:0] xor_ln302_17_fu_3453_p2;
wire   [0:0] overflow_26_fu_3435_p2;
wire   [0:0] xor_ln302_18_fu_3459_p2;
wire   [0:0] underflow_26_fu_3447_p2;
wire   [0:0] or_ln302_8_fu_3465_p2;
wire   [31:0] select_ln302_17_fu_3471_p3;
wire   [31:0] select_ln350_8_fu_3479_p3;
wire  signed [31:0] rhs_10_fu_2670_p3;
wire  signed [32:0] sext_ln813_17_fu_3498_p1;
wire  signed [32:0] sext_ln813_16_fu_3495_p1;
wire   [32:0] ret_V_10_fu_3502_p2;
wire   [31:0] p_Val2_83_fu_3516_p2;
wire   [0:0] p_Result_75_fu_3508_p3;
wire   [0:0] p_Result_76_fu_3521_p3;
wire   [0:0] xor_ln895_46_fu_3529_p2;
wire   [0:0] xor_ln896_46_fu_3541_p2;
wire   [0:0] xor_ln302_21_fu_3553_p2;
wire   [0:0] overflow_28_fu_3535_p2;
wire   [0:0] xor_ln302_22_fu_3559_p2;
wire   [0:0] underflow_28_fu_3547_p2;
wire   [0:0] or_ln302_10_fu_3565_p2;
wire   [31:0] select_ln302_21_fu_3571_p3;
wire   [31:0] select_ln350_10_fu_3579_p3;
wire  signed [31:0] rhs_11_fu_2795_p3;
wire  signed [32:0] sext_ln813_18_fu_3595_p1;
wire   [32:0] ret_V_11_fu_3599_p2;
wire   [31:0] p_Val2_85_fu_3613_p2;
wire   [0:0] p_Result_77_fu_3605_p3;
wire   [0:0] p_Result_78_fu_3619_p3;
wire   [0:0] xor_ln895_47_fu_3627_p2;
wire   [0:0] xor_ln896_47_fu_3639_p2;
wire   [0:0] xor_ln302_23_fu_3651_p2;
wire   [0:0] overflow_29_fu_3633_p2;
wire   [0:0] xor_ln302_24_fu_3657_p2;
wire   [0:0] underflow_29_fu_3645_p2;
wire   [0:0] or_ln302_11_fu_3663_p2;
wire   [31:0] select_ln302_23_fu_3669_p3;
wire   [31:0] select_ln350_11_fu_3677_p3;
wire  signed [31:0] lhs_6_fu_3487_p3;
wire  signed [31:0] rhs_12_fu_2940_p3;
wire  signed [32:0] sext_ln813_20_fu_3697_p1;
wire  signed [32:0] sext_ln813_19_fu_3693_p1;
wire   [32:0] ret_V_12_fu_3701_p2;
wire   [31:0] p_Val2_87_fu_3715_p2;
wire   [0:0] p_Result_79_fu_3707_p3;
wire   [0:0] p_Result_80_fu_3721_p3;
wire   [0:0] xor_ln895_48_fu_3729_p2;
wire   [0:0] xor_ln896_48_fu_3741_p2;
wire   [0:0] xor_ln302_25_fu_3753_p2;
wire   [0:0] overflow_30_fu_3735_p2;
wire   [0:0] xor_ln302_26_fu_3759_p2;
wire   [0:0] underflow_30_fu_3747_p2;
wire   [0:0] or_ln302_12_fu_3765_p2;
wire   [31:0] select_ln302_25_fu_3771_p3;
wire   [31:0] select_ln350_12_fu_3779_p3;
wire  signed [31:0] rhs_13_fu_3089_p3;
wire  signed [32:0] sext_ln813_22_fu_3798_p1;
wire  signed [32:0] sext_ln813_21_fu_3795_p1;
wire   [32:0] ret_V_13_fu_3802_p2;
wire   [31:0] p_Val2_89_fu_3816_p2;
wire   [0:0] p_Result_81_fu_3808_p3;
wire   [0:0] p_Result_82_fu_3821_p3;
wire   [0:0] xor_ln895_49_fu_3829_p2;
wire   [0:0] xor_ln896_49_fu_3841_p2;
wire   [0:0] xor_ln302_27_fu_3853_p2;
wire   [0:0] overflow_31_fu_3835_p2;
wire   [0:0] xor_ln302_28_fu_3859_p2;
wire   [0:0] underflow_31_fu_3847_p2;
wire   [0:0] or_ln302_13_fu_3865_p2;
wire   [31:0] select_ln302_27_fu_3871_p3;
wire   [31:0] select_ln350_13_fu_3879_p3;
wire  signed [31:0] lhs_8_fu_3587_p3;
wire  signed [31:0] rhs_14_fu_3238_p3;
wire  signed [32:0] sext_ln813_24_fu_3899_p1;
wire  signed [32:0] sext_ln813_23_fu_3895_p1;
wire   [32:0] ret_V_14_fu_3903_p2;
wire   [31:0] p_Val2_91_fu_3917_p2;
wire   [0:0] p_Result_83_fu_3909_p3;
wire   [0:0] p_Result_84_fu_3923_p3;
wire   [0:0] xor_ln895_50_fu_3931_p2;
wire   [0:0] xor_ln896_50_fu_3943_p2;
wire   [0:0] xor_ln302_29_fu_3955_p2;
wire   [0:0] overflow_32_fu_3937_p2;
wire   [0:0] xor_ln302_30_fu_3961_p2;
wire   [0:0] underflow_32_fu_3949_p2;
wire   [0:0] or_ln302_14_fu_3967_p2;
wire   [31:0] select_ln302_29_fu_3973_p3;
wire   [31:0] select_ln350_14_fu_3981_p3;
wire  signed [31:0] lhs_9_fu_3685_p3;
wire  signed [31:0] rhs_15_fu_3387_p3;
wire  signed [32:0] sext_ln813_26_fu_4001_p1;
wire  signed [32:0] sext_ln813_25_fu_3997_p1;
wire   [32:0] ret_V_15_fu_4005_p2;
wire   [31:0] p_Val2_93_fu_4019_p2;
wire   [0:0] p_Result_85_fu_4011_p3;
wire   [0:0] p_Result_86_fu_4025_p3;
wire   [0:0] xor_ln895_51_fu_4033_p2;
wire   [0:0] xor_ln896_51_fu_4045_p2;
wire   [0:0] xor_ln302_31_fu_4057_p2;
wire   [0:0] overflow_33_fu_4039_p2;
wire   [0:0] xor_ln302_32_fu_4063_p2;
wire   [0:0] underflow_33_fu_4051_p2;
wire   [0:0] or_ln302_15_fu_4069_p2;
wire   [31:0] select_ln302_31_fu_4075_p3;
wire   [31:0] select_ln350_15_fu_4083_p3;
wire   [31:0] select_ln302_26_fu_3787_p3;
wire   [31:0] select_ln302_28_fu_3887_p3;
wire   [31:0] select_ln302_30_fu_3989_p3;
wire   [31:0] select_ln302_32_fu_4091_p3;
reg    ap_ce_reg;
reg  signed [31:0] p_read_int_reg;
reg  signed [31:0] p_read1_int_reg;
reg  signed [31:0] p_read2_int_reg;
reg   [31:0] p_read3_int_reg;
reg   [31:0] ap_return_0_int_reg;
reg   [31:0] ap_return_1_int_reg;
reg   [31:0] ap_return_2_int_reg;
reg   [31:0] ap_return_3_int_reg;

motor_mul_32s_18s_50_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 18 ),
    .dout_WIDTH( 50 ))
mul_32s_18s_50_1_0_U18(
    .din0(p_read2_int_reg),
    .din1(r_V_10_fu_146_p1),
    .dout(r_V_10_fu_146_p2)
);

motor_mul_32s_18s_50_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 18 ),
    .dout_WIDTH( 50 ))
mul_32s_18s_50_1_0_U19(
    .din0(r_V_15_fu_147_p0),
    .din1(r_V_15_fu_147_p1),
    .dout(r_V_15_fu_147_p2)
);

motor_mul_32s_25ns_56_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 25 ),
    .dout_WIDTH( 56 ))
mul_32s_25ns_56_1_0_U20(
    .din0(p_read_int_reg),
    .din1(r_V_6_fu_148_p1),
    .dout(r_V_6_fu_148_p2)
);

motor_mul_32s_18s_50_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 18 ),
    .dout_WIDTH( 50 ))
mul_32s_18s_50_1_0_U21(
    .din0(r_V_16_fu_149_p0),
    .din1(r_V_16_fu_149_p1),
    .dout(r_V_16_fu_149_p2)
);

motor_mul_32s_24s_55_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 24 ),
    .dout_WIDTH( 55 ))
mul_32s_24s_55_1_0_U22(
    .din0(p_read_int_reg),
    .din1(r_V_fu_150_p1),
    .dout(r_V_fu_150_p2)
);

motor_mul_32s_24ns_55_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 24 ),
    .dout_WIDTH( 55 ))
mul_32s_24ns_55_1_0_U23(
    .din0(p_read_10_reg_4123),
    .din1(r_V_13_fu_151_p1),
    .dout(r_V_13_fu_151_p2)
);

motor_mul_32s_24s_55_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 24 ),
    .dout_WIDTH( 55 ))
mul_32s_24s_55_1_0_U24(
    .din0(p_read_11_reg_4129),
    .din1(r_V_9_fu_152_p1),
    .dout(r_V_9_fu_152_p2)
);

motor_mul_32s_24ns_55_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 24 ),
    .dout_WIDTH( 55 ))
mul_32s_24ns_55_1_0_U25(
    .din0(p_read1_int_reg),
    .din1(r_V_8_fu_153_p1),
    .dout(r_V_8_fu_153_p2)
);

motor_mul_32s_17ns_49_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 17 ),
    .dout_WIDTH( 49 ))
mul_32s_17ns_49_1_0_U26(
    .din0(r_V_11_fu_154_p0),
    .din1(r_V_11_fu_154_p1),
    .dout(r_V_11_fu_154_p2)
);

motor_mul_32s_17ns_49_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 17 ),
    .dout_WIDTH( 49 ))
mul_32s_17ns_49_1_0_U27(
    .din0(r_V_12_fu_155_p0),
    .din1(r_V_12_fu_155_p1),
    .dout(r_V_12_fu_155_p2)
);

motor_mul_32s_18ns_50_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 18 ),
    .dout_WIDTH( 50 ))
mul_32s_18ns_50_1_0_U28(
    .din0(r_V_14_fu_156_p0),
    .din1(r_V_14_fu_156_p1),
    .dout(r_V_14_fu_156_p2)
);

motor_mul_32s_21s_52_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 21 ),
    .dout_WIDTH( 52 ))
mul_32s_21s_52_1_0_U29(
    .din0(p_read_int_reg),
    .din1(r_V_7_fu_157_p1),
    .dout(r_V_7_fu_157_p2)
);

always @ (posedge ap_clk) begin
    ap_ce_reg <= ap_ce;
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        Range2_all_ones_10_reg_4275 <= r_V_10_fu_146_p2[32'd49];
        Range2_all_ones_11_reg_4337 <= r_V_11_fu_154_p2[32'd48];
        Range2_all_ones_12_reg_4368 <= r_V_12_fu_155_p2[32'd48];
        Range2_all_ones_13_reg_4397 <= r_V_13_fu_151_p2[32'd54];
        Range2_all_ones_14_reg_4426 <= r_V_14_fu_156_p2[32'd49];
        Range2_all_ones_15_reg_4455 <= r_V_15_fu_147_p2[32'd49];
        Range2_all_ones_16_reg_4484 <= r_V_16_fu_149_p2[32'd49];
        Range2_all_ones_6_reg_4188 <= r_V_6_fu_148_p2[32'd55];
        Range2_all_ones_7_reg_4217 <= r_V_7_fu_157_p2[32'd51];
        Range2_all_ones_8_reg_4246 <= r_V_8_fu_153_p2[32'd54];
        Range2_all_ones_9_reg_4306 <= r_V_9_fu_152_p2[32'd54];
        Range2_all_ones_reg_4159 <= r_V_fu_150_p2[32'd54];
        lhs_7_reg_4503 <= lhs_7_fu_2424_p3;
        p_Result_30_reg_4141 <= r_V_fu_150_p2[32'd54];
        p_Result_31_reg_4152 <= p_Val2_35_fu_748_p2[32'd31];
        p_Result_32_reg_4166 <= r_V_6_fu_148_p2[32'd55];
        p_Result_33_reg_4177 <= r_V_6_fu_148_p2[32'd55];
        p_Result_35_reg_4195 <= r_V_7_fu_157_p2[32'd51];
        p_Result_36_reg_4206 <= r_V_7_fu_157_p2[32'd51];
        p_Result_38_reg_4224 <= r_V_8_fu_153_p2[32'd54];
        p_Result_39_reg_4235 <= r_V_8_fu_153_p2[32'd54];
        p_Result_41_reg_4282 <= r_V_9_fu_152_p2[32'd54];
        p_Result_42_reg_4288 <= r_V_9_fu_152_p2[32'd54];
        p_Result_43_reg_4299 <= p_Val2_46_fu_1555_p2[32'd31];
        p_Result_44_reg_4253 <= r_V_10_fu_146_p2[32'd49];
        p_Result_45_reg_4264 <= r_V_10_fu_146_p2[32'd49];
        p_Result_47_reg_4313 <= r_V_11_fu_154_p2[32'd48];
        p_Result_48_reg_4319 <= r_V_11_fu_154_p2[32'd48];
        p_Result_49_reg_4330 <= p_Val2_52_fu_1768_p2[32'd25];
        p_Result_50_reg_4344 <= r_V_12_fu_155_p2[32'd48];
        p_Result_51_reg_4350 <= r_V_12_fu_155_p2[32'd48];
        p_Result_52_reg_4361 <= p_Val2_55_fu_1832_p2[32'd25];
        p_Result_53_reg_4375 <= r_V_13_fu_151_p2[32'd54];
        p_Result_54_reg_4386 <= r_V_13_fu_151_p2[32'd54];
        p_Result_56_reg_4404 <= r_V_14_fu_156_p2[32'd49];
        p_Result_57_reg_4415 <= r_V_14_fu_156_p2[32'd49];
        p_Result_59_reg_4433 <= r_V_15_fu_147_p2[32'd49];
        p_Result_60_reg_4444 <= r_V_15_fu_147_p2[32'd49];
        p_Result_62_reg_4462 <= r_V_16_fu_149_p2[32'd49];
        p_Result_63_reg_4473 <= r_V_16_fu_149_p2[32'd49];
        p_Result_s_reg_4135 <= r_V_fu_150_p2[32'd54];
        p_Val2_35_reg_4147 <= p_Val2_35_fu_748_p2;
        p_Val2_37_reg_4172 <= {{r_V_6_fu_148_p2[55:24]}};
        p_Val2_39_reg_4201 <= {{r_V_7_fu_157_p2[51:24]}};
        p_Val2_42_reg_4230 <= {{r_V_8_fu_153_p2[54:24]}};
        p_Val2_46_reg_4294 <= p_Val2_46_fu_1555_p2;
        p_Val2_48_reg_4259 <= {{r_V_10_fu_146_p2[49:24]}};
        p_Val2_52_reg_4325 <= p_Val2_52_fu_1768_p2;
        p_Val2_55_reg_4356 <= p_Val2_55_fu_1832_p2;
        p_Val2_57_reg_4381 <= {{r_V_13_fu_151_p2[54:24]}};
        p_Val2_60_reg_4410 <= {{r_V_14_fu_156_p2[49:24]}};
        p_Val2_63_reg_4439 <= {{r_V_15_fu_147_p2[49:24]}};
        p_Val2_66_reg_4468 <= {{r_V_16_fu_149_p2[49:24]}};
        p_Val2_95_reg_4491 <= p_Val2_95_fu_2220_p3;
        p_Val2_96_reg_4497 <= p_Val2_96_fu_2322_p3;
        p_read_10_reg_4123 <= p_read3_int_reg;
        p_read_11_reg_4129 <= p_read2_int_reg;
        r_V_10_reg_434 <= r_V_10_fu_146_p2;
        r_V_11_reg_666 <= r_V_11_fu_154_p2;
        r_V_12_reg_670 <= r_V_12_fu_155_p2;
        r_V_13_reg_674 <= r_V_13_fu_151_p2;
        r_V_14_reg_678 <= r_V_14_fu_156_p2;
        r_V_15_reg_682 <= r_V_15_fu_147_p2;
        r_V_16_reg_686 <= r_V_16_fu_149_p2;
        r_V_6_reg_422 <= r_V_6_fu_148_p2;
        r_V_7_reg_426 <= r_V_7_fu_157_p2;
        r_V_8_reg_430 <= r_V_8_fu_153_p2;
        r_V_9_reg_662 <= r_V_9_fu_152_p2;
        r_V_reg_418 <= r_V_fu_150_p2;
        tmp_105_reg_4450 <= r_V_15_fu_147_p2[32'd23];
        tmp_111_reg_4479 <= r_V_16_fu_149_p2[32'd23];
        tmp_51_reg_4183 <= r_V_6_fu_148_p2[32'd23];
        tmp_57_reg_4212 <= r_V_7_fu_157_p2[32'd23];
        tmp_63_reg_4241 <= r_V_8_fu_153_p2[32'd23];
        tmp_75_reg_4270 <= r_V_10_fu_146_p2[32'd23];
        tmp_93_reg_4392 <= r_V_13_fu_151_p2[32'd23];
        tmp_99_reg_4421 <= r_V_14_fu_156_p2[32'd23];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce_reg)) begin
        ap_return_0_int_reg <= select_ln302_26_fu_3787_p3;
        ap_return_1_int_reg <= select_ln302_28_fu_3887_p3;
        ap_return_2_int_reg <= select_ln302_30_fu_3989_p3;
        ap_return_3_int_reg <= select_ln302_32_fu_4091_p3;
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
        ap_return_0 = select_ln302_26_fu_3787_p3;
    end else begin
        ap_return_0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_1 = ap_return_1_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_1 = select_ln302_28_fu_3887_p3;
    end else begin
        ap_return_1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_2 = ap_return_2_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_2 = select_ln302_30_fu_3989_p3;
    end else begin
        ap_return_2 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_3 = ap_return_3_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_3 = select_ln302_32_fu_4091_p3;
    end else begin
        ap_return_3 = 'bx;
    end
end

assign and_ln891_10_fu_1653_p2 = (carry_22_fu_1607_p2 & Range2_all_ones_10_reg_4275);

assign and_ln891_11_fu_2606_p2 = (carry_24_fu_2561_p2 & Range2_all_ones_11_reg_4337);

assign and_ln891_12_fu_2731_p2 = (carry_26_fu_2686_p2 & Range2_all_ones_12_reg_4368);

assign and_ln891_13_fu_2875_p2 = (carry_28_fu_2829_p2 & Range2_all_ones_13_reg_4397);

assign and_ln891_14_fu_3024_p2 = (carry_30_fu_2978_p2 & Range2_all_ones_14_reg_4426);

assign and_ln891_15_fu_3173_p2 = (carry_32_fu_3127_p2 & Range2_all_ones_15_reg_4455);

assign and_ln891_16_fu_3322_p2 = (carry_34_fu_3276_p2 & Range2_all_ones_16_reg_4484);

assign and_ln891_6_fu_1137_p2 = (carry_14_fu_1091_p2 & Range2_all_ones_6_reg_4188);

assign and_ln891_7_fu_1286_p2 = (carry_16_fu_1240_p2 & Range2_all_ones_7_reg_4217);

assign and_ln891_8_fu_1431_p2 = (carry_18_fu_1385_p2 & Range2_all_ones_8_reg_4246);

assign and_ln891_9_fu_2482_p2 = (carry_20_fu_2437_p2 & Range2_all_ones_9_reg_4306);

assign and_ln891_fu_998_p2 = (carry_12_fu_953_p2 & Range2_all_ones_reg_4159);

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign carry_12_fu_953_p2 = (xor_ln896_fu_948_p2 & p_Result_30_reg_4141);

assign carry_14_fu_1091_p2 = (xor_ln896_19_fu_1085_p2 & p_Result_33_reg_4177);

assign carry_16_fu_1240_p2 = (xor_ln896_21_fu_1234_p2 & p_Result_36_reg_4206);

assign carry_18_fu_1385_p2 = (xor_ln896_23_fu_1379_p2 & p_Result_39_reg_4235);

assign carry_20_fu_2437_p2 = (xor_ln896_25_fu_2432_p2 & p_Result_42_reg_4288);

assign carry_22_fu_1607_p2 = (xor_ln896_27_fu_1601_p2 & p_Result_45_reg_4264);

assign carry_24_fu_2561_p2 = (xor_ln896_29_fu_2556_p2 & p_Result_48_reg_4319);

assign carry_26_fu_2686_p2 = (xor_ln896_31_fu_2681_p2 & p_Result_51_reg_4350);

assign carry_28_fu_2829_p2 = (xor_ln896_33_fu_2823_p2 & p_Result_54_reg_4386);

assign carry_30_fu_2978_p2 = (xor_ln896_35_fu_2972_p2 & p_Result_57_reg_4415);

assign carry_32_fu_3127_p2 = (xor_ln896_37_fu_3121_p2 & p_Result_60_reg_4444);

assign carry_34_fu_3276_p2 = (xor_ln896_39_fu_3270_p2 & p_Result_63_reg_4473);

assign deleted_ones_12_fu_1132_p2 = (or_ln890_6_fu_1126_p2 & Range2_all_ones_6_reg_4188);

assign deleted_ones_13_fu_1281_p2 = (or_ln890_7_fu_1275_p2 & Range2_all_ones_7_reg_4217);

assign deleted_ones_14_fu_1426_p2 = (or_ln890_8_fu_1420_p2 & Range2_all_ones_8_reg_4246);

assign deleted_ones_15_fu_2477_p2 = (or_ln890_9_fu_2471_p2 & Range2_all_ones_9_reg_4306);

assign deleted_ones_16_fu_1648_p2 = (or_ln890_10_fu_1642_p2 & Range2_all_ones_10_reg_4275);

assign deleted_ones_17_fu_2601_p2 = (or_ln890_11_fu_2595_p2 & Range2_all_ones_11_reg_4337);

assign deleted_ones_18_fu_2726_p2 = (or_ln890_12_fu_2720_p2 & Range2_all_ones_12_reg_4368);

assign deleted_ones_19_fu_2870_p2 = (or_ln890_13_fu_2864_p2 & Range2_all_ones_13_reg_4397);

assign deleted_ones_20_fu_3019_p2 = (or_ln890_14_fu_3013_p2 & Range2_all_ones_14_reg_4426);

assign deleted_ones_21_fu_3168_p2 = (or_ln890_15_fu_3162_p2 & Range2_all_ones_15_reg_4455);

assign deleted_ones_22_fu_3317_p2 = (or_ln890_16_fu_3311_p2 & Range2_all_ones_16_reg_4484);

assign deleted_ones_fu_993_p2 = (or_ln890_fu_987_p2 & Range2_all_ones_reg_4159);

assign deleted_zeros_10_fu_1623_p2 = (or_ln888_10_fu_1617_p2 ^ Range2_all_ones_10_reg_4275);

assign deleted_zeros_11_fu_2576_p2 = (or_ln888_11_fu_2571_p2 ^ Range2_all_ones_11_reg_4337);

assign deleted_zeros_12_fu_2701_p2 = (or_ln888_12_fu_2696_p2 ^ Range2_all_ones_12_reg_4368);

assign deleted_zeros_13_fu_2845_p2 = (or_ln888_13_fu_2839_p2 ^ Range2_all_ones_13_reg_4397);

assign deleted_zeros_14_fu_2994_p2 = (or_ln888_14_fu_2988_p2 ^ Range2_all_ones_14_reg_4426);

assign deleted_zeros_15_fu_3143_p2 = (or_ln888_15_fu_3137_p2 ^ Range2_all_ones_15_reg_4455);

assign deleted_zeros_16_fu_3292_p2 = (or_ln888_16_fu_3286_p2 ^ Range2_all_ones_16_reg_4484);

assign deleted_zeros_6_fu_1107_p2 = (or_ln888_6_fu_1101_p2 ^ Range2_all_ones_6_reg_4188);

assign deleted_zeros_7_fu_1256_p2 = (or_ln888_7_fu_1250_p2 ^ Range2_all_ones_7_reg_4217);

assign deleted_zeros_8_fu_1401_p2 = (or_ln888_8_fu_1395_p2 ^ Range2_all_ones_8_reg_4246);

assign deleted_zeros_9_fu_2452_p2 = (or_ln888_9_fu_2447_p2 ^ Range2_all_ones_9_reg_4306);

assign deleted_zeros_fu_968_p2 = (or_ln888_fu_963_p2 ^ Range2_all_ones_reg_4159);

assign lhs_6_fu_3487_p3 = ((or_ln302_8_fu_3465_p2[0:0] == 1'b1) ? select_ln302_17_fu_3471_p3 : select_ln350_8_fu_3479_p3);

assign lhs_7_fu_2424_p3 = ((or_ln302_9_fu_2402_p2[0:0] == 1'b1) ? select_ln302_19_fu_2408_p3 : select_ln350_9_fu_2416_p3);

assign lhs_8_fu_3587_p3 = ((or_ln302_10_fu_3565_p2[0:0] == 1'b1) ? select_ln302_21_fu_3571_p3 : select_ln350_10_fu_3579_p3);

assign lhs_9_fu_3685_p3 = ((or_ln302_11_fu_3663_p2[0:0] == 1'b1) ? select_ln302_23_fu_3669_p3 : select_ln350_11_fu_3677_p3);

assign or_ln302_10_fu_3565_p2 = (xor_ln302_22_fu_3559_p2 | overflow_28_fu_3535_p2);

assign or_ln302_11_fu_3663_p2 = (xor_ln302_24_fu_3657_p2 | overflow_29_fu_3633_p2);

assign or_ln302_12_fu_3765_p2 = (xor_ln302_26_fu_3759_p2 | overflow_30_fu_3735_p2);

assign or_ln302_13_fu_3865_p2 = (xor_ln302_28_fu_3859_p2 | overflow_31_fu_3835_p2);

assign or_ln302_14_fu_3967_p2 = (xor_ln302_30_fu_3961_p2 | overflow_32_fu_3937_p2);

assign or_ln302_15_fu_4069_p2 = (xor_ln302_32_fu_4063_p2 | overflow_33_fu_4039_p2);

assign or_ln302_6_fu_2198_p2 = (xor_ln302_14_fu_2192_p2 | overflow_24_fu_2168_p2);

assign or_ln302_7_fu_2300_p2 = (xor_ln302_16_fu_2294_p2 | overflow_25_fu_2270_p2);

assign or_ln302_8_fu_3465_p2 = (xor_ln302_18_fu_3459_p2 | overflow_26_fu_3435_p2);

assign or_ln302_9_fu_2402_p2 = (xor_ln302_20_fu_2396_p2 | overflow_27_fu_2372_p2);

assign or_ln302_fu_2100_p2 = (xor_ln302_12_fu_2094_p2 | overflow_23_fu_2070_p2);

assign or_ln346_10_fu_1712_p2 = (underflow_16_fu_1699_p2 | overflow_16_fu_1675_p2);

assign or_ln346_11_fu_2664_p2 = (underflow_17_fu_2651_p2 | overflow_17_fu_2627_p2);

assign or_ln346_12_fu_2789_p2 = (underflow_18_fu_2776_p2 | overflow_18_fu_2752_p2);

assign or_ln346_13_fu_2934_p2 = (underflow_19_fu_2921_p2 | overflow_19_fu_2897_p2);

assign or_ln346_14_fu_3083_p2 = (underflow_20_fu_3070_p2 | overflow_20_fu_3046_p2);

assign or_ln346_15_fu_3232_p2 = (underflow_21_fu_3219_p2 | overflow_21_fu_3195_p2);

assign or_ln346_16_fu_3381_p2 = (underflow_22_fu_3368_p2 | overflow_22_fu_3344_p2);

assign or_ln346_6_fu_1196_p2 = (underflow_12_fu_1183_p2 | overflow_12_fu_1159_p2);

assign or_ln346_7_fu_1345_p2 = (underflow_13_fu_1332_p2 | overflow_13_fu_1308_p2);

assign or_ln346_8_fu_1490_p2 = (underflow_14_fu_1477_p2 | overflow_14_fu_1453_p2);

assign or_ln346_9_fu_2540_p2 = (underflow_15_fu_2527_p2 | overflow_15_fu_2503_p2);

assign or_ln346_fu_1056_p2 = (underflow_fu_1043_p2 | overflow_fu_1019_p2);

assign or_ln888_10_fu_1617_p2 = (xor_ln888_21_fu_1612_p2 | p_Result_46_fu_1593_p3);

assign or_ln888_11_fu_2571_p2 = (xor_ln888_23_fu_2566_p2 | p_Result_49_reg_4330);

assign or_ln888_12_fu_2696_p2 = (xor_ln888_25_fu_2691_p2 | p_Result_52_reg_4361);

assign or_ln888_13_fu_2839_p2 = (xor_ln888_27_fu_2834_p2 | p_Result_55_fu_2815_p3);

assign or_ln888_14_fu_2988_p2 = (xor_ln888_29_fu_2983_p2 | p_Result_58_fu_2964_p3);

assign or_ln888_15_fu_3137_p2 = (xor_ln888_31_fu_3132_p2 | p_Result_61_fu_3113_p3);

assign or_ln888_16_fu_3286_p2 = (xor_ln888_33_fu_3281_p2 | p_Result_64_fu_3262_p3);

assign or_ln888_6_fu_1101_p2 = (xor_ln888_13_fu_1096_p2 | p_Result_34_fu_1077_p3);

assign or_ln888_7_fu_1250_p2 = (xor_ln888_15_fu_1245_p2 | p_Result_37_fu_1226_p3);

assign or_ln888_8_fu_1395_p2 = (xor_ln888_17_fu_1390_p2 | p_Result_40_fu_1371_p3);

assign or_ln888_9_fu_2447_p2 = (xor_ln888_19_fu_2442_p2 | p_Result_43_reg_4299);

assign or_ln888_fu_963_p2 = (xor_ln888_fu_958_p2 | p_Result_31_reg_4152);

assign or_ln890_10_fu_1642_p2 = (xor_ln890_10_fu_1636_p2 | or_ln888_10_fu_1617_p2);

assign or_ln890_11_fu_2595_p2 = (xor_ln890_11_fu_2589_p2 | or_ln888_11_fu_2571_p2);

assign or_ln890_12_fu_2720_p2 = (xor_ln890_12_fu_2714_p2 | or_ln888_12_fu_2696_p2);

assign or_ln890_13_fu_2864_p2 = (xor_ln890_13_fu_2858_p2 | or_ln888_13_fu_2839_p2);

assign or_ln890_14_fu_3013_p2 = (xor_ln890_14_fu_3007_p2 | or_ln888_14_fu_2988_p2);

assign or_ln890_15_fu_3162_p2 = (xor_ln890_15_fu_3156_p2 | or_ln888_15_fu_3137_p2);

assign or_ln890_16_fu_3311_p2 = (xor_ln890_16_fu_3305_p2 | or_ln888_16_fu_3286_p2);

assign or_ln890_6_fu_1126_p2 = (xor_ln890_6_fu_1120_p2 | or_ln888_6_fu_1101_p2);

assign or_ln890_7_fu_1275_p2 = (xor_ln890_7_fu_1269_p2 | or_ln888_7_fu_1250_p2);

assign or_ln890_8_fu_1420_p2 = (xor_ln890_8_fu_1414_p2 | or_ln888_8_fu_1395_p2);

assign or_ln890_9_fu_2471_p2 = (xor_ln890_9_fu_2465_p2 | or_ln888_9_fu_2447_p2);

assign or_ln890_fu_987_p2 = (xor_ln890_fu_981_p2 | or_ln888_fu_963_p2);

assign or_ln895_10_fu_1664_p2 = (xor_ln895_27_fu_1658_p2 | p_Result_46_fu_1593_p3);

assign or_ln895_11_fu_2617_p2 = (xor_ln895_29_fu_2611_p2 | p_Result_49_reg_4330);

assign or_ln895_12_fu_2742_p2 = (xor_ln895_31_fu_2736_p2 | p_Result_52_reg_4361);

assign or_ln895_13_fu_2886_p2 = (xor_ln895_33_fu_2880_p2 | p_Result_55_fu_2815_p3);

assign or_ln895_14_fu_3035_p2 = (xor_ln895_35_fu_3029_p2 | p_Result_58_fu_2964_p3);

assign or_ln895_15_fu_3184_p2 = (xor_ln895_37_fu_3178_p2 | p_Result_61_fu_3113_p3);

assign or_ln895_16_fu_3333_p2 = (xor_ln895_39_fu_3327_p2 | p_Result_64_fu_3262_p3);

assign or_ln895_6_fu_1148_p2 = (xor_ln895_19_fu_1142_p2 | p_Result_34_fu_1077_p3);

assign or_ln895_7_fu_1297_p2 = (xor_ln895_21_fu_1291_p2 | p_Result_37_fu_1226_p3);

assign or_ln895_8_fu_1442_p2 = (xor_ln895_23_fu_1436_p2 | p_Result_40_fu_1371_p3);

assign or_ln895_9_fu_2493_p2 = (xor_ln895_25_fu_2487_p2 | p_Result_43_reg_4299);

assign or_ln895_fu_1009_p2 = (xor_ln895_fu_1003_p2 | p_Result_31_reg_4152);

assign or_ln896_10_fu_1687_p2 = (xor_ln896_28_fu_1681_p2 | xor_ln896_27_fu_1601_p2);

assign or_ln896_11_fu_2639_p2 = (xor_ln896_30_fu_2633_p2 | xor_ln896_29_fu_2556_p2);

assign or_ln896_12_fu_2764_p2 = (xor_ln896_32_fu_2758_p2 | xor_ln896_31_fu_2681_p2);

assign or_ln896_13_fu_2909_p2 = (xor_ln896_34_fu_2903_p2 | xor_ln896_33_fu_2823_p2);

assign or_ln896_14_fu_3058_p2 = (xor_ln896_36_fu_3052_p2 | xor_ln896_35_fu_2972_p2);

assign or_ln896_15_fu_3207_p2 = (xor_ln896_38_fu_3201_p2 | xor_ln896_37_fu_3121_p2);

assign or_ln896_16_fu_3356_p2 = (xor_ln896_40_fu_3350_p2 | xor_ln896_39_fu_3270_p2);

assign or_ln896_6_fu_1171_p2 = (xor_ln896_20_fu_1165_p2 | xor_ln896_19_fu_1085_p2);

assign or_ln896_7_fu_1320_p2 = (xor_ln896_22_fu_1314_p2 | xor_ln896_21_fu_1234_p2);

assign or_ln896_8_fu_1465_p2 = (xor_ln896_24_fu_1459_p2 | xor_ln896_23_fu_1379_p2);

assign or_ln896_9_fu_2515_p2 = (xor_ln896_26_fu_2509_p2 | xor_ln896_25_fu_2432_p2);

assign or_ln896_fu_1031_p2 = (xor_ln896_fu_948_p2 | xor_ln896_18_fu_1025_p2);

assign overflow_12_fu_1159_p2 = (xor_ln895_20_fu_1154_p2 & or_ln895_6_fu_1148_p2);

assign overflow_13_fu_1308_p2 = (xor_ln895_22_fu_1303_p2 & or_ln895_7_fu_1297_p2);

assign overflow_14_fu_1453_p2 = (xor_ln895_24_fu_1448_p2 & or_ln895_8_fu_1442_p2);

assign overflow_15_fu_2503_p2 = (xor_ln895_26_fu_2498_p2 & or_ln895_9_fu_2493_p2);

assign overflow_16_fu_1675_p2 = (xor_ln895_28_fu_1670_p2 & or_ln895_10_fu_1664_p2);

assign overflow_17_fu_2627_p2 = (xor_ln895_30_fu_2622_p2 & or_ln895_11_fu_2617_p2);

assign overflow_18_fu_2752_p2 = (xor_ln895_32_fu_2747_p2 & or_ln895_12_fu_2742_p2);

assign overflow_19_fu_2897_p2 = (xor_ln895_34_fu_2892_p2 & or_ln895_13_fu_2886_p2);

assign overflow_20_fu_3046_p2 = (xor_ln895_36_fu_3041_p2 & or_ln895_14_fu_3035_p2);

assign overflow_21_fu_3195_p2 = (xor_ln895_38_fu_3190_p2 & or_ln895_15_fu_3184_p2);

assign overflow_22_fu_3344_p2 = (xor_ln895_40_fu_3339_p2 & or_ln895_16_fu_3333_p2);

assign overflow_23_fu_2070_p2 = (xor_ln895_41_fu_2064_p2 & p_Result_66_fu_2056_p3);

assign overflow_24_fu_2168_p2 = (xor_ln895_42_fu_2162_p2 & p_Result_68_fu_2154_p3);

assign overflow_25_fu_2270_p2 = (xor_ln895_43_fu_2264_p2 & p_Result_70_fu_2256_p3);

assign overflow_26_fu_3435_p2 = (xor_ln895_44_fu_3429_p2 & p_Result_72_fu_3421_p3);

assign overflow_27_fu_2372_p2 = (xor_ln895_45_fu_2366_p2 & p_Result_74_fu_2358_p3);

assign overflow_28_fu_3535_p2 = (xor_ln895_46_fu_3529_p2 & p_Result_76_fu_3521_p3);

assign overflow_29_fu_3633_p2 = (xor_ln895_47_fu_3627_p2 & p_Result_78_fu_3619_p3);

assign overflow_30_fu_3735_p2 = (xor_ln895_48_fu_3729_p2 & p_Result_80_fu_3721_p3);

assign overflow_31_fu_3835_p2 = (xor_ln895_49_fu_3829_p2 & p_Result_82_fu_3821_p3);

assign overflow_32_fu_3937_p2 = (xor_ln895_50_fu_3931_p2 & p_Result_84_fu_3923_p3);

assign overflow_33_fu_4039_p2 = (xor_ln895_51_fu_4033_p2 & p_Result_86_fu_4025_p3);

assign overflow_fu_1019_p2 = (xor_ln895_18_fu_1014_p2 & or_ln895_fu_1009_p2);

assign p_Result_34_fu_1077_p3 = p_Val2_38_fu_1072_p2[32'd31];

assign p_Result_37_fu_1226_p3 = p_Val2_40_fu_1216_p2[32'd28];

assign p_Result_40_fu_1371_p3 = p_Val2_43_fu_1365_p2[32'd31];

assign p_Result_46_fu_1593_p3 = p_Val2_49_fu_1583_p2[32'd26];

assign p_Result_55_fu_2815_p3 = p_Val2_58_fu_2809_p2[32'd31];

assign p_Result_58_fu_2964_p3 = p_Val2_61_fu_2954_p2[32'd26];

assign p_Result_61_fu_3113_p3 = p_Val2_64_fu_3103_p2[32'd26];

assign p_Result_64_fu_3262_p3 = p_Val2_67_fu_3252_p2[32'd26];

assign p_Result_65_fu_2042_p3 = ret_V_fu_2036_p2[32'd32];

assign p_Result_66_fu_2056_p3 = p_Val2_69_fu_2050_p2[32'd31];

assign p_Result_67_fu_2140_p3 = ret_V_6_fu_2134_p2[32'd32];

assign p_Result_68_fu_2154_p3 = p_Val2_72_fu_2148_p2[32'd31];

assign p_Result_69_fu_2242_p3 = ret_V_7_fu_2236_p2[32'd32];

assign p_Result_70_fu_2256_p3 = p_Val2_76_fu_2250_p2[32'd31];

assign p_Result_71_fu_3408_p3 = ret_V_8_fu_3402_p2[32'd32];

assign p_Result_72_fu_3421_p3 = p_Val2_79_fu_3416_p2[32'd31];

assign p_Result_73_fu_2344_p3 = ret_V_9_fu_2338_p2[32'd32];

assign p_Result_74_fu_2358_p3 = p_Val2_81_fu_2352_p2[32'd31];

assign p_Result_75_fu_3508_p3 = ret_V_10_fu_3502_p2[32'd32];

assign p_Result_76_fu_3521_p3 = p_Val2_83_fu_3516_p2[32'd31];

assign p_Result_77_fu_3605_p3 = ret_V_11_fu_3599_p2[32'd32];

assign p_Result_78_fu_3619_p3 = p_Val2_85_fu_3613_p2[32'd31];

assign p_Result_79_fu_3707_p3 = ret_V_12_fu_3701_p2[32'd32];

assign p_Result_80_fu_3721_p3 = p_Val2_87_fu_3715_p2[32'd31];

assign p_Result_81_fu_3808_p3 = ret_V_13_fu_3802_p2[32'd32];

assign p_Result_82_fu_3821_p3 = p_Val2_89_fu_3816_p2[32'd31];

assign p_Result_83_fu_3909_p3 = ret_V_14_fu_3903_p2[32'd32];

assign p_Result_84_fu_3923_p3 = p_Val2_91_fu_3917_p2[32'd31];

assign p_Result_85_fu_4011_p3 = ret_V_15_fu_4005_p2[32'd32];

assign p_Result_86_fu_4025_p3 = p_Val2_93_fu_4019_p2[32'd31];

assign p_Val2_34_fu_714_p4 = {{r_V_fu_150_p2[54:24]}};

assign p_Val2_35_fu_748_p2 = ($signed(zext_ln377_fu_744_p1) + $signed(sext_ln818_fu_724_p1));

assign p_Val2_38_fu_1072_p2 = (zext_ln377_6_fu_1069_p1 + p_Val2_37_reg_4172);

assign p_Val2_40_fu_1216_p2 = ($signed(zext_ln377_7_fu_1213_p1) + $signed(sext_ln823_fu_1210_p1));

assign p_Val2_43_fu_1365_p2 = ($signed(zext_ln377_8_fu_1362_p1) + $signed(sext_ln818_1_fu_1359_p1));

assign p_Val2_45_fu_1521_p4 = {{r_V_9_fu_152_p2[54:24]}};

assign p_Val2_46_fu_1555_p2 = ($signed(zext_ln377_9_fu_1551_p1) + $signed(sext_ln818_2_fu_1531_p1));

assign p_Val2_49_fu_1583_p2 = ($signed(zext_ln377_10_fu_1580_p1) + $signed(sext_ln823_3_fu_1577_p1));

assign p_Val2_51_fu_1734_p4 = {{r_V_11_fu_154_p2[48:24]}};

assign p_Val2_52_fu_1768_p2 = ($signed(zext_ln377_11_fu_1764_p1) + $signed(sext_ln823_4_fu_1744_p1));

assign p_Val2_54_fu_1798_p4 = {{r_V_12_fu_155_p2[48:24]}};

assign p_Val2_55_fu_1832_p2 = ($signed(zext_ln377_12_fu_1828_p1) + $signed(sext_ln823_5_fu_1808_p1));

assign p_Val2_58_fu_2809_p2 = ($signed(zext_ln377_13_fu_2806_p1) + $signed(sext_ln818_3_fu_2803_p1));

assign p_Val2_61_fu_2954_p2 = ($signed(zext_ln377_14_fu_2951_p1) + $signed(sext_ln823_6_fu_2948_p1));

assign p_Val2_64_fu_3103_p2 = ($signed(zext_ln377_15_fu_3100_p1) + $signed(sext_ln823_7_fu_3097_p1));

assign p_Val2_67_fu_3252_p2 = ($signed(zext_ln377_16_fu_3249_p1) + $signed(sext_ln823_8_fu_3246_p1));

assign p_Val2_69_fu_2050_p2 = ($signed(rhs_fu_1062_p3) + $signed(32'd5264183));

assign p_Val2_72_fu_2148_p2 = ($signed(rhs_6_fu_1351_p3) + $signed(32'd6442053));

assign p_Val2_76_fu_2250_p2 = ($signed(rhs_7_fu_1496_p3) + $signed(p_Val2_94_fu_2122_p3));

assign p_Val2_79_fu_3416_p2 = ($signed(rhs_8_fu_2546_p3) + $signed(p_Val2_96_reg_4497));

assign p_Val2_81_fu_2352_p2 = ($signed(rhs_9_fu_1718_p3) + $signed(p_Val2_s_fu_1202_p3));

assign p_Val2_83_fu_3516_p2 = ($signed(rhs_10_fu_2670_p3) + $signed(p_Val2_95_reg_4491));

assign p_Val2_85_fu_3613_p2 = ($signed(rhs_11_fu_2795_p3) + $signed(32'd19328802));

assign p_Val2_87_fu_3715_p2 = ($signed(rhs_12_fu_2940_p3) + $signed(lhs_6_fu_3487_p3));

assign p_Val2_89_fu_3816_p2 = ($signed(rhs_13_fu_3089_p3) + $signed(lhs_7_reg_4503));

assign p_Val2_91_fu_3917_p2 = ($signed(rhs_14_fu_3238_p3) + $signed(lhs_8_fu_3587_p3));

assign p_Val2_93_fu_4019_p2 = ($signed(rhs_15_fu_3387_p3) + $signed(lhs_9_fu_3685_p3));

assign p_Val2_94_fu_2122_p3 = ((or_ln302_fu_2100_p2[0:0] == 1'b1) ? select_ln302_fu_2106_p3 : select_ln350_fu_2114_p3);

assign p_Val2_95_fu_2220_p3 = ((or_ln302_6_fu_2198_p2[0:0] == 1'b1) ? select_ln302_13_fu_2204_p3 : select_ln350_6_fu_2212_p3);

assign p_Val2_96_fu_2322_p3 = ((or_ln302_7_fu_2300_p2[0:0] == 1'b1) ? select_ln302_15_fu_2306_p3 : select_ln350_7_fu_2314_p3);

assign p_Val2_s_fu_1202_p3 = ((or_ln346_6_fu_1196_p2[0:0] == 1'b1) ? select_ln346_13_fu_1188_p3 : p_Val2_38_fu_1072_p2);

assign r_V_10_fu_146_p1 = 50'd1125899906763676;

assign r_V_11_fu_154_p0 = sext_ln70_8_fu_1504_p1;

assign r_V_11_fu_154_p1 = 49'd41389;

assign r_V_12_fu_155_p0 = sext_ln70_8_fu_1504_p1;

assign r_V_12_fu_155_p1 = 49'd55758;

assign r_V_13_fu_151_p1 = 55'd7442488;

assign r_V_14_fu_156_p0 = sext_ln70_11_fu_1854_p1;

assign r_V_14_fu_156_p1 = 50'd97396;

assign r_V_15_fu_147_p0 = sext_ln70_11_fu_1854_p1;

assign r_V_15_fu_147_p1 = 50'd1125899906729295;

assign r_V_16_fu_149_p0 = sext_ln70_11_fu_1854_p1;

assign r_V_16_fu_149_p1 = 50'd1125899906735636;

assign r_V_6_fu_148_p1 = 56'd14737058;

assign r_V_7_fu_157_p1 = 52'd4503599626520398;

assign r_V_8_fu_153_p1 = 55'd5944544;

assign r_V_9_fu_152_p1 = 55'd36028797011804136;

assign r_V_fu_150_p1 = 55'd36028797011701431;

assign ret_V_10_fu_3502_p2 = ($signed(sext_ln813_17_fu_3498_p1) + $signed(sext_ln813_16_fu_3495_p1));

assign ret_V_11_fu_3599_p2 = ($signed(sext_ln813_18_fu_3595_p1) + $signed(33'd19328802));

assign ret_V_12_fu_3701_p2 = ($signed(sext_ln813_20_fu_3697_p1) + $signed(sext_ln813_19_fu_3693_p1));

assign ret_V_13_fu_3802_p2 = ($signed(sext_ln813_22_fu_3798_p1) + $signed(sext_ln813_21_fu_3795_p1));

assign ret_V_14_fu_3903_p2 = ($signed(sext_ln813_24_fu_3899_p1) + $signed(sext_ln813_23_fu_3895_p1));

assign ret_V_15_fu_4005_p2 = ($signed(sext_ln813_26_fu_4001_p1) + $signed(sext_ln813_25_fu_3997_p1));

assign ret_V_6_fu_2134_p2 = ($signed(sext_ln813_9_fu_2130_p1) + $signed(33'd6442053));

assign ret_V_7_fu_2236_p2 = ($signed(sext_ln813_11_fu_2232_p1) + $signed(sext_ln813_10_fu_2228_p1));

assign ret_V_8_fu_3402_p2 = ($signed(sext_ln813_13_fu_3398_p1) + $signed(sext_ln813_12_fu_3395_p1));

assign ret_V_9_fu_2338_p2 = ($signed(sext_ln813_15_fu_2334_p1) + $signed(sext_ln813_14_fu_2330_p1));

assign ret_V_fu_2036_p2 = ($signed(sext_ln813_fu_2032_p1) + $signed(33'd5264183));

assign rhs_10_fu_2670_p3 = ((or_ln346_11_fu_2664_p2[0:0] == 1'b1) ? select_ln346_23_fu_2656_p3 : sext_ln856_4_fu_2553_p1);

assign rhs_11_fu_2795_p3 = ((or_ln346_12_fu_2789_p2[0:0] == 1'b1) ? select_ln346_24_fu_2781_p3 : sext_ln856_5_fu_2678_p1);

assign rhs_12_fu_2940_p3 = ((or_ln346_13_fu_2934_p2[0:0] == 1'b1) ? select_ln346_25_fu_2926_p3 : p_Val2_58_fu_2809_p2);

assign rhs_13_fu_3089_p3 = ((or_ln346_14_fu_3083_p2[0:0] == 1'b1) ? select_ln346_26_fu_3075_p3 : sext_ln856_6_fu_2960_p1);

assign rhs_14_fu_3238_p3 = ((or_ln346_15_fu_3232_p2[0:0] == 1'b1) ? select_ln346_27_fu_3224_p3 : sext_ln856_7_fu_3109_p1);

assign rhs_15_fu_3387_p3 = ((or_ln346_16_fu_3381_p2[0:0] == 1'b1) ? select_ln346_28_fu_3373_p3 : sext_ln856_8_fu_3258_p1);

assign rhs_6_fu_1351_p3 = ((or_ln346_7_fu_1345_p2[0:0] == 1'b1) ? select_ln346_15_fu_1337_p3 : sext_ln856_fu_1222_p1);

assign rhs_7_fu_1496_p3 = ((or_ln346_8_fu_1490_p2[0:0] == 1'b1) ? select_ln346_17_fu_1482_p3 : p_Val2_43_fu_1365_p2);

assign rhs_8_fu_2546_p3 = ((or_ln346_9_fu_2540_p2[0:0] == 1'b1) ? select_ln346_19_fu_2532_p3 : p_Val2_46_reg_4294);

assign rhs_9_fu_1718_p3 = ((or_ln346_10_fu_1712_p2[0:0] == 1'b1) ? select_ln346_21_fu_1704_p3 : sext_ln856_3_fu_1589_p1);

assign rhs_fu_1062_p3 = ((or_ln346_fu_1056_p2[0:0] == 1'b1) ? select_ln346_fu_1048_p3 : p_Val2_35_reg_4147);

assign select_ln302_13_fu_2204_p3 = ((xor_ln302_13_fu_2186_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_72_fu_2148_p2);

assign select_ln302_15_fu_2306_p3 = ((xor_ln302_15_fu_2288_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_76_fu_2250_p2);

assign select_ln302_17_fu_3471_p3 = ((xor_ln302_17_fu_3453_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_79_fu_3416_p2);

assign select_ln302_19_fu_2408_p3 = ((xor_ln302_19_fu_2390_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_81_fu_2352_p2);

assign select_ln302_21_fu_3571_p3 = ((xor_ln302_21_fu_3553_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_83_fu_3516_p2);

assign select_ln302_23_fu_3669_p3 = ((xor_ln302_23_fu_3651_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_85_fu_3613_p2);

assign select_ln302_25_fu_3771_p3 = ((xor_ln302_25_fu_3753_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_87_fu_3715_p2);

assign select_ln302_26_fu_3787_p3 = ((or_ln302_12_fu_3765_p2[0:0] == 1'b1) ? select_ln302_25_fu_3771_p3 : select_ln350_12_fu_3779_p3);

assign select_ln302_27_fu_3871_p3 = ((xor_ln302_27_fu_3853_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_89_fu_3816_p2);

assign select_ln302_28_fu_3887_p3 = ((or_ln302_13_fu_3865_p2[0:0] == 1'b1) ? select_ln302_27_fu_3871_p3 : select_ln350_13_fu_3879_p3);

assign select_ln302_29_fu_3973_p3 = ((xor_ln302_29_fu_3955_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_91_fu_3917_p2);

assign select_ln302_30_fu_3989_p3 = ((or_ln302_14_fu_3967_p2[0:0] == 1'b1) ? select_ln302_29_fu_3973_p3 : select_ln350_14_fu_3981_p3);

assign select_ln302_31_fu_4075_p3 = ((xor_ln302_31_fu_4057_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_93_fu_4019_p2);

assign select_ln302_32_fu_4091_p3 = ((or_ln302_15_fu_4069_p2[0:0] == 1'b1) ? select_ln302_31_fu_4075_p3 : select_ln350_15_fu_4083_p3);

assign select_ln302_fu_2106_p3 = ((xor_ln302_fu_2088_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_69_fu_2050_p2);

assign select_ln346_13_fu_1188_p3 = ((overflow_12_fu_1159_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_15_fu_1337_p3 = ((overflow_13_fu_1308_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_17_fu_1482_p3 = ((overflow_14_fu_1453_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_19_fu_2532_p3 = ((overflow_15_fu_2503_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_21_fu_1704_p3 = ((overflow_16_fu_1675_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_23_fu_2656_p3 = ((overflow_17_fu_2627_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_24_fu_2781_p3 = ((overflow_18_fu_2752_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_25_fu_2926_p3 = ((overflow_19_fu_2897_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_26_fu_3075_p3 = ((overflow_20_fu_3046_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_27_fu_3224_p3 = ((overflow_21_fu_3195_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_28_fu_3373_p3 = ((overflow_22_fu_3344_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_fu_1048_p3 = ((overflow_fu_1019_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln350_10_fu_3579_p3 = ((underflow_28_fu_3547_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_83_fu_3516_p2);

assign select_ln350_11_fu_3677_p3 = ((underflow_29_fu_3645_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_85_fu_3613_p2);

assign select_ln350_12_fu_3779_p3 = ((underflow_30_fu_3747_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_87_fu_3715_p2);

assign select_ln350_13_fu_3879_p3 = ((underflow_31_fu_3847_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_89_fu_3816_p2);

assign select_ln350_14_fu_3981_p3 = ((underflow_32_fu_3949_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_91_fu_3917_p2);

assign select_ln350_15_fu_4083_p3 = ((underflow_33_fu_4051_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_93_fu_4019_p2);

assign select_ln350_6_fu_2212_p3 = ((underflow_24_fu_2180_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_72_fu_2148_p2);

assign select_ln350_7_fu_2314_p3 = ((underflow_25_fu_2282_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_76_fu_2250_p2);

assign select_ln350_8_fu_3479_p3 = ((underflow_26_fu_3447_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_79_fu_3416_p2);

assign select_ln350_9_fu_2416_p3 = ((underflow_27_fu_2384_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_81_fu_2352_p2);

assign select_ln350_fu_2114_p3 = ((underflow_23_fu_2082_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_69_fu_2050_p2);

assign sext_ln70_11_fu_1854_p1 = p_read_10_reg_4123;

assign sext_ln70_8_fu_1504_p1 = p_read_11_reg_4129;

assign sext_ln813_10_fu_2228_p1 = p_Val2_94_fu_2122_p3;

assign sext_ln813_11_fu_2232_p1 = rhs_7_fu_1496_p3;

assign sext_ln813_12_fu_3395_p1 = p_Val2_96_reg_4497;

assign sext_ln813_13_fu_3398_p1 = rhs_8_fu_2546_p3;

assign sext_ln813_14_fu_2330_p1 = p_Val2_s_fu_1202_p3;

assign sext_ln813_15_fu_2334_p1 = rhs_9_fu_1718_p3;

assign sext_ln813_16_fu_3495_p1 = p_Val2_95_reg_4491;

assign sext_ln813_17_fu_3498_p1 = rhs_10_fu_2670_p3;

assign sext_ln813_18_fu_3595_p1 = rhs_11_fu_2795_p3;

assign sext_ln813_19_fu_3693_p1 = lhs_6_fu_3487_p3;

assign sext_ln813_20_fu_3697_p1 = rhs_12_fu_2940_p3;

assign sext_ln813_21_fu_3795_p1 = lhs_7_reg_4503;

assign sext_ln813_22_fu_3798_p1 = rhs_13_fu_3089_p3;

assign sext_ln813_23_fu_3895_p1 = lhs_8_fu_3587_p3;

assign sext_ln813_24_fu_3899_p1 = rhs_14_fu_3238_p3;

assign sext_ln813_25_fu_3997_p1 = lhs_9_fu_3685_p3;

assign sext_ln813_26_fu_4001_p1 = rhs_15_fu_3387_p3;

assign sext_ln813_9_fu_2130_p1 = rhs_6_fu_1351_p3;

assign sext_ln813_fu_2032_p1 = rhs_fu_1062_p3;

assign sext_ln818_1_fu_1359_p1 = $signed(p_Val2_42_reg_4230);

assign sext_ln818_2_fu_1531_p1 = $signed(p_Val2_45_fu_1521_p4);

assign sext_ln818_3_fu_2803_p1 = $signed(p_Val2_57_reg_4381);

assign sext_ln818_fu_724_p1 = $signed(p_Val2_34_fu_714_p4);

assign sext_ln823_3_fu_1577_p1 = $signed(p_Val2_48_reg_4259);

assign sext_ln823_4_fu_1744_p1 = $signed(p_Val2_51_fu_1734_p4);

assign sext_ln823_5_fu_1808_p1 = $signed(p_Val2_54_fu_1798_p4);

assign sext_ln823_6_fu_2948_p1 = $signed(p_Val2_60_reg_4410);

assign sext_ln823_7_fu_3097_p1 = $signed(p_Val2_63_reg_4439);

assign sext_ln823_8_fu_3246_p1 = $signed(p_Val2_66_reg_4468);

assign sext_ln823_fu_1210_p1 = $signed(p_Val2_39_reg_4201);

assign sext_ln856_3_fu_1589_p1 = p_Val2_49_fu_1583_p2;

assign sext_ln856_4_fu_2553_p1 = p_Val2_52_reg_4325;

assign sext_ln856_5_fu_2678_p1 = p_Val2_55_reg_4356;

assign sext_ln856_6_fu_2960_p1 = p_Val2_61_fu_2954_p2;

assign sext_ln856_7_fu_3109_p1 = p_Val2_64_fu_3103_p2;

assign sext_ln856_8_fu_3258_p1 = p_Val2_67_fu_3252_p2;

assign sext_ln856_fu_1222_p1 = p_Val2_40_fu_1216_p2;

assign tmp_102_fu_2999_p3 = r_V_14_reg_678[32'd49];

assign tmp_108_fu_3148_p3 = r_V_15_reg_682[32'd49];

assign tmp_114_fu_3297_p3 = r_V_16_reg_686[32'd49];

assign tmp_48_fu_973_p3 = r_V_reg_418[32'd54];

assign tmp_54_fu_1112_p3 = r_V_6_reg_422[32'd55];

assign tmp_60_fu_1261_p3 = r_V_7_reg_426[32'd51];

assign tmp_66_fu_1406_p3 = r_V_8_reg_430[32'd54];

assign tmp_69_fu_1543_p3 = r_V_9_fu_152_p2[32'd23];

assign tmp_72_fu_2457_p3 = r_V_9_reg_662[32'd54];

assign tmp_78_fu_1628_p3 = r_V_10_reg_434[32'd49];

assign tmp_81_fu_1756_p3 = r_V_11_fu_154_p2[32'd23];

assign tmp_84_fu_2581_p3 = r_V_11_reg_666[32'd48];

assign tmp_87_fu_1820_p3 = r_V_12_fu_155_p2[32'd23];

assign tmp_90_fu_2706_p3 = r_V_12_reg_670[32'd48];

assign tmp_96_fu_2850_p3 = r_V_13_reg_674[32'd54];

assign tmp_fu_736_p3 = r_V_fu_150_p2[32'd23];

assign underflow_12_fu_1183_p2 = (xor_ln896_53_fu_1177_p2 & p_Result_32_reg_4166);

assign underflow_13_fu_1332_p2 = (xor_ln896_54_fu_1326_p2 & p_Result_35_reg_4195);

assign underflow_14_fu_1477_p2 = (xor_ln896_55_fu_1471_p2 & p_Result_38_reg_4224);

assign underflow_15_fu_2527_p2 = (xor_ln896_56_fu_2521_p2 & p_Result_41_reg_4282);

assign underflow_16_fu_1699_p2 = (xor_ln896_57_fu_1693_p2 & p_Result_44_reg_4253);

assign underflow_17_fu_2651_p2 = (xor_ln896_58_fu_2645_p2 & p_Result_47_reg_4313);

assign underflow_18_fu_2776_p2 = (xor_ln896_59_fu_2770_p2 & p_Result_50_reg_4344);

assign underflow_19_fu_2921_p2 = (xor_ln896_60_fu_2915_p2 & p_Result_53_reg_4375);

assign underflow_20_fu_3070_p2 = (xor_ln896_61_fu_3064_p2 & p_Result_56_reg_4404);

assign underflow_21_fu_3219_p2 = (xor_ln896_62_fu_3213_p2 & p_Result_59_reg_4433);

assign underflow_22_fu_3368_p2 = (xor_ln896_63_fu_3362_p2 & p_Result_62_reg_4462);

assign underflow_23_fu_2082_p2 = (xor_ln896_41_fu_2076_p2 & p_Result_65_fu_2042_p3);

assign underflow_24_fu_2180_p2 = (xor_ln896_42_fu_2174_p2 & p_Result_67_fu_2140_p3);

assign underflow_25_fu_2282_p2 = (xor_ln896_43_fu_2276_p2 & p_Result_69_fu_2242_p3);

assign underflow_26_fu_3447_p2 = (xor_ln896_44_fu_3441_p2 & p_Result_71_fu_3408_p3);

assign underflow_27_fu_2384_p2 = (xor_ln896_45_fu_2378_p2 & p_Result_73_fu_2344_p3);

assign underflow_28_fu_3547_p2 = (xor_ln896_46_fu_3541_p2 & p_Result_75_fu_3508_p3);

assign underflow_29_fu_3645_p2 = (xor_ln896_47_fu_3639_p2 & p_Result_77_fu_3605_p3);

assign underflow_30_fu_3747_p2 = (xor_ln896_48_fu_3741_p2 & p_Result_79_fu_3707_p3);

assign underflow_31_fu_3847_p2 = (xor_ln896_49_fu_3841_p2 & p_Result_81_fu_3808_p3);

assign underflow_32_fu_3949_p2 = (xor_ln896_50_fu_3943_p2 & p_Result_83_fu_3909_p3);

assign underflow_33_fu_4051_p2 = (xor_ln896_51_fu_4045_p2 & p_Result_85_fu_4011_p3);

assign underflow_fu_1043_p2 = (xor_ln896_52_fu_1037_p2 & p_Result_s_reg_4135);

assign xor_ln302_12_fu_2094_p2 = (xor_ln302_fu_2088_p2 ^ 1'd1);

assign xor_ln302_13_fu_2186_p2 = (p_Result_68_fu_2154_p3 ^ p_Result_67_fu_2140_p3);

assign xor_ln302_14_fu_2192_p2 = (xor_ln302_13_fu_2186_p2 ^ 1'd1);

assign xor_ln302_15_fu_2288_p2 = (p_Result_70_fu_2256_p3 ^ p_Result_69_fu_2242_p3);

assign xor_ln302_16_fu_2294_p2 = (xor_ln302_15_fu_2288_p2 ^ 1'd1);

assign xor_ln302_17_fu_3453_p2 = (p_Result_72_fu_3421_p3 ^ p_Result_71_fu_3408_p3);

assign xor_ln302_18_fu_3459_p2 = (xor_ln302_17_fu_3453_p2 ^ 1'd1);

assign xor_ln302_19_fu_2390_p2 = (p_Result_74_fu_2358_p3 ^ p_Result_73_fu_2344_p3);

assign xor_ln302_20_fu_2396_p2 = (xor_ln302_19_fu_2390_p2 ^ 1'd1);

assign xor_ln302_21_fu_3553_p2 = (p_Result_76_fu_3521_p3 ^ p_Result_75_fu_3508_p3);

assign xor_ln302_22_fu_3559_p2 = (xor_ln302_21_fu_3553_p2 ^ 1'd1);

assign xor_ln302_23_fu_3651_p2 = (p_Result_78_fu_3619_p3 ^ p_Result_77_fu_3605_p3);

assign xor_ln302_24_fu_3657_p2 = (xor_ln302_23_fu_3651_p2 ^ 1'd1);

assign xor_ln302_25_fu_3753_p2 = (p_Result_80_fu_3721_p3 ^ p_Result_79_fu_3707_p3);

assign xor_ln302_26_fu_3759_p2 = (xor_ln302_25_fu_3753_p2 ^ 1'd1);

assign xor_ln302_27_fu_3853_p2 = (p_Result_82_fu_3821_p3 ^ p_Result_81_fu_3808_p3);

assign xor_ln302_28_fu_3859_p2 = (xor_ln302_27_fu_3853_p2 ^ 1'd1);

assign xor_ln302_29_fu_3955_p2 = (p_Result_84_fu_3923_p3 ^ p_Result_83_fu_3909_p3);

assign xor_ln302_30_fu_3961_p2 = (xor_ln302_29_fu_3955_p2 ^ 1'd1);

assign xor_ln302_31_fu_4057_p2 = (p_Result_86_fu_4025_p3 ^ p_Result_85_fu_4011_p3);

assign xor_ln302_32_fu_4063_p2 = (xor_ln302_31_fu_4057_p2 ^ 1'd1);

assign xor_ln302_fu_2088_p2 = (p_Result_66_fu_2056_p3 ^ p_Result_65_fu_2042_p3);

assign xor_ln888_13_fu_1096_p2 = (p_Result_33_reg_4177 ^ 1'd1);

assign xor_ln888_15_fu_1245_p2 = (p_Result_36_reg_4206 ^ 1'd1);

assign xor_ln888_17_fu_1390_p2 = (p_Result_39_reg_4235 ^ 1'd1);

assign xor_ln888_19_fu_2442_p2 = (p_Result_42_reg_4288 ^ 1'd1);

assign xor_ln888_21_fu_1612_p2 = (p_Result_45_reg_4264 ^ 1'd1);

assign xor_ln888_23_fu_2566_p2 = (p_Result_48_reg_4319 ^ 1'd1);

assign xor_ln888_25_fu_2691_p2 = (p_Result_51_reg_4350 ^ 1'd1);

assign xor_ln888_27_fu_2834_p2 = (p_Result_54_reg_4386 ^ 1'd1);

assign xor_ln888_29_fu_2983_p2 = (p_Result_57_reg_4415 ^ 1'd1);

assign xor_ln888_31_fu_3132_p2 = (p_Result_60_reg_4444 ^ 1'd1);

assign xor_ln888_33_fu_3281_p2 = (p_Result_63_reg_4473 ^ 1'd1);

assign xor_ln888_fu_958_p2 = (p_Result_30_reg_4141 ^ 1'd1);

assign xor_ln890_10_fu_1636_p2 = (tmp_78_fu_1628_p3 ^ 1'd1);

assign xor_ln890_11_fu_2589_p2 = (tmp_84_fu_2581_p3 ^ 1'd1);

assign xor_ln890_12_fu_2714_p2 = (tmp_90_fu_2706_p3 ^ 1'd1);

assign xor_ln890_13_fu_2858_p2 = (tmp_96_fu_2850_p3 ^ 1'd1);

assign xor_ln890_14_fu_3007_p2 = (tmp_102_fu_2999_p3 ^ 1'd1);

assign xor_ln890_15_fu_3156_p2 = (tmp_108_fu_3148_p3 ^ 1'd1);

assign xor_ln890_16_fu_3305_p2 = (tmp_114_fu_3297_p3 ^ 1'd1);

assign xor_ln890_6_fu_1120_p2 = (tmp_54_fu_1112_p3 ^ 1'd1);

assign xor_ln890_7_fu_1269_p2 = (tmp_60_fu_1261_p3 ^ 1'd1);

assign xor_ln890_8_fu_1414_p2 = (tmp_66_fu_1406_p3 ^ 1'd1);

assign xor_ln890_9_fu_2465_p2 = (tmp_72_fu_2457_p3 ^ 1'd1);

assign xor_ln890_fu_981_p2 = (tmp_48_fu_973_p3 ^ 1'd1);

assign xor_ln895_18_fu_1014_p2 = (p_Result_s_reg_4135 ^ 1'd1);

assign xor_ln895_19_fu_1142_p2 = (deleted_zeros_6_fu_1107_p2 ^ 1'd1);

assign xor_ln895_20_fu_1154_p2 = (p_Result_32_reg_4166 ^ 1'd1);

assign xor_ln895_21_fu_1291_p2 = (deleted_zeros_7_fu_1256_p2 ^ 1'd1);

assign xor_ln895_22_fu_1303_p2 = (p_Result_35_reg_4195 ^ 1'd1);

assign xor_ln895_23_fu_1436_p2 = (deleted_zeros_8_fu_1401_p2 ^ 1'd1);

assign xor_ln895_24_fu_1448_p2 = (p_Result_38_reg_4224 ^ 1'd1);

assign xor_ln895_25_fu_2487_p2 = (deleted_zeros_9_fu_2452_p2 ^ 1'd1);

assign xor_ln895_26_fu_2498_p2 = (p_Result_41_reg_4282 ^ 1'd1);

assign xor_ln895_27_fu_1658_p2 = (deleted_zeros_10_fu_1623_p2 ^ 1'd1);

assign xor_ln895_28_fu_1670_p2 = (p_Result_44_reg_4253 ^ 1'd1);

assign xor_ln895_29_fu_2611_p2 = (deleted_zeros_11_fu_2576_p2 ^ 1'd1);

assign xor_ln895_30_fu_2622_p2 = (p_Result_47_reg_4313 ^ 1'd1);

assign xor_ln895_31_fu_2736_p2 = (deleted_zeros_12_fu_2701_p2 ^ 1'd1);

assign xor_ln895_32_fu_2747_p2 = (p_Result_50_reg_4344 ^ 1'd1);

assign xor_ln895_33_fu_2880_p2 = (deleted_zeros_13_fu_2845_p2 ^ 1'd1);

assign xor_ln895_34_fu_2892_p2 = (p_Result_53_reg_4375 ^ 1'd1);

assign xor_ln895_35_fu_3029_p2 = (deleted_zeros_14_fu_2994_p2 ^ 1'd1);

assign xor_ln895_36_fu_3041_p2 = (p_Result_56_reg_4404 ^ 1'd1);

assign xor_ln895_37_fu_3178_p2 = (deleted_zeros_15_fu_3143_p2 ^ 1'd1);

assign xor_ln895_38_fu_3190_p2 = (p_Result_59_reg_4433 ^ 1'd1);

assign xor_ln895_39_fu_3327_p2 = (deleted_zeros_16_fu_3292_p2 ^ 1'd1);

assign xor_ln895_40_fu_3339_p2 = (p_Result_62_reg_4462 ^ 1'd1);

assign xor_ln895_41_fu_2064_p2 = (p_Result_65_fu_2042_p3 ^ 1'd1);

assign xor_ln895_42_fu_2162_p2 = (p_Result_67_fu_2140_p3 ^ 1'd1);

assign xor_ln895_43_fu_2264_p2 = (p_Result_69_fu_2242_p3 ^ 1'd1);

assign xor_ln895_44_fu_3429_p2 = (p_Result_71_fu_3408_p3 ^ 1'd1);

assign xor_ln895_45_fu_2366_p2 = (p_Result_73_fu_2344_p3 ^ 1'd1);

assign xor_ln895_46_fu_3529_p2 = (p_Result_75_fu_3508_p3 ^ 1'd1);

assign xor_ln895_47_fu_3627_p2 = (p_Result_77_fu_3605_p3 ^ 1'd1);

assign xor_ln895_48_fu_3729_p2 = (p_Result_79_fu_3707_p3 ^ 1'd1);

assign xor_ln895_49_fu_3829_p2 = (p_Result_81_fu_3808_p3 ^ 1'd1);

assign xor_ln895_50_fu_3931_p2 = (p_Result_83_fu_3909_p3 ^ 1'd1);

assign xor_ln895_51_fu_4033_p2 = (p_Result_85_fu_4011_p3 ^ 1'd1);

assign xor_ln895_fu_1003_p2 = (deleted_zeros_fu_968_p2 ^ 1'd1);

assign xor_ln896_18_fu_1025_p2 = (deleted_ones_fu_993_p2 ^ 1'd1);

assign xor_ln896_19_fu_1085_p2 = (p_Result_34_fu_1077_p3 ^ 1'd1);

assign xor_ln896_20_fu_1165_p2 = (deleted_ones_12_fu_1132_p2 ^ 1'd1);

assign xor_ln896_21_fu_1234_p2 = (p_Result_37_fu_1226_p3 ^ 1'd1);

assign xor_ln896_22_fu_1314_p2 = (deleted_ones_13_fu_1281_p2 ^ 1'd1);

assign xor_ln896_23_fu_1379_p2 = (p_Result_40_fu_1371_p3 ^ 1'd1);

assign xor_ln896_24_fu_1459_p2 = (deleted_ones_14_fu_1426_p2 ^ 1'd1);

assign xor_ln896_25_fu_2432_p2 = (p_Result_43_reg_4299 ^ 1'd1);

assign xor_ln896_26_fu_2509_p2 = (deleted_ones_15_fu_2477_p2 ^ 1'd1);

assign xor_ln896_27_fu_1601_p2 = (p_Result_46_fu_1593_p3 ^ 1'd1);

assign xor_ln896_28_fu_1681_p2 = (deleted_ones_16_fu_1648_p2 ^ 1'd1);

assign xor_ln896_29_fu_2556_p2 = (p_Result_49_reg_4330 ^ 1'd1);

assign xor_ln896_30_fu_2633_p2 = (deleted_ones_17_fu_2601_p2 ^ 1'd1);

assign xor_ln896_31_fu_2681_p2 = (p_Result_52_reg_4361 ^ 1'd1);

assign xor_ln896_32_fu_2758_p2 = (deleted_ones_18_fu_2726_p2 ^ 1'd1);

assign xor_ln896_33_fu_2823_p2 = (p_Result_55_fu_2815_p3 ^ 1'd1);

assign xor_ln896_34_fu_2903_p2 = (deleted_ones_19_fu_2870_p2 ^ 1'd1);

assign xor_ln896_35_fu_2972_p2 = (p_Result_58_fu_2964_p3 ^ 1'd1);

assign xor_ln896_36_fu_3052_p2 = (deleted_ones_20_fu_3019_p2 ^ 1'd1);

assign xor_ln896_37_fu_3121_p2 = (p_Result_61_fu_3113_p3 ^ 1'd1);

assign xor_ln896_38_fu_3201_p2 = (deleted_ones_21_fu_3168_p2 ^ 1'd1);

assign xor_ln896_39_fu_3270_p2 = (p_Result_64_fu_3262_p3 ^ 1'd1);

assign xor_ln896_40_fu_3350_p2 = (deleted_ones_22_fu_3317_p2 ^ 1'd1);

assign xor_ln896_41_fu_2076_p2 = (p_Result_66_fu_2056_p3 ^ 1'd1);

assign xor_ln896_42_fu_2174_p2 = (p_Result_68_fu_2154_p3 ^ 1'd1);

assign xor_ln896_43_fu_2276_p2 = (p_Result_70_fu_2256_p3 ^ 1'd1);

assign xor_ln896_44_fu_3441_p2 = (p_Result_72_fu_3421_p3 ^ 1'd1);

assign xor_ln896_45_fu_2378_p2 = (p_Result_74_fu_2358_p3 ^ 1'd1);

assign xor_ln896_46_fu_3541_p2 = (p_Result_76_fu_3521_p3 ^ 1'd1);

assign xor_ln896_47_fu_3639_p2 = (p_Result_78_fu_3619_p3 ^ 1'd1);

assign xor_ln896_48_fu_3741_p2 = (p_Result_80_fu_3721_p3 ^ 1'd1);

assign xor_ln896_49_fu_3841_p2 = (p_Result_82_fu_3821_p3 ^ 1'd1);

assign xor_ln896_50_fu_3943_p2 = (p_Result_84_fu_3923_p3 ^ 1'd1);

assign xor_ln896_51_fu_4045_p2 = (p_Result_86_fu_4025_p3 ^ 1'd1);

assign xor_ln896_52_fu_1037_p2 = (or_ln896_fu_1031_p2 ^ and_ln891_fu_998_p2);

assign xor_ln896_53_fu_1177_p2 = (or_ln896_6_fu_1171_p2 ^ and_ln891_6_fu_1137_p2);

assign xor_ln896_54_fu_1326_p2 = (or_ln896_7_fu_1320_p2 ^ and_ln891_7_fu_1286_p2);

assign xor_ln896_55_fu_1471_p2 = (or_ln896_8_fu_1465_p2 ^ and_ln891_8_fu_1431_p2);

assign xor_ln896_56_fu_2521_p2 = (or_ln896_9_fu_2515_p2 ^ and_ln891_9_fu_2482_p2);

assign xor_ln896_57_fu_1693_p2 = (or_ln896_10_fu_1687_p2 ^ and_ln891_10_fu_1653_p2);

assign xor_ln896_58_fu_2645_p2 = (or_ln896_11_fu_2639_p2 ^ and_ln891_11_fu_2606_p2);

assign xor_ln896_59_fu_2770_p2 = (or_ln896_12_fu_2764_p2 ^ and_ln891_12_fu_2731_p2);

assign xor_ln896_60_fu_2915_p2 = (or_ln896_13_fu_2909_p2 ^ and_ln891_13_fu_2875_p2);

assign xor_ln896_61_fu_3064_p2 = (or_ln896_14_fu_3058_p2 ^ and_ln891_14_fu_3024_p2);

assign xor_ln896_62_fu_3213_p2 = (or_ln896_15_fu_3207_p2 ^ and_ln891_15_fu_3173_p2);

assign xor_ln896_63_fu_3362_p2 = (or_ln896_16_fu_3356_p2 ^ and_ln891_16_fu_3322_p2);

assign xor_ln896_fu_948_p2 = (p_Result_31_reg_4152 ^ 1'd1);

assign zext_ln377_10_fu_1580_p1 = tmp_75_reg_4270;

assign zext_ln377_11_fu_1764_p1 = tmp_81_fu_1756_p3;

assign zext_ln377_12_fu_1828_p1 = tmp_87_fu_1820_p3;

assign zext_ln377_13_fu_2806_p1 = tmp_93_reg_4392;

assign zext_ln377_14_fu_2951_p1 = tmp_99_reg_4421;

assign zext_ln377_15_fu_3100_p1 = tmp_105_reg_4450;

assign zext_ln377_16_fu_3249_p1 = tmp_111_reg_4479;

assign zext_ln377_6_fu_1069_p1 = tmp_51_reg_4183;

assign zext_ln377_7_fu_1213_p1 = tmp_57_reg_4212;

assign zext_ln377_8_fu_1362_p1 = tmp_63_reg_4241;

assign zext_ln377_9_fu_1551_p1 = tmp_69_fu_1543_p3;

assign zext_ln377_fu_744_p1 = tmp_fu_736_p3;

endmodule //motor_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s
