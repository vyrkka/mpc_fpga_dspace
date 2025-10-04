module motorB_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config11_s (
        ap_clk,
        ap_rst,
        p_read,
        p_read1,
        p_read2,
        p_read3,
        p_read4,
        p_read5,
        p_read6,
        p_read7,
        p_read8,
        ap_return,
        ap_ce
);


input   ap_clk;
input   ap_rst;
input  [31:0] p_read;
input  [31:0] p_read1;
input  [31:0] p_read2;
input  [31:0] p_read3;
input  [31:0] p_read4;
input  [31:0] p_read5;
input  [31:0] p_read6;
input  [31:0] p_read7;
input  [31:0] p_read8;
output  [31:0] ap_return;
input   ap_ce;

reg[31:0] ap_return;

wire   [55:0] r_V_fu_175_p2;
reg   [55:0] r_V_reg_459;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_pp0_stage0_11001;
wire   [43:0] r_V_204_fu_170_p2;
reg   [43:0] r_V_204_reg_463;
wire   [43:0] r_V_205_fu_174_p2;
reg   [43:0] r_V_205_reg_467;
wire   [41:0] r_V_206_fu_171_p2;
reg   [41:0] r_V_206_reg_471;
wire   [42:0] r_V_207_fu_172_p2;
reg   [42:0] r_V_207_reg_475;
wire   [42:0] r_V_208_fu_177_p2;
reg   [42:0] r_V_208_reg_479;
wire   [42:0] r_V_209_fu_178_p2;
reg   [42:0] r_V_209_reg_483;
wire   [56:0] r_V_210_fu_173_p2;
reg   [56:0] r_V_210_reg_511;
wire   [56:0] r_V_211_fu_176_p2;
reg   [56:0] r_V_211_reg_515;
reg   [31:0] p_read827_reg_3141;
reg   [31:0] p_read827_reg_3141_pp0_iter1_reg;
reg  signed [31:0] p_read827_reg_3141_pp0_iter2_reg;
reg   [31:0] p_read726_reg_3146;
reg   [31:0] p_read726_reg_3146_pp0_iter1_reg;
reg  signed [31:0] p_read726_reg_3146_pp0_iter2_reg;
reg   [0:0] p_Result_s_reg_3151;
reg   [0:0] p_Result_941_reg_3157;
wire   [31:0] p_Val2_941_fu_563_p2;
reg   [31:0] p_Val2_941_reg_3163;
reg   [0:0] p_Result_942_reg_3168;
reg   [0:0] Range2_all_ones_reg_3175;
reg   [0:0] p_Result_943_reg_3182;
reg   [19:0] p_Val2_943_reg_3188;
reg   [0:0] p_Result_944_reg_3193;
reg   [0:0] tmp_1503_reg_3199;
reg   [0:0] Range2_all_ones_185_reg_3204;
reg   [0:0] p_Result_946_reg_3211;
reg   [19:0] p_Val2_946_reg_3217;
reg   [0:0] p_Result_947_reg_3222;
reg   [0:0] tmp_1509_reg_3228;
reg   [0:0] Range2_all_ones_186_reg_3233;
reg   [0:0] p_Result_949_reg_3240;
reg   [17:0] p_Val2_949_reg_3246;
reg   [0:0] p_Result_950_reg_3251;
reg   [0:0] tmp_1515_reg_3257;
reg   [0:0] Range2_all_ones_187_reg_3262;
reg   [0:0] p_Result_952_reg_3269;
reg   [18:0] p_Val2_952_reg_3275;
reg   [0:0] p_Result_953_reg_3280;
reg   [0:0] tmp_1521_reg_3286;
reg   [0:0] Range2_all_ones_188_reg_3291;
reg   [0:0] p_Result_955_reg_3298;
reg   [18:0] p_Val2_955_reg_3304;
reg   [0:0] p_Result_956_reg_3309;
reg   [0:0] tmp_1527_reg_3315;
reg   [0:0] Range2_all_ones_189_reg_3320;
reg   [0:0] p_Result_958_reg_3327;
reg   [18:0] p_Val2_958_reg_3333;
reg   [0:0] p_Result_959_reg_3338;
reg   [0:0] tmp_1533_reg_3344;
reg   [0:0] Range2_all_ones_190_reg_3349;
wire  signed [20:0] p_Val2_947_fu_1143_p2;
reg  signed [20:0] p_Val2_947_reg_3356;
wire   [0:0] overflow_377_fu_1231_p2;
reg   [0:0] overflow_377_reg_3361;
wire   [0:0] or_ln346_188_fu_1260_p2;
reg   [0:0] or_ln346_188_reg_3366;
wire  signed [18:0] p_Val2_950_fu_1272_p2;
reg  signed [18:0] p_Val2_950_reg_3371;
wire   [0:0] overflow_378_fu_1360_p2;
reg   [0:0] overflow_378_reg_3376;
wire   [0:0] or_ln346_189_fu_1389_p2;
reg   [0:0] or_ln346_189_reg_3381;
wire  signed [19:0] p_Val2_953_fu_1401_p2;
reg  signed [19:0] p_Val2_953_reg_3386;
wire   [0:0] overflow_379_fu_1489_p2;
reg   [0:0] overflow_379_reg_3391;
wire   [0:0] or_ln346_190_fu_1518_p2;
reg   [0:0] or_ln346_190_reg_3396;
wire  signed [19:0] p_Val2_956_fu_1530_p2;
reg  signed [19:0] p_Val2_956_reg_3401;
reg  signed [19:0] p_Val2_956_reg_3401_pp0_iter2_reg;
wire   [0:0] overflow_380_fu_1618_p2;
reg   [0:0] overflow_380_reg_3406;
reg   [0:0] overflow_380_reg_3406_pp0_iter2_reg;
wire   [0:0] or_ln346_191_fu_1647_p2;
reg   [0:0] or_ln346_191_reg_3411;
reg   [0:0] or_ln346_191_reg_3411_pp0_iter2_reg;
wire  signed [19:0] p_Val2_959_fu_1659_p2;
reg  signed [19:0] p_Val2_959_reg_3416;
reg  signed [19:0] p_Val2_959_reg_3416_pp0_iter2_reg;
wire   [0:0] overflow_381_fu_1747_p2;
reg   [0:0] overflow_381_reg_3421;
reg   [0:0] overflow_381_reg_3421_pp0_iter2_reg;
wire   [0:0] or_ln346_192_fu_1776_p2;
reg   [0:0] or_ln346_192_reg_3426;
reg   [0:0] or_ln346_192_reg_3426_pp0_iter2_reg;
wire  signed [31:0] lhs_160_fu_1974_p3;
reg  signed [31:0] lhs_160_reg_3431;
reg   [0:0] p_Result_975_reg_3437;
wire   [31:0] p_Val2_975_fu_2257_p2;
reg   [31:0] p_Val2_975_reg_3444;
reg   [0:0] p_Result_976_reg_3450;
reg   [0:0] p_Result_961_reg_3457;
reg   [0:0] p_Result_962_reg_3463;
wire   [31:0] p_Val2_962_fu_2347_p2;
reg   [31:0] p_Val2_962_reg_3469;
reg   [0:0] p_Result_963_reg_3474;
reg   [0:0] Range2_all_ones_191_reg_3481;
reg   [0:0] p_Result_964_reg_3488;
reg   [31:0] p_Val2_964_reg_3494;
reg   [0:0] p_Result_965_reg_3499;
reg   [0:0] tmp_1545_reg_3505;
reg   [0:0] Range2_all_ones_192_reg_3510;
wire  signed [31:0] lhs_165_fu_2669_p3;
reg  signed [31:0] lhs_165_reg_3517;
wire   [11:0] r_V_204_fu_170_p1;
wire    ap_block_pp0_stage0;
wire  signed [9:0] r_V_206_fu_171_p1;
wire   [10:0] r_V_207_fu_172_p1;
wire   [25:0] r_V_210_fu_173_p1;
wire   [11:0] r_V_205_fu_174_p1;
wire  signed [24:0] r_V_fu_175_p1;
wire   [25:0] r_V_211_fu_176_p1;
wire  signed [10:0] r_V_208_fu_177_p1;
wire  signed [10:0] r_V_209_fu_178_p1;
wire   [0:0] tmp_fu_551_p3;
wire   [31:0] zext_ln377_fu_559_p1;
wire   [31:0] p_Val2_940_fu_533_p4;
wire   [0:0] xor_ln896_fu_867_p2;
wire   [0:0] xor_ln888_fu_877_p2;
wire   [0:0] or_ln888_fu_882_p2;
wire   [0:0] tmp_1500_fu_892_p3;
wire   [0:0] xor_ln890_fu_900_p2;
wire   [0:0] or_ln890_fu_906_p2;
wire   [0:0] carry_373_fu_872_p2;
wire   [0:0] deleted_zeros_fu_887_p2;
wire   [0:0] xor_ln895_fu_922_p2;
wire   [0:0] or_ln895_fu_928_p2;
wire   [0:0] xor_ln895_565_fu_933_p2;
wire   [0:0] deleted_ones_fu_912_p2;
wire   [0:0] xor_ln896_565_fu_944_p2;
wire   [0:0] and_ln891_fu_917_p2;
wire   [0:0] or_ln896_fu_950_p2;
wire   [0:0] xor_ln896_593_fu_956_p2;
wire   [0:0] overflow_fu_938_p2;
wire   [0:0] underflow_fu_962_p2;
wire   [0:0] or_ln346_fu_975_p2;
wire   [31:0] select_ln346_270_fu_967_p3;
wire   [20:0] zext_ln377_187_fu_991_p1;
wire  signed [20:0] sext_ln823_fu_988_p1;
wire  signed [20:0] p_Val2_944_fu_994_p2;
wire   [0:0] p_Result_945_fu_1004_p3;
wire   [0:0] xor_ln896_566_fu_1012_p2;
wire   [0:0] xor_ln888_374_fu_1023_p2;
wire   [0:0] or_ln888_187_fu_1028_p2;
wire   [0:0] tmp_1506_fu_1039_p3;
wire   [0:0] xor_ln890_185_fu_1047_p2;
wire   [0:0] or_ln890_187_fu_1053_p2;
wire   [0:0] carry_375_fu_1018_p2;
wire   [0:0] deleted_zeros_184_fu_1034_p2;
wire   [0:0] xor_ln895_566_fu_1069_p2;
wire   [0:0] or_ln895_187_fu_1075_p2;
wire   [0:0] xor_ln895_567_fu_1081_p2;
wire   [0:0] deleted_ones_376_fu_1059_p2;
wire   [0:0] xor_ln896_567_fu_1092_p2;
wire   [0:0] and_ln891_187_fu_1064_p2;
wire   [0:0] or_ln896_187_fu_1098_p2;
wire   [0:0] xor_ln896_594_fu_1104_p2;
wire   [0:0] overflow_376_fu_1086_p2;
wire   [0:0] underflow_376_fu_1110_p2;
wire   [0:0] or_ln346_187_fu_1123_p2;
wire   [31:0] select_ln346_271_fu_1115_p3;
wire  signed [31:0] sext_ln856_fu_1000_p1;
wire   [20:0] zext_ln377_188_fu_1140_p1;
wire  signed [20:0] sext_ln823_178_fu_1137_p1;
wire   [0:0] p_Result_948_fu_1149_p3;
wire   [0:0] xor_ln896_568_fu_1157_p2;
wire   [0:0] xor_ln888_376_fu_1168_p2;
wire   [0:0] or_ln888_188_fu_1173_p2;
wire   [0:0] tmp_1512_fu_1184_p3;
wire   [0:0] xor_ln890_186_fu_1192_p2;
wire   [0:0] or_ln890_188_fu_1198_p2;
wire   [0:0] carry_377_fu_1163_p2;
wire   [0:0] deleted_zeros_185_fu_1179_p2;
wire   [0:0] xor_ln895_568_fu_1214_p2;
wire   [0:0] or_ln895_188_fu_1220_p2;
wire   [0:0] xor_ln895_569_fu_1226_p2;
wire   [0:0] deleted_ones_377_fu_1204_p2;
wire   [0:0] xor_ln896_569_fu_1237_p2;
wire   [0:0] and_ln891_188_fu_1209_p2;
wire   [0:0] or_ln896_188_fu_1243_p2;
wire   [0:0] xor_ln896_595_fu_1249_p2;
wire   [0:0] underflow_377_fu_1255_p2;
wire   [18:0] zext_ln377_189_fu_1269_p1;
wire  signed [18:0] sext_ln823_179_fu_1266_p1;
wire   [0:0] p_Result_951_fu_1278_p3;
wire   [0:0] xor_ln896_570_fu_1286_p2;
wire   [0:0] xor_ln888_378_fu_1297_p2;
wire   [0:0] or_ln888_189_fu_1302_p2;
wire   [0:0] tmp_1518_fu_1313_p3;
wire   [0:0] xor_ln890_187_fu_1321_p2;
wire   [0:0] or_ln890_189_fu_1327_p2;
wire   [0:0] carry_379_fu_1292_p2;
wire   [0:0] deleted_zeros_186_fu_1308_p2;
wire   [0:0] xor_ln895_570_fu_1343_p2;
wire   [0:0] or_ln895_189_fu_1349_p2;
wire   [0:0] xor_ln895_571_fu_1355_p2;
wire   [0:0] deleted_ones_378_fu_1333_p2;
wire   [0:0] xor_ln896_571_fu_1366_p2;
wire   [0:0] and_ln891_189_fu_1338_p2;
wire   [0:0] or_ln896_189_fu_1372_p2;
wire   [0:0] xor_ln896_596_fu_1378_p2;
wire   [0:0] underflow_378_fu_1384_p2;
wire   [19:0] zext_ln377_190_fu_1398_p1;
wire  signed [19:0] sext_ln823_180_fu_1395_p1;
wire   [0:0] p_Result_954_fu_1407_p3;
wire   [0:0] xor_ln896_572_fu_1415_p2;
wire   [0:0] xor_ln888_380_fu_1426_p2;
wire   [0:0] or_ln888_190_fu_1431_p2;
wire   [0:0] tmp_1524_fu_1442_p3;
wire   [0:0] xor_ln890_188_fu_1450_p2;
wire   [0:0] or_ln890_190_fu_1456_p2;
wire   [0:0] carry_381_fu_1421_p2;
wire   [0:0] deleted_zeros_187_fu_1437_p2;
wire   [0:0] xor_ln895_572_fu_1472_p2;
wire   [0:0] or_ln895_190_fu_1478_p2;
wire   [0:0] xor_ln895_573_fu_1484_p2;
wire   [0:0] deleted_ones_379_fu_1462_p2;
wire   [0:0] xor_ln896_573_fu_1495_p2;
wire   [0:0] and_ln891_190_fu_1467_p2;
wire   [0:0] or_ln896_190_fu_1501_p2;
wire   [0:0] xor_ln896_597_fu_1507_p2;
wire   [0:0] underflow_379_fu_1513_p2;
wire   [19:0] zext_ln377_191_fu_1527_p1;
wire  signed [19:0] sext_ln823_181_fu_1524_p1;
wire   [0:0] p_Result_957_fu_1536_p3;
wire   [0:0] xor_ln896_574_fu_1544_p2;
wire   [0:0] xor_ln888_382_fu_1555_p2;
wire   [0:0] or_ln888_191_fu_1560_p2;
wire   [0:0] tmp_1530_fu_1571_p3;
wire   [0:0] xor_ln890_189_fu_1579_p2;
wire   [0:0] or_ln890_191_fu_1585_p2;
wire   [0:0] carry_383_fu_1550_p2;
wire   [0:0] deleted_zeros_188_fu_1566_p2;
wire   [0:0] xor_ln895_574_fu_1601_p2;
wire   [0:0] or_ln895_191_fu_1607_p2;
wire   [0:0] xor_ln895_575_fu_1613_p2;
wire   [0:0] deleted_ones_380_fu_1591_p2;
wire   [0:0] xor_ln896_575_fu_1624_p2;
wire   [0:0] and_ln891_191_fu_1596_p2;
wire   [0:0] or_ln896_191_fu_1630_p2;
wire   [0:0] xor_ln896_598_fu_1636_p2;
wire   [0:0] underflow_380_fu_1642_p2;
wire   [19:0] zext_ln377_192_fu_1656_p1;
wire  signed [19:0] sext_ln823_182_fu_1653_p1;
wire   [0:0] p_Result_960_fu_1665_p3;
wire   [0:0] xor_ln896_576_fu_1673_p2;
wire   [0:0] xor_ln888_384_fu_1684_p2;
wire   [0:0] or_ln888_192_fu_1689_p2;
wire   [0:0] tmp_1536_fu_1700_p3;
wire   [0:0] xor_ln890_190_fu_1708_p2;
wire   [0:0] or_ln890_192_fu_1714_p2;
wire   [0:0] carry_385_fu_1679_p2;
wire   [0:0] deleted_zeros_189_fu_1695_p2;
wire   [0:0] xor_ln895_576_fu_1730_p2;
wire   [0:0] or_ln895_192_fu_1736_p2;
wire   [0:0] xor_ln895_577_fu_1742_p2;
wire   [0:0] deleted_ones_381_fu_1720_p2;
wire   [0:0] xor_ln896_577_fu_1753_p2;
wire   [0:0] and_ln891_192_fu_1725_p2;
wire   [0:0] or_ln896_192_fu_1759_p2;
wire   [0:0] xor_ln896_599_fu_1765_p2;
wire   [0:0] underflow_381_fu_1771_p2;
wire  signed [31:0] rhs_fu_981_p3;
wire  signed [32:0] sext_ln813_fu_1782_p1;
wire   [32:0] ret_V_fu_1786_p2;
wire   [31:0] p_Val2_967_fu_1800_p2;
wire   [0:0] p_Result_967_fu_1792_p3;
wire   [0:0] p_Result_968_fu_1806_p3;
wire   [0:0] xor_ln895_582_fu_1814_p2;
wire   [0:0] xor_ln896_582_fu_1826_p2;
wire   [0:0] xor_ln302_fu_1838_p2;
wire   [0:0] overflow_384_fu_1820_p2;
wire   [0:0] xor_ln302_376_fu_1844_p2;
wire   [0:0] underflow_384_fu_1832_p2;
wire   [0:0] or_ln302_fu_1850_p2;
wire   [31:0] select_ln302_fu_1856_p3;
wire   [31:0] select_ln350_fu_1864_p3;
wire  signed [31:0] lhs_fu_1872_p3;
wire  signed [31:0] rhs_187_fu_1129_p3;
wire  signed [32:0] sext_ln813_350_fu_1884_p1;
wire  signed [32:0] sext_ln813_349_fu_1880_p1;
wire   [32:0] ret_V_187_fu_1888_p2;
wire   [31:0] p_Val2_969_fu_1902_p2;
wire   [0:0] p_Result_969_fu_1894_p3;
wire   [0:0] p_Result_970_fu_1908_p3;
wire   [0:0] xor_ln895_583_fu_1916_p2;
wire   [0:0] xor_ln896_583_fu_1928_p2;
wire   [0:0] xor_ln302_377_fu_1940_p2;
wire   [0:0] overflow_385_fu_1922_p2;
wire   [0:0] xor_ln302_378_fu_1946_p2;
wire   [0:0] underflow_385_fu_1934_p2;
wire   [0:0] or_ln302_187_fu_1952_p2;
wire   [31:0] select_ln302_377_fu_1958_p3;
wire   [31:0] select_ln350_187_fu_1966_p3;
wire   [31:0] select_ln346_272_fu_1985_p3;
wire  signed [31:0] sext_ln856_178_fu_1982_p1;
wire   [31:0] select_ln346_273_fu_2002_p3;
wire  signed [31:0] sext_ln856_179_fu_1999_p1;
wire   [31:0] select_ln346_274_fu_2019_p3;
wire  signed [31:0] sext_ln856_180_fu_2016_p1;
wire  signed [31:0] rhs_188_fu_1992_p3;
wire  signed [32:0] sext_ln813_352_fu_2036_p1;
wire  signed [32:0] sext_ln813_351_fu_2033_p1;
wire   [32:0] ret_V_188_fu_2040_p2;
wire   [31:0] p_Val2_971_fu_2054_p2;
wire   [0:0] p_Result_971_fu_2046_p3;
wire   [0:0] p_Result_972_fu_2059_p3;
wire   [0:0] xor_ln895_584_fu_2067_p2;
wire   [0:0] xor_ln896_584_fu_2079_p2;
wire   [0:0] xor_ln302_379_fu_2091_p2;
wire   [0:0] overflow_386_fu_2073_p2;
wire   [0:0] xor_ln302_380_fu_2097_p2;
wire   [0:0] underflow_386_fu_2085_p2;
wire   [0:0] or_ln302_188_fu_2103_p2;
wire   [31:0] select_ln302_379_fu_2109_p3;
wire   [31:0] select_ln350_188_fu_2117_p3;
wire  signed [31:0] lhs_161_fu_2125_p3;
wire  signed [31:0] rhs_189_fu_2009_p3;
wire  signed [32:0] sext_ln813_354_fu_2137_p1;
wire  signed [32:0] sext_ln813_353_fu_2133_p1;
wire   [32:0] ret_V_189_fu_2141_p2;
wire   [31:0] p_Val2_973_fu_2155_p2;
wire   [0:0] p_Result_973_fu_2147_p3;
wire   [0:0] p_Result_974_fu_2161_p3;
wire   [0:0] xor_ln895_585_fu_2169_p2;
wire   [0:0] xor_ln896_585_fu_2181_p2;
wire   [0:0] xor_ln302_381_fu_2193_p2;
wire   [0:0] overflow_387_fu_2175_p2;
wire   [0:0] xor_ln302_382_fu_2199_p2;
wire   [0:0] underflow_387_fu_2187_p2;
wire   [0:0] or_ln302_189_fu_2205_p2;
wire   [31:0] select_ln302_381_fu_2211_p3;
wire   [31:0] select_ln350_189_fu_2219_p3;
wire  signed [31:0] lhs_162_fu_2227_p3;
wire  signed [31:0] rhs_190_fu_2026_p3;
wire  signed [32:0] sext_ln813_356_fu_2239_p1;
wire  signed [32:0] sext_ln813_355_fu_2235_p1;
wire   [32:0] ret_V_190_fu_2243_p2;
wire   [31:0] select_ln346_275_fu_2274_p3;
wire  signed [31:0] sext_ln856_181_fu_2271_p1;
wire   [31:0] select_ln346_276_fu_2291_p3;
wire  signed [31:0] sext_ln856_182_fu_2288_p1;
wire   [0:0] tmp_1539_fu_2335_p3;
wire   [31:0] zext_ln377_193_fu_2343_p1;
wire   [31:0] p_Val2_961_fu_2317_p4;
wire   [0:0] xor_ln895_586_fu_2415_p2;
wire   [0:0] xor_ln896_586_fu_2425_p2;
wire   [0:0] xor_ln302_383_fu_2435_p2;
wire   [0:0] overflow_388_fu_2420_p2;
wire   [0:0] xor_ln302_384_fu_2439_p2;
wire   [0:0] underflow_388_fu_2430_p2;
wire   [0:0] or_ln302_190_fu_2445_p2;
wire   [31:0] select_ln302_383_fu_2451_p3;
wire   [31:0] select_ln350_190_fu_2458_p3;
wire  signed [31:0] lhs_163_fu_2465_p3;
wire  signed [31:0] rhs_191_fu_2281_p3;
wire  signed [32:0] sext_ln813_358_fu_2477_p1;
wire  signed [32:0] sext_ln813_357_fu_2473_p1;
wire   [32:0] ret_V_191_fu_2481_p2;
wire   [31:0] p_Val2_977_fu_2495_p2;
wire   [0:0] p_Result_977_fu_2487_p3;
wire   [0:0] p_Result_978_fu_2501_p3;
wire   [0:0] xor_ln895_587_fu_2509_p2;
wire   [0:0] xor_ln896_587_fu_2521_p2;
wire   [0:0] xor_ln302_385_fu_2533_p2;
wire   [0:0] overflow_389_fu_2515_p2;
wire   [0:0] xor_ln302_386_fu_2539_p2;
wire   [0:0] underflow_389_fu_2527_p2;
wire   [0:0] or_ln302_191_fu_2545_p2;
wire   [31:0] select_ln302_385_fu_2551_p3;
wire   [31:0] select_ln350_191_fu_2559_p3;
wire  signed [31:0] lhs_164_fu_2567_p3;
wire  signed [31:0] rhs_192_fu_2298_p3;
wire  signed [32:0] sext_ln813_360_fu_2579_p1;
wire  signed [32:0] sext_ln813_359_fu_2575_p1;
wire   [32:0] ret_V_192_fu_2583_p2;
wire   [31:0] p_Val2_979_fu_2597_p2;
wire   [0:0] p_Result_979_fu_2589_p3;
wire   [0:0] p_Result_980_fu_2603_p3;
wire   [0:0] xor_ln895_588_fu_2611_p2;
wire   [0:0] xor_ln896_588_fu_2623_p2;
wire   [0:0] xor_ln302_387_fu_2635_p2;
wire   [0:0] overflow_390_fu_2617_p2;
wire   [0:0] xor_ln302_388_fu_2641_p2;
wire   [0:0] underflow_390_fu_2629_p2;
wire   [0:0] or_ln302_192_fu_2647_p2;
wire   [31:0] select_ln302_387_fu_2653_p3;
wire   [31:0] select_ln350_192_fu_2661_p3;
wire   [0:0] xor_ln896_578_fu_2677_p2;
wire   [0:0] xor_ln888_386_fu_2687_p2;
wire   [0:0] or_ln888_193_fu_2692_p2;
wire   [0:0] tmp_1542_fu_2702_p3;
wire   [0:0] xor_ln890_191_fu_2710_p2;
wire   [0:0] or_ln890_193_fu_2716_p2;
wire   [0:0] carry_387_fu_2682_p2;
wire   [0:0] deleted_zeros_190_fu_2697_p2;
wire   [0:0] xor_ln895_578_fu_2732_p2;
wire   [0:0] or_ln895_193_fu_2738_p2;
wire   [0:0] xor_ln895_579_fu_2743_p2;
wire   [0:0] deleted_ones_382_fu_2722_p2;
wire   [0:0] xor_ln896_579_fu_2754_p2;
wire   [0:0] and_ln891_193_fu_2727_p2;
wire   [0:0] or_ln896_193_fu_2760_p2;
wire   [0:0] xor_ln896_600_fu_2766_p2;
wire   [0:0] overflow_382_fu_2748_p2;
wire   [0:0] underflow_382_fu_2772_p2;
wire   [0:0] or_ln346_193_fu_2785_p2;
wire   [31:0] select_ln346_277_fu_2777_p3;
wire   [31:0] zext_ln377_194_fu_2798_p1;
wire   [31:0] p_Val2_965_fu_2801_p2;
wire   [0:0] p_Result_966_fu_2806_p3;
wire   [0:0] xor_ln896_580_fu_2814_p2;
wire   [0:0] xor_ln888_388_fu_2825_p2;
wire   [0:0] or_ln888_194_fu_2830_p2;
wire   [0:0] tmp_1548_fu_2841_p3;
wire   [0:0] xor_ln890_192_fu_2849_p2;
wire   [0:0] or_ln890_194_fu_2855_p2;
wire   [0:0] carry_389_fu_2820_p2;
wire   [0:0] deleted_zeros_191_fu_2836_p2;
wire   [0:0] xor_ln895_580_fu_2871_p2;
wire   [0:0] or_ln895_194_fu_2877_p2;
wire   [0:0] xor_ln895_581_fu_2883_p2;
wire   [0:0] deleted_ones_383_fu_2861_p2;
wire   [0:0] xor_ln896_581_fu_2894_p2;
wire   [0:0] and_ln891_194_fu_2866_p2;
wire   [0:0] or_ln896_194_fu_2900_p2;
wire   [0:0] xor_ln896_601_fu_2906_p2;
wire   [0:0] overflow_383_fu_2888_p2;
wire   [0:0] underflow_383_fu_2912_p2;
wire   [0:0] or_ln346_194_fu_2925_p2;
wire   [31:0] select_ln346_278_fu_2917_p3;
wire  signed [31:0] rhs_193_fu_2791_p3;
wire  signed [32:0] sext_ln813_362_fu_2942_p1;
wire  signed [32:0] sext_ln813_361_fu_2939_p1;
wire   [32:0] ret_V_193_fu_2946_p2;
wire   [31:0] p_Val2_981_fu_2960_p2;
wire   [0:0] p_Result_981_fu_2952_p3;
wire   [0:0] p_Result_982_fu_2965_p3;
wire   [0:0] xor_ln895_589_fu_2973_p2;
wire   [0:0] xor_ln896_589_fu_2985_p2;
wire   [0:0] xor_ln302_389_fu_2997_p2;
wire   [0:0] overflow_391_fu_2979_p2;
wire   [0:0] xor_ln302_390_fu_3003_p2;
wire   [0:0] underflow_391_fu_2991_p2;
wire   [0:0] or_ln302_193_fu_3009_p2;
wire   [31:0] select_ln302_389_fu_3015_p3;
wire   [31:0] select_ln350_193_fu_3023_p3;
wire  signed [31:0] lhs_166_fu_3031_p3;
wire  signed [31:0] rhs_194_fu_2931_p3;
wire  signed [32:0] sext_ln813_364_fu_3043_p1;
wire  signed [32:0] sext_ln813_363_fu_3039_p1;
wire   [32:0] ret_V_194_fu_3047_p2;
wire   [31:0] p_Val2_983_fu_3061_p2;
wire   [0:0] p_Result_983_fu_3053_p3;
wire   [0:0] p_Result_984_fu_3067_p3;
wire   [0:0] xor_ln895_590_fu_3075_p2;
wire   [0:0] xor_ln896_590_fu_3087_p2;
wire   [0:0] xor_ln302_391_fu_3099_p2;
wire   [0:0] overflow_392_fu_3081_p2;
wire   [0:0] xor_ln302_392_fu_3105_p2;
wire   [0:0] underflow_392_fu_3093_p2;
wire   [0:0] or_ln302_194_fu_3111_p2;
wire   [31:0] select_ln302_391_fu_3117_p3;
wire   [31:0] select_ln350_194_fu_3125_p3;
wire   [31:0] select_ln302_392_fu_3133_p3;
reg    ap_ce_reg;
reg  signed [31:0] p_read_int_reg;
reg  signed [31:0] p_read1_int_reg;
reg  signed [31:0] p_read2_int_reg;
reg  signed [31:0] p_read3_int_reg;
reg  signed [31:0] p_read4_int_reg;
reg  signed [31:0] p_read5_int_reg;
reg  signed [31:0] p_read6_int_reg;
reg   [31:0] p_read7_int_reg;
reg   [31:0] p_read8_int_reg;
reg   [31:0] ap_return_int_reg;

motorB_mul_32s_12ns_44_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 12 ),
    .dout_WIDTH( 44 ))
mul_32s_12ns_44_1_0_U249(
    .din0(p_read1_int_reg),
    .din1(r_V_204_fu_170_p1),
    .dout(r_V_204_fu_170_p2)
);

motorB_mul_32s_10s_42_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 10 ),
    .dout_WIDTH( 42 ))
mul_32s_10s_42_1_0_U250(
    .din0(p_read3_int_reg),
    .din1(r_V_206_fu_171_p1),
    .dout(r_V_206_fu_171_p2)
);

motorB_mul_32s_11ns_43_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 11 ),
    .dout_WIDTH( 43 ))
mul_32s_11ns_43_1_0_U251(
    .din0(p_read4_int_reg),
    .din1(r_V_207_fu_172_p1),
    .dout(r_V_207_fu_172_p2)
);

motorB_mul_32s_26ns_57_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 26 ),
    .dout_WIDTH( 57 ))
mul_32s_26ns_57_1_0_U252(
    .din0(p_read726_reg_3146_pp0_iter2_reg),
    .din1(r_V_210_fu_173_p1),
    .dout(r_V_210_fu_173_p2)
);

motorB_mul_32s_12ns_44_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 12 ),
    .dout_WIDTH( 44 ))
mul_32s_12ns_44_1_0_U253(
    .din0(p_read2_int_reg),
    .din1(r_V_205_fu_174_p1),
    .dout(r_V_205_fu_174_p2)
);

motorB_mul_32s_25s_56_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 25 ),
    .dout_WIDTH( 56 ))
mul_32s_25s_56_1_0_U254(
    .din0(p_read_int_reg),
    .din1(r_V_fu_175_p1),
    .dout(r_V_fu_175_p2)
);

motorB_mul_32s_26ns_57_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 26 ),
    .dout_WIDTH( 57 ))
mul_32s_26ns_57_1_0_U255(
    .din0(p_read827_reg_3141_pp0_iter2_reg),
    .din1(r_V_211_fu_176_p1),
    .dout(r_V_211_fu_176_p2)
);

motorB_mul_32s_11s_43_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 11 ),
    .dout_WIDTH( 43 ))
mul_32s_11s_43_1_0_U256(
    .din0(p_read5_int_reg),
    .din1(r_V_208_fu_177_p1),
    .dout(r_V_208_fu_177_p2)
);

motorB_mul_32s_11s_43_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 11 ),
    .dout_WIDTH( 43 ))
mul_32s_11s_43_1_0_U257(
    .din0(p_read6_int_reg),
    .din1(r_V_209_fu_178_p1),
    .dout(r_V_209_fu_178_p2)
);

always @ (posedge ap_clk) begin
    ap_ce_reg <= ap_ce;
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        Range2_all_ones_185_reg_3204 <= r_V_204_fu_170_p2[32'd43];
        Range2_all_ones_186_reg_3233 <= r_V_205_fu_174_p2[32'd43];
        Range2_all_ones_187_reg_3262 <= r_V_206_fu_171_p2[32'd41];
        Range2_all_ones_188_reg_3291 <= r_V_207_fu_172_p2[32'd42];
        Range2_all_ones_189_reg_3320 <= r_V_208_fu_177_p2[32'd42];
        Range2_all_ones_190_reg_3349 <= r_V_209_fu_178_p2[32'd42];
        Range2_all_ones_191_reg_3481 <= r_V_210_fu_173_p2[32'd56];
        Range2_all_ones_192_reg_3510 <= r_V_211_fu_176_p2[32'd56];
        Range2_all_ones_reg_3175 <= r_V_fu_175_p2[32'd55];
        lhs_160_reg_3431 <= lhs_160_fu_1974_p3;
        lhs_165_reg_3517 <= lhs_165_fu_2669_p3;
        or_ln346_188_reg_3366 <= or_ln346_188_fu_1260_p2;
        or_ln346_189_reg_3381 <= or_ln346_189_fu_1389_p2;
        or_ln346_190_reg_3396 <= or_ln346_190_fu_1518_p2;
        or_ln346_191_reg_3411 <= or_ln346_191_fu_1647_p2;
        or_ln346_191_reg_3411_pp0_iter2_reg <= or_ln346_191_reg_3411;
        or_ln346_192_reg_3426 <= or_ln346_192_fu_1776_p2;
        or_ln346_192_reg_3426_pp0_iter2_reg <= or_ln346_192_reg_3426;
        overflow_377_reg_3361 <= overflow_377_fu_1231_p2;
        overflow_378_reg_3376 <= overflow_378_fu_1360_p2;
        overflow_379_reg_3391 <= overflow_379_fu_1489_p2;
        overflow_380_reg_3406 <= overflow_380_fu_1618_p2;
        overflow_380_reg_3406_pp0_iter2_reg <= overflow_380_reg_3406;
        overflow_381_reg_3421 <= overflow_381_fu_1747_p2;
        overflow_381_reg_3421_pp0_iter2_reg <= overflow_381_reg_3421;
        p_Result_941_reg_3157 <= r_V_fu_175_p2[32'd55];
        p_Result_942_reg_3168 <= p_Val2_941_fu_563_p2[32'd31];
        p_Result_943_reg_3182 <= r_V_204_fu_170_p2[32'd43];
        p_Result_944_reg_3193 <= r_V_204_fu_170_p2[32'd43];
        p_Result_946_reg_3211 <= r_V_205_fu_174_p2[32'd43];
        p_Result_947_reg_3222 <= r_V_205_fu_174_p2[32'd43];
        p_Result_949_reg_3240 <= r_V_206_fu_171_p2[32'd41];
        p_Result_950_reg_3251 <= r_V_206_fu_171_p2[32'd41];
        p_Result_952_reg_3269 <= r_V_207_fu_172_p2[32'd42];
        p_Result_953_reg_3280 <= r_V_207_fu_172_p2[32'd42];
        p_Result_955_reg_3298 <= r_V_208_fu_177_p2[32'd42];
        p_Result_956_reg_3309 <= r_V_208_fu_177_p2[32'd42];
        p_Result_958_reg_3327 <= r_V_209_fu_178_p2[32'd42];
        p_Result_959_reg_3338 <= r_V_209_fu_178_p2[32'd42];
        p_Result_961_reg_3457 <= r_V_210_fu_173_p2[32'd56];
        p_Result_962_reg_3463 <= r_V_210_fu_173_p2[32'd55];
        p_Result_963_reg_3474 <= p_Val2_962_fu_2347_p2[32'd31];
        p_Result_964_reg_3488 <= r_V_211_fu_176_p2[32'd56];
        p_Result_965_reg_3499 <= r_V_211_fu_176_p2[32'd55];
        p_Result_975_reg_3437 <= ret_V_190_fu_2243_p2[32'd32];
        p_Result_976_reg_3450 <= p_Val2_975_fu_2257_p2[32'd31];
        p_Result_s_reg_3151 <= r_V_fu_175_p2[32'd55];
        p_Val2_941_reg_3163 <= p_Val2_941_fu_563_p2;
        p_Val2_943_reg_3188 <= {{r_V_204_fu_170_p2[43:24]}};
        p_Val2_946_reg_3217 <= {{r_V_205_fu_174_p2[43:24]}};
        p_Val2_947_reg_3356 <= p_Val2_947_fu_1143_p2;
        p_Val2_949_reg_3246 <= {{r_V_206_fu_171_p2[41:24]}};
        p_Val2_950_reg_3371 <= p_Val2_950_fu_1272_p2;
        p_Val2_952_reg_3275 <= {{r_V_207_fu_172_p2[42:24]}};
        p_Val2_953_reg_3386 <= p_Val2_953_fu_1401_p2;
        p_Val2_955_reg_3304 <= {{r_V_208_fu_177_p2[42:24]}};
        p_Val2_956_reg_3401 <= p_Val2_956_fu_1530_p2;
        p_Val2_956_reg_3401_pp0_iter2_reg <= p_Val2_956_reg_3401;
        p_Val2_958_reg_3333 <= {{r_V_209_fu_178_p2[42:24]}};
        p_Val2_959_reg_3416 <= p_Val2_959_fu_1659_p2;
        p_Val2_959_reg_3416_pp0_iter2_reg <= p_Val2_959_reg_3416;
        p_Val2_962_reg_3469 <= p_Val2_962_fu_2347_p2;
        p_Val2_964_reg_3494 <= {{r_V_211_fu_176_p2[55:24]}};
        p_Val2_975_reg_3444 <= p_Val2_975_fu_2257_p2;
        p_read726_reg_3146 <= p_read7_int_reg;
        p_read726_reg_3146_pp0_iter1_reg <= p_read726_reg_3146;
        p_read726_reg_3146_pp0_iter2_reg <= p_read726_reg_3146_pp0_iter1_reg;
        p_read827_reg_3141 <= p_read8_int_reg;
        p_read827_reg_3141_pp0_iter1_reg <= p_read827_reg_3141;
        p_read827_reg_3141_pp0_iter2_reg <= p_read827_reg_3141_pp0_iter1_reg;
        r_V_204_reg_463 <= r_V_204_fu_170_p2;
        r_V_205_reg_467 <= r_V_205_fu_174_p2;
        r_V_206_reg_471 <= r_V_206_fu_171_p2;
        r_V_207_reg_475 <= r_V_207_fu_172_p2;
        r_V_208_reg_479 <= r_V_208_fu_177_p2;
        r_V_209_reg_483 <= r_V_209_fu_178_p2;
        r_V_210_reg_511 <= r_V_210_fu_173_p2;
        r_V_211_reg_515 <= r_V_211_fu_176_p2;
        r_V_reg_459 <= r_V_fu_175_p2;
        tmp_1503_reg_3199 <= r_V_204_fu_170_p2[32'd23];
        tmp_1509_reg_3228 <= r_V_205_fu_174_p2[32'd23];
        tmp_1515_reg_3257 <= r_V_206_fu_171_p2[32'd23];
        tmp_1521_reg_3286 <= r_V_207_fu_172_p2[32'd23];
        tmp_1527_reg_3315 <= r_V_208_fu_177_p2[32'd23];
        tmp_1533_reg_3344 <= r_V_209_fu_178_p2[32'd23];
        tmp_1545_reg_3505 <= r_V_211_fu_176_p2[32'd23];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce_reg)) begin
        ap_return_int_reg <= select_ln302_392_fu_3133_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        p_read1_int_reg <= p_read1;
        p_read2_int_reg <= p_read2;
        p_read3_int_reg <= p_read3;
        p_read4_int_reg <= p_read4;
        p_read5_int_reg <= p_read5;
        p_read6_int_reg <= p_read6;
        p_read7_int_reg <= p_read7;
        p_read8_int_reg <= p_read8;
        p_read_int_reg <= p_read;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return = ap_return_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return = select_ln302_392_fu_3133_p3;
    end else begin
        ap_return = 'bx;
    end
end

assign and_ln891_187_fu_1064_p2 = (carry_375_fu_1018_p2 & Range2_all_ones_185_reg_3204);

assign and_ln891_188_fu_1209_p2 = (carry_377_fu_1163_p2 & Range2_all_ones_186_reg_3233);

assign and_ln891_189_fu_1338_p2 = (carry_379_fu_1292_p2 & Range2_all_ones_187_reg_3262);

assign and_ln891_190_fu_1467_p2 = (carry_381_fu_1421_p2 & Range2_all_ones_188_reg_3291);

assign and_ln891_191_fu_1596_p2 = (carry_383_fu_1550_p2 & Range2_all_ones_189_reg_3320);

assign and_ln891_192_fu_1725_p2 = (carry_385_fu_1679_p2 & Range2_all_ones_190_reg_3349);

assign and_ln891_193_fu_2727_p2 = (carry_387_fu_2682_p2 & Range2_all_ones_191_reg_3481);

assign and_ln891_194_fu_2866_p2 = (carry_389_fu_2820_p2 & Range2_all_ones_192_reg_3510);

assign and_ln891_fu_917_p2 = (carry_373_fu_872_p2 & Range2_all_ones_reg_3175);

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign carry_373_fu_872_p2 = (xor_ln896_fu_867_p2 & p_Result_941_reg_3157);

assign carry_375_fu_1018_p2 = (xor_ln896_566_fu_1012_p2 & p_Result_944_reg_3193);

assign carry_377_fu_1163_p2 = (xor_ln896_568_fu_1157_p2 & p_Result_947_reg_3222);

assign carry_379_fu_1292_p2 = (xor_ln896_570_fu_1286_p2 & p_Result_950_reg_3251);

assign carry_381_fu_1421_p2 = (xor_ln896_572_fu_1415_p2 & p_Result_953_reg_3280);

assign carry_383_fu_1550_p2 = (xor_ln896_574_fu_1544_p2 & p_Result_956_reg_3309);

assign carry_385_fu_1679_p2 = (xor_ln896_576_fu_1673_p2 & p_Result_959_reg_3338);

assign carry_387_fu_2682_p2 = (xor_ln896_578_fu_2677_p2 & p_Result_962_reg_3463);

assign carry_389_fu_2820_p2 = (xor_ln896_580_fu_2814_p2 & p_Result_965_reg_3499);

assign deleted_ones_376_fu_1059_p2 = (or_ln890_187_fu_1053_p2 & Range2_all_ones_185_reg_3204);

assign deleted_ones_377_fu_1204_p2 = (or_ln890_188_fu_1198_p2 & Range2_all_ones_186_reg_3233);

assign deleted_ones_378_fu_1333_p2 = (or_ln890_189_fu_1327_p2 & Range2_all_ones_187_reg_3262);

assign deleted_ones_379_fu_1462_p2 = (or_ln890_190_fu_1456_p2 & Range2_all_ones_188_reg_3291);

assign deleted_ones_380_fu_1591_p2 = (or_ln890_191_fu_1585_p2 & Range2_all_ones_189_reg_3320);

assign deleted_ones_381_fu_1720_p2 = (or_ln890_192_fu_1714_p2 & Range2_all_ones_190_reg_3349);

assign deleted_ones_382_fu_2722_p2 = (or_ln890_193_fu_2716_p2 & Range2_all_ones_191_reg_3481);

assign deleted_ones_383_fu_2861_p2 = (or_ln890_194_fu_2855_p2 & Range2_all_ones_192_reg_3510);

assign deleted_ones_fu_912_p2 = (or_ln890_fu_906_p2 & Range2_all_ones_reg_3175);

assign deleted_zeros_184_fu_1034_p2 = (or_ln888_187_fu_1028_p2 ^ Range2_all_ones_185_reg_3204);

assign deleted_zeros_185_fu_1179_p2 = (or_ln888_188_fu_1173_p2 ^ Range2_all_ones_186_reg_3233);

assign deleted_zeros_186_fu_1308_p2 = (or_ln888_189_fu_1302_p2 ^ Range2_all_ones_187_reg_3262);

assign deleted_zeros_187_fu_1437_p2 = (or_ln888_190_fu_1431_p2 ^ Range2_all_ones_188_reg_3291);

assign deleted_zeros_188_fu_1566_p2 = (or_ln888_191_fu_1560_p2 ^ Range2_all_ones_189_reg_3320);

assign deleted_zeros_189_fu_1695_p2 = (or_ln888_192_fu_1689_p2 ^ Range2_all_ones_190_reg_3349);

assign deleted_zeros_190_fu_2697_p2 = (or_ln888_193_fu_2692_p2 ^ Range2_all_ones_191_reg_3481);

assign deleted_zeros_191_fu_2836_p2 = (or_ln888_194_fu_2830_p2 ^ Range2_all_ones_192_reg_3510);

assign deleted_zeros_fu_887_p2 = (or_ln888_fu_882_p2 ^ Range2_all_ones_reg_3175);

assign lhs_160_fu_1974_p3 = ((or_ln302_187_fu_1952_p2[0:0] == 1'b1) ? select_ln302_377_fu_1958_p3 : select_ln350_187_fu_1966_p3);

assign lhs_161_fu_2125_p3 = ((or_ln302_188_fu_2103_p2[0:0] == 1'b1) ? select_ln302_379_fu_2109_p3 : select_ln350_188_fu_2117_p3);

assign lhs_162_fu_2227_p3 = ((or_ln302_189_fu_2205_p2[0:0] == 1'b1) ? select_ln302_381_fu_2211_p3 : select_ln350_189_fu_2219_p3);

assign lhs_163_fu_2465_p3 = ((or_ln302_190_fu_2445_p2[0:0] == 1'b1) ? select_ln302_383_fu_2451_p3 : select_ln350_190_fu_2458_p3);

assign lhs_164_fu_2567_p3 = ((or_ln302_191_fu_2545_p2[0:0] == 1'b1) ? select_ln302_385_fu_2551_p3 : select_ln350_191_fu_2559_p3);

assign lhs_165_fu_2669_p3 = ((or_ln302_192_fu_2647_p2[0:0] == 1'b1) ? select_ln302_387_fu_2653_p3 : select_ln350_192_fu_2661_p3);

assign lhs_166_fu_3031_p3 = ((or_ln302_193_fu_3009_p2[0:0] == 1'b1) ? select_ln302_389_fu_3015_p3 : select_ln350_193_fu_3023_p3);

assign lhs_fu_1872_p3 = ((or_ln302_fu_1850_p2[0:0] == 1'b1) ? select_ln302_fu_1856_p3 : select_ln350_fu_1864_p3);

assign or_ln302_187_fu_1952_p2 = (xor_ln302_378_fu_1946_p2 | overflow_385_fu_1922_p2);

assign or_ln302_188_fu_2103_p2 = (xor_ln302_380_fu_2097_p2 | overflow_386_fu_2073_p2);

assign or_ln302_189_fu_2205_p2 = (xor_ln302_382_fu_2199_p2 | overflow_387_fu_2175_p2);

assign or_ln302_190_fu_2445_p2 = (xor_ln302_384_fu_2439_p2 | overflow_388_fu_2420_p2);

assign or_ln302_191_fu_2545_p2 = (xor_ln302_386_fu_2539_p2 | overflow_389_fu_2515_p2);

assign or_ln302_192_fu_2647_p2 = (xor_ln302_388_fu_2641_p2 | overflow_390_fu_2617_p2);

assign or_ln302_193_fu_3009_p2 = (xor_ln302_390_fu_3003_p2 | overflow_391_fu_2979_p2);

assign or_ln302_194_fu_3111_p2 = (xor_ln302_392_fu_3105_p2 | overflow_392_fu_3081_p2);

assign or_ln302_fu_1850_p2 = (xor_ln302_376_fu_1844_p2 | overflow_384_fu_1820_p2);

assign or_ln346_187_fu_1123_p2 = (underflow_376_fu_1110_p2 | overflow_376_fu_1086_p2);

assign or_ln346_188_fu_1260_p2 = (underflow_377_fu_1255_p2 | overflow_377_fu_1231_p2);

assign or_ln346_189_fu_1389_p2 = (underflow_378_fu_1384_p2 | overflow_378_fu_1360_p2);

assign or_ln346_190_fu_1518_p2 = (underflow_379_fu_1513_p2 | overflow_379_fu_1489_p2);

assign or_ln346_191_fu_1647_p2 = (underflow_380_fu_1642_p2 | overflow_380_fu_1618_p2);

assign or_ln346_192_fu_1776_p2 = (underflow_381_fu_1771_p2 | overflow_381_fu_1747_p2);

assign or_ln346_193_fu_2785_p2 = (underflow_382_fu_2772_p2 | overflow_382_fu_2748_p2);

assign or_ln346_194_fu_2925_p2 = (underflow_383_fu_2912_p2 | overflow_383_fu_2888_p2);

assign or_ln346_fu_975_p2 = (underflow_fu_962_p2 | overflow_fu_938_p2);

assign or_ln888_187_fu_1028_p2 = (xor_ln888_374_fu_1023_p2 | p_Result_945_fu_1004_p3);

assign or_ln888_188_fu_1173_p2 = (xor_ln888_376_fu_1168_p2 | p_Result_948_fu_1149_p3);

assign or_ln888_189_fu_1302_p2 = (xor_ln888_378_fu_1297_p2 | p_Result_951_fu_1278_p3);

assign or_ln888_190_fu_1431_p2 = (xor_ln888_380_fu_1426_p2 | p_Result_954_fu_1407_p3);

assign or_ln888_191_fu_1560_p2 = (xor_ln888_382_fu_1555_p2 | p_Result_957_fu_1536_p3);

assign or_ln888_192_fu_1689_p2 = (xor_ln888_384_fu_1684_p2 | p_Result_960_fu_1665_p3);

assign or_ln888_193_fu_2692_p2 = (xor_ln888_386_fu_2687_p2 | p_Result_963_reg_3474);

assign or_ln888_194_fu_2830_p2 = (xor_ln888_388_fu_2825_p2 | p_Result_966_fu_2806_p3);

assign or_ln888_fu_882_p2 = (xor_ln888_fu_877_p2 | p_Result_942_reg_3168);

assign or_ln890_187_fu_1053_p2 = (xor_ln890_185_fu_1047_p2 | or_ln888_187_fu_1028_p2);

assign or_ln890_188_fu_1198_p2 = (xor_ln890_186_fu_1192_p2 | or_ln888_188_fu_1173_p2);

assign or_ln890_189_fu_1327_p2 = (xor_ln890_187_fu_1321_p2 | or_ln888_189_fu_1302_p2);

assign or_ln890_190_fu_1456_p2 = (xor_ln890_188_fu_1450_p2 | or_ln888_190_fu_1431_p2);

assign or_ln890_191_fu_1585_p2 = (xor_ln890_189_fu_1579_p2 | or_ln888_191_fu_1560_p2);

assign or_ln890_192_fu_1714_p2 = (xor_ln890_190_fu_1708_p2 | or_ln888_192_fu_1689_p2);

assign or_ln890_193_fu_2716_p2 = (xor_ln890_191_fu_2710_p2 | or_ln888_193_fu_2692_p2);

assign or_ln890_194_fu_2855_p2 = (xor_ln890_192_fu_2849_p2 | or_ln888_194_fu_2830_p2);

assign or_ln890_fu_906_p2 = (xor_ln890_fu_900_p2 | or_ln888_fu_882_p2);

assign or_ln895_187_fu_1075_p2 = (xor_ln895_566_fu_1069_p2 | p_Result_945_fu_1004_p3);

assign or_ln895_188_fu_1220_p2 = (xor_ln895_568_fu_1214_p2 | p_Result_948_fu_1149_p3);

assign or_ln895_189_fu_1349_p2 = (xor_ln895_570_fu_1343_p2 | p_Result_951_fu_1278_p3);

assign or_ln895_190_fu_1478_p2 = (xor_ln895_572_fu_1472_p2 | p_Result_954_fu_1407_p3);

assign or_ln895_191_fu_1607_p2 = (xor_ln895_574_fu_1601_p2 | p_Result_957_fu_1536_p3);

assign or_ln895_192_fu_1736_p2 = (xor_ln895_576_fu_1730_p2 | p_Result_960_fu_1665_p3);

assign or_ln895_193_fu_2738_p2 = (xor_ln895_578_fu_2732_p2 | p_Result_963_reg_3474);

assign or_ln895_194_fu_2877_p2 = (xor_ln895_580_fu_2871_p2 | p_Result_966_fu_2806_p3);

assign or_ln895_fu_928_p2 = (xor_ln895_fu_922_p2 | p_Result_942_reg_3168);

assign or_ln896_187_fu_1098_p2 = (xor_ln896_567_fu_1092_p2 | xor_ln896_566_fu_1012_p2);

assign or_ln896_188_fu_1243_p2 = (xor_ln896_569_fu_1237_p2 | xor_ln896_568_fu_1157_p2);

assign or_ln896_189_fu_1372_p2 = (xor_ln896_571_fu_1366_p2 | xor_ln896_570_fu_1286_p2);

assign or_ln896_190_fu_1501_p2 = (xor_ln896_573_fu_1495_p2 | xor_ln896_572_fu_1415_p2);

assign or_ln896_191_fu_1630_p2 = (xor_ln896_575_fu_1624_p2 | xor_ln896_574_fu_1544_p2);

assign or_ln896_192_fu_1759_p2 = (xor_ln896_577_fu_1753_p2 | xor_ln896_576_fu_1673_p2);

assign or_ln896_193_fu_2760_p2 = (xor_ln896_579_fu_2754_p2 | xor_ln896_578_fu_2677_p2);

assign or_ln896_194_fu_2900_p2 = (xor_ln896_581_fu_2894_p2 | xor_ln896_580_fu_2814_p2);

assign or_ln896_fu_950_p2 = (xor_ln896_fu_867_p2 | xor_ln896_565_fu_944_p2);

assign overflow_376_fu_1086_p2 = (xor_ln895_567_fu_1081_p2 & or_ln895_187_fu_1075_p2);

assign overflow_377_fu_1231_p2 = (xor_ln895_569_fu_1226_p2 & or_ln895_188_fu_1220_p2);

assign overflow_378_fu_1360_p2 = (xor_ln895_571_fu_1355_p2 & or_ln895_189_fu_1349_p2);

assign overflow_379_fu_1489_p2 = (xor_ln895_573_fu_1484_p2 & or_ln895_190_fu_1478_p2);

assign overflow_380_fu_1618_p2 = (xor_ln895_575_fu_1613_p2 & or_ln895_191_fu_1607_p2);

assign overflow_381_fu_1747_p2 = (xor_ln895_577_fu_1742_p2 & or_ln895_192_fu_1736_p2);

assign overflow_382_fu_2748_p2 = (xor_ln895_579_fu_2743_p2 & or_ln895_193_fu_2738_p2);

assign overflow_383_fu_2888_p2 = (xor_ln895_581_fu_2883_p2 & or_ln895_194_fu_2877_p2);

assign overflow_384_fu_1820_p2 = (xor_ln895_582_fu_1814_p2 & p_Result_968_fu_1806_p3);

assign overflow_385_fu_1922_p2 = (xor_ln895_583_fu_1916_p2 & p_Result_970_fu_1908_p3);

assign overflow_386_fu_2073_p2 = (xor_ln895_584_fu_2067_p2 & p_Result_972_fu_2059_p3);

assign overflow_387_fu_2175_p2 = (xor_ln895_585_fu_2169_p2 & p_Result_974_fu_2161_p3);

assign overflow_388_fu_2420_p2 = (xor_ln895_586_fu_2415_p2 & p_Result_976_reg_3450);

assign overflow_389_fu_2515_p2 = (xor_ln895_587_fu_2509_p2 & p_Result_978_fu_2501_p3);

assign overflow_390_fu_2617_p2 = (xor_ln895_588_fu_2611_p2 & p_Result_980_fu_2603_p3);

assign overflow_391_fu_2979_p2 = (xor_ln895_589_fu_2973_p2 & p_Result_982_fu_2965_p3);

assign overflow_392_fu_3081_p2 = (xor_ln895_590_fu_3075_p2 & p_Result_984_fu_3067_p3);

assign overflow_fu_938_p2 = (xor_ln895_565_fu_933_p2 & or_ln895_fu_928_p2);

assign p_Result_945_fu_1004_p3 = p_Val2_944_fu_994_p2[32'd20];

assign p_Result_948_fu_1149_p3 = p_Val2_947_fu_1143_p2[32'd20];

assign p_Result_951_fu_1278_p3 = p_Val2_950_fu_1272_p2[32'd18];

assign p_Result_954_fu_1407_p3 = p_Val2_953_fu_1401_p2[32'd19];

assign p_Result_957_fu_1536_p3 = p_Val2_956_fu_1530_p2[32'd19];

assign p_Result_960_fu_1665_p3 = p_Val2_959_fu_1659_p2[32'd19];

assign p_Result_966_fu_2806_p3 = p_Val2_965_fu_2801_p2[32'd31];

assign p_Result_967_fu_1792_p3 = ret_V_fu_1786_p2[32'd32];

assign p_Result_968_fu_1806_p3 = p_Val2_967_fu_1800_p2[32'd31];

assign p_Result_969_fu_1894_p3 = ret_V_187_fu_1888_p2[32'd32];

assign p_Result_970_fu_1908_p3 = p_Val2_969_fu_1902_p2[32'd31];

assign p_Result_971_fu_2046_p3 = ret_V_188_fu_2040_p2[32'd32];

assign p_Result_972_fu_2059_p3 = p_Val2_971_fu_2054_p2[32'd31];

assign p_Result_973_fu_2147_p3 = ret_V_189_fu_2141_p2[32'd32];

assign p_Result_974_fu_2161_p3 = p_Val2_973_fu_2155_p2[32'd31];

assign p_Result_977_fu_2487_p3 = ret_V_191_fu_2481_p2[32'd32];

assign p_Result_978_fu_2501_p3 = p_Val2_977_fu_2495_p2[32'd31];

assign p_Result_979_fu_2589_p3 = ret_V_192_fu_2583_p2[32'd32];

assign p_Result_980_fu_2603_p3 = p_Val2_979_fu_2597_p2[32'd31];

assign p_Result_981_fu_2952_p3 = ret_V_193_fu_2946_p2[32'd32];

assign p_Result_982_fu_2965_p3 = p_Val2_981_fu_2960_p2[32'd31];

assign p_Result_983_fu_3053_p3 = ret_V_194_fu_3047_p2[32'd32];

assign p_Result_984_fu_3067_p3 = p_Val2_983_fu_3061_p2[32'd31];

assign p_Val2_940_fu_533_p4 = {{r_V_fu_175_p2[55:24]}};

assign p_Val2_941_fu_563_p2 = (zext_ln377_fu_559_p1 + p_Val2_940_fu_533_p4);

assign p_Val2_944_fu_994_p2 = ($signed(zext_ln377_187_fu_991_p1) + $signed(sext_ln823_fu_988_p1));

assign p_Val2_947_fu_1143_p2 = ($signed(zext_ln377_188_fu_1140_p1) + $signed(sext_ln823_178_fu_1137_p1));

assign p_Val2_950_fu_1272_p2 = ($signed(zext_ln377_189_fu_1269_p1) + $signed(sext_ln823_179_fu_1266_p1));

assign p_Val2_953_fu_1401_p2 = ($signed(zext_ln377_190_fu_1398_p1) + $signed(sext_ln823_180_fu_1395_p1));

assign p_Val2_956_fu_1530_p2 = ($signed(zext_ln377_191_fu_1527_p1) + $signed(sext_ln823_181_fu_1524_p1));

assign p_Val2_959_fu_1659_p2 = ($signed(zext_ln377_192_fu_1656_p1) + $signed(sext_ln823_182_fu_1653_p1));

assign p_Val2_961_fu_2317_p4 = {{r_V_210_fu_173_p2[55:24]}};

assign p_Val2_962_fu_2347_p2 = (zext_ln377_193_fu_2343_p1 + p_Val2_961_fu_2317_p4);

assign p_Val2_965_fu_2801_p2 = (zext_ln377_194_fu_2798_p1 + p_Val2_964_reg_3494);

assign p_Val2_967_fu_1800_p2 = ($signed(rhs_fu_981_p3) + $signed(32'd4805206));

assign p_Val2_969_fu_1902_p2 = ($signed(rhs_187_fu_1129_p3) + $signed(lhs_fu_1872_p3));

assign p_Val2_971_fu_2054_p2 = ($signed(rhs_188_fu_1992_p3) + $signed(lhs_160_reg_3431));

assign p_Val2_973_fu_2155_p2 = ($signed(rhs_189_fu_2009_p3) + $signed(lhs_161_fu_2125_p3));

assign p_Val2_975_fu_2257_p2 = ($signed(rhs_190_fu_2026_p3) + $signed(lhs_162_fu_2227_p3));

assign p_Val2_977_fu_2495_p2 = ($signed(rhs_191_fu_2281_p3) + $signed(lhs_163_fu_2465_p3));

assign p_Val2_979_fu_2597_p2 = ($signed(rhs_192_fu_2298_p3) + $signed(lhs_164_fu_2567_p3));

assign p_Val2_981_fu_2960_p2 = ($signed(rhs_193_fu_2791_p3) + $signed(lhs_165_reg_3517));

assign p_Val2_983_fu_3061_p2 = ($signed(rhs_194_fu_2931_p3) + $signed(lhs_166_fu_3031_p3));

assign r_V_204_fu_170_p1 = 44'd1317;

assign r_V_205_fu_174_p1 = 44'd1892;

assign r_V_206_fu_171_p1 = 42'd4398046510661;

assign r_V_207_fu_172_p1 = 43'd900;

assign r_V_208_fu_177_p1 = 43'd8796093021633;

assign r_V_209_fu_178_p1 = 43'd8796093021256;

assign r_V_210_fu_173_p1 = 57'd24323242;

assign r_V_211_fu_176_p1 = 57'd17765902;

assign r_V_fu_175_p1 = 56'd72057594022464233;

assign ret_V_187_fu_1888_p2 = ($signed(sext_ln813_350_fu_1884_p1) + $signed(sext_ln813_349_fu_1880_p1));

assign ret_V_188_fu_2040_p2 = ($signed(sext_ln813_352_fu_2036_p1) + $signed(sext_ln813_351_fu_2033_p1));

assign ret_V_189_fu_2141_p2 = ($signed(sext_ln813_354_fu_2137_p1) + $signed(sext_ln813_353_fu_2133_p1));

assign ret_V_190_fu_2243_p2 = ($signed(sext_ln813_356_fu_2239_p1) + $signed(sext_ln813_355_fu_2235_p1));

assign ret_V_191_fu_2481_p2 = ($signed(sext_ln813_358_fu_2477_p1) + $signed(sext_ln813_357_fu_2473_p1));

assign ret_V_192_fu_2583_p2 = ($signed(sext_ln813_360_fu_2579_p1) + $signed(sext_ln813_359_fu_2575_p1));

assign ret_V_193_fu_2946_p2 = ($signed(sext_ln813_362_fu_2942_p1) + $signed(sext_ln813_361_fu_2939_p1));

assign ret_V_194_fu_3047_p2 = ($signed(sext_ln813_364_fu_3043_p1) + $signed(sext_ln813_363_fu_3039_p1));

assign ret_V_fu_1786_p2 = ($signed(sext_ln813_fu_1782_p1) + $signed(33'd4805206));

assign rhs_187_fu_1129_p3 = ((or_ln346_187_fu_1123_p2[0:0] == 1'b1) ? select_ln346_271_fu_1115_p3 : sext_ln856_fu_1000_p1);

assign rhs_188_fu_1992_p3 = ((or_ln346_188_reg_3366[0:0] == 1'b1) ? select_ln346_272_fu_1985_p3 : sext_ln856_178_fu_1982_p1);

assign rhs_189_fu_2009_p3 = ((or_ln346_189_reg_3381[0:0] == 1'b1) ? select_ln346_273_fu_2002_p3 : sext_ln856_179_fu_1999_p1);

assign rhs_190_fu_2026_p3 = ((or_ln346_190_reg_3396[0:0] == 1'b1) ? select_ln346_274_fu_2019_p3 : sext_ln856_180_fu_2016_p1);

assign rhs_191_fu_2281_p3 = ((or_ln346_191_reg_3411_pp0_iter2_reg[0:0] == 1'b1) ? select_ln346_275_fu_2274_p3 : sext_ln856_181_fu_2271_p1);

assign rhs_192_fu_2298_p3 = ((or_ln346_192_reg_3426_pp0_iter2_reg[0:0] == 1'b1) ? select_ln346_276_fu_2291_p3 : sext_ln856_182_fu_2288_p1);

assign rhs_193_fu_2791_p3 = ((or_ln346_193_fu_2785_p2[0:0] == 1'b1) ? select_ln346_277_fu_2777_p3 : p_Val2_962_reg_3469);

assign rhs_194_fu_2931_p3 = ((or_ln346_194_fu_2925_p2[0:0] == 1'b1) ? select_ln346_278_fu_2917_p3 : p_Val2_965_fu_2801_p2);

assign rhs_fu_981_p3 = ((or_ln346_fu_975_p2[0:0] == 1'b1) ? select_ln346_270_fu_967_p3 : p_Val2_941_reg_3163);

assign select_ln302_377_fu_1958_p3 = ((xor_ln302_377_fu_1940_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_969_fu_1902_p2);

assign select_ln302_379_fu_2109_p3 = ((xor_ln302_379_fu_2091_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_971_fu_2054_p2);

assign select_ln302_381_fu_2211_p3 = ((xor_ln302_381_fu_2193_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_973_fu_2155_p2);

assign select_ln302_383_fu_2451_p3 = ((xor_ln302_383_fu_2435_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_975_reg_3444);

assign select_ln302_385_fu_2551_p3 = ((xor_ln302_385_fu_2533_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_977_fu_2495_p2);

assign select_ln302_387_fu_2653_p3 = ((xor_ln302_387_fu_2635_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_979_fu_2597_p2);

assign select_ln302_389_fu_3015_p3 = ((xor_ln302_389_fu_2997_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_981_fu_2960_p2);

assign select_ln302_391_fu_3117_p3 = ((xor_ln302_391_fu_3099_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_983_fu_3061_p2);

assign select_ln302_392_fu_3133_p3 = ((or_ln302_194_fu_3111_p2[0:0] == 1'b1) ? select_ln302_391_fu_3117_p3 : select_ln350_194_fu_3125_p3);

assign select_ln302_fu_1856_p3 = ((xor_ln302_fu_1838_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_967_fu_1800_p2);

assign select_ln346_270_fu_967_p3 = ((overflow_fu_938_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_271_fu_1115_p3 = ((overflow_376_fu_1086_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_272_fu_1985_p3 = ((overflow_377_reg_3361[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_273_fu_2002_p3 = ((overflow_378_reg_3376[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_274_fu_2019_p3 = ((overflow_379_reg_3391[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_275_fu_2274_p3 = ((overflow_380_reg_3406_pp0_iter2_reg[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_276_fu_2291_p3 = ((overflow_381_reg_3421_pp0_iter2_reg[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_277_fu_2777_p3 = ((overflow_382_fu_2748_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_278_fu_2917_p3 = ((overflow_383_fu_2888_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln350_187_fu_1966_p3 = ((underflow_385_fu_1934_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_969_fu_1902_p2);

assign select_ln350_188_fu_2117_p3 = ((underflow_386_fu_2085_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_971_fu_2054_p2);

assign select_ln350_189_fu_2219_p3 = ((underflow_387_fu_2187_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_973_fu_2155_p2);

assign select_ln350_190_fu_2458_p3 = ((underflow_388_fu_2430_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_975_reg_3444);

assign select_ln350_191_fu_2559_p3 = ((underflow_389_fu_2527_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_977_fu_2495_p2);

assign select_ln350_192_fu_2661_p3 = ((underflow_390_fu_2629_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_979_fu_2597_p2);

assign select_ln350_193_fu_3023_p3 = ((underflow_391_fu_2991_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_981_fu_2960_p2);

assign select_ln350_194_fu_3125_p3 = ((underflow_392_fu_3093_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_983_fu_3061_p2);

assign select_ln350_fu_1864_p3 = ((underflow_384_fu_1832_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_967_fu_1800_p2);

assign sext_ln813_349_fu_1880_p1 = lhs_fu_1872_p3;

assign sext_ln813_350_fu_1884_p1 = rhs_187_fu_1129_p3;

assign sext_ln813_351_fu_2033_p1 = lhs_160_reg_3431;

assign sext_ln813_352_fu_2036_p1 = rhs_188_fu_1992_p3;

assign sext_ln813_353_fu_2133_p1 = lhs_161_fu_2125_p3;

assign sext_ln813_354_fu_2137_p1 = rhs_189_fu_2009_p3;

assign sext_ln813_355_fu_2235_p1 = lhs_162_fu_2227_p3;

assign sext_ln813_356_fu_2239_p1 = rhs_190_fu_2026_p3;

assign sext_ln813_357_fu_2473_p1 = lhs_163_fu_2465_p3;

assign sext_ln813_358_fu_2477_p1 = rhs_191_fu_2281_p3;

assign sext_ln813_359_fu_2575_p1 = lhs_164_fu_2567_p3;

assign sext_ln813_360_fu_2579_p1 = rhs_192_fu_2298_p3;

assign sext_ln813_361_fu_2939_p1 = lhs_165_reg_3517;

assign sext_ln813_362_fu_2942_p1 = rhs_193_fu_2791_p3;

assign sext_ln813_363_fu_3039_p1 = lhs_166_fu_3031_p3;

assign sext_ln813_364_fu_3043_p1 = rhs_194_fu_2931_p3;

assign sext_ln813_fu_1782_p1 = rhs_fu_981_p3;

assign sext_ln823_178_fu_1137_p1 = $signed(p_Val2_946_reg_3217);

assign sext_ln823_179_fu_1266_p1 = $signed(p_Val2_949_reg_3246);

assign sext_ln823_180_fu_1395_p1 = $signed(p_Val2_952_reg_3275);

assign sext_ln823_181_fu_1524_p1 = $signed(p_Val2_955_reg_3304);

assign sext_ln823_182_fu_1653_p1 = $signed(p_Val2_958_reg_3333);

assign sext_ln823_fu_988_p1 = $signed(p_Val2_943_reg_3188);

assign sext_ln856_178_fu_1982_p1 = p_Val2_947_reg_3356;

assign sext_ln856_179_fu_1999_p1 = p_Val2_950_reg_3371;

assign sext_ln856_180_fu_2016_p1 = p_Val2_953_reg_3386;

assign sext_ln856_181_fu_2271_p1 = p_Val2_956_reg_3401_pp0_iter2_reg;

assign sext_ln856_182_fu_2288_p1 = p_Val2_959_reg_3416_pp0_iter2_reg;

assign sext_ln856_fu_1000_p1 = p_Val2_944_fu_994_p2;

assign tmp_1500_fu_892_p3 = r_V_reg_459[32'd55];

assign tmp_1506_fu_1039_p3 = r_V_204_reg_463[32'd43];

assign tmp_1512_fu_1184_p3 = r_V_205_reg_467[32'd43];

assign tmp_1518_fu_1313_p3 = r_V_206_reg_471[32'd41];

assign tmp_1524_fu_1442_p3 = r_V_207_reg_475[32'd42];

assign tmp_1530_fu_1571_p3 = r_V_208_reg_479[32'd42];

assign tmp_1536_fu_1700_p3 = r_V_209_reg_483[32'd42];

assign tmp_1539_fu_2335_p3 = r_V_210_fu_173_p2[32'd23];

assign tmp_1542_fu_2702_p3 = r_V_210_reg_511[32'd56];

assign tmp_1548_fu_2841_p3 = r_V_211_reg_515[32'd56];

assign tmp_fu_551_p3 = r_V_fu_175_p2[32'd23];

assign underflow_376_fu_1110_p2 = (xor_ln896_594_fu_1104_p2 & p_Result_943_reg_3182);

assign underflow_377_fu_1255_p2 = (xor_ln896_595_fu_1249_p2 & p_Result_946_reg_3211);

assign underflow_378_fu_1384_p2 = (xor_ln896_596_fu_1378_p2 & p_Result_949_reg_3240);

assign underflow_379_fu_1513_p2 = (xor_ln896_597_fu_1507_p2 & p_Result_952_reg_3269);

assign underflow_380_fu_1642_p2 = (xor_ln896_598_fu_1636_p2 & p_Result_955_reg_3298);

assign underflow_381_fu_1771_p2 = (xor_ln896_599_fu_1765_p2 & p_Result_958_reg_3327);

assign underflow_382_fu_2772_p2 = (xor_ln896_600_fu_2766_p2 & p_Result_961_reg_3457);

assign underflow_383_fu_2912_p2 = (xor_ln896_601_fu_2906_p2 & p_Result_964_reg_3488);

assign underflow_384_fu_1832_p2 = (xor_ln896_582_fu_1826_p2 & p_Result_967_fu_1792_p3);

assign underflow_385_fu_1934_p2 = (xor_ln896_583_fu_1928_p2 & p_Result_969_fu_1894_p3);

assign underflow_386_fu_2085_p2 = (xor_ln896_584_fu_2079_p2 & p_Result_971_fu_2046_p3);

assign underflow_387_fu_2187_p2 = (xor_ln896_585_fu_2181_p2 & p_Result_973_fu_2147_p3);

assign underflow_388_fu_2430_p2 = (xor_ln896_586_fu_2425_p2 & p_Result_975_reg_3437);

assign underflow_389_fu_2527_p2 = (xor_ln896_587_fu_2521_p2 & p_Result_977_fu_2487_p3);

assign underflow_390_fu_2629_p2 = (xor_ln896_588_fu_2623_p2 & p_Result_979_fu_2589_p3);

assign underflow_391_fu_2991_p2 = (xor_ln896_589_fu_2985_p2 & p_Result_981_fu_2952_p3);

assign underflow_392_fu_3093_p2 = (xor_ln896_590_fu_3087_p2 & p_Result_983_fu_3053_p3);

assign underflow_fu_962_p2 = (xor_ln896_593_fu_956_p2 & p_Result_s_reg_3151);

assign xor_ln302_376_fu_1844_p2 = (xor_ln302_fu_1838_p2 ^ 1'd1);

assign xor_ln302_377_fu_1940_p2 = (p_Result_970_fu_1908_p3 ^ p_Result_969_fu_1894_p3);

assign xor_ln302_378_fu_1946_p2 = (xor_ln302_377_fu_1940_p2 ^ 1'd1);

assign xor_ln302_379_fu_2091_p2 = (p_Result_972_fu_2059_p3 ^ p_Result_971_fu_2046_p3);

assign xor_ln302_380_fu_2097_p2 = (xor_ln302_379_fu_2091_p2 ^ 1'd1);

assign xor_ln302_381_fu_2193_p2 = (p_Result_974_fu_2161_p3 ^ p_Result_973_fu_2147_p3);

assign xor_ln302_382_fu_2199_p2 = (xor_ln302_381_fu_2193_p2 ^ 1'd1);

assign xor_ln302_383_fu_2435_p2 = (p_Result_976_reg_3450 ^ p_Result_975_reg_3437);

assign xor_ln302_384_fu_2439_p2 = (xor_ln302_383_fu_2435_p2 ^ 1'd1);

assign xor_ln302_385_fu_2533_p2 = (p_Result_978_fu_2501_p3 ^ p_Result_977_fu_2487_p3);

assign xor_ln302_386_fu_2539_p2 = (xor_ln302_385_fu_2533_p2 ^ 1'd1);

assign xor_ln302_387_fu_2635_p2 = (p_Result_980_fu_2603_p3 ^ p_Result_979_fu_2589_p3);

assign xor_ln302_388_fu_2641_p2 = (xor_ln302_387_fu_2635_p2 ^ 1'd1);

assign xor_ln302_389_fu_2997_p2 = (p_Result_982_fu_2965_p3 ^ p_Result_981_fu_2952_p3);

assign xor_ln302_390_fu_3003_p2 = (xor_ln302_389_fu_2997_p2 ^ 1'd1);

assign xor_ln302_391_fu_3099_p2 = (p_Result_984_fu_3067_p3 ^ p_Result_983_fu_3053_p3);

assign xor_ln302_392_fu_3105_p2 = (xor_ln302_391_fu_3099_p2 ^ 1'd1);

assign xor_ln302_fu_1838_p2 = (p_Result_968_fu_1806_p3 ^ p_Result_967_fu_1792_p3);

assign xor_ln888_374_fu_1023_p2 = (p_Result_944_reg_3193 ^ 1'd1);

assign xor_ln888_376_fu_1168_p2 = (p_Result_947_reg_3222 ^ 1'd1);

assign xor_ln888_378_fu_1297_p2 = (p_Result_950_reg_3251 ^ 1'd1);

assign xor_ln888_380_fu_1426_p2 = (p_Result_953_reg_3280 ^ 1'd1);

assign xor_ln888_382_fu_1555_p2 = (p_Result_956_reg_3309 ^ 1'd1);

assign xor_ln888_384_fu_1684_p2 = (p_Result_959_reg_3338 ^ 1'd1);

assign xor_ln888_386_fu_2687_p2 = (p_Result_962_reg_3463 ^ 1'd1);

assign xor_ln888_388_fu_2825_p2 = (p_Result_965_reg_3499 ^ 1'd1);

assign xor_ln888_fu_877_p2 = (p_Result_941_reg_3157 ^ 1'd1);

assign xor_ln890_185_fu_1047_p2 = (tmp_1506_fu_1039_p3 ^ 1'd1);

assign xor_ln890_186_fu_1192_p2 = (tmp_1512_fu_1184_p3 ^ 1'd1);

assign xor_ln890_187_fu_1321_p2 = (tmp_1518_fu_1313_p3 ^ 1'd1);

assign xor_ln890_188_fu_1450_p2 = (tmp_1524_fu_1442_p3 ^ 1'd1);

assign xor_ln890_189_fu_1579_p2 = (tmp_1530_fu_1571_p3 ^ 1'd1);

assign xor_ln890_190_fu_1708_p2 = (tmp_1536_fu_1700_p3 ^ 1'd1);

assign xor_ln890_191_fu_2710_p2 = (tmp_1542_fu_2702_p3 ^ 1'd1);

assign xor_ln890_192_fu_2849_p2 = (tmp_1548_fu_2841_p3 ^ 1'd1);

assign xor_ln890_fu_900_p2 = (tmp_1500_fu_892_p3 ^ 1'd1);

assign xor_ln895_565_fu_933_p2 = (p_Result_s_reg_3151 ^ 1'd1);

assign xor_ln895_566_fu_1069_p2 = (deleted_zeros_184_fu_1034_p2 ^ 1'd1);

assign xor_ln895_567_fu_1081_p2 = (p_Result_943_reg_3182 ^ 1'd1);

assign xor_ln895_568_fu_1214_p2 = (deleted_zeros_185_fu_1179_p2 ^ 1'd1);

assign xor_ln895_569_fu_1226_p2 = (p_Result_946_reg_3211 ^ 1'd1);

assign xor_ln895_570_fu_1343_p2 = (deleted_zeros_186_fu_1308_p2 ^ 1'd1);

assign xor_ln895_571_fu_1355_p2 = (p_Result_949_reg_3240 ^ 1'd1);

assign xor_ln895_572_fu_1472_p2 = (deleted_zeros_187_fu_1437_p2 ^ 1'd1);

assign xor_ln895_573_fu_1484_p2 = (p_Result_952_reg_3269 ^ 1'd1);

assign xor_ln895_574_fu_1601_p2 = (deleted_zeros_188_fu_1566_p2 ^ 1'd1);

assign xor_ln895_575_fu_1613_p2 = (p_Result_955_reg_3298 ^ 1'd1);

assign xor_ln895_576_fu_1730_p2 = (deleted_zeros_189_fu_1695_p2 ^ 1'd1);

assign xor_ln895_577_fu_1742_p2 = (p_Result_958_reg_3327 ^ 1'd1);

assign xor_ln895_578_fu_2732_p2 = (deleted_zeros_190_fu_2697_p2 ^ 1'd1);

assign xor_ln895_579_fu_2743_p2 = (p_Result_961_reg_3457 ^ 1'd1);

assign xor_ln895_580_fu_2871_p2 = (deleted_zeros_191_fu_2836_p2 ^ 1'd1);

assign xor_ln895_581_fu_2883_p2 = (p_Result_964_reg_3488 ^ 1'd1);

assign xor_ln895_582_fu_1814_p2 = (p_Result_967_fu_1792_p3 ^ 1'd1);

assign xor_ln895_583_fu_1916_p2 = (p_Result_969_fu_1894_p3 ^ 1'd1);

assign xor_ln895_584_fu_2067_p2 = (p_Result_971_fu_2046_p3 ^ 1'd1);

assign xor_ln895_585_fu_2169_p2 = (p_Result_973_fu_2147_p3 ^ 1'd1);

assign xor_ln895_586_fu_2415_p2 = (p_Result_975_reg_3437 ^ 1'd1);

assign xor_ln895_587_fu_2509_p2 = (p_Result_977_fu_2487_p3 ^ 1'd1);

assign xor_ln895_588_fu_2611_p2 = (p_Result_979_fu_2589_p3 ^ 1'd1);

assign xor_ln895_589_fu_2973_p2 = (p_Result_981_fu_2952_p3 ^ 1'd1);

assign xor_ln895_590_fu_3075_p2 = (p_Result_983_fu_3053_p3 ^ 1'd1);

assign xor_ln895_fu_922_p2 = (deleted_zeros_fu_887_p2 ^ 1'd1);

assign xor_ln896_565_fu_944_p2 = (deleted_ones_fu_912_p2 ^ 1'd1);

assign xor_ln896_566_fu_1012_p2 = (p_Result_945_fu_1004_p3 ^ 1'd1);

assign xor_ln896_567_fu_1092_p2 = (deleted_ones_376_fu_1059_p2 ^ 1'd1);

assign xor_ln896_568_fu_1157_p2 = (p_Result_948_fu_1149_p3 ^ 1'd1);

assign xor_ln896_569_fu_1237_p2 = (deleted_ones_377_fu_1204_p2 ^ 1'd1);

assign xor_ln896_570_fu_1286_p2 = (p_Result_951_fu_1278_p3 ^ 1'd1);

assign xor_ln896_571_fu_1366_p2 = (deleted_ones_378_fu_1333_p2 ^ 1'd1);

assign xor_ln896_572_fu_1415_p2 = (p_Result_954_fu_1407_p3 ^ 1'd1);

assign xor_ln896_573_fu_1495_p2 = (deleted_ones_379_fu_1462_p2 ^ 1'd1);

assign xor_ln896_574_fu_1544_p2 = (p_Result_957_fu_1536_p3 ^ 1'd1);

assign xor_ln896_575_fu_1624_p2 = (deleted_ones_380_fu_1591_p2 ^ 1'd1);

assign xor_ln896_576_fu_1673_p2 = (p_Result_960_fu_1665_p3 ^ 1'd1);

assign xor_ln896_577_fu_1753_p2 = (deleted_ones_381_fu_1720_p2 ^ 1'd1);

assign xor_ln896_578_fu_2677_p2 = (p_Result_963_reg_3474 ^ 1'd1);

assign xor_ln896_579_fu_2754_p2 = (deleted_ones_382_fu_2722_p2 ^ 1'd1);

assign xor_ln896_580_fu_2814_p2 = (p_Result_966_fu_2806_p3 ^ 1'd1);

assign xor_ln896_581_fu_2894_p2 = (deleted_ones_383_fu_2861_p2 ^ 1'd1);

assign xor_ln896_582_fu_1826_p2 = (p_Result_968_fu_1806_p3 ^ 1'd1);

assign xor_ln896_583_fu_1928_p2 = (p_Result_970_fu_1908_p3 ^ 1'd1);

assign xor_ln896_584_fu_2079_p2 = (p_Result_972_fu_2059_p3 ^ 1'd1);

assign xor_ln896_585_fu_2181_p2 = (p_Result_974_fu_2161_p3 ^ 1'd1);

assign xor_ln896_586_fu_2425_p2 = (p_Result_976_reg_3450 ^ 1'd1);

assign xor_ln896_587_fu_2521_p2 = (p_Result_978_fu_2501_p3 ^ 1'd1);

assign xor_ln896_588_fu_2623_p2 = (p_Result_980_fu_2603_p3 ^ 1'd1);

assign xor_ln896_589_fu_2985_p2 = (p_Result_982_fu_2965_p3 ^ 1'd1);

assign xor_ln896_590_fu_3087_p2 = (p_Result_984_fu_3067_p3 ^ 1'd1);

assign xor_ln896_593_fu_956_p2 = (or_ln896_fu_950_p2 ^ and_ln891_fu_917_p2);

assign xor_ln896_594_fu_1104_p2 = (or_ln896_187_fu_1098_p2 ^ and_ln891_187_fu_1064_p2);

assign xor_ln896_595_fu_1249_p2 = (or_ln896_188_fu_1243_p2 ^ and_ln891_188_fu_1209_p2);

assign xor_ln896_596_fu_1378_p2 = (or_ln896_189_fu_1372_p2 ^ and_ln891_189_fu_1338_p2);

assign xor_ln896_597_fu_1507_p2 = (or_ln896_190_fu_1501_p2 ^ and_ln891_190_fu_1467_p2);

assign xor_ln896_598_fu_1636_p2 = (or_ln896_191_fu_1630_p2 ^ and_ln891_191_fu_1596_p2);

assign xor_ln896_599_fu_1765_p2 = (or_ln896_192_fu_1759_p2 ^ and_ln891_192_fu_1725_p2);

assign xor_ln896_600_fu_2766_p2 = (or_ln896_193_fu_2760_p2 ^ and_ln891_193_fu_2727_p2);

assign xor_ln896_601_fu_2906_p2 = (or_ln896_194_fu_2900_p2 ^ and_ln891_194_fu_2866_p2);

assign xor_ln896_fu_867_p2 = (p_Result_942_reg_3168 ^ 1'd1);

assign zext_ln377_187_fu_991_p1 = tmp_1503_reg_3199;

assign zext_ln377_188_fu_1140_p1 = tmp_1509_reg_3228;

assign zext_ln377_189_fu_1269_p1 = tmp_1515_reg_3257;

assign zext_ln377_190_fu_1398_p1 = tmp_1521_reg_3286;

assign zext_ln377_191_fu_1527_p1 = tmp_1527_reg_3315;

assign zext_ln377_192_fu_1656_p1 = tmp_1533_reg_3344;

assign zext_ln377_193_fu_2343_p1 = tmp_1539_fu_2335_p3;

assign zext_ln377_194_fu_2798_p1 = tmp_1545_reg_3505;

assign zext_ln377_fu_559_p1 = tmp_fu_551_p3;

endmodule //motorB_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config11_s
