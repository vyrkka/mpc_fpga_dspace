module motor_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config2_s (
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
input  [47:0] p_read;
output  [15:0] ap_return_0;
output  [15:0] ap_return_1;
output  [15:0] ap_return_2;
output  [15:0] ap_return_3;
input   ap_ce;

reg[15:0] ap_return_0;
reg[15:0] ap_return_1;
reg[15:0] ap_return_2;
reg[15:0] ap_return_3;

wire   [15:0] p_Val2_51_fu_496_p2;
reg   [15:0] p_Val2_51_reg_3214;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] overflow_fu_612_p2;
reg   [0:0] overflow_reg_3219;
wire   [0:0] or_ln346_fu_642_p2;
reg   [0:0] or_ln346_reg_3224;
wire  signed [13:0] p_Val2_54_fu_706_p2;
reg  signed [13:0] p_Val2_54_reg_3229;
wire   [0:0] overflow_17_fu_808_p2;
reg   [0:0] overflow_17_reg_3234;
wire   [0:0] or_ln346_7_fu_838_p2;
reg   [0:0] or_ln346_7_reg_3239;
wire  signed [15:0] rhs_7_fu_1054_p3;
reg  signed [15:0] rhs_7_reg_3244;
wire  signed [15:0] rhs_8_fu_1267_p3;
reg  signed [15:0] rhs_8_reg_3250;
wire  signed [15:0] rhs_9_fu_1463_p3;
reg  signed [15:0] rhs_9_reg_3256;
wire  signed [15:0] rhs_10_fu_1659_p3;
reg  signed [15:0] rhs_10_reg_3262;
wire  signed [15:0] rhs_11_fu_1872_p3;
reg  signed [15:0] rhs_11_reg_3268;
wire  signed [15:0] rhs_12_fu_2068_p3;
reg  signed [15:0] rhs_12_reg_3274;
wire  signed [15:0] rhs_13_fu_2264_p3;
reg  signed [15:0] rhs_13_reg_3280;
wire  signed [15:0] r_V_18_fu_138_p0;
wire  signed [23:0] sext_ln70_6_fu_1072_p1;
wire   [7:0] r_V_18_fu_138_p1;
wire    ap_block_pp0_stage0;
wire  signed [15:0] r_V_20_fu_139_p0;
wire  signed [7:0] r_V_20_fu_139_p1;
wire  signed [15:0] r_V_fu_140_p0;
wire  signed [23:0] sext_ln70_7_fu_1677_p1;
wire  signed [7:0] r_V_fu_140_p1;
wire  signed [15:0] r_V_19_fu_142_p0;
wire  signed [7:0] r_V_19_fu_142_p1;
wire   [10:0] r_V_15_fu_143_p1;
wire  signed [15:0] r_V_21_fu_145_p0;
wire   [7:0] r_V_21_fu_145_p1;
wire  signed [15:0] r_V_22_fu_146_p0;
wire   [7:0] r_V_22_fu_146_p1;
wire  signed [15:0] a_V_fu_449_p1;
wire   [26:0] r_V_15_fu_143_p2;
wire   [0:0] tmp_68_fu_484_p3;
wire   [15:0] zext_ln377_fu_492_p1;
wire   [15:0] p_Val2_50_fu_466_p4;
wire   [0:0] p_Result_44_fu_502_p3;
wire   [0:0] p_Result_43_fu_476_p3;
wire   [0:0] xor_ln896_fu_510_p2;
wire   [1:0] tmp_fu_530_p4;
wire   [0:0] carry_15_fu_516_p2;
wire   [0:0] Range1_all_ones_fu_540_p2;
wire   [0:0] Range1_all_zeros_fu_546_p2;
wire   [0:0] tmp_71_fu_560_p3;
wire   [0:0] Range2_all_ones_fu_522_p3;
wire   [0:0] xor_ln890_fu_568_p2;
wire   [0:0] and_ln890_fu_574_p2;
wire   [0:0] deleted_zeros_fu_552_p3;
wire   [0:0] xor_ln895_fu_594_p2;
wire   [0:0] p_Result_s_fu_458_p3;
wire   [0:0] or_ln895_fu_600_p2;
wire   [0:0] xor_ln895_25_fu_606_p2;
wire   [0:0] deleted_ones_fu_580_p3;
wire   [0:0] xor_ln896_25_fu_618_p2;
wire   [0:0] and_ln891_fu_588_p2;
wire   [0:0] or_ln896_fu_624_p2;
wire   [0:0] xor_ln896_51_fu_630_p2;
wire   [0:0] underflow_fu_636_p2;
wire   [15:0] trunc_ln1273_fu_648_p1;
wire   [21:0] r_V_16_fu_652_p3;
wire   [12:0] p_Val2_53_fu_672_p4;
wire   [0:0] tmp_74_fu_694_p3;
wire   [13:0] zext_ln377_7_fu_702_p1;
wire  signed [13:0] sext_ln823_fu_682_p1;
wire   [0:0] p_Result_47_fu_712_p3;
wire   [0:0] p_Result_46_fu_686_p3;
wire   [0:0] xor_ln888_fu_734_p2;
wire   [0:0] tmp_77_fu_746_p3;
wire   [0:0] or_ln888_fu_740_p2;
wire   [0:0] xor_ln890_7_fu_754_p2;
wire   [0:0] Range2_all_ones_17_fu_726_p3;
wire   [0:0] or_ln890_fu_760_p2;
wire   [0:0] xor_ln896_26_fu_720_p2;
wire   [0:0] and_ln891_15_fu_772_p2;
wire   [0:0] xor_ln895_51_fu_784_p2;
wire   [0:0] xor_ln895_26_fu_790_p2;
wire   [0:0] p_Result_45_fu_664_p3;
wire   [0:0] or_ln895_7_fu_796_p2;
wire   [0:0] xor_ln895_27_fu_802_p2;
wire   [0:0] deleted_ones_17_fu_766_p2;
wire   [0:0] xor_ln896_27_fu_814_p2;
wire   [0:0] and_ln891_7_fu_778_p2;
wire   [0:0] or_ln896_7_fu_820_p2;
wire   [0:0] xor_ln896_52_fu_826_p2;
wire   [0:0] underflow_17_fu_832_p2;
wire   [18:0] shl_ln_fu_844_p3;
wire  signed [22:0] sext_ln1270_fu_660_p1;
wire  signed [22:0] sext_ln1273_fu_852_p1;
wire   [22:0] r_V_17_fu_856_p2;
wire   [13:0] p_Val2_56_fu_870_p4;
wire   [0:0] tmp_80_fu_892_p3;
wire   [14:0] zext_ln377_8_fu_900_p1;
wire  signed [14:0] sext_ln823_1_fu_880_p1;
wire  signed [14:0] p_Val2_57_fu_904_p2;
wire   [0:0] p_Result_50_fu_914_p3;
wire   [0:0] p_Result_49_fu_884_p3;
wire   [0:0] xor_ln896_28_fu_922_p2;
wire   [0:0] xor_ln888_13_fu_942_p2;
wire   [0:0] Range2_all_ones_18_fu_934_p3;
wire   [0:0] or_ln888_6_fu_948_p2;
wire   [0:0] tmp_83_fu_960_p3;
wire   [0:0] xor_ln890_8_fu_968_p2;
wire   [0:0] or_ln890_6_fu_974_p2;
wire   [0:0] carry_18_fu_928_p2;
wire   [0:0] deleted_zeros_7_fu_954_p2;
wire   [0:0] xor_ln895_28_fu_992_p2;
wire   [0:0] p_Result_48_fu_862_p3;
wire   [0:0] or_ln895_8_fu_998_p2;
wire   [0:0] xor_ln895_29_fu_1004_p2;
wire   [0:0] deleted_ones_18_fu_980_p2;
wire   [0:0] xor_ln896_29_fu_1016_p2;
wire   [0:0] and_ln891_8_fu_986_p2;
wire   [0:0] or_ln896_8_fu_1022_p2;
wire   [0:0] xor_ln896_53_fu_1028_p2;
wire   [0:0] overflow_18_fu_1010_p2;
wire   [0:0] underflow_18_fu_1034_p2;
wire   [0:0] or_ln346_8_fu_1048_p2;
wire   [15:0] select_ln346_18_fu_1040_p3;
wire  signed [15:0] sext_ln856_1_fu_910_p1;
wire   [15:0] a_V_1_fu_1062_p4;
wire   [23:0] r_V_18_fu_138_p2;
wire   [14:0] p_Val2_59_fu_1087_p4;
wire   [0:0] tmp_86_fu_1109_p3;
wire   [15:0] zext_ln377_9_fu_1117_p1;
wire  signed [15:0] sext_ln818_fu_1097_p1;
wire   [15:0] p_Val2_60_fu_1121_p2;
wire   [0:0] p_Result_53_fu_1127_p3;
wire   [0:0] p_Result_52_fu_1101_p3;
wire   [0:0] xor_ln896_30_fu_1135_p2;
wire   [0:0] xor_ln888_15_fu_1155_p2;
wire   [0:0] Range2_all_ones_19_fu_1147_p3;
wire   [0:0] or_ln888_7_fu_1161_p2;
wire   [0:0] tmp_89_fu_1173_p3;
wire   [0:0] xor_ln890_9_fu_1181_p2;
wire   [0:0] or_ln890_7_fu_1187_p2;
wire   [0:0] carry_20_fu_1141_p2;
wire   [0:0] deleted_zeros_8_fu_1167_p2;
wire   [0:0] xor_ln895_30_fu_1205_p2;
wire   [0:0] p_Result_51_fu_1079_p3;
wire   [0:0] or_ln895_9_fu_1211_p2;
wire   [0:0] xor_ln895_31_fu_1217_p2;
wire   [0:0] deleted_ones_19_fu_1193_p2;
wire   [0:0] xor_ln896_31_fu_1229_p2;
wire   [0:0] and_ln891_9_fu_1199_p2;
wire   [0:0] or_ln896_9_fu_1235_p2;
wire   [0:0] xor_ln896_54_fu_1241_p2;
wire   [0:0] overflow_19_fu_1223_p2;
wire   [0:0] underflow_19_fu_1247_p2;
wire   [0:0] or_ln346_9_fu_1261_p2;
wire   [15:0] select_ln346_20_fu_1253_p3;
wire   [23:0] r_V_19_fu_142_p2;
wire   [14:0] p_Val2_62_fu_1283_p4;
wire   [0:0] tmp_92_fu_1305_p3;
wire   [15:0] zext_ln377_10_fu_1313_p1;
wire  signed [15:0] sext_ln818_1_fu_1293_p1;
wire   [15:0] p_Val2_63_fu_1317_p2;
wire   [0:0] p_Result_56_fu_1323_p3;
wire   [0:0] p_Result_55_fu_1297_p3;
wire   [0:0] xor_ln896_32_fu_1331_p2;
wire   [0:0] xor_ln888_17_fu_1351_p2;
wire   [0:0] Range2_all_ones_20_fu_1343_p3;
wire   [0:0] or_ln888_8_fu_1357_p2;
wire   [0:0] tmp_95_fu_1369_p3;
wire   [0:0] xor_ln890_10_fu_1377_p2;
wire   [0:0] or_ln890_8_fu_1383_p2;
wire   [0:0] carry_22_fu_1337_p2;
wire   [0:0] deleted_zeros_9_fu_1363_p2;
wire   [0:0] xor_ln895_32_fu_1401_p2;
wire   [0:0] p_Result_54_fu_1275_p3;
wire   [0:0] or_ln895_10_fu_1407_p2;
wire   [0:0] xor_ln895_33_fu_1413_p2;
wire   [0:0] deleted_ones_20_fu_1389_p2;
wire   [0:0] xor_ln896_33_fu_1425_p2;
wire   [0:0] and_ln891_10_fu_1395_p2;
wire   [0:0] or_ln896_10_fu_1431_p2;
wire   [0:0] xor_ln896_55_fu_1437_p2;
wire   [0:0] overflow_20_fu_1419_p2;
wire   [0:0] underflow_20_fu_1443_p2;
wire   [0:0] or_ln346_10_fu_1457_p2;
wire   [15:0] select_ln346_22_fu_1449_p3;
wire   [23:0] r_V_20_fu_139_p2;
wire   [14:0] p_Val2_65_fu_1479_p4;
wire   [0:0] tmp_98_fu_1501_p3;
wire   [15:0] zext_ln377_11_fu_1509_p1;
wire  signed [15:0] sext_ln818_2_fu_1489_p1;
wire   [15:0] p_Val2_66_fu_1513_p2;
wire   [0:0] p_Result_59_fu_1519_p3;
wire   [0:0] p_Result_58_fu_1493_p3;
wire   [0:0] xor_ln896_34_fu_1527_p2;
wire   [0:0] xor_ln888_19_fu_1547_p2;
wire   [0:0] Range2_all_ones_21_fu_1539_p3;
wire   [0:0] or_ln888_9_fu_1553_p2;
wire   [0:0] tmp_101_fu_1565_p3;
wire   [0:0] xor_ln890_11_fu_1573_p2;
wire   [0:0] or_ln890_9_fu_1579_p2;
wire   [0:0] carry_24_fu_1533_p2;
wire   [0:0] deleted_zeros_10_fu_1559_p2;
wire   [0:0] xor_ln895_34_fu_1597_p2;
wire   [0:0] p_Result_57_fu_1471_p3;
wire   [0:0] or_ln895_11_fu_1603_p2;
wire   [0:0] xor_ln895_35_fu_1609_p2;
wire   [0:0] deleted_ones_21_fu_1585_p2;
wire   [0:0] xor_ln896_35_fu_1621_p2;
wire   [0:0] and_ln891_11_fu_1591_p2;
wire   [0:0] or_ln896_11_fu_1627_p2;
wire   [0:0] xor_ln896_56_fu_1633_p2;
wire   [0:0] overflow_21_fu_1615_p2;
wire   [0:0] underflow_21_fu_1639_p2;
wire   [0:0] or_ln346_11_fu_1653_p2;
wire   [15:0] select_ln346_23_fu_1645_p3;
wire   [15:0] a_V_2_fu_1667_p4;
wire   [23:0] r_V_fu_140_p2;
wire   [14:0] p_Val2_68_fu_1692_p4;
wire   [0:0] tmp_104_fu_1714_p3;
wire   [15:0] zext_ln377_12_fu_1722_p1;
wire  signed [15:0] sext_ln818_3_fu_1702_p1;
wire   [15:0] p_Val2_69_fu_1726_p2;
wire   [0:0] p_Result_62_fu_1732_p3;
wire   [0:0] p_Result_61_fu_1706_p3;
wire   [0:0] xor_ln896_36_fu_1740_p2;
wire   [0:0] xor_ln888_21_fu_1760_p2;
wire   [0:0] Range2_all_ones_22_fu_1752_p3;
wire   [0:0] or_ln888_10_fu_1766_p2;
wire   [0:0] tmp_107_fu_1778_p3;
wire   [0:0] xor_ln890_12_fu_1786_p2;
wire   [0:0] or_ln890_10_fu_1792_p2;
wire   [0:0] carry_26_fu_1746_p2;
wire   [0:0] deleted_zeros_11_fu_1772_p2;
wire   [0:0] xor_ln895_36_fu_1810_p2;
wire   [0:0] p_Result_60_fu_1684_p3;
wire   [0:0] or_ln895_12_fu_1816_p2;
wire   [0:0] xor_ln895_37_fu_1822_p2;
wire   [0:0] deleted_ones_22_fu_1798_p2;
wire   [0:0] xor_ln896_37_fu_1834_p2;
wire   [0:0] and_ln891_12_fu_1804_p2;
wire   [0:0] or_ln896_12_fu_1840_p2;
wire   [0:0] xor_ln896_57_fu_1846_p2;
wire   [0:0] overflow_22_fu_1828_p2;
wire   [0:0] underflow_22_fu_1852_p2;
wire   [0:0] or_ln346_12_fu_1866_p2;
wire   [15:0] select_ln346_24_fu_1858_p3;
wire   [23:0] r_V_21_fu_145_p2;
wire   [14:0] p_Val2_71_fu_1888_p4;
wire   [0:0] tmp_110_fu_1910_p3;
wire   [15:0] zext_ln377_13_fu_1918_p1;
wire  signed [15:0] sext_ln818_4_fu_1898_p1;
wire   [15:0] p_Val2_72_fu_1922_p2;
wire   [0:0] p_Result_65_fu_1928_p3;
wire   [0:0] p_Result_64_fu_1902_p3;
wire   [0:0] xor_ln896_38_fu_1936_p2;
wire   [0:0] xor_ln888_23_fu_1956_p2;
wire   [0:0] Range2_all_ones_23_fu_1948_p3;
wire   [0:0] or_ln888_11_fu_1962_p2;
wire   [0:0] tmp_113_fu_1974_p3;
wire   [0:0] xor_ln890_13_fu_1982_p2;
wire   [0:0] or_ln890_11_fu_1988_p2;
wire   [0:0] carry_28_fu_1942_p2;
wire   [0:0] deleted_zeros_12_fu_1968_p2;
wire   [0:0] xor_ln895_38_fu_2006_p2;
wire   [0:0] p_Result_63_fu_1880_p3;
wire   [0:0] or_ln895_13_fu_2012_p2;
wire   [0:0] xor_ln895_39_fu_2018_p2;
wire   [0:0] deleted_ones_23_fu_1994_p2;
wire   [0:0] xor_ln896_39_fu_2030_p2;
wire   [0:0] and_ln891_13_fu_2000_p2;
wire   [0:0] or_ln896_13_fu_2036_p2;
wire   [0:0] xor_ln896_58_fu_2042_p2;
wire   [0:0] overflow_23_fu_2024_p2;
wire   [0:0] underflow_23_fu_2048_p2;
wire   [0:0] or_ln346_13_fu_2062_p2;
wire   [15:0] select_ln346_25_fu_2054_p3;
wire   [23:0] r_V_22_fu_146_p2;
wire   [14:0] p_Val2_74_fu_2084_p4;
wire   [0:0] tmp_116_fu_2106_p3;
wire   [15:0] zext_ln377_14_fu_2114_p1;
wire  signed [15:0] sext_ln818_5_fu_2094_p1;
wire   [15:0] p_Val2_75_fu_2118_p2;
wire   [0:0] p_Result_68_fu_2124_p3;
wire   [0:0] p_Result_67_fu_2098_p3;
wire   [0:0] xor_ln896_40_fu_2132_p2;
wire   [0:0] xor_ln888_25_fu_2152_p2;
wire   [0:0] Range2_all_ones_24_fu_2144_p3;
wire   [0:0] or_ln888_12_fu_2158_p2;
wire   [0:0] tmp_119_fu_2170_p3;
wire   [0:0] xor_ln890_14_fu_2178_p2;
wire   [0:0] or_ln890_12_fu_2184_p2;
wire   [0:0] carry_30_fu_2138_p2;
wire   [0:0] deleted_zeros_13_fu_2164_p2;
wire   [0:0] xor_ln895_40_fu_2202_p2;
wire   [0:0] p_Result_66_fu_2076_p3;
wire   [0:0] or_ln895_14_fu_2208_p2;
wire   [0:0] xor_ln895_41_fu_2214_p2;
wire   [0:0] deleted_ones_24_fu_2190_p2;
wire   [0:0] xor_ln896_41_fu_2226_p2;
wire   [0:0] and_ln891_14_fu_2196_p2;
wire   [0:0] or_ln896_14_fu_2232_p2;
wire   [0:0] xor_ln896_59_fu_2238_p2;
wire   [0:0] overflow_24_fu_2220_p2;
wire   [0:0] underflow_24_fu_2244_p2;
wire   [0:0] or_ln346_14_fu_2258_p2;
wire   [15:0] select_ln346_26_fu_2250_p3;
wire   [15:0] select_ln346_fu_2272_p3;
wire   [15:0] select_ln346_16_fu_2288_p3;
wire  signed [15:0] sext_ln856_fu_2285_p1;
wire  signed [15:0] rhs_fu_2279_p3;
wire  signed [16:0] sext_ln813_fu_2302_p1;
wire   [16:0] ret_V_fu_2306_p2;
wire   [15:0] p_Val2_77_fu_2320_p2;
wire   [0:0] p_Result_69_fu_2312_p3;
wire   [0:0] p_Result_70_fu_2326_p3;
wire   [0:0] xor_ln895_42_fu_2334_p2;
wire   [0:0] xor_ln896_42_fu_2346_p2;
wire   [0:0] xor_ln302_fu_2358_p2;
wire   [0:0] overflow_25_fu_2340_p2;
wire   [0:0] xor_ln302_19_fu_2364_p2;
wire   [0:0] underflow_25_fu_2352_p2;
wire   [0:0] or_ln302_fu_2370_p2;
wire   [15:0] select_ln302_fu_2376_p3;
wire   [15:0] select_ln350_fu_2384_p3;
wire  signed [15:0] rhs_6_fu_2295_p3;
wire  signed [16:0] sext_ln813_12_fu_2400_p1;
wire   [16:0] ret_V_9_fu_2404_p2;
wire   [15:0] p_Val2_79_fu_2418_p2;
wire   [0:0] p_Result_71_fu_2410_p3;
wire   [0:0] p_Result_72_fu_2424_p3;
wire   [0:0] xor_ln895_43_fu_2432_p2;
wire   [0:0] xor_ln896_43_fu_2444_p2;
wire   [0:0] xor_ln302_20_fu_2456_p2;
wire   [0:0] overflow_26_fu_2438_p2;
wire   [0:0] xor_ln302_21_fu_2462_p2;
wire   [0:0] underflow_26_fu_2450_p2;
wire   [0:0] or_ln302_9_fu_2468_p2;
wire   [15:0] select_ln302_20_fu_2474_p3;
wire   [15:0] select_ln350_9_fu_2482_p3;
wire  signed [16:0] sext_ln813_13_fu_2498_p1;
wire   [16:0] ret_V_10_fu_2501_p2;
wire   [15:0] p_Val2_81_fu_2515_p2;
wire   [0:0] p_Result_73_fu_2507_p3;
wire   [0:0] p_Result_74_fu_2520_p3;
wire   [0:0] xor_ln895_44_fu_2528_p2;
wire   [0:0] xor_ln896_44_fu_2540_p2;
wire   [0:0] xor_ln302_22_fu_2552_p2;
wire   [0:0] overflow_27_fu_2534_p2;
wire   [0:0] xor_ln302_23_fu_2558_p2;
wire   [0:0] underflow_27_fu_2546_p2;
wire   [0:0] or_ln302_10_fu_2564_p2;
wire   [15:0] select_ln302_22_fu_2570_p3;
wire   [15:0] select_ln350_10_fu_2578_p3;
wire  signed [16:0] sext_ln813_14_fu_2594_p1;
wire   [16:0] ret_V_11_fu_2597_p2;
wire   [15:0] p_Val2_84_fu_2611_p2;
wire   [0:0] p_Result_75_fu_2603_p3;
wire   [0:0] p_Result_76_fu_2616_p3;
wire   [0:0] xor_ln895_45_fu_2624_p2;
wire   [0:0] xor_ln896_45_fu_2636_p2;
wire   [0:0] xor_ln302_24_fu_2648_p2;
wire   [0:0] overflow_28_fu_2630_p2;
wire   [0:0] xor_ln302_25_fu_2654_p2;
wire   [0:0] underflow_28_fu_2642_p2;
wire   [0:0] or_ln302_11_fu_2660_p2;
wire   [15:0] select_ln302_24_fu_2666_p3;
wire   [15:0] select_ln350_11_fu_2674_p3;
wire  signed [15:0] lhs_fu_2490_p3;
wire  signed [16:0] sext_ln813_16_fu_2694_p1;
wire  signed [16:0] sext_ln813_15_fu_2690_p1;
wire   [16:0] ret_V_12_fu_2697_p2;
wire   [15:0] p_Val2_86_fu_2711_p2;
wire   [0:0] p_Result_77_fu_2703_p3;
wire   [0:0] p_Result_78_fu_2716_p3;
wire   [0:0] xor_ln895_46_fu_2724_p2;
wire   [0:0] xor_ln896_46_fu_2736_p2;
wire   [0:0] xor_ln302_26_fu_2748_p2;
wire   [0:0] overflow_29_fu_2730_p2;
wire   [0:0] xor_ln302_27_fu_2754_p2;
wire   [0:0] underflow_29_fu_2742_p2;
wire   [0:0] or_ln302_12_fu_2760_p2;
wire   [15:0] select_ln302_26_fu_2766_p3;
wire   [15:0] select_ln350_12_fu_2774_p3;
wire  signed [15:0] lhs_5_fu_2586_p3;
wire  signed [16:0] sext_ln813_18_fu_2794_p1;
wire  signed [16:0] sext_ln813_17_fu_2790_p1;
wire   [16:0] ret_V_13_fu_2797_p2;
wire   [15:0] p_Val2_88_fu_2811_p2;
wire   [0:0] p_Result_79_fu_2803_p3;
wire   [0:0] p_Result_80_fu_2816_p3;
wire   [0:0] xor_ln895_47_fu_2824_p2;
wire   [0:0] xor_ln896_47_fu_2836_p2;
wire   [0:0] xor_ln302_28_fu_2848_p2;
wire   [0:0] overflow_30_fu_2830_p2;
wire   [0:0] xor_ln302_29_fu_2854_p2;
wire   [0:0] underflow_30_fu_2842_p2;
wire   [0:0] or_ln302_13_fu_2860_p2;
wire   [15:0] select_ln302_28_fu_2866_p3;
wire   [15:0] select_ln350_13_fu_2874_p3;
wire  signed [15:0] lhs_6_fu_2682_p3;
wire  signed [16:0] sext_ln813_20_fu_2894_p1;
wire  signed [16:0] sext_ln813_19_fu_2890_p1;
wire   [16:0] ret_V_14_fu_2897_p2;
wire   [15:0] p_Val2_90_fu_2911_p2;
wire   [0:0] p_Result_81_fu_2903_p3;
wire   [0:0] p_Result_82_fu_2916_p3;
wire   [0:0] xor_ln895_48_fu_2924_p2;
wire   [0:0] xor_ln896_48_fu_2936_p2;
wire   [0:0] xor_ln302_30_fu_2948_p2;
wire   [0:0] overflow_31_fu_2930_p2;
wire   [0:0] xor_ln302_31_fu_2954_p2;
wire   [0:0] underflow_31_fu_2942_p2;
wire   [0:0] or_ln302_14_fu_2960_p2;
wire   [15:0] select_ln302_30_fu_2966_p3;
wire   [15:0] select_ln350_14_fu_2974_p3;
wire  signed [15:0] lhs_7_fu_2782_p3;
wire  signed [16:0] sext_ln813_22_fu_2994_p1;
wire  signed [16:0] sext_ln813_21_fu_2990_p1;
wire   [16:0] ret_V_15_fu_2997_p2;
wire   [15:0] p_Val2_92_fu_3011_p2;
wire   [0:0] p_Result_83_fu_3003_p3;
wire   [0:0] p_Result_84_fu_3016_p3;
wire   [0:0] xor_ln895_49_fu_3024_p2;
wire   [0:0] xor_ln896_49_fu_3036_p2;
wire   [0:0] xor_ln302_32_fu_3048_p2;
wire   [0:0] overflow_32_fu_3030_p2;
wire   [0:0] xor_ln302_33_fu_3054_p2;
wire   [0:0] underflow_32_fu_3042_p2;
wire   [0:0] or_ln302_15_fu_3060_p2;
wire   [15:0] select_ln302_32_fu_3066_p3;
wire   [15:0] select_ln350_15_fu_3074_p3;
wire  signed [15:0] lhs_8_fu_2882_p3;
wire  signed [16:0] sext_ln813_24_fu_3094_p1;
wire  signed [16:0] sext_ln813_23_fu_3090_p1;
wire   [16:0] ret_V_16_fu_3097_p2;
wire   [15:0] p_Val2_94_fu_3111_p2;
wire   [0:0] p_Result_85_fu_3103_p3;
wire   [0:0] p_Result_86_fu_3116_p3;
wire   [0:0] xor_ln895_50_fu_3124_p2;
wire   [0:0] xor_ln896_50_fu_3136_p2;
wire   [0:0] xor_ln302_34_fu_3148_p2;
wire   [0:0] overflow_33_fu_3130_p2;
wire   [0:0] xor_ln302_35_fu_3154_p2;
wire   [0:0] underflow_33_fu_3142_p2;
wire   [0:0] or_ln302_16_fu_3160_p2;
wire   [15:0] select_ln302_34_fu_3166_p3;
wire   [15:0] select_ln350_16_fu_3174_p3;
wire   [15:0] p_Val2_82_fu_2392_p3;
wire   [15:0] select_ln302_31_fu_2982_p3;
wire   [15:0] select_ln302_33_fu_3082_p3;
wire   [15:0] select_ln302_35_fu_3182_p3;
reg    ap_ce_reg;
reg   [15:0] ap_return_0_int_reg;
reg   [15:0] ap_return_1_int_reg;
reg   [15:0] ap_return_2_int_reg;
reg   [15:0] ap_return_3_int_reg;

motor_mul_16s_8ns_24_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 24 ))
mul_16s_8ns_24_1_0_U1(
    .din0(r_V_18_fu_138_p0),
    .din1(r_V_18_fu_138_p1),
    .dout(r_V_18_fu_138_p2)
);

motor_mul_16s_8s_24_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 24 ))
mul_16s_8s_24_1_0_U2(
    .din0(r_V_20_fu_139_p0),
    .din1(r_V_20_fu_139_p1),
    .dout(r_V_20_fu_139_p2)
);

motor_mul_16s_8s_24_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 24 ))
mul_16s_8s_24_1_0_U3(
    .din0(r_V_fu_140_p0),
    .din1(r_V_fu_140_p1),
    .dout(r_V_fu_140_p2)
);

motor_mul_16s_8s_24_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 24 ))
mul_16s_8s_24_1_0_U4(
    .din0(r_V_19_fu_142_p0),
    .din1(r_V_19_fu_142_p1),
    .dout(r_V_19_fu_142_p2)
);

motor_mul_16s_11ns_27_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 11 ),
    .dout_WIDTH( 27 ))
mul_16s_11ns_27_1_0_U5(
    .din0(a_V_fu_449_p1),
    .din1(r_V_15_fu_143_p1),
    .dout(r_V_15_fu_143_p2)
);

motor_mul_16s_8ns_24_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 24 ))
mul_16s_8ns_24_1_0_U6(
    .din0(r_V_21_fu_145_p0),
    .din1(r_V_21_fu_145_p1),
    .dout(r_V_21_fu_145_p2)
);

motor_mul_16s_8ns_24_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 24 ))
mul_16s_8ns_24_1_0_U7(
    .din0(r_V_22_fu_146_p0),
    .din1(r_V_22_fu_146_p1),
    .dout(r_V_22_fu_146_p2)
);

always @ (posedge ap_clk) begin
    ap_ce_reg <= ap_ce;
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce_reg)) begin
        ap_return_0_int_reg <= p_Val2_82_fu_2392_p3;
        ap_return_1_int_reg <= select_ln302_31_fu_2982_p3;
        ap_return_2_int_reg <= select_ln302_33_fu_3082_p3;
        ap_return_3_int_reg <= select_ln302_35_fu_3182_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1))) begin
        or_ln346_7_reg_3239 <= or_ln346_7_fu_838_p2;
        or_ln346_reg_3224 <= or_ln346_fu_642_p2;
        overflow_17_reg_3234 <= overflow_17_fu_808_p2;
        overflow_reg_3219 <= overflow_fu_612_p2;
        p_Val2_51_reg_3214 <= p_Val2_51_fu_496_p2;
        p_Val2_54_reg_3229 <= p_Val2_54_fu_706_p2;
        rhs_10_reg_3262 <= rhs_10_fu_1659_p3;
        rhs_11_reg_3268 <= rhs_11_fu_1872_p3;
        rhs_12_reg_3274 <= rhs_12_fu_2068_p3;
        rhs_13_reg_3280 <= rhs_13_fu_2264_p3;
        rhs_7_reg_3244 <= rhs_7_fu_1054_p3;
        rhs_8_reg_3250 <= rhs_8_fu_1267_p3;
        rhs_9_reg_3256 <= rhs_9_fu_1463_p3;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_0 = ap_return_0_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_0 = p_Val2_82_fu_2392_p3;
    end else begin
        ap_return_0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_1 = ap_return_1_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_1 = select_ln302_31_fu_2982_p3;
    end else begin
        ap_return_1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_2 = ap_return_2_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_2 = select_ln302_33_fu_3082_p3;
    end else begin
        ap_return_2 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_3 = ap_return_3_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_3 = select_ln302_35_fu_3182_p3;
    end else begin
        ap_return_3 = 'bx;
    end
end

assign Range1_all_ones_fu_540_p2 = ((tmp_fu_530_p4 == 2'd3) ? 1'b1 : 1'b0);

assign Range1_all_zeros_fu_546_p2 = ((tmp_fu_530_p4 == 2'd0) ? 1'b1 : 1'b0);

assign Range2_all_ones_17_fu_726_p3 = p_read[64'd15];

assign Range2_all_ones_18_fu_934_p3 = r_V_17_fu_856_p2[32'd22];

assign Range2_all_ones_19_fu_1147_p3 = r_V_18_fu_138_p2[32'd23];

assign Range2_all_ones_20_fu_1343_p3 = r_V_19_fu_142_p2[32'd23];

assign Range2_all_ones_21_fu_1539_p3 = r_V_20_fu_139_p2[32'd23];

assign Range2_all_ones_22_fu_1752_p3 = r_V_fu_140_p2[32'd23];

assign Range2_all_ones_23_fu_1948_p3 = r_V_21_fu_145_p2[32'd23];

assign Range2_all_ones_24_fu_2144_p3 = r_V_22_fu_146_p2[32'd23];

assign Range2_all_ones_fu_522_p3 = r_V_15_fu_143_p2[32'd26];

assign a_V_1_fu_1062_p4 = {{p_read[31:16]}};

assign a_V_2_fu_1667_p4 = {{p_read[47:32]}};

assign a_V_fu_449_p1 = p_read[15:0];

assign and_ln890_fu_574_p2 = (xor_ln890_fu_568_p2 & Range2_all_ones_fu_522_p3);

assign and_ln891_10_fu_1395_p2 = (carry_22_fu_1337_p2 & Range2_all_ones_20_fu_1343_p3);

assign and_ln891_11_fu_1591_p2 = (carry_24_fu_1533_p2 & Range2_all_ones_21_fu_1539_p3);

assign and_ln891_12_fu_1804_p2 = (carry_26_fu_1746_p2 & Range2_all_ones_22_fu_1752_p3);

assign and_ln891_13_fu_2000_p2 = (carry_28_fu_1942_p2 & Range2_all_ones_23_fu_1948_p3);

assign and_ln891_14_fu_2196_p2 = (carry_30_fu_2138_p2 & Range2_all_ones_24_fu_2144_p3);

assign and_ln891_15_fu_772_p2 = (xor_ln896_26_fu_720_p2 & Range2_all_ones_17_fu_726_p3);

assign and_ln891_7_fu_778_p2 = (p_Result_46_fu_686_p3 & and_ln891_15_fu_772_p2);

assign and_ln891_8_fu_986_p2 = (carry_18_fu_928_p2 & Range2_all_ones_18_fu_934_p3);

assign and_ln891_9_fu_1199_p2 = (carry_20_fu_1141_p2 & Range2_all_ones_19_fu_1147_p3);

assign and_ln891_fu_588_p2 = (carry_15_fu_516_p2 & Range1_all_ones_fu_540_p2);

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign carry_15_fu_516_p2 = (xor_ln896_fu_510_p2 & p_Result_43_fu_476_p3);

assign carry_18_fu_928_p2 = (xor_ln896_28_fu_922_p2 & p_Result_49_fu_884_p3);

assign carry_20_fu_1141_p2 = (xor_ln896_30_fu_1135_p2 & p_Result_52_fu_1101_p3);

assign carry_22_fu_1337_p2 = (xor_ln896_32_fu_1331_p2 & p_Result_55_fu_1297_p3);

assign carry_24_fu_1533_p2 = (xor_ln896_34_fu_1527_p2 & p_Result_58_fu_1493_p3);

assign carry_26_fu_1746_p2 = (xor_ln896_36_fu_1740_p2 & p_Result_61_fu_1706_p3);

assign carry_28_fu_1942_p2 = (xor_ln896_38_fu_1936_p2 & p_Result_64_fu_1902_p3);

assign carry_30_fu_2138_p2 = (xor_ln896_40_fu_2132_p2 & p_Result_67_fu_2098_p3);

assign deleted_ones_17_fu_766_p2 = (or_ln890_fu_760_p2 & Range2_all_ones_17_fu_726_p3);

assign deleted_ones_18_fu_980_p2 = (or_ln890_6_fu_974_p2 & Range2_all_ones_18_fu_934_p3);

assign deleted_ones_19_fu_1193_p2 = (or_ln890_7_fu_1187_p2 & Range2_all_ones_19_fu_1147_p3);

assign deleted_ones_20_fu_1389_p2 = (or_ln890_8_fu_1383_p2 & Range2_all_ones_20_fu_1343_p3);

assign deleted_ones_21_fu_1585_p2 = (or_ln890_9_fu_1579_p2 & Range2_all_ones_21_fu_1539_p3);

assign deleted_ones_22_fu_1798_p2 = (or_ln890_10_fu_1792_p2 & Range2_all_ones_22_fu_1752_p3);

assign deleted_ones_23_fu_1994_p2 = (or_ln890_11_fu_1988_p2 & Range2_all_ones_23_fu_1948_p3);

assign deleted_ones_24_fu_2190_p2 = (or_ln890_12_fu_2184_p2 & Range2_all_ones_24_fu_2144_p3);

assign deleted_ones_fu_580_p3 = ((carry_15_fu_516_p2[0:0] == 1'b1) ? and_ln890_fu_574_p2 : Range1_all_ones_fu_540_p2);

assign deleted_zeros_10_fu_1559_p2 = (or_ln888_9_fu_1553_p2 ^ Range2_all_ones_21_fu_1539_p3);

assign deleted_zeros_11_fu_1772_p2 = (or_ln888_10_fu_1766_p2 ^ Range2_all_ones_22_fu_1752_p3);

assign deleted_zeros_12_fu_1968_p2 = (or_ln888_11_fu_1962_p2 ^ Range2_all_ones_23_fu_1948_p3);

assign deleted_zeros_13_fu_2164_p2 = (or_ln888_12_fu_2158_p2 ^ Range2_all_ones_24_fu_2144_p3);

assign deleted_zeros_7_fu_954_p2 = (or_ln888_6_fu_948_p2 ^ Range2_all_ones_18_fu_934_p3);

assign deleted_zeros_8_fu_1167_p2 = (or_ln888_7_fu_1161_p2 ^ Range2_all_ones_19_fu_1147_p3);

assign deleted_zeros_9_fu_1363_p2 = (or_ln888_8_fu_1357_p2 ^ Range2_all_ones_20_fu_1343_p3);

assign deleted_zeros_fu_552_p3 = ((carry_15_fu_516_p2[0:0] == 1'b1) ? Range1_all_ones_fu_540_p2 : Range1_all_zeros_fu_546_p2);

assign lhs_5_fu_2586_p3 = ((or_ln302_10_fu_2564_p2[0:0] == 1'b1) ? select_ln302_22_fu_2570_p3 : select_ln350_10_fu_2578_p3);

assign lhs_6_fu_2682_p3 = ((or_ln302_11_fu_2660_p2[0:0] == 1'b1) ? select_ln302_24_fu_2666_p3 : select_ln350_11_fu_2674_p3);

assign lhs_7_fu_2782_p3 = ((or_ln302_12_fu_2760_p2[0:0] == 1'b1) ? select_ln302_26_fu_2766_p3 : select_ln350_12_fu_2774_p3);

assign lhs_8_fu_2882_p3 = ((or_ln302_13_fu_2860_p2[0:0] == 1'b1) ? select_ln302_28_fu_2866_p3 : select_ln350_13_fu_2874_p3);

assign lhs_fu_2490_p3 = ((or_ln302_9_fu_2468_p2[0:0] == 1'b1) ? select_ln302_20_fu_2474_p3 : select_ln350_9_fu_2482_p3);

assign or_ln302_10_fu_2564_p2 = (xor_ln302_23_fu_2558_p2 | overflow_27_fu_2534_p2);

assign or_ln302_11_fu_2660_p2 = (xor_ln302_25_fu_2654_p2 | overflow_28_fu_2630_p2);

assign or_ln302_12_fu_2760_p2 = (xor_ln302_27_fu_2754_p2 | overflow_29_fu_2730_p2);

assign or_ln302_13_fu_2860_p2 = (xor_ln302_29_fu_2854_p2 | overflow_30_fu_2830_p2);

assign or_ln302_14_fu_2960_p2 = (xor_ln302_31_fu_2954_p2 | overflow_31_fu_2930_p2);

assign or_ln302_15_fu_3060_p2 = (xor_ln302_33_fu_3054_p2 | overflow_32_fu_3030_p2);

assign or_ln302_16_fu_3160_p2 = (xor_ln302_35_fu_3154_p2 | overflow_33_fu_3130_p2);

assign or_ln302_9_fu_2468_p2 = (xor_ln302_21_fu_2462_p2 | overflow_26_fu_2438_p2);

assign or_ln302_fu_2370_p2 = (xor_ln302_19_fu_2364_p2 | overflow_25_fu_2340_p2);

assign or_ln346_10_fu_1457_p2 = (underflow_20_fu_1443_p2 | overflow_20_fu_1419_p2);

assign or_ln346_11_fu_1653_p2 = (underflow_21_fu_1639_p2 | overflow_21_fu_1615_p2);

assign or_ln346_12_fu_1866_p2 = (underflow_22_fu_1852_p2 | overflow_22_fu_1828_p2);

assign or_ln346_13_fu_2062_p2 = (underflow_23_fu_2048_p2 | overflow_23_fu_2024_p2);

assign or_ln346_14_fu_2258_p2 = (underflow_24_fu_2244_p2 | overflow_24_fu_2220_p2);

assign or_ln346_7_fu_838_p2 = (underflow_17_fu_832_p2 | overflow_17_fu_808_p2);

assign or_ln346_8_fu_1048_p2 = (underflow_18_fu_1034_p2 | overflow_18_fu_1010_p2);

assign or_ln346_9_fu_1261_p2 = (underflow_19_fu_1247_p2 | overflow_19_fu_1223_p2);

assign or_ln346_fu_642_p2 = (underflow_fu_636_p2 | overflow_fu_612_p2);

assign or_ln888_10_fu_1766_p2 = (xor_ln888_21_fu_1760_p2 | p_Result_62_fu_1732_p3);

assign or_ln888_11_fu_1962_p2 = (xor_ln888_23_fu_1956_p2 | p_Result_65_fu_1928_p3);

assign or_ln888_12_fu_2158_p2 = (xor_ln888_25_fu_2152_p2 | p_Result_68_fu_2124_p3);

assign or_ln888_6_fu_948_p2 = (xor_ln888_13_fu_942_p2 | p_Result_50_fu_914_p3);

assign or_ln888_7_fu_1161_p2 = (xor_ln888_15_fu_1155_p2 | p_Result_53_fu_1127_p3);

assign or_ln888_8_fu_1357_p2 = (xor_ln888_17_fu_1351_p2 | p_Result_56_fu_1323_p3);

assign or_ln888_9_fu_1553_p2 = (xor_ln888_19_fu_1547_p2 | p_Result_59_fu_1519_p3);

assign or_ln888_fu_740_p2 = (xor_ln888_fu_734_p2 | p_Result_47_fu_712_p3);

assign or_ln890_10_fu_1792_p2 = (xor_ln890_12_fu_1786_p2 | or_ln888_10_fu_1766_p2);

assign or_ln890_11_fu_1988_p2 = (xor_ln890_13_fu_1982_p2 | or_ln888_11_fu_1962_p2);

assign or_ln890_12_fu_2184_p2 = (xor_ln890_14_fu_2178_p2 | or_ln888_12_fu_2158_p2);

assign or_ln890_6_fu_974_p2 = (xor_ln890_8_fu_968_p2 | or_ln888_6_fu_948_p2);

assign or_ln890_7_fu_1187_p2 = (xor_ln890_9_fu_1181_p2 | or_ln888_7_fu_1161_p2);

assign or_ln890_8_fu_1383_p2 = (xor_ln890_10_fu_1377_p2 | or_ln888_8_fu_1357_p2);

assign or_ln890_9_fu_1579_p2 = (xor_ln890_11_fu_1573_p2 | or_ln888_9_fu_1553_p2);

assign or_ln890_fu_760_p2 = (xor_ln890_7_fu_754_p2 | or_ln888_fu_740_p2);

assign or_ln895_10_fu_1407_p2 = (xor_ln895_32_fu_1401_p2 | p_Result_56_fu_1323_p3);

assign or_ln895_11_fu_1603_p2 = (xor_ln895_34_fu_1597_p2 | p_Result_59_fu_1519_p3);

assign or_ln895_12_fu_1816_p2 = (xor_ln895_36_fu_1810_p2 | p_Result_62_fu_1732_p3);

assign or_ln895_13_fu_2012_p2 = (xor_ln895_38_fu_2006_p2 | p_Result_65_fu_1928_p3);

assign or_ln895_14_fu_2208_p2 = (xor_ln895_40_fu_2202_p2 | p_Result_68_fu_2124_p3);

assign or_ln895_7_fu_796_p2 = (xor_ln895_26_fu_790_p2 | p_Result_47_fu_712_p3);

assign or_ln895_8_fu_998_p2 = (xor_ln895_28_fu_992_p2 | p_Result_50_fu_914_p3);

assign or_ln895_9_fu_1211_p2 = (xor_ln895_30_fu_1205_p2 | p_Result_53_fu_1127_p3);

assign or_ln895_fu_600_p2 = (xor_ln895_fu_594_p2 | p_Result_44_fu_502_p3);

assign or_ln896_10_fu_1431_p2 = (xor_ln896_33_fu_1425_p2 | xor_ln896_32_fu_1331_p2);

assign or_ln896_11_fu_1627_p2 = (xor_ln896_35_fu_1621_p2 | xor_ln896_34_fu_1527_p2);

assign or_ln896_12_fu_1840_p2 = (xor_ln896_37_fu_1834_p2 | xor_ln896_36_fu_1740_p2);

assign or_ln896_13_fu_2036_p2 = (xor_ln896_39_fu_2030_p2 | xor_ln896_38_fu_1936_p2);

assign or_ln896_14_fu_2232_p2 = (xor_ln896_41_fu_2226_p2 | xor_ln896_40_fu_2132_p2);

assign or_ln896_7_fu_820_p2 = (xor_ln896_27_fu_814_p2 | xor_ln896_26_fu_720_p2);

assign or_ln896_8_fu_1022_p2 = (xor_ln896_29_fu_1016_p2 | xor_ln896_28_fu_922_p2);

assign or_ln896_9_fu_1235_p2 = (xor_ln896_31_fu_1229_p2 | xor_ln896_30_fu_1135_p2);

assign or_ln896_fu_624_p2 = (xor_ln896_fu_510_p2 | xor_ln896_25_fu_618_p2);

assign overflow_17_fu_808_p2 = (xor_ln895_27_fu_802_p2 & or_ln895_7_fu_796_p2);

assign overflow_18_fu_1010_p2 = (xor_ln895_29_fu_1004_p2 & or_ln895_8_fu_998_p2);

assign overflow_19_fu_1223_p2 = (xor_ln895_31_fu_1217_p2 & or_ln895_9_fu_1211_p2);

assign overflow_20_fu_1419_p2 = (xor_ln895_33_fu_1413_p2 & or_ln895_10_fu_1407_p2);

assign overflow_21_fu_1615_p2 = (xor_ln895_35_fu_1609_p2 & or_ln895_11_fu_1603_p2);

assign overflow_22_fu_1828_p2 = (xor_ln895_37_fu_1822_p2 & or_ln895_12_fu_1816_p2);

assign overflow_23_fu_2024_p2 = (xor_ln895_39_fu_2018_p2 & or_ln895_13_fu_2012_p2);

assign overflow_24_fu_2220_p2 = (xor_ln895_41_fu_2214_p2 & or_ln895_14_fu_2208_p2);

assign overflow_25_fu_2340_p2 = (xor_ln895_42_fu_2334_p2 & p_Result_70_fu_2326_p3);

assign overflow_26_fu_2438_p2 = (xor_ln895_43_fu_2432_p2 & p_Result_72_fu_2424_p3);

assign overflow_27_fu_2534_p2 = (xor_ln895_44_fu_2528_p2 & p_Result_74_fu_2520_p3);

assign overflow_28_fu_2630_p2 = (xor_ln895_45_fu_2624_p2 & p_Result_76_fu_2616_p3);

assign overflow_29_fu_2730_p2 = (xor_ln895_46_fu_2724_p2 & p_Result_78_fu_2716_p3);

assign overflow_30_fu_2830_p2 = (xor_ln895_47_fu_2824_p2 & p_Result_80_fu_2816_p3);

assign overflow_31_fu_2930_p2 = (xor_ln895_48_fu_2924_p2 & p_Result_82_fu_2916_p3);

assign overflow_32_fu_3030_p2 = (xor_ln895_49_fu_3024_p2 & p_Result_84_fu_3016_p3);

assign overflow_33_fu_3130_p2 = (xor_ln895_50_fu_3124_p2 & p_Result_86_fu_3116_p3);

assign overflow_fu_612_p2 = (xor_ln895_25_fu_606_p2 & or_ln895_fu_600_p2);

assign p_Result_43_fu_476_p3 = r_V_15_fu_143_p2[32'd24];

assign p_Result_44_fu_502_p3 = p_Val2_51_fu_496_p2[32'd15];

assign p_Result_45_fu_664_p3 = p_read[32'd15];

assign p_Result_46_fu_686_p3 = p_read[32'd15];

assign p_Result_47_fu_712_p3 = p_Val2_54_fu_706_p2[32'd13];

assign p_Result_48_fu_862_p3 = r_V_17_fu_856_p2[32'd22];

assign p_Result_49_fu_884_p3 = r_V_17_fu_856_p2[32'd22];

assign p_Result_50_fu_914_p3 = p_Val2_57_fu_904_p2[32'd14];

assign p_Result_51_fu_1079_p3 = r_V_18_fu_138_p2[32'd23];

assign p_Result_52_fu_1101_p3 = r_V_18_fu_138_p2[32'd23];

assign p_Result_53_fu_1127_p3 = p_Val2_60_fu_1121_p2[32'd15];

assign p_Result_54_fu_1275_p3 = r_V_19_fu_142_p2[32'd23];

assign p_Result_55_fu_1297_p3 = r_V_19_fu_142_p2[32'd23];

assign p_Result_56_fu_1323_p3 = p_Val2_63_fu_1317_p2[32'd15];

assign p_Result_57_fu_1471_p3 = r_V_20_fu_139_p2[32'd23];

assign p_Result_58_fu_1493_p3 = r_V_20_fu_139_p2[32'd23];

assign p_Result_59_fu_1519_p3 = p_Val2_66_fu_1513_p2[32'd15];

assign p_Result_60_fu_1684_p3 = r_V_fu_140_p2[32'd23];

assign p_Result_61_fu_1706_p3 = r_V_fu_140_p2[32'd23];

assign p_Result_62_fu_1732_p3 = p_Val2_69_fu_1726_p2[32'd15];

assign p_Result_63_fu_1880_p3 = r_V_21_fu_145_p2[32'd23];

assign p_Result_64_fu_1902_p3 = r_V_21_fu_145_p2[32'd23];

assign p_Result_65_fu_1928_p3 = p_Val2_72_fu_1922_p2[32'd15];

assign p_Result_66_fu_2076_p3 = r_V_22_fu_146_p2[32'd23];

assign p_Result_67_fu_2098_p3 = r_V_22_fu_146_p2[32'd23];

assign p_Result_68_fu_2124_p3 = p_Val2_75_fu_2118_p2[32'd15];

assign p_Result_69_fu_2312_p3 = ret_V_fu_2306_p2[32'd16];

assign p_Result_70_fu_2326_p3 = p_Val2_77_fu_2320_p2[32'd15];

assign p_Result_71_fu_2410_p3 = ret_V_9_fu_2404_p2[32'd16];

assign p_Result_72_fu_2424_p3 = p_Val2_79_fu_2418_p2[32'd15];

assign p_Result_73_fu_2507_p3 = ret_V_10_fu_2501_p2[32'd16];

assign p_Result_74_fu_2520_p3 = p_Val2_81_fu_2515_p2[32'd15];

assign p_Result_75_fu_2603_p3 = ret_V_11_fu_2597_p2[32'd16];

assign p_Result_76_fu_2616_p3 = p_Val2_84_fu_2611_p2[32'd15];

assign p_Result_77_fu_2703_p3 = ret_V_12_fu_2697_p2[32'd16];

assign p_Result_78_fu_2716_p3 = p_Val2_86_fu_2711_p2[32'd15];

assign p_Result_79_fu_2803_p3 = ret_V_13_fu_2797_p2[32'd16];

assign p_Result_80_fu_2816_p3 = p_Val2_88_fu_2811_p2[32'd15];

assign p_Result_81_fu_2903_p3 = ret_V_14_fu_2897_p2[32'd16];

assign p_Result_82_fu_2916_p3 = p_Val2_90_fu_2911_p2[32'd15];

assign p_Result_83_fu_3003_p3 = ret_V_15_fu_2997_p2[32'd16];

assign p_Result_84_fu_3016_p3 = p_Val2_92_fu_3011_p2[32'd15];

assign p_Result_85_fu_3103_p3 = ret_V_16_fu_3097_p2[32'd16];

assign p_Result_86_fu_3116_p3 = p_Val2_94_fu_3111_p2[32'd15];

assign p_Result_s_fu_458_p3 = r_V_15_fu_143_p2[32'd26];

assign p_Val2_50_fu_466_p4 = {{r_V_15_fu_143_p2[24:9]}};

assign p_Val2_51_fu_496_p2 = (zext_ln377_fu_492_p1 + p_Val2_50_fu_466_p4);

assign p_Val2_53_fu_672_p4 = {{p_read[15:3]}};

assign p_Val2_54_fu_706_p2 = ($signed(zext_ln377_7_fu_702_p1) + $signed(sext_ln823_fu_682_p1));

assign p_Val2_56_fu_870_p4 = {{r_V_17_fu_856_p2[22:9]}};

assign p_Val2_57_fu_904_p2 = ($signed(zext_ln377_8_fu_900_p1) + $signed(sext_ln823_1_fu_880_p1));

assign p_Val2_59_fu_1087_p4 = {{r_V_18_fu_138_p2[23:9]}};

assign p_Val2_60_fu_1121_p2 = ($signed(zext_ln377_9_fu_1117_p1) + $signed(sext_ln818_fu_1097_p1));

assign p_Val2_62_fu_1283_p4 = {{r_V_19_fu_142_p2[23:9]}};

assign p_Val2_63_fu_1317_p2 = ($signed(zext_ln377_10_fu_1313_p1) + $signed(sext_ln818_1_fu_1293_p1));

assign p_Val2_65_fu_1479_p4 = {{r_V_20_fu_139_p2[23:9]}};

assign p_Val2_66_fu_1513_p2 = ($signed(zext_ln377_11_fu_1509_p1) + $signed(sext_ln818_2_fu_1489_p1));

assign p_Val2_68_fu_1692_p4 = {{r_V_fu_140_p2[23:9]}};

assign p_Val2_69_fu_1726_p2 = ($signed(zext_ln377_12_fu_1722_p1) + $signed(sext_ln818_3_fu_1702_p1));

assign p_Val2_71_fu_1888_p4 = {{r_V_21_fu_145_p2[23:9]}};

assign p_Val2_72_fu_1922_p2 = ($signed(zext_ln377_13_fu_1918_p1) + $signed(sext_ln818_4_fu_1898_p1));

assign p_Val2_74_fu_2084_p4 = {{r_V_22_fu_146_p2[23:9]}};

assign p_Val2_75_fu_2118_p2 = ($signed(zext_ln377_14_fu_2114_p1) + $signed(sext_ln818_5_fu_2094_p1));

assign p_Val2_77_fu_2320_p2 = ($signed(rhs_fu_2279_p3) + $signed(16'd65507));

assign p_Val2_79_fu_2418_p2 = ($signed(rhs_6_fu_2295_p3) + $signed(16'd65532));

assign p_Val2_81_fu_2515_p2 = ($signed(rhs_7_reg_3244) + $signed(16'd65483));

assign p_Val2_82_fu_2392_p3 = ((or_ln302_fu_2370_p2[0:0] == 1'b1) ? select_ln302_fu_2376_p3 : select_ln350_fu_2384_p3);

assign p_Val2_84_fu_2611_p2 = ($signed(rhs_8_reg_3250) + $signed(16'd177));

assign p_Val2_86_fu_2711_p2 = ($signed(rhs_9_reg_3256) + $signed(lhs_fu_2490_p3));

assign p_Val2_88_fu_2811_p2 = ($signed(rhs_10_reg_3262) + $signed(lhs_5_fu_2586_p3));

assign p_Val2_90_fu_2911_p2 = ($signed(rhs_11_reg_3268) + $signed(lhs_6_fu_2682_p3));

assign p_Val2_92_fu_3011_p2 = ($signed(rhs_12_reg_3274) + $signed(lhs_7_fu_2782_p3));

assign p_Val2_94_fu_3111_p2 = ($signed(rhs_13_reg_3280) + $signed(lhs_8_fu_2882_p3));

assign r_V_15_fu_143_p1 = 27'd788;

assign r_V_16_fu_652_p3 = {{trunc_ln1273_fu_648_p1}, {6'd0}};

assign r_V_17_fu_856_p2 = ($signed(sext_ln1270_fu_660_p1) - $signed(sext_ln1273_fu_852_p1));

assign r_V_18_fu_138_p0 = sext_ln70_6_fu_1072_p1;

assign r_V_18_fu_138_p1 = 24'd94;

assign r_V_19_fu_142_p0 = sext_ln70_6_fu_1072_p1;

assign r_V_19_fu_142_p1 = 24'd16777134;

assign r_V_20_fu_139_p0 = sext_ln70_6_fu_1072_p1;

assign r_V_20_fu_139_p1 = 24'd16777139;

assign r_V_21_fu_145_p0 = sext_ln70_7_fu_1677_p1;

assign r_V_21_fu_145_p1 = 24'd81;

assign r_V_22_fu_146_p0 = sext_ln70_7_fu_1677_p1;

assign r_V_22_fu_146_p1 = 24'd77;

assign r_V_fu_140_p0 = sext_ln70_7_fu_1677_p1;

assign r_V_fu_140_p1 = 24'd16777122;

assign ret_V_10_fu_2501_p2 = ($signed(sext_ln813_13_fu_2498_p1) + $signed(17'd131019));

assign ret_V_11_fu_2597_p2 = ($signed(sext_ln813_14_fu_2594_p1) + $signed(17'd177));

assign ret_V_12_fu_2697_p2 = ($signed(sext_ln813_16_fu_2694_p1) + $signed(sext_ln813_15_fu_2690_p1));

assign ret_V_13_fu_2797_p2 = ($signed(sext_ln813_18_fu_2794_p1) + $signed(sext_ln813_17_fu_2790_p1));

assign ret_V_14_fu_2897_p2 = ($signed(sext_ln813_20_fu_2894_p1) + $signed(sext_ln813_19_fu_2890_p1));

assign ret_V_15_fu_2997_p2 = ($signed(sext_ln813_22_fu_2994_p1) + $signed(sext_ln813_21_fu_2990_p1));

assign ret_V_16_fu_3097_p2 = ($signed(sext_ln813_24_fu_3094_p1) + $signed(sext_ln813_23_fu_3090_p1));

assign ret_V_9_fu_2404_p2 = ($signed(sext_ln813_12_fu_2400_p1) + $signed(17'd131068));

assign ret_V_fu_2306_p2 = ($signed(sext_ln813_fu_2302_p1) + $signed(17'd131043));

assign rhs_10_fu_1659_p3 = ((or_ln346_11_fu_1653_p2[0:0] == 1'b1) ? select_ln346_23_fu_1645_p3 : p_Val2_66_fu_1513_p2);

assign rhs_11_fu_1872_p3 = ((or_ln346_12_fu_1866_p2[0:0] == 1'b1) ? select_ln346_24_fu_1858_p3 : p_Val2_69_fu_1726_p2);

assign rhs_12_fu_2068_p3 = ((or_ln346_13_fu_2062_p2[0:0] == 1'b1) ? select_ln346_25_fu_2054_p3 : p_Val2_72_fu_1922_p2);

assign rhs_13_fu_2264_p3 = ((or_ln346_14_fu_2258_p2[0:0] == 1'b1) ? select_ln346_26_fu_2250_p3 : p_Val2_75_fu_2118_p2);

assign rhs_6_fu_2295_p3 = ((or_ln346_7_reg_3239[0:0] == 1'b1) ? select_ln346_16_fu_2288_p3 : sext_ln856_fu_2285_p1);

assign rhs_7_fu_1054_p3 = ((or_ln346_8_fu_1048_p2[0:0] == 1'b1) ? select_ln346_18_fu_1040_p3 : sext_ln856_1_fu_910_p1);

assign rhs_8_fu_1267_p3 = ((or_ln346_9_fu_1261_p2[0:0] == 1'b1) ? select_ln346_20_fu_1253_p3 : p_Val2_60_fu_1121_p2);

assign rhs_9_fu_1463_p3 = ((or_ln346_10_fu_1457_p2[0:0] == 1'b1) ? select_ln346_22_fu_1449_p3 : p_Val2_63_fu_1317_p2);

assign rhs_fu_2279_p3 = ((or_ln346_reg_3224[0:0] == 1'b1) ? select_ln346_fu_2272_p3 : p_Val2_51_reg_3214);

assign select_ln302_20_fu_2474_p3 = ((xor_ln302_20_fu_2456_p2[0:0] == 1'b1) ? 16'd32767 : p_Val2_79_fu_2418_p2);

assign select_ln302_22_fu_2570_p3 = ((xor_ln302_22_fu_2552_p2[0:0] == 1'b1) ? 16'd32767 : p_Val2_81_fu_2515_p2);

assign select_ln302_24_fu_2666_p3 = ((xor_ln302_24_fu_2648_p2[0:0] == 1'b1) ? 16'd32767 : p_Val2_84_fu_2611_p2);

assign select_ln302_26_fu_2766_p3 = ((xor_ln302_26_fu_2748_p2[0:0] == 1'b1) ? 16'd32767 : p_Val2_86_fu_2711_p2);

assign select_ln302_28_fu_2866_p3 = ((xor_ln302_28_fu_2848_p2[0:0] == 1'b1) ? 16'd32767 : p_Val2_88_fu_2811_p2);

assign select_ln302_30_fu_2966_p3 = ((xor_ln302_30_fu_2948_p2[0:0] == 1'b1) ? 16'd32767 : p_Val2_90_fu_2911_p2);

assign select_ln302_31_fu_2982_p3 = ((or_ln302_14_fu_2960_p2[0:0] == 1'b1) ? select_ln302_30_fu_2966_p3 : select_ln350_14_fu_2974_p3);

assign select_ln302_32_fu_3066_p3 = ((xor_ln302_32_fu_3048_p2[0:0] == 1'b1) ? 16'd32767 : p_Val2_92_fu_3011_p2);

assign select_ln302_33_fu_3082_p3 = ((or_ln302_15_fu_3060_p2[0:0] == 1'b1) ? select_ln302_32_fu_3066_p3 : select_ln350_15_fu_3074_p3);

assign select_ln302_34_fu_3166_p3 = ((xor_ln302_34_fu_3148_p2[0:0] == 1'b1) ? 16'd32767 : p_Val2_94_fu_3111_p2);

assign select_ln302_35_fu_3182_p3 = ((or_ln302_16_fu_3160_p2[0:0] == 1'b1) ? select_ln302_34_fu_3166_p3 : select_ln350_16_fu_3174_p3);

assign select_ln302_fu_2376_p3 = ((xor_ln302_fu_2358_p2[0:0] == 1'b1) ? 16'd32767 : p_Val2_77_fu_2320_p2);

assign select_ln346_16_fu_2288_p3 = ((overflow_17_reg_3234[0:0] == 1'b1) ? 16'd32767 : 16'd32768);

assign select_ln346_18_fu_1040_p3 = ((overflow_18_fu_1010_p2[0:0] == 1'b1) ? 16'd32767 : 16'd32768);

assign select_ln346_20_fu_1253_p3 = ((overflow_19_fu_1223_p2[0:0] == 1'b1) ? 16'd32767 : 16'd32768);

assign select_ln346_22_fu_1449_p3 = ((overflow_20_fu_1419_p2[0:0] == 1'b1) ? 16'd32767 : 16'd32768);

assign select_ln346_23_fu_1645_p3 = ((overflow_21_fu_1615_p2[0:0] == 1'b1) ? 16'd32767 : 16'd32768);

assign select_ln346_24_fu_1858_p3 = ((overflow_22_fu_1828_p2[0:0] == 1'b1) ? 16'd32767 : 16'd32768);

assign select_ln346_25_fu_2054_p3 = ((overflow_23_fu_2024_p2[0:0] == 1'b1) ? 16'd32767 : 16'd32768);

assign select_ln346_26_fu_2250_p3 = ((overflow_24_fu_2220_p2[0:0] == 1'b1) ? 16'd32767 : 16'd32768);

assign select_ln346_fu_2272_p3 = ((overflow_reg_3219[0:0] == 1'b1) ? 16'd32767 : 16'd32768);

assign select_ln350_10_fu_2578_p3 = ((underflow_27_fu_2546_p2[0:0] == 1'b1) ? 16'd32768 : p_Val2_81_fu_2515_p2);

assign select_ln350_11_fu_2674_p3 = ((underflow_28_fu_2642_p2[0:0] == 1'b1) ? 16'd32768 : p_Val2_84_fu_2611_p2);

assign select_ln350_12_fu_2774_p3 = ((underflow_29_fu_2742_p2[0:0] == 1'b1) ? 16'd32768 : p_Val2_86_fu_2711_p2);

assign select_ln350_13_fu_2874_p3 = ((underflow_30_fu_2842_p2[0:0] == 1'b1) ? 16'd32768 : p_Val2_88_fu_2811_p2);

assign select_ln350_14_fu_2974_p3 = ((underflow_31_fu_2942_p2[0:0] == 1'b1) ? 16'd32768 : p_Val2_90_fu_2911_p2);

assign select_ln350_15_fu_3074_p3 = ((underflow_32_fu_3042_p2[0:0] == 1'b1) ? 16'd32768 : p_Val2_92_fu_3011_p2);

assign select_ln350_16_fu_3174_p3 = ((underflow_33_fu_3142_p2[0:0] == 1'b1) ? 16'd32768 : p_Val2_94_fu_3111_p2);

assign select_ln350_9_fu_2482_p3 = ((underflow_26_fu_2450_p2[0:0] == 1'b1) ? 16'd32768 : p_Val2_79_fu_2418_p2);

assign select_ln350_fu_2384_p3 = ((underflow_25_fu_2352_p2[0:0] == 1'b1) ? 16'd32768 : p_Val2_77_fu_2320_p2);

assign sext_ln1270_fu_660_p1 = $signed(r_V_16_fu_652_p3);

assign sext_ln1273_fu_852_p1 = $signed(shl_ln_fu_844_p3);

assign sext_ln70_6_fu_1072_p1 = $signed(a_V_1_fu_1062_p4);

assign sext_ln70_7_fu_1677_p1 = $signed(a_V_2_fu_1667_p4);

assign sext_ln813_12_fu_2400_p1 = rhs_6_fu_2295_p3;

assign sext_ln813_13_fu_2498_p1 = rhs_7_reg_3244;

assign sext_ln813_14_fu_2594_p1 = rhs_8_reg_3250;

assign sext_ln813_15_fu_2690_p1 = lhs_fu_2490_p3;

assign sext_ln813_16_fu_2694_p1 = rhs_9_reg_3256;

assign sext_ln813_17_fu_2790_p1 = lhs_5_fu_2586_p3;

assign sext_ln813_18_fu_2794_p1 = rhs_10_reg_3262;

assign sext_ln813_19_fu_2890_p1 = lhs_6_fu_2682_p3;

assign sext_ln813_20_fu_2894_p1 = rhs_11_reg_3268;

assign sext_ln813_21_fu_2990_p1 = lhs_7_fu_2782_p3;

assign sext_ln813_22_fu_2994_p1 = rhs_12_reg_3274;

assign sext_ln813_23_fu_3090_p1 = lhs_8_fu_2882_p3;

assign sext_ln813_24_fu_3094_p1 = rhs_13_reg_3280;

assign sext_ln813_fu_2302_p1 = rhs_fu_2279_p3;

assign sext_ln818_1_fu_1293_p1 = $signed(p_Val2_62_fu_1283_p4);

assign sext_ln818_2_fu_1489_p1 = $signed(p_Val2_65_fu_1479_p4);

assign sext_ln818_3_fu_1702_p1 = $signed(p_Val2_68_fu_1692_p4);

assign sext_ln818_4_fu_1898_p1 = $signed(p_Val2_71_fu_1888_p4);

assign sext_ln818_5_fu_2094_p1 = $signed(p_Val2_74_fu_2084_p4);

assign sext_ln818_fu_1097_p1 = $signed(p_Val2_59_fu_1087_p4);

assign sext_ln823_1_fu_880_p1 = $signed(p_Val2_56_fu_870_p4);

assign sext_ln823_fu_682_p1 = $signed(p_Val2_53_fu_672_p4);

assign sext_ln856_1_fu_910_p1 = p_Val2_57_fu_904_p2;

assign sext_ln856_fu_2285_p1 = p_Val2_54_reg_3229;

assign shl_ln_fu_844_p3 = {{trunc_ln1273_fu_648_p1}, {3'd0}};

assign tmp_101_fu_1565_p3 = r_V_20_fu_139_p2[32'd23];

assign tmp_104_fu_1714_p3 = r_V_fu_140_p2[32'd8];

assign tmp_107_fu_1778_p3 = r_V_fu_140_p2[32'd23];

assign tmp_110_fu_1910_p3 = r_V_21_fu_145_p2[32'd8];

assign tmp_113_fu_1974_p3 = r_V_21_fu_145_p2[32'd23];

assign tmp_116_fu_2106_p3 = r_V_22_fu_146_p2[32'd8];

assign tmp_119_fu_2170_p3 = r_V_22_fu_146_p2[32'd23];

assign tmp_68_fu_484_p3 = r_V_15_fu_143_p2[32'd8];

assign tmp_71_fu_560_p3 = r_V_15_fu_143_p2[32'd25];

assign tmp_74_fu_694_p3 = p_read[64'd2];

assign tmp_77_fu_746_p3 = p_read[32'd15];

assign tmp_80_fu_892_p3 = r_V_17_fu_856_p2[32'd8];

assign tmp_83_fu_960_p3 = r_V_17_fu_856_p2[32'd22];

assign tmp_86_fu_1109_p3 = r_V_18_fu_138_p2[32'd8];

assign tmp_89_fu_1173_p3 = r_V_18_fu_138_p2[32'd23];

assign tmp_92_fu_1305_p3 = r_V_19_fu_142_p2[32'd8];

assign tmp_95_fu_1369_p3 = r_V_19_fu_142_p2[32'd23];

assign tmp_98_fu_1501_p3 = r_V_20_fu_139_p2[32'd8];

assign tmp_fu_530_p4 = {{r_V_15_fu_143_p2[26:25]}};

assign trunc_ln1273_fu_648_p1 = p_read[15:0];

assign underflow_17_fu_832_p2 = (xor_ln896_52_fu_826_p2 & p_Result_45_fu_664_p3);

assign underflow_18_fu_1034_p2 = (xor_ln896_53_fu_1028_p2 & p_Result_48_fu_862_p3);

assign underflow_19_fu_1247_p2 = (xor_ln896_54_fu_1241_p2 & p_Result_51_fu_1079_p3);

assign underflow_20_fu_1443_p2 = (xor_ln896_55_fu_1437_p2 & p_Result_54_fu_1275_p3);

assign underflow_21_fu_1639_p2 = (xor_ln896_56_fu_1633_p2 & p_Result_57_fu_1471_p3);

assign underflow_22_fu_1852_p2 = (xor_ln896_57_fu_1846_p2 & p_Result_60_fu_1684_p3);

assign underflow_23_fu_2048_p2 = (xor_ln896_58_fu_2042_p2 & p_Result_63_fu_1880_p3);

assign underflow_24_fu_2244_p2 = (xor_ln896_59_fu_2238_p2 & p_Result_66_fu_2076_p3);

assign underflow_25_fu_2352_p2 = (xor_ln896_42_fu_2346_p2 & p_Result_69_fu_2312_p3);

assign underflow_26_fu_2450_p2 = (xor_ln896_43_fu_2444_p2 & p_Result_71_fu_2410_p3);

assign underflow_27_fu_2546_p2 = (xor_ln896_44_fu_2540_p2 & p_Result_73_fu_2507_p3);

assign underflow_28_fu_2642_p2 = (xor_ln896_45_fu_2636_p2 & p_Result_75_fu_2603_p3);

assign underflow_29_fu_2742_p2 = (xor_ln896_46_fu_2736_p2 & p_Result_77_fu_2703_p3);

assign underflow_30_fu_2842_p2 = (xor_ln896_47_fu_2836_p2 & p_Result_79_fu_2803_p3);

assign underflow_31_fu_2942_p2 = (xor_ln896_48_fu_2936_p2 & p_Result_81_fu_2903_p3);

assign underflow_32_fu_3042_p2 = (xor_ln896_49_fu_3036_p2 & p_Result_83_fu_3003_p3);

assign underflow_33_fu_3142_p2 = (xor_ln896_50_fu_3136_p2 & p_Result_85_fu_3103_p3);

assign underflow_fu_636_p2 = (xor_ln896_51_fu_630_p2 & p_Result_s_fu_458_p3);

assign xor_ln302_19_fu_2364_p2 = (xor_ln302_fu_2358_p2 ^ 1'd1);

assign xor_ln302_20_fu_2456_p2 = (p_Result_72_fu_2424_p3 ^ p_Result_71_fu_2410_p3);

assign xor_ln302_21_fu_2462_p2 = (xor_ln302_20_fu_2456_p2 ^ 1'd1);

assign xor_ln302_22_fu_2552_p2 = (p_Result_74_fu_2520_p3 ^ p_Result_73_fu_2507_p3);

assign xor_ln302_23_fu_2558_p2 = (xor_ln302_22_fu_2552_p2 ^ 1'd1);

assign xor_ln302_24_fu_2648_p2 = (p_Result_76_fu_2616_p3 ^ p_Result_75_fu_2603_p3);

assign xor_ln302_25_fu_2654_p2 = (xor_ln302_24_fu_2648_p2 ^ 1'd1);

assign xor_ln302_26_fu_2748_p2 = (p_Result_78_fu_2716_p3 ^ p_Result_77_fu_2703_p3);

assign xor_ln302_27_fu_2754_p2 = (xor_ln302_26_fu_2748_p2 ^ 1'd1);

assign xor_ln302_28_fu_2848_p2 = (p_Result_80_fu_2816_p3 ^ p_Result_79_fu_2803_p3);

assign xor_ln302_29_fu_2854_p2 = (xor_ln302_28_fu_2848_p2 ^ 1'd1);

assign xor_ln302_30_fu_2948_p2 = (p_Result_82_fu_2916_p3 ^ p_Result_81_fu_2903_p3);

assign xor_ln302_31_fu_2954_p2 = (xor_ln302_30_fu_2948_p2 ^ 1'd1);

assign xor_ln302_32_fu_3048_p2 = (p_Result_84_fu_3016_p3 ^ p_Result_83_fu_3003_p3);

assign xor_ln302_33_fu_3054_p2 = (xor_ln302_32_fu_3048_p2 ^ 1'd1);

assign xor_ln302_34_fu_3148_p2 = (p_Result_86_fu_3116_p3 ^ p_Result_85_fu_3103_p3);

assign xor_ln302_35_fu_3154_p2 = (xor_ln302_34_fu_3148_p2 ^ 1'd1);

assign xor_ln302_fu_2358_p2 = (p_Result_70_fu_2326_p3 ^ p_Result_69_fu_2312_p3);

assign xor_ln888_13_fu_942_p2 = (p_Result_49_fu_884_p3 ^ 1'd1);

assign xor_ln888_15_fu_1155_p2 = (p_Result_52_fu_1101_p3 ^ 1'd1);

assign xor_ln888_17_fu_1351_p2 = (p_Result_55_fu_1297_p3 ^ 1'd1);

assign xor_ln888_19_fu_1547_p2 = (p_Result_58_fu_1493_p3 ^ 1'd1);

assign xor_ln888_21_fu_1760_p2 = (p_Result_61_fu_1706_p3 ^ 1'd1);

assign xor_ln888_23_fu_1956_p2 = (p_Result_64_fu_1902_p3 ^ 1'd1);

assign xor_ln888_25_fu_2152_p2 = (p_Result_67_fu_2098_p3 ^ 1'd1);

assign xor_ln888_fu_734_p2 = (p_Result_46_fu_686_p3 ^ 1'd1);

assign xor_ln890_10_fu_1377_p2 = (tmp_95_fu_1369_p3 ^ 1'd1);

assign xor_ln890_11_fu_1573_p2 = (tmp_101_fu_1565_p3 ^ 1'd1);

assign xor_ln890_12_fu_1786_p2 = (tmp_107_fu_1778_p3 ^ 1'd1);

assign xor_ln890_13_fu_1982_p2 = (tmp_113_fu_1974_p3 ^ 1'd1);

assign xor_ln890_14_fu_2178_p2 = (tmp_119_fu_2170_p3 ^ 1'd1);

assign xor_ln890_7_fu_754_p2 = (tmp_77_fu_746_p3 ^ 1'd1);

assign xor_ln890_8_fu_968_p2 = (tmp_83_fu_960_p3 ^ 1'd1);

assign xor_ln890_9_fu_1181_p2 = (tmp_89_fu_1173_p3 ^ 1'd1);

assign xor_ln890_fu_568_p2 = (tmp_71_fu_560_p3 ^ 1'd1);

assign xor_ln895_25_fu_606_p2 = (p_Result_s_fu_458_p3 ^ 1'd1);

assign xor_ln895_26_fu_790_p2 = (xor_ln895_51_fu_784_p2 ^ 1'd1);

assign xor_ln895_27_fu_802_p2 = (p_Result_45_fu_664_p3 ^ 1'd1);

assign xor_ln895_28_fu_992_p2 = (deleted_zeros_7_fu_954_p2 ^ 1'd1);

assign xor_ln895_29_fu_1004_p2 = (p_Result_48_fu_862_p3 ^ 1'd1);

assign xor_ln895_30_fu_1205_p2 = (deleted_zeros_8_fu_1167_p2 ^ 1'd1);

assign xor_ln895_31_fu_1217_p2 = (p_Result_51_fu_1079_p3 ^ 1'd1);

assign xor_ln895_32_fu_1401_p2 = (deleted_zeros_9_fu_1363_p2 ^ 1'd1);

assign xor_ln895_33_fu_1413_p2 = (p_Result_54_fu_1275_p3 ^ 1'd1);

assign xor_ln895_34_fu_1597_p2 = (deleted_zeros_10_fu_1559_p2 ^ 1'd1);

assign xor_ln895_35_fu_1609_p2 = (p_Result_57_fu_1471_p3 ^ 1'd1);

assign xor_ln895_36_fu_1810_p2 = (deleted_zeros_11_fu_1772_p2 ^ 1'd1);

assign xor_ln895_37_fu_1822_p2 = (p_Result_60_fu_1684_p3 ^ 1'd1);

assign xor_ln895_38_fu_2006_p2 = (deleted_zeros_12_fu_1968_p2 ^ 1'd1);

assign xor_ln895_39_fu_2018_p2 = (p_Result_63_fu_1880_p3 ^ 1'd1);

assign xor_ln895_40_fu_2202_p2 = (deleted_zeros_13_fu_2164_p2 ^ 1'd1);

assign xor_ln895_41_fu_2214_p2 = (p_Result_66_fu_2076_p3 ^ 1'd1);

assign xor_ln895_42_fu_2334_p2 = (p_Result_69_fu_2312_p3 ^ 1'd1);

assign xor_ln895_43_fu_2432_p2 = (p_Result_71_fu_2410_p3 ^ 1'd1);

assign xor_ln895_44_fu_2528_p2 = (p_Result_73_fu_2507_p3 ^ 1'd1);

assign xor_ln895_45_fu_2624_p2 = (p_Result_75_fu_2603_p3 ^ 1'd1);

assign xor_ln895_46_fu_2724_p2 = (p_Result_77_fu_2703_p3 ^ 1'd1);

assign xor_ln895_47_fu_2824_p2 = (p_Result_79_fu_2803_p3 ^ 1'd1);

assign xor_ln895_48_fu_2924_p2 = (p_Result_81_fu_2903_p3 ^ 1'd1);

assign xor_ln895_49_fu_3024_p2 = (p_Result_83_fu_3003_p3 ^ 1'd1);

assign xor_ln895_50_fu_3124_p2 = (p_Result_85_fu_3103_p3 ^ 1'd1);

assign xor_ln895_51_fu_784_p2 = (or_ln888_fu_740_p2 ^ Range2_all_ones_17_fu_726_p3);

assign xor_ln895_fu_594_p2 = (deleted_zeros_fu_552_p3 ^ 1'd1);

assign xor_ln896_25_fu_618_p2 = (deleted_ones_fu_580_p3 ^ 1'd1);

assign xor_ln896_26_fu_720_p2 = (p_Result_47_fu_712_p3 ^ 1'd1);

assign xor_ln896_27_fu_814_p2 = (deleted_ones_17_fu_766_p2 ^ 1'd1);

assign xor_ln896_28_fu_922_p2 = (p_Result_50_fu_914_p3 ^ 1'd1);

assign xor_ln896_29_fu_1016_p2 = (deleted_ones_18_fu_980_p2 ^ 1'd1);

assign xor_ln896_30_fu_1135_p2 = (p_Result_53_fu_1127_p3 ^ 1'd1);

assign xor_ln896_31_fu_1229_p2 = (deleted_ones_19_fu_1193_p2 ^ 1'd1);

assign xor_ln896_32_fu_1331_p2 = (p_Result_56_fu_1323_p3 ^ 1'd1);

assign xor_ln896_33_fu_1425_p2 = (deleted_ones_20_fu_1389_p2 ^ 1'd1);

assign xor_ln896_34_fu_1527_p2 = (p_Result_59_fu_1519_p3 ^ 1'd1);

assign xor_ln896_35_fu_1621_p2 = (deleted_ones_21_fu_1585_p2 ^ 1'd1);

assign xor_ln896_36_fu_1740_p2 = (p_Result_62_fu_1732_p3 ^ 1'd1);

assign xor_ln896_37_fu_1834_p2 = (deleted_ones_22_fu_1798_p2 ^ 1'd1);

assign xor_ln896_38_fu_1936_p2 = (p_Result_65_fu_1928_p3 ^ 1'd1);

assign xor_ln896_39_fu_2030_p2 = (deleted_ones_23_fu_1994_p2 ^ 1'd1);

assign xor_ln896_40_fu_2132_p2 = (p_Result_68_fu_2124_p3 ^ 1'd1);

assign xor_ln896_41_fu_2226_p2 = (deleted_ones_24_fu_2190_p2 ^ 1'd1);

assign xor_ln896_42_fu_2346_p2 = (p_Result_70_fu_2326_p3 ^ 1'd1);

assign xor_ln896_43_fu_2444_p2 = (p_Result_72_fu_2424_p3 ^ 1'd1);

assign xor_ln896_44_fu_2540_p2 = (p_Result_74_fu_2520_p3 ^ 1'd1);

assign xor_ln896_45_fu_2636_p2 = (p_Result_76_fu_2616_p3 ^ 1'd1);

assign xor_ln896_46_fu_2736_p2 = (p_Result_78_fu_2716_p3 ^ 1'd1);

assign xor_ln896_47_fu_2836_p2 = (p_Result_80_fu_2816_p3 ^ 1'd1);

assign xor_ln896_48_fu_2936_p2 = (p_Result_82_fu_2916_p3 ^ 1'd1);

assign xor_ln896_49_fu_3036_p2 = (p_Result_84_fu_3016_p3 ^ 1'd1);

assign xor_ln896_50_fu_3136_p2 = (p_Result_86_fu_3116_p3 ^ 1'd1);

assign xor_ln896_51_fu_630_p2 = (or_ln896_fu_624_p2 ^ and_ln891_fu_588_p2);

assign xor_ln896_52_fu_826_p2 = (or_ln896_7_fu_820_p2 ^ and_ln891_7_fu_778_p2);

assign xor_ln896_53_fu_1028_p2 = (or_ln896_8_fu_1022_p2 ^ and_ln891_8_fu_986_p2);

assign xor_ln896_54_fu_1241_p2 = (or_ln896_9_fu_1235_p2 ^ and_ln891_9_fu_1199_p2);

assign xor_ln896_55_fu_1437_p2 = (or_ln896_10_fu_1431_p2 ^ and_ln891_10_fu_1395_p2);

assign xor_ln896_56_fu_1633_p2 = (or_ln896_11_fu_1627_p2 ^ and_ln891_11_fu_1591_p2);

assign xor_ln896_57_fu_1846_p2 = (or_ln896_12_fu_1840_p2 ^ and_ln891_12_fu_1804_p2);

assign xor_ln896_58_fu_2042_p2 = (or_ln896_13_fu_2036_p2 ^ and_ln891_13_fu_2000_p2);

assign xor_ln896_59_fu_2238_p2 = (or_ln896_14_fu_2232_p2 ^ and_ln891_14_fu_2196_p2);

assign xor_ln896_fu_510_p2 = (p_Result_44_fu_502_p3 ^ 1'd1);

assign zext_ln377_10_fu_1313_p1 = tmp_92_fu_1305_p3;

assign zext_ln377_11_fu_1509_p1 = tmp_98_fu_1501_p3;

assign zext_ln377_12_fu_1722_p1 = tmp_104_fu_1714_p3;

assign zext_ln377_13_fu_1918_p1 = tmp_110_fu_1910_p3;

assign zext_ln377_14_fu_2114_p1 = tmp_116_fu_2106_p3;

assign zext_ln377_7_fu_702_p1 = tmp_74_fu_694_p3;

assign zext_ln377_8_fu_900_p1 = tmp_80_fu_892_p3;

assign zext_ln377_9_fu_1117_p1 = tmp_86_fu_1109_p3;

assign zext_ln377_fu_492_p1 = tmp_68_fu_484_p3;

endmodule //motor_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config2_s
