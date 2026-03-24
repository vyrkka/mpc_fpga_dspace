module der2_sp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_ce,
        p_read,
        p_read1,
        p_read2,
        p_read3,
        p_read4,
        p_read5,
        p_read6,
        p_read7,
        ap_return_0,
        ap_return_1,
        ap_return_2
);

parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   ap_ce;
input  [18:0] p_read;
input  [18:0] p_read1;
input  [18:0] p_read2;
input  [18:0] p_read3;
input  [18:0] p_read4;
input  [18:0] p_read5;
input  [18:0] p_read6;
input  [18:0] p_read7;
output  [18:0] ap_return_0;
output  [18:0] ap_return_1;
output  [18:0] ap_return_2;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state4_pp0_stage1_iter1;
reg    ap_block_pp0_stage1_subdone;
reg  signed [18:0] p_read218_reg_5311;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire  signed [18:0] mult_V_fu_829_p3;
reg  signed [18:0] mult_V_reg_5316;
wire  signed [18:0] mult_V_16_fu_987_p3;
reg  signed [18:0] mult_V_16_reg_5322;
wire  signed [18:0] mult_V_17_fu_1190_p3;
reg  signed [18:0] mult_V_17_reg_5328;
wire  signed [18:0] mult_V_18_fu_1382_p3;
reg  signed [18:0] mult_V_18_reg_5334;
wire  signed [18:0] mult_V_19_fu_1578_p3;
reg  signed [18:0] mult_V_19_reg_5340;
wire  signed [18:0] mult_V_20_fu_1784_p3;
reg  signed [18:0] mult_V_20_reg_5346;
wire  signed [18:0] mult_V_22_fu_1984_p3;
reg  signed [18:0] mult_V_22_reg_5352;
wire  signed [18:0] mult_V_23_fu_2181_p3;
reg  signed [18:0] mult_V_23_reg_5358;
wire  signed [18:0] mult_V_21_fu_2335_p3;
reg  signed [18:0] mult_V_21_reg_5364;
wire    ap_block_pp0_stage1_11001;
wire  signed [18:0] mult_V_24_fu_2503_p3;
reg  signed [18:0] mult_V_24_reg_5370;
wire  signed [18:0] mult_V_25_fu_2695_p3;
reg  signed [18:0] mult_V_25_reg_5376;
wire  signed [16:0] p_Val2_36_fu_2755_p2;
reg  signed [16:0] p_Val2_36_reg_5382;
wire   [0:0] overflow_11_fu_2857_p2;
reg   [0:0] overflow_11_reg_5387;
wire   [0:0] or_ln346_11_fu_2887_p2;
reg   [0:0] or_ln346_11_reg_5392;
wire  signed [18:0] mult_V_27_fu_3115_p3;
reg  signed [18:0] mult_V_27_reg_5397;
wire  signed [18:0] mult_V_28_fu_3307_p3;
reg  signed [18:0] mult_V_28_reg_5403;
wire  signed [18:0] mult_V_29_fu_3504_p3;
reg  signed [18:0] mult_V_29_reg_5409;
wire  signed [18:0] mult_V_30_fu_3701_p3;
reg  signed [18:0] mult_V_30_reg_5415;
wire  signed [18:0] lhs_3_fu_4089_p3;
reg  signed [18:0] lhs_3_reg_5421;
reg   [0:0] p_Result_58_reg_5427;
wire   [18:0] p_Val2_61_fu_4218_p2;
reg   [18:0] p_Val2_61_reg_5434;
reg   [0:0] p_Result_59_reg_5440;
reg   [0:0] p_Result_62_reg_5447;
wire   [18:0] p_Val2_65_fu_4252_p2;
reg   [18:0] p_Val2_65_reg_5454;
reg   [0:0] p_Result_63_reg_5460;
wire  signed [18:0] p_Val2_97_fu_4671_p3;
reg  signed [18:0] p_Val2_97_reg_5467;
wire   [18:0] p_Val2_85_fu_4871_p3;
reg   [18:0] p_Val2_85_reg_5473;
wire  signed [18:0] p_Val2_99_fu_4971_p3;
reg  signed [18:0] p_Val2_99_reg_5478;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [18:0] ap_port_reg_p_read4;
reg   [18:0] ap_port_reg_p_read5;
reg   [18:0] ap_port_reg_p_read6;
reg   [18:0] ap_port_reg_p_read7;
wire  signed [32:0] sext_ln70_3_fu_1000_p1;
wire   [13:0] r_V_3_fu_188_p1;
wire    ap_block_pp0_stage0;
reg  signed [18:0] grp_fu_189_p0;
wire  signed [33:0] sext_ln70_7_fu_1992_p1;
wire  signed [29:0] sext_ln70_11_fu_2708_p1;
reg  signed [15:0] grp_fu_189_p1;
wire    ap_block_pp0_stage1;
reg  signed [18:0] grp_fu_190_p0;
wire  signed [31:0] sext_ln70_6_fu_1591_p1;
wire  signed [33:0] sext_ln70_13_fu_3512_p1;
reg  signed [14:0] grp_fu_190_p1;
reg  signed [18:0] grp_fu_191_p0;
wire  signed [30:0] sext_ln70_4_fu_1586_p1;
wire  signed [32:0] sext_ln70_8_fu_2343_p1;
reg  signed [14:0] grp_fu_191_p1;
reg  signed [18:0] grp_fu_192_p0;
wire  signed [30:0] sext_ln70_fu_677_p1;
wire  signed [30:0] sext_ln70_9_fu_2348_p1;
reg   [11:0] grp_fu_192_p1;
reg  signed [18:0] grp_fu_193_p0;
wire  signed [31:0] sext_ln70_2_fu_995_p1;
wire  signed [32:0] sext_ln70_10_fu_2703_p1;
reg  signed [13:0] grp_fu_193_p1;
reg  signed [18:0] grp_fu_194_p0;
wire  signed [33:0] sext_ln70_12_fu_3315_p1;
reg  signed [14:0] grp_fu_194_p1;
reg  signed [18:0] grp_fu_195_p0;
wire  signed [32:0] sext_ln70_1_fu_682_p1;
wire  signed [32:0] sext_ln70_5_fu_2189_p1;
reg  signed [14:0] grp_fu_195_p1;
wire   [32:0] grp_fu_195_p2;
wire   [30:0] grp_fu_192_p2;
wire  signed [18:0] sext_ln70_fu_677_p0;
wire  signed [18:0] sext_ln70_1_fu_682_p0;
wire   [0:0] grp_fu_619_p3;
wire   [18:0] zext_ln377_fu_687_p1;
wire   [18:0] grp_fu_601_p4;
wire   [18:0] p_Val2_3_fu_691_p2;
wire   [0:0] p_Result_2_fu_697_p3;
wire   [0:0] grp_fu_611_p3;
wire   [0:0] xor_ln896_fu_705_p2;
wire   [0:0] xor_ln888_fu_717_p2;
wire   [0:0] grp_fu_627_p3;
wire   [0:0] or_ln888_fu_723_p2;
wire   [0:0] tmp_3_fu_735_p3;
wire   [0:0] xor_ln890_fu_743_p2;
wire   [0:0] or_ln890_fu_749_p2;
wire   [0:0] carry_1_fu_711_p2;
wire   [0:0] deleted_zeros_fu_729_p2;
wire   [0:0] xor_ln895_fu_767_p2;
wire   [0:0] grp_fu_593_p3;
wire   [0:0] or_ln895_fu_773_p2;
wire   [0:0] xor_ln895_1_fu_779_p2;
wire   [0:0] deleted_ones_fu_755_p2;
wire   [0:0] xor_ln896_1_fu_791_p2;
wire   [0:0] and_ln891_fu_761_p2;
wire   [0:0] or_ln896_fu_797_p2;
wire   [0:0] xor_ln896_48_fu_803_p2;
wire   [0:0] overflow_fu_785_p2;
wire   [0:0] underflow_fu_809_p2;
wire   [0:0] or_ln346_fu_823_p2;
wire   [18:0] select_ln346_1_fu_815_p3;
wire   [16:0] grp_fu_643_p4;
wire   [0:0] grp_fu_661_p3;
wire   [17:0] zext_ln377_1_fu_841_p1;
wire  signed [17:0] sext_ln823_fu_837_p1;
wire  signed [17:0] p_Val2_6_fu_845_p2;
wire   [0:0] p_Result_5_fu_855_p3;
wire   [0:0] grp_fu_653_p3;
wire   [0:0] xor_ln896_2_fu_863_p2;
wire   [0:0] xor_ln888_2_fu_875_p2;
wire   [0:0] grp_fu_669_p3;
wire   [0:0] or_ln888_1_fu_881_p2;
wire   [0:0] tmp_9_fu_893_p3;
wire   [0:0] xor_ln890_1_fu_901_p2;
wire   [0:0] or_ln890_1_fu_907_p2;
wire   [0:0] carry_3_fu_869_p2;
wire   [0:0] deleted_zeros_1_fu_887_p2;
wire   [0:0] xor_ln895_2_fu_925_p2;
wire   [0:0] grp_fu_635_p3;
wire   [0:0] or_ln895_1_fu_931_p2;
wire   [0:0] xor_ln895_3_fu_937_p2;
wire   [0:0] deleted_ones_1_fu_913_p2;
wire   [0:0] xor_ln896_3_fu_949_p2;
wire   [0:0] and_ln891_1_fu_919_p2;
wire   [0:0] or_ln896_1_fu_955_p2;
wire   [0:0] xor_ln896_49_fu_961_p2;
wire   [0:0] overflow_1_fu_943_p2;
wire   [0:0] underflow_1_fu_967_p2;
wire   [0:0] or_ln346_1_fu_981_p2;
wire   [18:0] select_ln346_fu_973_p3;
wire  signed [18:0] sext_ln856_fu_851_p1;
wire  signed [18:0] sext_ln70_2_fu_995_p0;
wire  signed [18:0] sext_ln70_3_fu_1000_p0;
wire   [32:0] p_Result_6_fu_1006_p1;
wire   [33:0] grp_fu_194_p2;
wire   [32:0] p_Val2_7_fu_1014_p1;
wire   [32:0] p_Result_7_fu_1024_p1;
wire   [32:0] tmp_12_fu_1032_p1;
wire   [0:0] tmp_12_fu_1032_p3;
wire   [18:0] zext_ln377_2_fu_1040_p1;
wire   [18:0] p_Val2_7_fu_1014_p4;
wire   [18:0] p_Val2_9_fu_1044_p2;
wire   [0:0] p_Result_8_fu_1050_p3;
wire   [0:0] p_Result_7_fu_1024_p3;
wire   [0:0] xor_ln896_4_fu_1058_p2;
wire   [32:0] Range2_all_ones_2_fu_1070_p1;
wire   [0:0] xor_ln888_4_fu_1078_p2;
wire   [0:0] Range2_all_ones_2_fu_1070_p3;
wire   [0:0] or_ln888_2_fu_1084_p2;
wire   [32:0] tmp_15_fu_1096_p1;
wire   [0:0] tmp_15_fu_1096_p3;
wire   [0:0] xor_ln890_2_fu_1104_p2;
wire   [0:0] or_ln890_2_fu_1110_p2;
wire   [0:0] carry_5_fu_1064_p2;
wire   [0:0] deleted_zeros_2_fu_1090_p2;
wire   [0:0] xor_ln895_4_fu_1128_p2;
wire   [0:0] p_Result_6_fu_1006_p3;
wire   [0:0] or_ln895_2_fu_1134_p2;
wire   [0:0] xor_ln895_5_fu_1140_p2;
wire   [0:0] deleted_ones_2_fu_1116_p2;
wire   [0:0] xor_ln896_5_fu_1152_p2;
wire   [0:0] and_ln891_2_fu_1122_p2;
wire   [0:0] or_ln896_2_fu_1158_p2;
wire   [0:0] xor_ln896_50_fu_1164_p2;
wire   [0:0] overflow_2_fu_1146_p2;
wire   [0:0] underflow_2_fu_1170_p2;
wire   [0:0] or_ln346_2_fu_1184_p2;
wire   [18:0] select_ln346_4_fu_1176_p3;
wire   [32:0] r_V_3_fu_188_p2;
wire   [0:0] tmp_18_fu_1224_p3;
wire   [18:0] zext_ln377_3_fu_1232_p1;
wire   [18:0] p_Val2_11_fu_1206_p4;
wire   [18:0] p_Val2_12_fu_1236_p2;
wire   [0:0] p_Result_11_fu_1242_p3;
wire   [0:0] p_Result_10_fu_1216_p3;
wire   [0:0] xor_ln896_6_fu_1250_p2;
wire   [0:0] xor_ln888_6_fu_1270_p2;
wire   [0:0] Range2_all_ones_3_fu_1262_p3;
wire   [0:0] or_ln888_3_fu_1276_p2;
wire   [0:0] tmp_21_fu_1288_p3;
wire   [0:0] xor_ln890_3_fu_1296_p2;
wire   [0:0] or_ln890_3_fu_1302_p2;
wire   [0:0] carry_7_fu_1256_p2;
wire   [0:0] deleted_zeros_3_fu_1282_p2;
wire   [0:0] xor_ln895_6_fu_1320_p2;
wire   [0:0] p_Result_9_fu_1198_p3;
wire   [0:0] or_ln895_3_fu_1326_p2;
wire   [0:0] xor_ln895_7_fu_1332_p2;
wire   [0:0] deleted_ones_3_fu_1308_p2;
wire   [0:0] xor_ln896_7_fu_1344_p2;
wire   [0:0] and_ln891_3_fu_1314_p2;
wire   [0:0] or_ln896_3_fu_1350_p2;
wire   [0:0] xor_ln896_51_fu_1356_p2;
wire   [0:0] overflow_3_fu_1338_p2;
wire   [0:0] underflow_3_fu_1362_p2;
wire   [0:0] or_ln346_3_fu_1376_p2;
wire   [18:0] select_ln346_6_fu_1368_p3;
wire   [31:0] p_Result_12_fu_1390_p1;
wire   [32:0] grp_fu_193_p2;
wire   [31:0] p_Val2_14_fu_1398_p1;
wire   [17:0] p_Val2_14_fu_1398_p4;
wire   [31:0] p_Result_13_fu_1412_p1;
wire   [31:0] tmp_24_fu_1420_p1;
wire   [0:0] tmp_24_fu_1420_p3;
wire   [18:0] zext_ln377_4_fu_1428_p1;
wire  signed [18:0] sext_ln818_fu_1408_p1;
wire   [18:0] p_Val2_15_fu_1432_p2;
wire   [0:0] p_Result_14_fu_1438_p3;
wire   [0:0] p_Result_13_fu_1412_p3;
wire   [0:0] xor_ln896_8_fu_1446_p2;
wire   [31:0] Range2_all_ones_4_fu_1458_p1;
wire   [0:0] xor_ln888_8_fu_1466_p2;
wire   [0:0] Range2_all_ones_4_fu_1458_p3;
wire   [0:0] or_ln888_4_fu_1472_p2;
wire   [31:0] tmp_27_fu_1484_p1;
wire   [0:0] tmp_27_fu_1484_p3;
wire   [0:0] xor_ln890_4_fu_1492_p2;
wire   [0:0] or_ln890_4_fu_1498_p2;
wire   [0:0] carry_9_fu_1452_p2;
wire   [0:0] deleted_zeros_4_fu_1478_p2;
wire   [0:0] xor_ln895_8_fu_1516_p2;
wire   [0:0] p_Result_12_fu_1390_p3;
wire   [0:0] or_ln895_4_fu_1522_p2;
wire   [0:0] xor_ln895_9_fu_1528_p2;
wire   [0:0] deleted_ones_4_fu_1504_p2;
wire   [0:0] xor_ln896_9_fu_1540_p2;
wire   [0:0] and_ln891_4_fu_1510_p2;
wire   [0:0] or_ln896_4_fu_1546_p2;
wire   [0:0] xor_ln896_52_fu_1552_p2;
wire   [0:0] overflow_4_fu_1534_p2;
wire   [0:0] underflow_4_fu_1558_p2;
wire   [0:0] or_ln346_4_fu_1572_p2;
wire   [18:0] select_ln346_8_fu_1564_p3;
wire  signed [18:0] sext_ln70_4_fu_1586_p0;
wire  signed [18:0] sext_ln70_6_fu_1591_p0;
wire   [31:0] p_Result_15_fu_1596_p1;
wire   [33:0] grp_fu_190_p2;
wire   [31:0] p_Val2_17_fu_1604_p1;
wire   [17:0] p_Val2_17_fu_1604_p4;
wire   [31:0] p_Result_16_fu_1618_p1;
wire   [31:0] tmp_30_fu_1626_p1;
wire   [0:0] tmp_30_fu_1626_p3;
wire   [18:0] zext_ln377_5_fu_1634_p1;
wire  signed [18:0] sext_ln818_1_fu_1614_p1;
wire   [18:0] p_Val2_18_fu_1638_p2;
wire   [0:0] p_Result_17_fu_1644_p3;
wire   [0:0] p_Result_16_fu_1618_p3;
wire   [0:0] xor_ln896_10_fu_1652_p2;
wire   [31:0] Range2_all_ones_5_fu_1664_p1;
wire   [0:0] xor_ln888_10_fu_1672_p2;
wire   [0:0] Range2_all_ones_5_fu_1664_p3;
wire   [0:0] or_ln888_5_fu_1678_p2;
wire   [31:0] tmp_33_fu_1690_p1;
wire   [0:0] tmp_33_fu_1690_p3;
wire   [0:0] xor_ln890_5_fu_1698_p2;
wire   [0:0] or_ln890_5_fu_1704_p2;
wire   [0:0] carry_11_fu_1658_p2;
wire   [0:0] deleted_zeros_5_fu_1684_p2;
wire   [0:0] xor_ln895_10_fu_1722_p2;
wire   [0:0] p_Result_15_fu_1596_p3;
wire   [0:0] or_ln895_5_fu_1728_p2;
wire   [0:0] xor_ln895_11_fu_1734_p2;
wire   [0:0] deleted_ones_5_fu_1710_p2;
wire   [0:0] xor_ln896_11_fu_1746_p2;
wire   [0:0] and_ln891_5_fu_1716_p2;
wire   [0:0] or_ln896_5_fu_1752_p2;
wire   [0:0] xor_ln896_53_fu_1758_p2;
wire   [0:0] overflow_5_fu_1740_p2;
wire   [0:0] underflow_5_fu_1764_p2;
wire   [0:0] or_ln346_5_fu_1778_p2;
wire   [18:0] select_ln346_10_fu_1770_p3;
wire   [30:0] p_Result_21_fu_1792_p1;
wire   [32:0] grp_fu_191_p2;
wire   [30:0] p_Val2_23_fu_1800_p1;
wire   [16:0] p_Val2_23_fu_1800_p4;
wire   [30:0] p_Result_22_fu_1814_p1;
wire   [30:0] tmp_42_fu_1822_p1;
wire   [0:0] tmp_42_fu_1822_p3;
wire   [17:0] zext_ln377_7_fu_1830_p1;
wire  signed [17:0] sext_ln823_1_fu_1810_p1;
wire  signed [17:0] p_Val2_24_fu_1834_p2;
wire   [0:0] p_Result_23_fu_1844_p3;
wire   [0:0] p_Result_22_fu_1814_p3;
wire   [0:0] xor_ln896_14_fu_1852_p2;
wire   [30:0] Range2_all_ones_7_fu_1864_p1;
wire   [0:0] xor_ln888_14_fu_1872_p2;
wire   [0:0] Range2_all_ones_7_fu_1864_p3;
wire   [0:0] or_ln888_7_fu_1878_p2;
wire   [30:0] tmp_45_fu_1890_p1;
wire   [0:0] tmp_45_fu_1890_p3;
wire   [0:0] xor_ln890_7_fu_1898_p2;
wire   [0:0] or_ln890_7_fu_1904_p2;
wire   [0:0] carry_15_fu_1858_p2;
wire   [0:0] deleted_zeros_7_fu_1884_p2;
wire   [0:0] xor_ln895_14_fu_1922_p2;
wire   [0:0] p_Result_21_fu_1792_p3;
wire   [0:0] or_ln895_7_fu_1928_p2;
wire   [0:0] xor_ln895_15_fu_1934_p2;
wire   [0:0] deleted_ones_7_fu_1910_p2;
wire   [0:0] xor_ln896_15_fu_1946_p2;
wire   [0:0] and_ln891_7_fu_1916_p2;
wire   [0:0] or_ln896_7_fu_1952_p2;
wire   [0:0] xor_ln896_55_fu_1958_p2;
wire   [0:0] overflow_7_fu_1940_p2;
wire   [0:0] underflow_7_fu_1964_p2;
wire   [0:0] or_ln346_7_fu_1978_p2;
wire   [18:0] select_ln346_14_fu_1970_p3;
wire  signed [18:0] sext_ln856_1_fu_1840_p1;
wire   [33:0] grp_fu_189_p2;
wire   [0:0] tmp_48_fu_2023_p3;
wire   [18:0] zext_ln377_8_fu_2031_p1;
wire   [18:0] p_Val2_26_fu_2005_p4;
wire   [18:0] p_Val2_27_fu_2035_p2;
wire   [0:0] p_Result_26_fu_2041_p3;
wire   [0:0] p_Result_25_fu_2015_p3;
wire   [0:0] xor_ln896_16_fu_2049_p2;
wire   [0:0] xor_ln888_16_fu_2069_p2;
wire   [0:0] Range2_all_ones_8_fu_2061_p3;
wire   [0:0] or_ln888_8_fu_2075_p2;
wire   [0:0] tmp_51_fu_2087_p3;
wire   [0:0] xor_ln890_8_fu_2095_p2;
wire   [0:0] or_ln890_8_fu_2101_p2;
wire   [0:0] carry_17_fu_2055_p2;
wire   [0:0] deleted_zeros_8_fu_2081_p2;
wire   [0:0] xor_ln895_16_fu_2119_p2;
wire   [0:0] p_Result_24_fu_1997_p3;
wire   [0:0] or_ln895_8_fu_2125_p2;
wire   [0:0] xor_ln895_17_fu_2131_p2;
wire   [0:0] deleted_ones_8_fu_2107_p2;
wire   [0:0] xor_ln896_17_fu_2143_p2;
wire   [0:0] and_ln891_8_fu_2113_p2;
wire   [0:0] or_ln896_8_fu_2149_p2;
wire   [0:0] xor_ln896_56_fu_2155_p2;
wire   [0:0] overflow_8_fu_2137_p2;
wire   [0:0] underflow_8_fu_2161_p2;
wire   [0:0] or_ln346_8_fu_2175_p2;
wire   [18:0] select_ln346_16_fu_2167_p3;
wire   [18:0] zext_ln377_6_fu_2193_p1;
wire   [18:0] p_Val2_21_fu_2197_p2;
wire   [0:0] p_Result_20_fu_2203_p3;
wire   [0:0] xor_ln896_12_fu_2211_p2;
wire   [0:0] xor_ln888_12_fu_2223_p2;
wire   [0:0] or_ln888_6_fu_2229_p2;
wire   [0:0] tmp_39_fu_2241_p3;
wire   [0:0] xor_ln890_6_fu_2249_p2;
wire   [0:0] or_ln890_6_fu_2255_p2;
wire   [0:0] carry_13_fu_2217_p2;
wire   [0:0] deleted_zeros_6_fu_2235_p2;
wire   [0:0] xor_ln895_12_fu_2273_p2;
wire   [0:0] or_ln895_6_fu_2279_p2;
wire   [0:0] xor_ln895_13_fu_2285_p2;
wire   [0:0] deleted_ones_6_fu_2261_p2;
wire   [0:0] xor_ln896_13_fu_2297_p2;
wire   [0:0] and_ln891_6_fu_2267_p2;
wire   [0:0] or_ln896_6_fu_2303_p2;
wire   [0:0] xor_ln896_54_fu_2309_p2;
wire   [0:0] overflow_6_fu_2291_p2;
wire   [0:0] underflow_6_fu_2315_p2;
wire   [0:0] or_ln346_6_fu_2329_p2;
wire   [18:0] select_ln346_12_fu_2321_p3;
wire  signed [18:0] sext_ln70_8_fu_2343_p0;
wire  signed [18:0] sext_ln70_9_fu_2348_p0;
wire   [17:0] zext_ln377_9_fu_2357_p1;
wire  signed [17:0] sext_ln823_2_fu_2353_p1;
wire  signed [17:0] p_Val2_30_fu_2361_p2;
wire   [0:0] p_Result_29_fu_2371_p3;
wire   [0:0] xor_ln896_18_fu_2379_p2;
wire   [0:0] xor_ln888_18_fu_2391_p2;
wire   [0:0] or_ln888_9_fu_2397_p2;
wire   [0:0] tmp_57_fu_2409_p3;
wire   [0:0] xor_ln890_9_fu_2417_p2;
wire   [0:0] or_ln890_9_fu_2423_p2;
wire   [0:0] carry_19_fu_2385_p2;
wire   [0:0] deleted_zeros_9_fu_2403_p2;
wire   [0:0] xor_ln895_18_fu_2441_p2;
wire   [0:0] or_ln895_9_fu_2447_p2;
wire   [0:0] xor_ln895_19_fu_2453_p2;
wire   [0:0] deleted_ones_9_fu_2429_p2;
wire   [0:0] xor_ln896_19_fu_2465_p2;
wire   [0:0] and_ln891_9_fu_2435_p2;
wire   [0:0] or_ln896_9_fu_2471_p2;
wire   [0:0] xor_ln896_57_fu_2477_p2;
wire   [0:0] overflow_9_fu_2459_p2;
wire   [0:0] underflow_9_fu_2483_p2;
wire   [0:0] or_ln346_9_fu_2497_p2;
wire   [18:0] select_ln346_18_fu_2489_p3;
wire  signed [18:0] sext_ln856_2_fu_2367_p1;
wire   [0:0] tmp_60_fu_2537_p3;
wire   [18:0] zext_ln377_10_fu_2545_p1;
wire   [18:0] p_Val2_32_fu_2519_p4;
wire   [18:0] p_Val2_33_fu_2549_p2;
wire   [0:0] p_Result_32_fu_2555_p3;
wire   [0:0] p_Result_31_fu_2529_p3;
wire   [0:0] xor_ln896_20_fu_2563_p2;
wire   [0:0] xor_ln888_20_fu_2583_p2;
wire   [0:0] Range2_all_ones_10_fu_2575_p3;
wire   [0:0] or_ln888_10_fu_2589_p2;
wire   [0:0] tmp_63_fu_2601_p3;
wire   [0:0] xor_ln890_10_fu_2609_p2;
wire   [0:0] or_ln890_10_fu_2615_p2;
wire   [0:0] carry_21_fu_2569_p2;
wire   [0:0] deleted_zeros_10_fu_2595_p2;
wire   [0:0] xor_ln895_20_fu_2633_p2;
wire   [0:0] p_Result_30_fu_2511_p3;
wire   [0:0] or_ln895_10_fu_2639_p2;
wire   [0:0] xor_ln895_21_fu_2645_p2;
wire   [0:0] deleted_ones_10_fu_2621_p2;
wire   [0:0] xor_ln896_21_fu_2657_p2;
wire   [0:0] and_ln891_10_fu_2627_p2;
wire   [0:0] or_ln896_10_fu_2663_p2;
wire   [0:0] xor_ln896_58_fu_2669_p2;
wire   [0:0] overflow_10_fu_2651_p2;
wire   [0:0] underflow_10_fu_2675_p2;
wire   [0:0] or_ln346_10_fu_2689_p2;
wire   [18:0] select_ln346_20_fu_2681_p3;
wire  signed [18:0] sext_ln70_10_fu_2703_p0;
wire  signed [18:0] sext_ln70_11_fu_2708_p0;
wire   [29:0] p_Result_33_fu_2713_p1;
wire   [29:0] p_Val2_35_fu_2721_p1;
wire   [15:0] p_Val2_35_fu_2721_p4;
wire   [29:0] p_Result_34_fu_2735_p1;
wire   [29:0] tmp_66_fu_2743_p1;
wire   [0:0] tmp_66_fu_2743_p3;
wire   [16:0] zext_ln377_11_fu_2751_p1;
wire  signed [16:0] sext_ln823_3_fu_2731_p1;
wire   [0:0] p_Result_35_fu_2761_p3;
wire   [0:0] p_Result_34_fu_2735_p3;
wire   [0:0] xor_ln896_22_fu_2769_p2;
wire   [29:0] Range2_all_ones_11_fu_2781_p1;
wire   [0:0] xor_ln888_22_fu_2789_p2;
wire   [0:0] Range2_all_ones_11_fu_2781_p3;
wire   [0:0] or_ln888_11_fu_2795_p2;
wire   [29:0] tmp_69_fu_2807_p1;
wire   [0:0] tmp_69_fu_2807_p3;
wire   [0:0] xor_ln890_11_fu_2815_p2;
wire   [0:0] or_ln890_11_fu_2821_p2;
wire   [0:0] carry_23_fu_2775_p2;
wire   [0:0] deleted_zeros_11_fu_2801_p2;
wire   [0:0] xor_ln895_22_fu_2839_p2;
wire   [0:0] p_Result_33_fu_2713_p3;
wire   [0:0] or_ln895_11_fu_2845_p2;
wire   [0:0] xor_ln895_23_fu_2851_p2;
wire   [0:0] deleted_ones_11_fu_2827_p2;
wire   [0:0] xor_ln896_23_fu_2863_p2;
wire   [0:0] and_ln891_11_fu_2833_p2;
wire   [0:0] or_ln896_11_fu_2869_p2;
wire   [0:0] xor_ln896_59_fu_2875_p2;
wire   [0:0] underflow_11_fu_2881_p2;
wire  signed [18:0] shl_ln_fu_2893_p1;
wire   [29:0] shl_ln_fu_2893_p3;
wire  signed [18:0] shl_ln1273_1_fu_2905_p1;
wire   [20:0] shl_ln1273_1_fu_2905_p3;
wire  signed [30:0] sext_ln1273_fu_2901_p1;
wire  signed [30:0] sext_ln1273_1_fu_2913_p1;
wire   [30:0] r_V_12_fu_2917_p2;
wire   [16:0] p_Val2_38_fu_2931_p4;
wire   [0:0] tmp_72_fu_2953_p3;
wire   [17:0] zext_ln377_12_fu_2961_p1;
wire  signed [17:0] sext_ln823_4_fu_2941_p1;
wire  signed [17:0] p_Val2_39_fu_2965_p2;
wire   [0:0] p_Result_38_fu_2975_p3;
wire   [0:0] p_Result_37_fu_2945_p3;
wire   [0:0] xor_ln896_24_fu_2983_p2;
wire   [0:0] xor_ln888_24_fu_3003_p2;
wire   [0:0] Range2_all_ones_12_fu_2995_p3;
wire   [0:0] or_ln888_12_fu_3009_p2;
wire   [0:0] tmp_75_fu_3021_p3;
wire   [0:0] xor_ln890_12_fu_3029_p2;
wire   [0:0] or_ln890_12_fu_3035_p2;
wire   [0:0] carry_25_fu_2989_p2;
wire   [0:0] deleted_zeros_12_fu_3015_p2;
wire   [0:0] xor_ln895_24_fu_3053_p2;
wire   [0:0] p_Result_36_fu_2923_p3;
wire   [0:0] or_ln895_12_fu_3059_p2;
wire   [0:0] xor_ln895_25_fu_3065_p2;
wire   [0:0] deleted_ones_12_fu_3041_p2;
wire   [0:0] xor_ln896_25_fu_3077_p2;
wire   [0:0] and_ln891_12_fu_3047_p2;
wire   [0:0] or_ln896_12_fu_3083_p2;
wire   [0:0] xor_ln896_60_fu_3089_p2;
wire   [0:0] overflow_12_fu_3071_p2;
wire   [0:0] underflow_12_fu_3095_p2;
wire   [0:0] or_ln346_12_fu_3109_p2;
wire   [18:0] select_ln346_24_fu_3101_p3;
wire  signed [18:0] sext_ln856_4_fu_2971_p1;
wire   [0:0] tmp_78_fu_3149_p3;
wire   [18:0] zext_ln377_13_fu_3157_p1;
wire   [18:0] p_Val2_41_fu_3131_p4;
wire   [18:0] p_Val2_42_fu_3161_p2;
wire   [0:0] p_Result_41_fu_3167_p3;
wire   [0:0] p_Result_40_fu_3141_p3;
wire   [0:0] xor_ln896_26_fu_3175_p2;
wire   [0:0] xor_ln888_26_fu_3195_p2;
wire   [0:0] Range2_all_ones_13_fu_3187_p3;
wire   [0:0] or_ln888_13_fu_3201_p2;
wire   [0:0] tmp_81_fu_3213_p3;
wire   [0:0] xor_ln890_13_fu_3221_p2;
wire   [0:0] or_ln890_13_fu_3227_p2;
wire   [0:0] carry_27_fu_3181_p2;
wire   [0:0] deleted_zeros_13_fu_3207_p2;
wire   [0:0] xor_ln895_26_fu_3245_p2;
wire   [0:0] p_Result_39_fu_3123_p3;
wire   [0:0] or_ln895_13_fu_3251_p2;
wire   [0:0] xor_ln895_27_fu_3257_p2;
wire   [0:0] deleted_ones_13_fu_3233_p2;
wire   [0:0] xor_ln896_27_fu_3269_p2;
wire   [0:0] and_ln891_13_fu_3239_p2;
wire   [0:0] or_ln896_13_fu_3275_p2;
wire   [0:0] xor_ln896_61_fu_3281_p2;
wire   [0:0] overflow_13_fu_3263_p2;
wire   [0:0] underflow_13_fu_3287_p2;
wire   [0:0] or_ln346_13_fu_3301_p2;
wire   [18:0] select_ln346_26_fu_3293_p3;
wire   [0:0] tmp_84_fu_3346_p3;
wire   [18:0] zext_ln377_14_fu_3354_p1;
wire   [18:0] p_Val2_44_fu_3328_p4;
wire   [18:0] p_Val2_45_fu_3358_p2;
wire   [0:0] p_Result_44_fu_3364_p3;
wire   [0:0] p_Result_43_fu_3338_p3;
wire   [0:0] xor_ln896_28_fu_3372_p2;
wire   [0:0] xor_ln888_28_fu_3392_p2;
wire   [0:0] Range2_all_ones_14_fu_3384_p3;
wire   [0:0] or_ln888_14_fu_3398_p2;
wire   [0:0] tmp_87_fu_3410_p3;
wire   [0:0] xor_ln890_14_fu_3418_p2;
wire   [0:0] or_ln890_14_fu_3424_p2;
wire   [0:0] carry_29_fu_3378_p2;
wire   [0:0] deleted_zeros_14_fu_3404_p2;
wire   [0:0] xor_ln895_28_fu_3442_p2;
wire   [0:0] p_Result_42_fu_3320_p3;
wire   [0:0] or_ln895_14_fu_3448_p2;
wire   [0:0] xor_ln895_29_fu_3454_p2;
wire   [0:0] deleted_ones_14_fu_3430_p2;
wire   [0:0] xor_ln896_29_fu_3466_p2;
wire   [0:0] and_ln891_14_fu_3436_p2;
wire   [0:0] or_ln896_14_fu_3472_p2;
wire   [0:0] xor_ln896_62_fu_3478_p2;
wire   [0:0] overflow_14_fu_3460_p2;
wire   [0:0] underflow_14_fu_3484_p2;
wire   [0:0] or_ln346_14_fu_3498_p2;
wire   [18:0] select_ln346_28_fu_3490_p3;
wire   [0:0] tmp_90_fu_3543_p3;
wire   [18:0] zext_ln377_15_fu_3551_p1;
wire   [18:0] p_Val2_47_fu_3525_p4;
wire   [18:0] p_Val2_48_fu_3555_p2;
wire   [0:0] p_Result_47_fu_3561_p3;
wire   [0:0] p_Result_46_fu_3535_p3;
wire   [0:0] xor_ln896_30_fu_3569_p2;
wire   [0:0] xor_ln888_30_fu_3589_p2;
wire   [0:0] Range2_all_ones_15_fu_3581_p3;
wire   [0:0] or_ln888_15_fu_3595_p2;
wire   [0:0] tmp_93_fu_3607_p3;
wire   [0:0] xor_ln890_15_fu_3615_p2;
wire   [0:0] or_ln890_15_fu_3621_p2;
wire   [0:0] carry_31_fu_3575_p2;
wire   [0:0] deleted_zeros_15_fu_3601_p2;
wire   [0:0] xor_ln895_30_fu_3639_p2;
wire   [0:0] p_Result_45_fu_3517_p3;
wire   [0:0] or_ln895_15_fu_3645_p2;
wire   [0:0] xor_ln895_31_fu_3651_p2;
wire   [0:0] deleted_ones_15_fu_3627_p2;
wire   [0:0] xor_ln896_31_fu_3663_p2;
wire   [0:0] and_ln891_15_fu_3633_p2;
wire   [0:0] or_ln896_15_fu_3669_p2;
wire   [0:0] xor_ln896_63_fu_3675_p2;
wire   [0:0] overflow_15_fu_3657_p2;
wire   [0:0] underflow_15_fu_3681_p2;
wire   [0:0] or_ln346_15_fu_3695_p2;
wire   [18:0] select_ln346_30_fu_3687_p3;
wire  signed [19:0] sext_ln813_fu_3709_p1;
wire   [19:0] ret_V_fu_3712_p2;
wire   [18:0] p_Val2_50_fu_3726_p2;
wire   [0:0] p_Result_48_fu_3718_p3;
wire   [0:0] p_Result_49_fu_3731_p3;
wire   [0:0] xor_ln895_32_fu_3739_p2;
wire   [0:0] xor_ln896_32_fu_3751_p2;
wire   [0:0] xor_ln302_fu_3763_p2;
wire   [0:0] overflow_16_fu_3745_p2;
wire   [0:0] xor_ln302_1_fu_3769_p2;
wire   [0:0] underflow_16_fu_3757_p2;
wire   [0:0] or_ln302_fu_3775_p2;
wire   [18:0] select_ln302_fu_3781_p3;
wire   [18:0] select_ln350_fu_3789_p3;
wire  signed [19:0] sext_ln813_1_fu_3805_p1;
wire   [19:0] ret_V_1_fu_3808_p2;
wire   [18:0] p_Val2_51_fu_3822_p2;
wire   [0:0] p_Result_50_fu_3814_p3;
wire   [0:0] p_Result_51_fu_3827_p3;
wire   [0:0] xor_ln895_33_fu_3835_p2;
wire   [0:0] xor_ln896_33_fu_3847_p2;
wire   [0:0] xor_ln302_2_fu_3859_p2;
wire   [0:0] overflow_17_fu_3841_p2;
wire   [0:0] xor_ln302_3_fu_3865_p2;
wire   [0:0] underflow_17_fu_3853_p2;
wire   [0:0] or_ln302_1_fu_3871_p2;
wire   [18:0] select_ln302_2_fu_3877_p3;
wire   [18:0] select_ln350_1_fu_3885_p3;
wire  signed [18:0] p_Val2_s_fu_3797_p3;
wire  signed [19:0] sext_ln813_3_fu_3905_p1;
wire  signed [19:0] sext_ln813_2_fu_3901_p1;
wire   [19:0] ret_V_2_fu_3908_p2;
wire   [18:0] p_Val2_55_fu_3922_p2;
wire   [0:0] p_Result_52_fu_3914_p3;
wire   [0:0] p_Result_53_fu_3927_p3;
wire   [0:0] xor_ln895_34_fu_3935_p2;
wire   [0:0] xor_ln896_34_fu_3947_p2;
wire   [0:0] xor_ln302_4_fu_3959_p2;
wire   [0:0] overflow_18_fu_3941_p2;
wire   [0:0] xor_ln302_5_fu_3965_p2;
wire   [0:0] underflow_18_fu_3953_p2;
wire   [0:0] or_ln302_2_fu_3971_p2;
wire   [18:0] select_ln302_4_fu_3977_p3;
wire   [18:0] select_ln350_2_fu_3985_p3;
wire  signed [19:0] sext_ln813_4_fu_4001_p1;
wire   [19:0] ret_V_3_fu_4004_p2;
wire   [18:0] p_Val2_57_fu_4018_p2;
wire   [0:0] p_Result_54_fu_4010_p3;
wire   [0:0] p_Result_55_fu_4023_p3;
wire   [0:0] xor_ln895_35_fu_4031_p2;
wire   [0:0] xor_ln896_35_fu_4043_p2;
wire   [0:0] xor_ln302_6_fu_4055_p2;
wire   [0:0] overflow_19_fu_4037_p2;
wire   [0:0] xor_ln302_7_fu_4061_p2;
wire   [0:0] underflow_19_fu_4049_p2;
wire   [0:0] or_ln302_3_fu_4067_p2;
wire   [18:0] select_ln302_6_fu_4073_p3;
wire   [18:0] select_ln350_3_fu_4081_p3;
wire  signed [18:0] p_Val2_92_fu_3893_p3;
wire  signed [19:0] sext_ln813_6_fu_4101_p1;
wire  signed [19:0] sext_ln813_5_fu_4097_p1;
wire   [19:0] ret_V_4_fu_4104_p2;
wire   [18:0] p_Val2_59_fu_4118_p2;
wire   [0:0] p_Result_56_fu_4110_p3;
wire   [0:0] p_Result_57_fu_4123_p3;
wire   [0:0] xor_ln895_36_fu_4131_p2;
wire   [0:0] xor_ln896_36_fu_4143_p2;
wire   [0:0] xor_ln302_8_fu_4155_p2;
wire   [0:0] overflow_20_fu_4137_p2;
wire   [0:0] xor_ln302_9_fu_4161_p2;
wire   [0:0] underflow_20_fu_4149_p2;
wire   [0:0] or_ln302_4_fu_4167_p2;
wire   [18:0] select_ln302_8_fu_4173_p3;
wire   [18:0] select_ln350_4_fu_4181_p3;
wire  signed [18:0] lhs_2_fu_3993_p3;
wire  signed [19:0] sext_ln813_8_fu_4201_p1;
wire  signed [19:0] sext_ln813_7_fu_4197_p1;
wire   [19:0] ret_V_5_fu_4204_p2;
wire  signed [18:0] lhs_4_fu_4189_p3;
wire  signed [19:0] sext_ln813_12_fu_4235_p1;
wire  signed [19:0] sext_ln813_11_fu_4231_p1;
wire   [19:0] ret_V_7_fu_4238_p2;
wire   [0:0] xor_ln895_37_fu_4265_p2;
wire   [0:0] xor_ln896_37_fu_4275_p2;
wire   [0:0] xor_ln302_10_fu_4285_p2;
wire   [0:0] overflow_21_fu_4270_p2;
wire   [0:0] xor_ln302_11_fu_4289_p2;
wire   [0:0] underflow_21_fu_4280_p2;
wire   [0:0] or_ln302_5_fu_4295_p2;
wire   [18:0] select_ln302_10_fu_4301_p3;
wire   [18:0] select_ln350_5_fu_4308_p3;
wire  signed [19:0] sext_ln813_10_fu_4326_p1;
wire  signed [19:0] sext_ln813_9_fu_4323_p1;
wire   [19:0] ret_V_6_fu_4329_p2;
wire   [18:0] p_Val2_63_fu_4343_p2;
wire   [0:0] p_Result_60_fu_4335_p3;
wire   [0:0] p_Result_61_fu_4347_p3;
wire   [0:0] xor_ln895_38_fu_4355_p2;
wire   [0:0] xor_ln896_38_fu_4367_p2;
wire   [0:0] xor_ln302_12_fu_4379_p2;
wire   [0:0] overflow_22_fu_4361_p2;
wire   [0:0] xor_ln302_13_fu_4385_p2;
wire   [0:0] underflow_22_fu_4373_p2;
wire   [0:0] or_ln302_6_fu_4391_p2;
wire   [18:0] select_ln302_12_fu_4397_p3;
wire   [18:0] select_ln350_6_fu_4405_p3;
wire   [0:0] xor_ln895_39_fu_4421_p2;
wire   [0:0] xor_ln896_39_fu_4431_p2;
wire   [0:0] xor_ln302_14_fu_4441_p2;
wire   [0:0] overflow_23_fu_4426_p2;
wire   [0:0] xor_ln302_15_fu_4445_p2;
wire   [0:0] underflow_23_fu_4436_p2;
wire   [0:0] or_ln302_7_fu_4451_p2;
wire   [18:0] select_ln302_14_fu_4457_p3;
wire   [18:0] select_ln350_7_fu_4464_p3;
wire  signed [18:0] p_Val2_93_fu_4315_p3;
wire  signed [19:0] sext_ln813_14_fu_4483_p1;
wire  signed [19:0] sext_ln813_13_fu_4479_p1;
wire   [19:0] ret_V_8_fu_4486_p2;
wire   [18:0] p_Val2_70_fu_4500_p2;
wire   [0:0] p_Result_64_fu_4492_p3;
wire   [0:0] p_Result_65_fu_4505_p3;
wire   [0:0] xor_ln895_40_fu_4513_p2;
wire   [0:0] xor_ln896_40_fu_4525_p2;
wire   [0:0] xor_ln302_16_fu_4537_p2;
wire   [0:0] overflow_24_fu_4519_p2;
wire   [0:0] xor_ln302_17_fu_4543_p2;
wire   [0:0] underflow_24_fu_4531_p2;
wire   [0:0] or_ln302_8_fu_4549_p2;
wire   [18:0] select_ln302_16_fu_4555_p3;
wire   [18:0] select_ln350_8_fu_4563_p3;
wire  signed [18:0] p_Val2_96_fu_4571_p3;
wire  signed [19:0] sext_ln813_16_fu_4583_p1;
wire  signed [19:0] sext_ln813_15_fu_4579_p1;
wire   [19:0] ret_V_9_fu_4586_p2;
wire   [18:0] p_Val2_73_fu_4600_p2;
wire   [0:0] p_Result_66_fu_4592_p3;
wire   [0:0] p_Result_67_fu_4605_p3;
wire   [0:0] xor_ln895_41_fu_4613_p2;
wire   [0:0] xor_ln896_41_fu_4625_p2;
wire   [0:0] xor_ln302_18_fu_4637_p2;
wire   [0:0] overflow_25_fu_4619_p2;
wire   [0:0] xor_ln302_19_fu_4643_p2;
wire   [0:0] underflow_25_fu_4631_p2;
wire   [0:0] or_ln302_9_fu_4649_p2;
wire   [18:0] select_ln302_18_fu_4655_p3;
wire   [18:0] select_ln350_9_fu_4663_p3;
wire  signed [18:0] p_Val2_95_fu_4471_p3;
wire  signed [19:0] sext_ln813_18_fu_4683_p1;
wire  signed [19:0] sext_ln813_17_fu_4679_p1;
wire   [19:0] ret_V_10_fu_4686_p2;
wire   [18:0] p_Val2_75_fu_4700_p2;
wire   [0:0] p_Result_68_fu_4692_p3;
wire   [0:0] p_Result_69_fu_4705_p3;
wire   [0:0] xor_ln895_42_fu_4713_p2;
wire   [0:0] xor_ln896_42_fu_4725_p2;
wire   [0:0] xor_ln302_20_fu_4737_p2;
wire   [0:0] overflow_26_fu_4719_p2;
wire   [0:0] xor_ln302_21_fu_4743_p2;
wire   [0:0] underflow_26_fu_4731_p2;
wire   [0:0] or_ln302_10_fu_4749_p2;
wire   [18:0] select_ln302_20_fu_4755_p3;
wire   [18:0] select_ln350_10_fu_4763_p3;
wire  signed [18:0] p_Val2_94_fu_4413_p3;
wire  signed [19:0] sext_ln813_22_fu_4783_p1;
wire  signed [19:0] sext_ln813_21_fu_4779_p1;
wire   [19:0] ret_V_12_fu_4786_p2;
wire   [18:0] p_Val2_81_fu_4800_p2;
wire   [0:0] p_Result_72_fu_4792_p3;
wire   [0:0] p_Result_73_fu_4805_p3;
wire   [0:0] xor_ln895_44_fu_4813_p2;
wire   [0:0] xor_ln896_44_fu_4825_p2;
wire   [0:0] xor_ln302_24_fu_4837_p2;
wire   [0:0] overflow_28_fu_4819_p2;
wire   [0:0] xor_ln302_25_fu_4843_p2;
wire   [0:0] underflow_28_fu_4831_p2;
wire   [0:0] or_ln302_12_fu_4849_p2;
wire   [18:0] select_ln302_24_fu_4855_p3;
wire   [18:0] select_ln350_12_fu_4863_p3;
wire  signed [18:0] p_Val2_98_fu_4771_p3;
wire  signed [19:0] sext_ln813_24_fu_4883_p1;
wire  signed [19:0] sext_ln813_23_fu_4879_p1;
wire   [19:0] ret_V_13_fu_4886_p2;
wire   [18:0] p_Val2_83_fu_4900_p2;
wire   [0:0] p_Result_74_fu_4892_p3;
wire   [0:0] p_Result_75_fu_4905_p3;
wire   [0:0] xor_ln895_45_fu_4913_p2;
wire   [0:0] xor_ln896_45_fu_4925_p2;
wire   [0:0] xor_ln302_26_fu_4937_p2;
wire   [0:0] overflow_29_fu_4919_p2;
wire   [0:0] xor_ln302_27_fu_4943_p2;
wire   [0:0] underflow_29_fu_4931_p2;
wire   [0:0] or_ln302_13_fu_4949_p2;
wire   [18:0] select_ln302_26_fu_4955_p3;
wire   [18:0] select_ln350_13_fu_4963_p3;
wire   [18:0] select_ln346_22_fu_4982_p3;
wire  signed [18:0] sext_ln856_3_fu_4979_p1;
wire  signed [18:0] mult_V_26_fu_4989_p3;
wire  signed [19:0] sext_ln813_20_fu_4999_p1;
wire  signed [19:0] sext_ln813_19_fu_4996_p1;
wire   [19:0] ret_V_11_fu_5003_p2;
wire   [18:0] p_Val2_79_fu_5017_p2;
wire   [0:0] p_Result_70_fu_5009_p3;
wire   [0:0] p_Result_71_fu_5022_p3;
wire   [0:0] xor_ln895_43_fu_5030_p2;
wire   [0:0] xor_ln896_43_fu_5042_p2;
wire   [0:0] xor_ln302_22_fu_5054_p2;
wire   [0:0] overflow_27_fu_5036_p2;
wire   [0:0] xor_ln302_23_fu_5060_p2;
wire   [0:0] underflow_27_fu_5048_p2;
wire   [0:0] or_ln302_11_fu_5066_p2;
wire   [18:0] select_ln302_22_fu_5072_p3;
wire   [18:0] select_ln350_11_fu_5080_p3;
wire  signed [19:0] sext_ln813_26_fu_5099_p1;
wire  signed [19:0] sext_ln813_25_fu_5096_p1;
wire   [19:0] ret_V_14_fu_5102_p2;
wire   [18:0] p_Val2_88_fu_5116_p2;
wire   [0:0] p_Result_76_fu_5108_p3;
wire   [0:0] p_Result_77_fu_5120_p3;
wire   [0:0] xor_ln895_46_fu_5128_p2;
wire   [0:0] xor_ln896_46_fu_5140_p2;
wire   [0:0] xor_ln302_28_fu_5152_p2;
wire   [0:0] overflow_30_fu_5134_p2;
wire   [0:0] xor_ln302_29_fu_5158_p2;
wire   [0:0] underflow_30_fu_5146_p2;
wire   [0:0] or_ln302_14_fu_5164_p2;
wire   [18:0] select_ln302_28_fu_5170_p3;
wire   [18:0] select_ln350_14_fu_5178_p3;
wire  signed [18:0] lhs_12_fu_5186_p3;
wire  signed [19:0] sext_ln813_28_fu_5198_p1;
wire  signed [19:0] sext_ln813_27_fu_5194_p1;
wire   [19:0] ret_V_15_fu_5201_p2;
wire   [18:0] p_Val2_90_fu_5215_p2;
wire   [0:0] p_Result_78_fu_5207_p3;
wire   [0:0] p_Result_79_fu_5220_p3;
wire   [0:0] xor_ln895_47_fu_5228_p2;
wire   [0:0] xor_ln896_47_fu_5240_p2;
wire   [0:0] xor_ln302_30_fu_5252_p2;
wire   [0:0] overflow_31_fu_5234_p2;
wire   [0:0] xor_ln302_31_fu_5258_p2;
wire   [0:0] underflow_31_fu_5246_p2;
wire   [0:0] or_ln302_15_fu_5264_p2;
wire   [18:0] select_ln302_30_fu_5270_p3;
wire   [18:0] select_ln350_15_fu_5278_p3;
wire   [18:0] p_Val2_84_fu_5088_p3;
wire   [18:0] p_Val2_91_fu_5286_p3;
reg   [1:0] ap_NS_fsm;
reg    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
end

der2_sp_mul_19s_14ns_33_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 19 ),
    .din1_WIDTH( 14 ),
    .dout_WIDTH( 33 ))
mul_19s_14ns_33_1_1_U74(
    .din0(p_read1),
    .din1(r_V_3_fu_188_p1),
    .dout(r_V_3_fu_188_p2)
);

der2_sp_mul_19s_16s_34_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 19 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 34 ))
mul_19s_16s_34_1_1_U75(
    .din0(grp_fu_189_p0),
    .din1(grp_fu_189_p1),
    .dout(grp_fu_189_p2)
);

der2_sp_mul_19s_15s_34_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 19 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 34 ))
mul_19s_15s_34_1_1_U76(
    .din0(grp_fu_190_p0),
    .din1(grp_fu_190_p1),
    .dout(grp_fu_190_p2)
);

der2_sp_mul_19s_15s_33_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 19 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 33 ))
mul_19s_15s_33_1_1_U77(
    .din0(grp_fu_191_p0),
    .din1(grp_fu_191_p1),
    .dout(grp_fu_191_p2)
);

der2_sp_mul_19s_12ns_31_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 19 ),
    .din1_WIDTH( 12 ),
    .dout_WIDTH( 31 ))
mul_19s_12ns_31_1_1_U78(
    .din0(grp_fu_192_p0),
    .din1(grp_fu_192_p1),
    .dout(grp_fu_192_p2)
);

der2_sp_mul_19s_14s_33_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 19 ),
    .din1_WIDTH( 14 ),
    .dout_WIDTH( 33 ))
mul_19s_14s_33_1_1_U79(
    .din0(grp_fu_193_p0),
    .din1(grp_fu_193_p1),
    .dout(grp_fu_193_p2)
);

der2_sp_mul_19s_15s_34_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 19 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 34 ))
mul_19s_15s_34_1_1_U80(
    .din0(grp_fu_194_p0),
    .din1(grp_fu_194_p1),
    .dout(grp_fu_194_p2)
);

der2_sp_mul_19s_15s_33_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 19 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 33 ))
mul_19s_15s_33_1_1_U81(
    .din0(grp_fu_195_p0),
    .din1(grp_fu_195_p1),
    .dout(grp_fu_195_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_port_reg_p_read4 <= p_read4;
        ap_port_reg_p_read5 <= p_read5;
        ap_port_reg_p_read6 <= p_read6;
        ap_port_reg_p_read7 <= p_read7;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lhs_3_reg_5421 <= lhs_3_fu_4089_p3;
        mult_V_21_reg_5364 <= mult_V_21_fu_2335_p3;
        mult_V_24_reg_5370 <= mult_V_24_fu_2503_p3;
        mult_V_25_reg_5376 <= mult_V_25_fu_2695_p3;
        mult_V_27_reg_5397 <= mult_V_27_fu_3115_p3;
        mult_V_28_reg_5403 <= mult_V_28_fu_3307_p3;
        mult_V_29_reg_5409 <= mult_V_29_fu_3504_p3;
        mult_V_30_reg_5415 <= mult_V_30_fu_3701_p3;
        or_ln346_11_reg_5392 <= or_ln346_11_fu_2887_p2;
        overflow_11_reg_5387 <= overflow_11_fu_2857_p2;
        p_Result_58_reg_5427 <= ret_V_5_fu_4204_p2[32'd19];
        p_Result_59_reg_5440 <= p_Val2_61_fu_4218_p2[32'd18];
        p_Result_62_reg_5447 <= ret_V_7_fu_4238_p2[32'd19];
        p_Result_63_reg_5460 <= p_Val2_65_fu_4252_p2[32'd18];
        p_Val2_36_reg_5382 <= p_Val2_36_fu_2755_p2;
        p_Val2_61_reg_5434 <= p_Val2_61_fu_4218_p2;
        p_Val2_65_reg_5454 <= p_Val2_65_fu_4252_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mult_V_16_reg_5322 <= mult_V_16_fu_987_p3;
        mult_V_17_reg_5328 <= mult_V_17_fu_1190_p3;
        mult_V_18_reg_5334 <= mult_V_18_fu_1382_p3;
        mult_V_19_reg_5340 <= mult_V_19_fu_1578_p3;
        mult_V_20_reg_5346 <= mult_V_20_fu_1784_p3;
        mult_V_22_reg_5352 <= mult_V_22_fu_1984_p3;
        mult_V_23_reg_5358 <= mult_V_23_fu_2181_p3;
        mult_V_reg_5316 <= mult_V_fu_829_p3;
        p_Val2_85_reg_5473 <= p_Val2_85_fu_4871_p3;
        p_Val2_97_reg_5467 <= p_Val2_97_fu_4671_p3;
        p_Val2_99_reg_5478 <= p_Val2_99_fu_4971_p3;
        p_read218_reg_5311 <= p_read2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_189_p0 = sext_ln70_11_fu_2708_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_189_p0 = sext_ln70_7_fu_1992_p1;
        end else begin
            grp_fu_189_p0 = 'bx;
        end
    end else begin
        grp_fu_189_p0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_189_p1 = 30'd1073741068;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_189_p1 = 34'd15013;
        end else begin
            grp_fu_189_p1 = 'bx;
        end
    end else begin
        grp_fu_189_p1 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_190_p0 = sext_ln70_13_fu_3512_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_190_p0 = sext_ln70_6_fu_1591_p1;
        end else begin
            grp_fu_190_p0 = 'bx;
        end
    end else begin
        grp_fu_190_p0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_190_p1 = 34'd17179854722;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_190_p1 = 32'd4294963924;
        end else begin
            grp_fu_190_p1 = 'bx;
        end
    end else begin
        grp_fu_190_p1 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_191_p0 = sext_ln70_8_fu_2343_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_191_p0 = sext_ln70_4_fu_1586_p1;
        end else begin
            grp_fu_191_p0 = 'bx;
        end
    end else begin
        grp_fu_191_p0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_191_p1 = 33'd7054;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_191_p1 = 31'd2147482142;
        end else begin
            grp_fu_191_p1 = 'bx;
        end
    end else begin
        grp_fu_191_p1 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_192_p0 = sext_ln70_9_fu_2348_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_192_p0 = sext_ln70_fu_677_p1;
        end else begin
            grp_fu_192_p0 = 'bx;
        end
    end else begin
        grp_fu_192_p0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_192_p1 = 31'd1360;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_192_p1 = 31'd1436;
        end else begin
            grp_fu_192_p1 = 'bx;
        end
    end else begin
        grp_fu_192_p1 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_193_p0 = sext_ln70_10_fu_2703_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_193_p0 = sext_ln70_2_fu_995_p1;
        end else begin
            grp_fu_193_p0 = 'bx;
        end
    end else begin
        grp_fu_193_p0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_193_p1 = 33'd8589928981;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_193_p1 = 32'd2198;
        end else begin
            grp_fu_193_p1 = 'bx;
        end
    end else begin
        grp_fu_193_p1 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_194_p0 = sext_ln70_12_fu_3315_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_194_p0 = sext_ln70_3_fu_1000_p1;
        end else begin
            grp_fu_194_p0 = 'bx;
        end
    end else begin
        grp_fu_194_p0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_194_p1 = 34'd17179855935;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_194_p1 = 33'd8589929945;
        end else begin
            grp_fu_194_p1 = 'bx;
        end
    end else begin
        grp_fu_194_p1 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_195_p0 = sext_ln70_5_fu_2189_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_195_p0 = sext_ln70_1_fu_682_p1;
        end else begin
            grp_fu_195_p0 = 'bx;
        end
    end else begin
        grp_fu_195_p0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_195_p1 = 33'd8589929534;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_195_p1 = 33'd5595;
        end else begin
            grp_fu_195_p1 = 'bx;
        end
    end else begin
        grp_fu_195_p1 = 'bx;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((((1'b0 == ap_block_pp0_stage1_subdone) & (ap_reset_idle_pp0 == 1'b0)) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_reset_idle_pp0 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Range2_all_ones_10_fu_2575_p3 = grp_fu_191_p2[32'd32];

assign Range2_all_ones_11_fu_2781_p1 = grp_fu_189_p2;

assign Range2_all_ones_11_fu_2781_p3 = Range2_all_ones_11_fu_2781_p1[32'd29];

assign Range2_all_ones_12_fu_2995_p3 = r_V_12_fu_2917_p2[32'd30];

assign Range2_all_ones_13_fu_3187_p3 = grp_fu_193_p2[32'd32];

assign Range2_all_ones_14_fu_3384_p3 = grp_fu_194_p2[32'd33];

assign Range2_all_ones_15_fu_3581_p3 = grp_fu_190_p2[32'd33];

assign Range2_all_ones_2_fu_1070_p1 = grp_fu_194_p2;

assign Range2_all_ones_2_fu_1070_p3 = Range2_all_ones_2_fu_1070_p1[32'd32];

assign Range2_all_ones_3_fu_1262_p3 = r_V_3_fu_188_p2[32'd32];

assign Range2_all_ones_4_fu_1458_p1 = grp_fu_193_p2;

assign Range2_all_ones_4_fu_1458_p3 = Range2_all_ones_4_fu_1458_p1[32'd31];

assign Range2_all_ones_5_fu_1664_p1 = grp_fu_190_p2;

assign Range2_all_ones_5_fu_1664_p3 = Range2_all_ones_5_fu_1664_p1[32'd31];

assign Range2_all_ones_7_fu_1864_p1 = grp_fu_191_p2;

assign Range2_all_ones_7_fu_1864_p3 = Range2_all_ones_7_fu_1864_p1[32'd30];

assign Range2_all_ones_8_fu_2061_p3 = grp_fu_189_p2[32'd33];

assign and_ln891_10_fu_2627_p2 = (carry_21_fu_2569_p2 & Range2_all_ones_10_fu_2575_p3);

assign and_ln891_11_fu_2833_p2 = (carry_23_fu_2775_p2 & Range2_all_ones_11_fu_2781_p3);

assign and_ln891_12_fu_3047_p2 = (carry_25_fu_2989_p2 & Range2_all_ones_12_fu_2995_p3);

assign and_ln891_13_fu_3239_p2 = (carry_27_fu_3181_p2 & Range2_all_ones_13_fu_3187_p3);

assign and_ln891_14_fu_3436_p2 = (carry_29_fu_3378_p2 & Range2_all_ones_14_fu_3384_p3);

assign and_ln891_15_fu_3633_p2 = (carry_31_fu_3575_p2 & Range2_all_ones_15_fu_3581_p3);

assign and_ln891_1_fu_919_p2 = (grp_fu_669_p3 & carry_3_fu_869_p2);

assign and_ln891_2_fu_1122_p2 = (carry_5_fu_1064_p2 & Range2_all_ones_2_fu_1070_p3);

assign and_ln891_3_fu_1314_p2 = (carry_7_fu_1256_p2 & Range2_all_ones_3_fu_1262_p3);

assign and_ln891_4_fu_1510_p2 = (carry_9_fu_1452_p2 & Range2_all_ones_4_fu_1458_p3);

assign and_ln891_5_fu_1716_p2 = (carry_11_fu_1658_p2 & Range2_all_ones_5_fu_1664_p3);

assign and_ln891_6_fu_2267_p2 = (grp_fu_627_p3 & carry_13_fu_2217_p2);

assign and_ln891_7_fu_1916_p2 = (carry_15_fu_1858_p2 & Range2_all_ones_7_fu_1864_p3);

assign and_ln891_8_fu_2113_p2 = (carry_17_fu_2055_p2 & Range2_all_ones_8_fu_2061_p3);

assign and_ln891_9_fu_2435_p2 = (grp_fu_669_p3 & carry_19_fu_2385_p2);

assign and_ln891_fu_761_p2 = (grp_fu_627_p3 & carry_1_fu_711_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_subdone = (1'b0 == ap_ce);
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_subdone = (1'b0 == ap_ce);
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_return_0 = p_Val2_84_fu_5088_p3;

assign ap_return_1 = p_Val2_85_reg_5473;

assign ap_return_2 = p_Val2_91_fu_5286_p3;

assign carry_11_fu_1658_p2 = (xor_ln896_10_fu_1652_p2 & p_Result_16_fu_1618_p3);

assign carry_13_fu_2217_p2 = (xor_ln896_12_fu_2211_p2 & grp_fu_611_p3);

assign carry_15_fu_1858_p2 = (xor_ln896_14_fu_1852_p2 & p_Result_22_fu_1814_p3);

assign carry_17_fu_2055_p2 = (xor_ln896_16_fu_2049_p2 & p_Result_25_fu_2015_p3);

assign carry_19_fu_2385_p2 = (xor_ln896_18_fu_2379_p2 & grp_fu_653_p3);

assign carry_1_fu_711_p2 = (xor_ln896_fu_705_p2 & grp_fu_611_p3);

assign carry_21_fu_2569_p2 = (xor_ln896_20_fu_2563_p2 & p_Result_31_fu_2529_p3);

assign carry_23_fu_2775_p2 = (xor_ln896_22_fu_2769_p2 & p_Result_34_fu_2735_p3);

assign carry_25_fu_2989_p2 = (xor_ln896_24_fu_2983_p2 & p_Result_37_fu_2945_p3);

assign carry_27_fu_3181_p2 = (xor_ln896_26_fu_3175_p2 & p_Result_40_fu_3141_p3);

assign carry_29_fu_3378_p2 = (xor_ln896_28_fu_3372_p2 & p_Result_43_fu_3338_p3);

assign carry_31_fu_3575_p2 = (xor_ln896_30_fu_3569_p2 & p_Result_46_fu_3535_p3);

assign carry_3_fu_869_p2 = (xor_ln896_2_fu_863_p2 & grp_fu_653_p3);

assign carry_5_fu_1064_p2 = (xor_ln896_4_fu_1058_p2 & p_Result_7_fu_1024_p3);

assign carry_7_fu_1256_p2 = (xor_ln896_6_fu_1250_p2 & p_Result_10_fu_1216_p3);

assign carry_9_fu_1452_p2 = (xor_ln896_8_fu_1446_p2 & p_Result_13_fu_1412_p3);

assign deleted_ones_10_fu_2621_p2 = (or_ln890_10_fu_2615_p2 & Range2_all_ones_10_fu_2575_p3);

assign deleted_ones_11_fu_2827_p2 = (or_ln890_11_fu_2821_p2 & Range2_all_ones_11_fu_2781_p3);

assign deleted_ones_12_fu_3041_p2 = (or_ln890_12_fu_3035_p2 & Range2_all_ones_12_fu_2995_p3);

assign deleted_ones_13_fu_3233_p2 = (or_ln890_13_fu_3227_p2 & Range2_all_ones_13_fu_3187_p3);

assign deleted_ones_14_fu_3430_p2 = (or_ln890_14_fu_3424_p2 & Range2_all_ones_14_fu_3384_p3);

assign deleted_ones_15_fu_3627_p2 = (or_ln890_15_fu_3621_p2 & Range2_all_ones_15_fu_3581_p3);

assign deleted_ones_1_fu_913_p2 = (or_ln890_1_fu_907_p2 & grp_fu_669_p3);

assign deleted_ones_2_fu_1116_p2 = (or_ln890_2_fu_1110_p2 & Range2_all_ones_2_fu_1070_p3);

assign deleted_ones_3_fu_1308_p2 = (or_ln890_3_fu_1302_p2 & Range2_all_ones_3_fu_1262_p3);

assign deleted_ones_4_fu_1504_p2 = (or_ln890_4_fu_1498_p2 & Range2_all_ones_4_fu_1458_p3);

assign deleted_ones_5_fu_1710_p2 = (or_ln890_5_fu_1704_p2 & Range2_all_ones_5_fu_1664_p3);

assign deleted_ones_6_fu_2261_p2 = (or_ln890_6_fu_2255_p2 & grp_fu_627_p3);

assign deleted_ones_7_fu_1910_p2 = (or_ln890_7_fu_1904_p2 & Range2_all_ones_7_fu_1864_p3);

assign deleted_ones_8_fu_2107_p2 = (or_ln890_8_fu_2101_p2 & Range2_all_ones_8_fu_2061_p3);

assign deleted_ones_9_fu_2429_p2 = (or_ln890_9_fu_2423_p2 & grp_fu_669_p3);

assign deleted_ones_fu_755_p2 = (or_ln890_fu_749_p2 & grp_fu_627_p3);

assign deleted_zeros_10_fu_2595_p2 = (or_ln888_10_fu_2589_p2 ^ Range2_all_ones_10_fu_2575_p3);

assign deleted_zeros_11_fu_2801_p2 = (or_ln888_11_fu_2795_p2 ^ Range2_all_ones_11_fu_2781_p3);

assign deleted_zeros_12_fu_3015_p2 = (or_ln888_12_fu_3009_p2 ^ Range2_all_ones_12_fu_2995_p3);

assign deleted_zeros_13_fu_3207_p2 = (or_ln888_13_fu_3201_p2 ^ Range2_all_ones_13_fu_3187_p3);

assign deleted_zeros_14_fu_3404_p2 = (or_ln888_14_fu_3398_p2 ^ Range2_all_ones_14_fu_3384_p3);

assign deleted_zeros_15_fu_3601_p2 = (or_ln888_15_fu_3595_p2 ^ Range2_all_ones_15_fu_3581_p3);

assign deleted_zeros_1_fu_887_p2 = (or_ln888_1_fu_881_p2 ^ grp_fu_669_p3);

assign deleted_zeros_2_fu_1090_p2 = (or_ln888_2_fu_1084_p2 ^ Range2_all_ones_2_fu_1070_p3);

assign deleted_zeros_3_fu_1282_p2 = (or_ln888_3_fu_1276_p2 ^ Range2_all_ones_3_fu_1262_p3);

assign deleted_zeros_4_fu_1478_p2 = (or_ln888_4_fu_1472_p2 ^ Range2_all_ones_4_fu_1458_p3);

assign deleted_zeros_5_fu_1684_p2 = (or_ln888_5_fu_1678_p2 ^ Range2_all_ones_5_fu_1664_p3);

assign deleted_zeros_6_fu_2235_p2 = (or_ln888_6_fu_2229_p2 ^ grp_fu_627_p3);

assign deleted_zeros_7_fu_1884_p2 = (or_ln888_7_fu_1878_p2 ^ Range2_all_ones_7_fu_1864_p3);

assign deleted_zeros_8_fu_2081_p2 = (or_ln888_8_fu_2075_p2 ^ Range2_all_ones_8_fu_2061_p3);

assign deleted_zeros_9_fu_2403_p2 = (or_ln888_9_fu_2397_p2 ^ grp_fu_669_p3);

assign deleted_zeros_fu_729_p2 = (or_ln888_fu_723_p2 ^ grp_fu_627_p3);

assign grp_fu_593_p3 = grp_fu_195_p2[32'd32];

assign grp_fu_601_p4 = {{grp_fu_195_p2[32:14]}};

assign grp_fu_611_p3 = grp_fu_195_p2[32'd32];

assign grp_fu_619_p3 = grp_fu_195_p2[32'd13];

assign grp_fu_627_p3 = grp_fu_195_p2[32'd32];

assign grp_fu_635_p3 = grp_fu_192_p2[32'd30];

assign grp_fu_643_p4 = {{grp_fu_192_p2[30:14]}};

assign grp_fu_653_p3 = grp_fu_192_p2[32'd30];

assign grp_fu_661_p3 = grp_fu_192_p2[32'd13];

assign grp_fu_669_p3 = grp_fu_192_p2[32'd30];

assign lhs_12_fu_5186_p3 = ((or_ln302_14_fu_5164_p2[0:0] == 1'b1) ? select_ln302_28_fu_5170_p3 : select_ln350_14_fu_5178_p3);

assign lhs_2_fu_3993_p3 = ((or_ln302_2_fu_3971_p2[0:0] == 1'b1) ? select_ln302_4_fu_3977_p3 : select_ln350_2_fu_3985_p3);

assign lhs_3_fu_4089_p3 = ((or_ln302_3_fu_4067_p2[0:0] == 1'b1) ? select_ln302_6_fu_4073_p3 : select_ln350_3_fu_4081_p3);

assign lhs_4_fu_4189_p3 = ((or_ln302_4_fu_4167_p2[0:0] == 1'b1) ? select_ln302_8_fu_4173_p3 : select_ln350_4_fu_4181_p3);

assign mult_V_16_fu_987_p3 = ((or_ln346_1_fu_981_p2[0:0] == 1'b1) ? select_ln346_fu_973_p3 : sext_ln856_fu_851_p1);

assign mult_V_17_fu_1190_p3 = ((or_ln346_2_fu_1184_p2[0:0] == 1'b1) ? select_ln346_4_fu_1176_p3 : p_Val2_9_fu_1044_p2);

assign mult_V_18_fu_1382_p3 = ((or_ln346_3_fu_1376_p2[0:0] == 1'b1) ? select_ln346_6_fu_1368_p3 : p_Val2_12_fu_1236_p2);

assign mult_V_19_fu_1578_p3 = ((or_ln346_4_fu_1572_p2[0:0] == 1'b1) ? select_ln346_8_fu_1564_p3 : p_Val2_15_fu_1432_p2);

assign mult_V_20_fu_1784_p3 = ((or_ln346_5_fu_1778_p2[0:0] == 1'b1) ? select_ln346_10_fu_1770_p3 : p_Val2_18_fu_1638_p2);

assign mult_V_21_fu_2335_p3 = ((or_ln346_6_fu_2329_p2[0:0] == 1'b1) ? select_ln346_12_fu_2321_p3 : p_Val2_21_fu_2197_p2);

assign mult_V_22_fu_1984_p3 = ((or_ln346_7_fu_1978_p2[0:0] == 1'b1) ? select_ln346_14_fu_1970_p3 : sext_ln856_1_fu_1840_p1);

assign mult_V_23_fu_2181_p3 = ((or_ln346_8_fu_2175_p2[0:0] == 1'b1) ? select_ln346_16_fu_2167_p3 : p_Val2_27_fu_2035_p2);

assign mult_V_24_fu_2503_p3 = ((or_ln346_9_fu_2497_p2[0:0] == 1'b1) ? select_ln346_18_fu_2489_p3 : sext_ln856_2_fu_2367_p1);

assign mult_V_25_fu_2695_p3 = ((or_ln346_10_fu_2689_p2[0:0] == 1'b1) ? select_ln346_20_fu_2681_p3 : p_Val2_33_fu_2549_p2);

assign mult_V_26_fu_4989_p3 = ((or_ln346_11_reg_5392[0:0] == 1'b1) ? select_ln346_22_fu_4982_p3 : sext_ln856_3_fu_4979_p1);

assign mult_V_27_fu_3115_p3 = ((or_ln346_12_fu_3109_p2[0:0] == 1'b1) ? select_ln346_24_fu_3101_p3 : sext_ln856_4_fu_2971_p1);

assign mult_V_28_fu_3307_p3 = ((or_ln346_13_fu_3301_p2[0:0] == 1'b1) ? select_ln346_26_fu_3293_p3 : p_Val2_42_fu_3161_p2);

assign mult_V_29_fu_3504_p3 = ((or_ln346_14_fu_3498_p2[0:0] == 1'b1) ? select_ln346_28_fu_3490_p3 : p_Val2_45_fu_3358_p2);

assign mult_V_30_fu_3701_p3 = ((or_ln346_15_fu_3695_p2[0:0] == 1'b1) ? select_ln346_30_fu_3687_p3 : p_Val2_48_fu_3555_p2);

assign mult_V_fu_829_p3 = ((or_ln346_fu_823_p2[0:0] == 1'b1) ? select_ln346_1_fu_815_p3 : p_Val2_3_fu_691_p2);

assign or_ln302_10_fu_4749_p2 = (xor_ln302_21_fu_4743_p2 | overflow_26_fu_4719_p2);

assign or_ln302_11_fu_5066_p2 = (xor_ln302_23_fu_5060_p2 | overflow_27_fu_5036_p2);

assign or_ln302_12_fu_4849_p2 = (xor_ln302_25_fu_4843_p2 | overflow_28_fu_4819_p2);

assign or_ln302_13_fu_4949_p2 = (xor_ln302_27_fu_4943_p2 | overflow_29_fu_4919_p2);

assign or_ln302_14_fu_5164_p2 = (xor_ln302_29_fu_5158_p2 | overflow_30_fu_5134_p2);

assign or_ln302_15_fu_5264_p2 = (xor_ln302_31_fu_5258_p2 | overflow_31_fu_5234_p2);

assign or_ln302_1_fu_3871_p2 = (xor_ln302_3_fu_3865_p2 | overflow_17_fu_3841_p2);

assign or_ln302_2_fu_3971_p2 = (xor_ln302_5_fu_3965_p2 | overflow_18_fu_3941_p2);

assign or_ln302_3_fu_4067_p2 = (xor_ln302_7_fu_4061_p2 | overflow_19_fu_4037_p2);

assign or_ln302_4_fu_4167_p2 = (xor_ln302_9_fu_4161_p2 | overflow_20_fu_4137_p2);

assign or_ln302_5_fu_4295_p2 = (xor_ln302_11_fu_4289_p2 | overflow_21_fu_4270_p2);

assign or_ln302_6_fu_4391_p2 = (xor_ln302_13_fu_4385_p2 | overflow_22_fu_4361_p2);

assign or_ln302_7_fu_4451_p2 = (xor_ln302_15_fu_4445_p2 | overflow_23_fu_4426_p2);

assign or_ln302_8_fu_4549_p2 = (xor_ln302_17_fu_4543_p2 | overflow_24_fu_4519_p2);

assign or_ln302_9_fu_4649_p2 = (xor_ln302_19_fu_4643_p2 | overflow_25_fu_4619_p2);

assign or_ln302_fu_3775_p2 = (xor_ln302_1_fu_3769_p2 | overflow_16_fu_3745_p2);

assign or_ln346_10_fu_2689_p2 = (underflow_10_fu_2675_p2 | overflow_10_fu_2651_p2);

assign or_ln346_11_fu_2887_p2 = (underflow_11_fu_2881_p2 | overflow_11_fu_2857_p2);

assign or_ln346_12_fu_3109_p2 = (underflow_12_fu_3095_p2 | overflow_12_fu_3071_p2);

assign or_ln346_13_fu_3301_p2 = (underflow_13_fu_3287_p2 | overflow_13_fu_3263_p2);

assign or_ln346_14_fu_3498_p2 = (underflow_14_fu_3484_p2 | overflow_14_fu_3460_p2);

assign or_ln346_15_fu_3695_p2 = (underflow_15_fu_3681_p2 | overflow_15_fu_3657_p2);

assign or_ln346_1_fu_981_p2 = (underflow_1_fu_967_p2 | overflow_1_fu_943_p2);

assign or_ln346_2_fu_1184_p2 = (underflow_2_fu_1170_p2 | overflow_2_fu_1146_p2);

assign or_ln346_3_fu_1376_p2 = (underflow_3_fu_1362_p2 | overflow_3_fu_1338_p2);

assign or_ln346_4_fu_1572_p2 = (underflow_4_fu_1558_p2 | overflow_4_fu_1534_p2);

assign or_ln346_5_fu_1778_p2 = (underflow_5_fu_1764_p2 | overflow_5_fu_1740_p2);

assign or_ln346_6_fu_2329_p2 = (underflow_6_fu_2315_p2 | overflow_6_fu_2291_p2);

assign or_ln346_7_fu_1978_p2 = (underflow_7_fu_1964_p2 | overflow_7_fu_1940_p2);

assign or_ln346_8_fu_2175_p2 = (underflow_8_fu_2161_p2 | overflow_8_fu_2137_p2);

assign or_ln346_9_fu_2497_p2 = (underflow_9_fu_2483_p2 | overflow_9_fu_2459_p2);

assign or_ln346_fu_823_p2 = (underflow_fu_809_p2 | overflow_fu_785_p2);

assign or_ln888_10_fu_2589_p2 = (xor_ln888_20_fu_2583_p2 | p_Result_32_fu_2555_p3);

assign or_ln888_11_fu_2795_p2 = (xor_ln888_22_fu_2789_p2 | p_Result_35_fu_2761_p3);

assign or_ln888_12_fu_3009_p2 = (xor_ln888_24_fu_3003_p2 | p_Result_38_fu_2975_p3);

assign or_ln888_13_fu_3201_p2 = (xor_ln888_26_fu_3195_p2 | p_Result_41_fu_3167_p3);

assign or_ln888_14_fu_3398_p2 = (xor_ln888_28_fu_3392_p2 | p_Result_44_fu_3364_p3);

assign or_ln888_15_fu_3595_p2 = (xor_ln888_30_fu_3589_p2 | p_Result_47_fu_3561_p3);

assign or_ln888_1_fu_881_p2 = (xor_ln888_2_fu_875_p2 | p_Result_5_fu_855_p3);

assign or_ln888_2_fu_1084_p2 = (xor_ln888_4_fu_1078_p2 | p_Result_8_fu_1050_p3);

assign or_ln888_3_fu_1276_p2 = (xor_ln888_6_fu_1270_p2 | p_Result_11_fu_1242_p3);

assign or_ln888_4_fu_1472_p2 = (xor_ln888_8_fu_1466_p2 | p_Result_14_fu_1438_p3);

assign or_ln888_5_fu_1678_p2 = (xor_ln888_10_fu_1672_p2 | p_Result_17_fu_1644_p3);

assign or_ln888_6_fu_2229_p2 = (xor_ln888_12_fu_2223_p2 | p_Result_20_fu_2203_p3);

assign or_ln888_7_fu_1878_p2 = (xor_ln888_14_fu_1872_p2 | p_Result_23_fu_1844_p3);

assign or_ln888_8_fu_2075_p2 = (xor_ln888_16_fu_2069_p2 | p_Result_26_fu_2041_p3);

assign or_ln888_9_fu_2397_p2 = (xor_ln888_18_fu_2391_p2 | p_Result_29_fu_2371_p3);

assign or_ln888_fu_723_p2 = (xor_ln888_fu_717_p2 | p_Result_2_fu_697_p3);

assign or_ln890_10_fu_2615_p2 = (xor_ln890_10_fu_2609_p2 | or_ln888_10_fu_2589_p2);

assign or_ln890_11_fu_2821_p2 = (xor_ln890_11_fu_2815_p2 | or_ln888_11_fu_2795_p2);

assign or_ln890_12_fu_3035_p2 = (xor_ln890_12_fu_3029_p2 | or_ln888_12_fu_3009_p2);

assign or_ln890_13_fu_3227_p2 = (xor_ln890_13_fu_3221_p2 | or_ln888_13_fu_3201_p2);

assign or_ln890_14_fu_3424_p2 = (xor_ln890_14_fu_3418_p2 | or_ln888_14_fu_3398_p2);

assign or_ln890_15_fu_3621_p2 = (xor_ln890_15_fu_3615_p2 | or_ln888_15_fu_3595_p2);

assign or_ln890_1_fu_907_p2 = (xor_ln890_1_fu_901_p2 | or_ln888_1_fu_881_p2);

assign or_ln890_2_fu_1110_p2 = (xor_ln890_2_fu_1104_p2 | or_ln888_2_fu_1084_p2);

assign or_ln890_3_fu_1302_p2 = (xor_ln890_3_fu_1296_p2 | or_ln888_3_fu_1276_p2);

assign or_ln890_4_fu_1498_p2 = (xor_ln890_4_fu_1492_p2 | or_ln888_4_fu_1472_p2);

assign or_ln890_5_fu_1704_p2 = (xor_ln890_5_fu_1698_p2 | or_ln888_5_fu_1678_p2);

assign or_ln890_6_fu_2255_p2 = (xor_ln890_6_fu_2249_p2 | or_ln888_6_fu_2229_p2);

assign or_ln890_7_fu_1904_p2 = (xor_ln890_7_fu_1898_p2 | or_ln888_7_fu_1878_p2);

assign or_ln890_8_fu_2101_p2 = (xor_ln890_8_fu_2095_p2 | or_ln888_8_fu_2075_p2);

assign or_ln890_9_fu_2423_p2 = (xor_ln890_9_fu_2417_p2 | or_ln888_9_fu_2397_p2);

assign or_ln890_fu_749_p2 = (xor_ln890_fu_743_p2 | or_ln888_fu_723_p2);

assign or_ln895_10_fu_2639_p2 = (xor_ln895_20_fu_2633_p2 | p_Result_32_fu_2555_p3);

assign or_ln895_11_fu_2845_p2 = (xor_ln895_22_fu_2839_p2 | p_Result_35_fu_2761_p3);

assign or_ln895_12_fu_3059_p2 = (xor_ln895_24_fu_3053_p2 | p_Result_38_fu_2975_p3);

assign or_ln895_13_fu_3251_p2 = (xor_ln895_26_fu_3245_p2 | p_Result_41_fu_3167_p3);

assign or_ln895_14_fu_3448_p2 = (xor_ln895_28_fu_3442_p2 | p_Result_44_fu_3364_p3);

assign or_ln895_15_fu_3645_p2 = (xor_ln895_30_fu_3639_p2 | p_Result_47_fu_3561_p3);

assign or_ln895_1_fu_931_p2 = (xor_ln895_2_fu_925_p2 | p_Result_5_fu_855_p3);

assign or_ln895_2_fu_1134_p2 = (xor_ln895_4_fu_1128_p2 | p_Result_8_fu_1050_p3);

assign or_ln895_3_fu_1326_p2 = (xor_ln895_6_fu_1320_p2 | p_Result_11_fu_1242_p3);

assign or_ln895_4_fu_1522_p2 = (xor_ln895_8_fu_1516_p2 | p_Result_14_fu_1438_p3);

assign or_ln895_5_fu_1728_p2 = (xor_ln895_10_fu_1722_p2 | p_Result_17_fu_1644_p3);

assign or_ln895_6_fu_2279_p2 = (xor_ln895_12_fu_2273_p2 | p_Result_20_fu_2203_p3);

assign or_ln895_7_fu_1928_p2 = (xor_ln895_14_fu_1922_p2 | p_Result_23_fu_1844_p3);

assign or_ln895_8_fu_2125_p2 = (xor_ln895_16_fu_2119_p2 | p_Result_26_fu_2041_p3);

assign or_ln895_9_fu_2447_p2 = (xor_ln895_18_fu_2441_p2 | p_Result_29_fu_2371_p3);

assign or_ln895_fu_773_p2 = (xor_ln895_fu_767_p2 | p_Result_2_fu_697_p3);

assign or_ln896_10_fu_2663_p2 = (xor_ln896_21_fu_2657_p2 | xor_ln896_20_fu_2563_p2);

assign or_ln896_11_fu_2869_p2 = (xor_ln896_23_fu_2863_p2 | xor_ln896_22_fu_2769_p2);

assign or_ln896_12_fu_3083_p2 = (xor_ln896_25_fu_3077_p2 | xor_ln896_24_fu_2983_p2);

assign or_ln896_13_fu_3275_p2 = (xor_ln896_27_fu_3269_p2 | xor_ln896_26_fu_3175_p2);

assign or_ln896_14_fu_3472_p2 = (xor_ln896_29_fu_3466_p2 | xor_ln896_28_fu_3372_p2);

assign or_ln896_15_fu_3669_p2 = (xor_ln896_31_fu_3663_p2 | xor_ln896_30_fu_3569_p2);

assign or_ln896_1_fu_955_p2 = (xor_ln896_3_fu_949_p2 | xor_ln896_2_fu_863_p2);

assign or_ln896_2_fu_1158_p2 = (xor_ln896_5_fu_1152_p2 | xor_ln896_4_fu_1058_p2);

assign or_ln896_3_fu_1350_p2 = (xor_ln896_7_fu_1344_p2 | xor_ln896_6_fu_1250_p2);

assign or_ln896_4_fu_1546_p2 = (xor_ln896_9_fu_1540_p2 | xor_ln896_8_fu_1446_p2);

assign or_ln896_5_fu_1752_p2 = (xor_ln896_11_fu_1746_p2 | xor_ln896_10_fu_1652_p2);

assign or_ln896_6_fu_2303_p2 = (xor_ln896_13_fu_2297_p2 | xor_ln896_12_fu_2211_p2);

assign or_ln896_7_fu_1952_p2 = (xor_ln896_15_fu_1946_p2 | xor_ln896_14_fu_1852_p2);

assign or_ln896_8_fu_2149_p2 = (xor_ln896_17_fu_2143_p2 | xor_ln896_16_fu_2049_p2);

assign or_ln896_9_fu_2471_p2 = (xor_ln896_19_fu_2465_p2 | xor_ln896_18_fu_2379_p2);

assign or_ln896_fu_797_p2 = (xor_ln896_fu_705_p2 | xor_ln896_1_fu_791_p2);

assign overflow_10_fu_2651_p2 = (xor_ln895_21_fu_2645_p2 & or_ln895_10_fu_2639_p2);

assign overflow_11_fu_2857_p2 = (xor_ln895_23_fu_2851_p2 & or_ln895_11_fu_2845_p2);

assign overflow_12_fu_3071_p2 = (xor_ln895_25_fu_3065_p2 & or_ln895_12_fu_3059_p2);

assign overflow_13_fu_3263_p2 = (xor_ln895_27_fu_3257_p2 & or_ln895_13_fu_3251_p2);

assign overflow_14_fu_3460_p2 = (xor_ln895_29_fu_3454_p2 & or_ln895_14_fu_3448_p2);

assign overflow_15_fu_3657_p2 = (xor_ln895_31_fu_3651_p2 & or_ln895_15_fu_3645_p2);

assign overflow_16_fu_3745_p2 = (xor_ln895_32_fu_3739_p2 & p_Result_49_fu_3731_p3);

assign overflow_17_fu_3841_p2 = (xor_ln895_33_fu_3835_p2 & p_Result_51_fu_3827_p3);

assign overflow_18_fu_3941_p2 = (xor_ln895_34_fu_3935_p2 & p_Result_53_fu_3927_p3);

assign overflow_19_fu_4037_p2 = (xor_ln895_35_fu_4031_p2 & p_Result_55_fu_4023_p3);

assign overflow_1_fu_943_p2 = (xor_ln895_3_fu_937_p2 & or_ln895_1_fu_931_p2);

assign overflow_20_fu_4137_p2 = (xor_ln895_36_fu_4131_p2 & p_Result_57_fu_4123_p3);

assign overflow_21_fu_4270_p2 = (xor_ln895_37_fu_4265_p2 & p_Result_59_reg_5440);

assign overflow_22_fu_4361_p2 = (xor_ln895_38_fu_4355_p2 & p_Result_61_fu_4347_p3);

assign overflow_23_fu_4426_p2 = (xor_ln895_39_fu_4421_p2 & p_Result_63_reg_5460);

assign overflow_24_fu_4519_p2 = (xor_ln895_40_fu_4513_p2 & p_Result_65_fu_4505_p3);

assign overflow_25_fu_4619_p2 = (xor_ln895_41_fu_4613_p2 & p_Result_67_fu_4605_p3);

assign overflow_26_fu_4719_p2 = (xor_ln895_42_fu_4713_p2 & p_Result_69_fu_4705_p3);

assign overflow_27_fu_5036_p2 = (xor_ln895_43_fu_5030_p2 & p_Result_71_fu_5022_p3);

assign overflow_28_fu_4819_p2 = (xor_ln895_44_fu_4813_p2 & p_Result_73_fu_4805_p3);

assign overflow_29_fu_4919_p2 = (xor_ln895_45_fu_4913_p2 & p_Result_75_fu_4905_p3);

assign overflow_2_fu_1146_p2 = (xor_ln895_5_fu_1140_p2 & or_ln895_2_fu_1134_p2);

assign overflow_30_fu_5134_p2 = (xor_ln895_46_fu_5128_p2 & p_Result_77_fu_5120_p3);

assign overflow_31_fu_5234_p2 = (xor_ln895_47_fu_5228_p2 & p_Result_79_fu_5220_p3);

assign overflow_3_fu_1338_p2 = (xor_ln895_7_fu_1332_p2 & or_ln895_3_fu_1326_p2);

assign overflow_4_fu_1534_p2 = (xor_ln895_9_fu_1528_p2 & or_ln895_4_fu_1522_p2);

assign overflow_5_fu_1740_p2 = (xor_ln895_11_fu_1734_p2 & or_ln895_5_fu_1728_p2);

assign overflow_6_fu_2291_p2 = (xor_ln895_13_fu_2285_p2 & or_ln895_6_fu_2279_p2);

assign overflow_7_fu_1940_p2 = (xor_ln895_15_fu_1934_p2 & or_ln895_7_fu_1928_p2);

assign overflow_8_fu_2137_p2 = (xor_ln895_17_fu_2131_p2 & or_ln895_8_fu_2125_p2);

assign overflow_9_fu_2459_p2 = (xor_ln895_19_fu_2453_p2 & or_ln895_9_fu_2447_p2);

assign overflow_fu_785_p2 = (xor_ln895_1_fu_779_p2 & or_ln895_fu_773_p2);

assign p_Result_10_fu_1216_p3 = r_V_3_fu_188_p2[32'd32];

assign p_Result_11_fu_1242_p3 = p_Val2_12_fu_1236_p2[32'd18];

assign p_Result_12_fu_1390_p1 = grp_fu_193_p2;

assign p_Result_12_fu_1390_p3 = p_Result_12_fu_1390_p1[32'd31];

assign p_Result_13_fu_1412_p1 = grp_fu_193_p2;

assign p_Result_13_fu_1412_p3 = p_Result_13_fu_1412_p1[32'd31];

assign p_Result_14_fu_1438_p3 = p_Val2_15_fu_1432_p2[32'd18];

assign p_Result_15_fu_1596_p1 = grp_fu_190_p2;

assign p_Result_15_fu_1596_p3 = p_Result_15_fu_1596_p1[32'd31];

assign p_Result_16_fu_1618_p1 = grp_fu_190_p2;

assign p_Result_16_fu_1618_p3 = p_Result_16_fu_1618_p1[32'd31];

assign p_Result_17_fu_1644_p3 = p_Val2_18_fu_1638_p2[32'd18];

assign p_Result_20_fu_2203_p3 = p_Val2_21_fu_2197_p2[32'd18];

assign p_Result_21_fu_1792_p1 = grp_fu_191_p2;

assign p_Result_21_fu_1792_p3 = p_Result_21_fu_1792_p1[32'd30];

assign p_Result_22_fu_1814_p1 = grp_fu_191_p2;

assign p_Result_22_fu_1814_p3 = p_Result_22_fu_1814_p1[32'd30];

assign p_Result_23_fu_1844_p3 = p_Val2_24_fu_1834_p2[32'd17];

assign p_Result_24_fu_1997_p3 = grp_fu_189_p2[32'd33];

assign p_Result_25_fu_2015_p3 = grp_fu_189_p2[32'd32];

assign p_Result_26_fu_2041_p3 = p_Val2_27_fu_2035_p2[32'd18];

assign p_Result_29_fu_2371_p3 = p_Val2_30_fu_2361_p2[32'd17];

assign p_Result_2_fu_697_p3 = p_Val2_3_fu_691_p2[32'd18];

assign p_Result_30_fu_2511_p3 = grp_fu_191_p2[32'd32];

assign p_Result_31_fu_2529_p3 = grp_fu_191_p2[32'd32];

assign p_Result_32_fu_2555_p3 = p_Val2_33_fu_2549_p2[32'd18];

assign p_Result_33_fu_2713_p1 = grp_fu_189_p2;

assign p_Result_33_fu_2713_p3 = p_Result_33_fu_2713_p1[32'd29];

assign p_Result_34_fu_2735_p1 = grp_fu_189_p2;

assign p_Result_34_fu_2735_p3 = p_Result_34_fu_2735_p1[32'd29];

assign p_Result_35_fu_2761_p3 = p_Val2_36_fu_2755_p2[32'd16];

assign p_Result_36_fu_2923_p3 = r_V_12_fu_2917_p2[32'd30];

assign p_Result_37_fu_2945_p3 = r_V_12_fu_2917_p2[32'd30];

assign p_Result_38_fu_2975_p3 = p_Val2_39_fu_2965_p2[32'd17];

assign p_Result_39_fu_3123_p3 = grp_fu_193_p2[32'd32];

assign p_Result_40_fu_3141_p3 = grp_fu_193_p2[32'd32];

assign p_Result_41_fu_3167_p3 = p_Val2_42_fu_3161_p2[32'd18];

assign p_Result_42_fu_3320_p3 = grp_fu_194_p2[32'd33];

assign p_Result_43_fu_3338_p3 = grp_fu_194_p2[32'd32];

assign p_Result_44_fu_3364_p3 = p_Val2_45_fu_3358_p2[32'd18];

assign p_Result_45_fu_3517_p3 = grp_fu_190_p2[32'd33];

assign p_Result_46_fu_3535_p3 = grp_fu_190_p2[32'd32];

assign p_Result_47_fu_3561_p3 = p_Val2_48_fu_3555_p2[32'd18];

assign p_Result_48_fu_3718_p3 = ret_V_fu_3712_p2[32'd19];

assign p_Result_49_fu_3731_p3 = p_Val2_50_fu_3726_p2[32'd18];

assign p_Result_50_fu_3814_p3 = ret_V_1_fu_3808_p2[32'd19];

assign p_Result_51_fu_3827_p3 = p_Val2_51_fu_3822_p2[32'd18];

assign p_Result_52_fu_3914_p3 = ret_V_2_fu_3908_p2[32'd19];

assign p_Result_53_fu_3927_p3 = p_Val2_55_fu_3922_p2[32'd18];

assign p_Result_54_fu_4010_p3 = ret_V_3_fu_4004_p2[32'd19];

assign p_Result_55_fu_4023_p3 = p_Val2_57_fu_4018_p2[32'd18];

assign p_Result_56_fu_4110_p3 = ret_V_4_fu_4104_p2[32'd19];

assign p_Result_57_fu_4123_p3 = p_Val2_59_fu_4118_p2[32'd18];

assign p_Result_5_fu_855_p3 = p_Val2_6_fu_845_p2[32'd17];

assign p_Result_60_fu_4335_p3 = ret_V_6_fu_4329_p2[32'd19];

assign p_Result_61_fu_4347_p3 = p_Val2_63_fu_4343_p2[32'd18];

assign p_Result_64_fu_4492_p3 = ret_V_8_fu_4486_p2[32'd19];

assign p_Result_65_fu_4505_p3 = p_Val2_70_fu_4500_p2[32'd18];

assign p_Result_66_fu_4592_p3 = ret_V_9_fu_4586_p2[32'd19];

assign p_Result_67_fu_4605_p3 = p_Val2_73_fu_4600_p2[32'd18];

assign p_Result_68_fu_4692_p3 = ret_V_10_fu_4686_p2[32'd19];

assign p_Result_69_fu_4705_p3 = p_Val2_75_fu_4700_p2[32'd18];

assign p_Result_6_fu_1006_p1 = grp_fu_194_p2;

assign p_Result_6_fu_1006_p3 = p_Result_6_fu_1006_p1[32'd32];

assign p_Result_70_fu_5009_p3 = ret_V_11_fu_5003_p2[32'd19];

assign p_Result_71_fu_5022_p3 = p_Val2_79_fu_5017_p2[32'd18];

assign p_Result_72_fu_4792_p3 = ret_V_12_fu_4786_p2[32'd19];

assign p_Result_73_fu_4805_p3 = p_Val2_81_fu_4800_p2[32'd18];

assign p_Result_74_fu_4892_p3 = ret_V_13_fu_4886_p2[32'd19];

assign p_Result_75_fu_4905_p3 = p_Val2_83_fu_4900_p2[32'd18];

assign p_Result_76_fu_5108_p3 = ret_V_14_fu_5102_p2[32'd19];

assign p_Result_77_fu_5120_p3 = p_Val2_88_fu_5116_p2[32'd18];

assign p_Result_78_fu_5207_p3 = ret_V_15_fu_5201_p2[32'd19];

assign p_Result_79_fu_5220_p3 = p_Val2_90_fu_5215_p2[32'd18];

assign p_Result_7_fu_1024_p1 = grp_fu_194_p2;

assign p_Result_7_fu_1024_p3 = p_Result_7_fu_1024_p1[32'd32];

assign p_Result_8_fu_1050_p3 = p_Val2_9_fu_1044_p2[32'd18];

assign p_Result_9_fu_1198_p3 = r_V_3_fu_188_p2[32'd32];

assign p_Val2_11_fu_1206_p4 = {{r_V_3_fu_188_p2[32:14]}};

assign p_Val2_12_fu_1236_p2 = (zext_ln377_3_fu_1232_p1 + p_Val2_11_fu_1206_p4);

assign p_Val2_14_fu_1398_p1 = grp_fu_193_p2;

assign p_Val2_14_fu_1398_p4 = {{p_Val2_14_fu_1398_p1[31:14]}};

assign p_Val2_15_fu_1432_p2 = ($signed(zext_ln377_4_fu_1428_p1) + $signed(sext_ln818_fu_1408_p1));

assign p_Val2_17_fu_1604_p1 = grp_fu_190_p2;

assign p_Val2_17_fu_1604_p4 = {{p_Val2_17_fu_1604_p1[31:14]}};

assign p_Val2_18_fu_1638_p2 = ($signed(zext_ln377_5_fu_1634_p1) + $signed(sext_ln818_1_fu_1614_p1));

assign p_Val2_21_fu_2197_p2 = (zext_ln377_6_fu_2193_p1 + grp_fu_601_p4);

assign p_Val2_23_fu_1800_p1 = grp_fu_191_p2;

assign p_Val2_23_fu_1800_p4 = {{p_Val2_23_fu_1800_p1[30:14]}};

assign p_Val2_24_fu_1834_p2 = ($signed(zext_ln377_7_fu_1830_p1) + $signed(sext_ln823_1_fu_1810_p1));

assign p_Val2_26_fu_2005_p4 = {{grp_fu_189_p2[32:14]}};

assign p_Val2_27_fu_2035_p2 = (zext_ln377_8_fu_2031_p1 + p_Val2_26_fu_2005_p4);

assign p_Val2_30_fu_2361_p2 = ($signed(zext_ln377_9_fu_2357_p1) + $signed(sext_ln823_2_fu_2353_p1));

assign p_Val2_32_fu_2519_p4 = {{grp_fu_191_p2[32:14]}};

assign p_Val2_33_fu_2549_p2 = (zext_ln377_10_fu_2545_p1 + p_Val2_32_fu_2519_p4);

assign p_Val2_35_fu_2721_p1 = grp_fu_189_p2;

assign p_Val2_35_fu_2721_p4 = {{p_Val2_35_fu_2721_p1[29:14]}};

assign p_Val2_36_fu_2755_p2 = ($signed(zext_ln377_11_fu_2751_p1) + $signed(sext_ln823_3_fu_2731_p1));

assign p_Val2_38_fu_2931_p4 = {{r_V_12_fu_2917_p2[30:14]}};

assign p_Val2_39_fu_2965_p2 = ($signed(zext_ln377_12_fu_2961_p1) + $signed(sext_ln823_4_fu_2941_p1));

assign p_Val2_3_fu_691_p2 = (zext_ln377_fu_687_p1 + grp_fu_601_p4);

assign p_Val2_41_fu_3131_p4 = {{grp_fu_193_p2[32:14]}};

assign p_Val2_42_fu_3161_p2 = (zext_ln377_13_fu_3157_p1 + p_Val2_41_fu_3131_p4);

assign p_Val2_44_fu_3328_p4 = {{grp_fu_194_p2[32:14]}};

assign p_Val2_45_fu_3358_p2 = (zext_ln377_14_fu_3354_p1 + p_Val2_44_fu_3328_p4);

assign p_Val2_47_fu_3525_p4 = {{grp_fu_190_p2[32:14]}};

assign p_Val2_48_fu_3555_p2 = (zext_ln377_15_fu_3551_p1 + p_Val2_47_fu_3525_p4);

assign p_Val2_50_fu_3726_p2 = ($signed(mult_V_reg_5316) + $signed(19'd524236));

assign p_Val2_51_fu_3822_p2 = ($signed(mult_V_16_reg_5322) + $signed(19'd3066));

assign p_Val2_55_fu_3922_p2 = ($signed(mult_V_17_reg_5328) + $signed(p_Val2_s_fu_3797_p3));

assign p_Val2_57_fu_4018_p2 = ($signed(mult_V_18_reg_5334) + $signed(19'd524015));

assign p_Val2_59_fu_4118_p2 = ($signed(mult_V_19_reg_5340) + $signed(p_Val2_92_fu_3893_p3));

assign p_Val2_61_fu_4218_p2 = ($signed(mult_V_20_reg_5346) + $signed(lhs_2_fu_3993_p3));

assign p_Val2_63_fu_4343_p2 = ($signed(mult_V_21_reg_5364) + $signed(lhs_3_reg_5421));

assign p_Val2_65_fu_4252_p2 = ($signed(mult_V_22_reg_5352) + $signed(lhs_4_fu_4189_p3));

assign p_Val2_6_fu_845_p2 = ($signed(zext_ln377_1_fu_841_p1) + $signed(sext_ln823_fu_837_p1));

assign p_Val2_70_fu_4500_p2 = ($signed(mult_V_23_reg_5358) + $signed(p_Val2_93_fu_4315_p3));

assign p_Val2_73_fu_4600_p2 = ($signed(mult_V_24_reg_5370) + $signed(p_Val2_96_fu_4571_p3));

assign p_Val2_75_fu_4700_p2 = ($signed(mult_V_25_reg_5376) + $signed(p_Val2_95_fu_4471_p3));

assign p_Val2_79_fu_5017_p2 = ($signed(mult_V_26_fu_4989_p3) + $signed(p_Val2_97_reg_5467));

assign p_Val2_7_fu_1014_p1 = grp_fu_194_p2;

assign p_Val2_7_fu_1014_p4 = {{p_Val2_7_fu_1014_p1[32:14]}};

assign p_Val2_81_fu_4800_p2 = ($signed(mult_V_27_reg_5397) + $signed(p_Val2_94_fu_4413_p3));

assign p_Val2_83_fu_4900_p2 = ($signed(mult_V_28_reg_5403) + $signed(p_Val2_98_fu_4771_p3));

assign p_Val2_84_fu_5088_p3 = ((or_ln302_11_fu_5066_p2[0:0] == 1'b1) ? select_ln302_22_fu_5072_p3 : select_ln350_11_fu_5080_p3);

assign p_Val2_85_fu_4871_p3 = ((or_ln302_12_fu_4849_p2[0:0] == 1'b1) ? select_ln302_24_fu_4855_p3 : select_ln350_12_fu_4863_p3);

assign p_Val2_88_fu_5116_p2 = ($signed(mult_V_29_reg_5409) + $signed(p_Val2_99_reg_5478));

assign p_Val2_90_fu_5215_p2 = ($signed(mult_V_30_reg_5415) + $signed(lhs_12_fu_5186_p3));

assign p_Val2_91_fu_5286_p3 = ((or_ln302_15_fu_5264_p2[0:0] == 1'b1) ? select_ln302_30_fu_5270_p3 : select_ln350_15_fu_5278_p3);

assign p_Val2_92_fu_3893_p3 = ((or_ln302_1_fu_3871_p2[0:0] == 1'b1) ? select_ln302_2_fu_3877_p3 : select_ln350_1_fu_3885_p3);

assign p_Val2_93_fu_4315_p3 = ((or_ln302_5_fu_4295_p2[0:0] == 1'b1) ? select_ln302_10_fu_4301_p3 : select_ln350_5_fu_4308_p3);

assign p_Val2_94_fu_4413_p3 = ((or_ln302_6_fu_4391_p2[0:0] == 1'b1) ? select_ln302_12_fu_4397_p3 : select_ln350_6_fu_4405_p3);

assign p_Val2_95_fu_4471_p3 = ((or_ln302_7_fu_4451_p2[0:0] == 1'b1) ? select_ln302_14_fu_4457_p3 : select_ln350_7_fu_4464_p3);

assign p_Val2_96_fu_4571_p3 = ((or_ln302_8_fu_4549_p2[0:0] == 1'b1) ? select_ln302_16_fu_4555_p3 : select_ln350_8_fu_4563_p3);

assign p_Val2_97_fu_4671_p3 = ((or_ln302_9_fu_4649_p2[0:0] == 1'b1) ? select_ln302_18_fu_4655_p3 : select_ln350_9_fu_4663_p3);

assign p_Val2_98_fu_4771_p3 = ((or_ln302_10_fu_4749_p2[0:0] == 1'b1) ? select_ln302_20_fu_4755_p3 : select_ln350_10_fu_4763_p3);

assign p_Val2_99_fu_4971_p3 = ((or_ln302_13_fu_4949_p2[0:0] == 1'b1) ? select_ln302_26_fu_4955_p3 : select_ln350_13_fu_4963_p3);

assign p_Val2_9_fu_1044_p2 = (zext_ln377_2_fu_1040_p1 + p_Val2_7_fu_1014_p4);

assign p_Val2_s_fu_3797_p3 = ((or_ln302_fu_3775_p2[0:0] == 1'b1) ? select_ln302_fu_3781_p3 : select_ln350_fu_3789_p3);

assign r_V_12_fu_2917_p2 = ($signed(sext_ln1273_fu_2901_p1) - $signed(sext_ln1273_1_fu_2913_p1));

assign r_V_3_fu_188_p1 = 33'd7374;

assign ret_V_10_fu_4686_p2 = ($signed(sext_ln813_18_fu_4683_p1) + $signed(sext_ln813_17_fu_4679_p1));

assign ret_V_11_fu_5003_p2 = ($signed(sext_ln813_20_fu_4999_p1) + $signed(sext_ln813_19_fu_4996_p1));

assign ret_V_12_fu_4786_p2 = ($signed(sext_ln813_22_fu_4783_p1) + $signed(sext_ln813_21_fu_4779_p1));

assign ret_V_13_fu_4886_p2 = ($signed(sext_ln813_24_fu_4883_p1) + $signed(sext_ln813_23_fu_4879_p1));

assign ret_V_14_fu_5102_p2 = ($signed(sext_ln813_26_fu_5099_p1) + $signed(sext_ln813_25_fu_5096_p1));

assign ret_V_15_fu_5201_p2 = ($signed(sext_ln813_28_fu_5198_p1) + $signed(sext_ln813_27_fu_5194_p1));

assign ret_V_1_fu_3808_p2 = ($signed(sext_ln813_1_fu_3805_p1) + $signed(20'd3066));

assign ret_V_2_fu_3908_p2 = ($signed(sext_ln813_3_fu_3905_p1) + $signed(sext_ln813_2_fu_3901_p1));

assign ret_V_3_fu_4004_p2 = ($signed(sext_ln813_4_fu_4001_p1) + $signed(20'd1048303));

assign ret_V_4_fu_4104_p2 = ($signed(sext_ln813_6_fu_4101_p1) + $signed(sext_ln813_5_fu_4097_p1));

assign ret_V_5_fu_4204_p2 = ($signed(sext_ln813_8_fu_4201_p1) + $signed(sext_ln813_7_fu_4197_p1));

assign ret_V_6_fu_4329_p2 = ($signed(sext_ln813_10_fu_4326_p1) + $signed(sext_ln813_9_fu_4323_p1));

assign ret_V_7_fu_4238_p2 = ($signed(sext_ln813_12_fu_4235_p1) + $signed(sext_ln813_11_fu_4231_p1));

assign ret_V_8_fu_4486_p2 = ($signed(sext_ln813_14_fu_4483_p1) + $signed(sext_ln813_13_fu_4479_p1));

assign ret_V_9_fu_4586_p2 = ($signed(sext_ln813_16_fu_4583_p1) + $signed(sext_ln813_15_fu_4579_p1));

assign ret_V_fu_3712_p2 = ($signed(sext_ln813_fu_3709_p1) + $signed(20'd1048524));

assign select_ln302_10_fu_4301_p3 = ((xor_ln302_10_fu_4285_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_61_reg_5434);

assign select_ln302_12_fu_4397_p3 = ((xor_ln302_12_fu_4379_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_63_fu_4343_p2);

assign select_ln302_14_fu_4457_p3 = ((xor_ln302_14_fu_4441_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_65_reg_5454);

assign select_ln302_16_fu_4555_p3 = ((xor_ln302_16_fu_4537_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_70_fu_4500_p2);

assign select_ln302_18_fu_4655_p3 = ((xor_ln302_18_fu_4637_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_73_fu_4600_p2);

assign select_ln302_20_fu_4755_p3 = ((xor_ln302_20_fu_4737_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_75_fu_4700_p2);

assign select_ln302_22_fu_5072_p3 = ((xor_ln302_22_fu_5054_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_79_fu_5017_p2);

assign select_ln302_24_fu_4855_p3 = ((xor_ln302_24_fu_4837_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_81_fu_4800_p2);

assign select_ln302_26_fu_4955_p3 = ((xor_ln302_26_fu_4937_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_83_fu_4900_p2);

assign select_ln302_28_fu_5170_p3 = ((xor_ln302_28_fu_5152_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_88_fu_5116_p2);

assign select_ln302_2_fu_3877_p3 = ((xor_ln302_2_fu_3859_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_51_fu_3822_p2);

assign select_ln302_30_fu_5270_p3 = ((xor_ln302_30_fu_5252_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_90_fu_5215_p2);

assign select_ln302_4_fu_3977_p3 = ((xor_ln302_4_fu_3959_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_55_fu_3922_p2);

assign select_ln302_6_fu_4073_p3 = ((xor_ln302_6_fu_4055_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_57_fu_4018_p2);

assign select_ln302_8_fu_4173_p3 = ((xor_ln302_8_fu_4155_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_59_fu_4118_p2);

assign select_ln302_fu_3781_p3 = ((xor_ln302_fu_3763_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_50_fu_3726_p2);

assign select_ln346_10_fu_1770_p3 = ((overflow_5_fu_1740_p2[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_12_fu_2321_p3 = ((overflow_6_fu_2291_p2[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_14_fu_1970_p3 = ((overflow_7_fu_1940_p2[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_16_fu_2167_p3 = ((overflow_8_fu_2137_p2[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_18_fu_2489_p3 = ((overflow_9_fu_2459_p2[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_1_fu_815_p3 = ((overflow_fu_785_p2[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_20_fu_2681_p3 = ((overflow_10_fu_2651_p2[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_22_fu_4982_p3 = ((overflow_11_reg_5387[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_24_fu_3101_p3 = ((overflow_12_fu_3071_p2[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_26_fu_3293_p3 = ((overflow_13_fu_3263_p2[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_28_fu_3490_p3 = ((overflow_14_fu_3460_p2[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_30_fu_3687_p3 = ((overflow_15_fu_3657_p2[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_4_fu_1176_p3 = ((overflow_2_fu_1146_p2[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_6_fu_1368_p3 = ((overflow_3_fu_1338_p2[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_8_fu_1564_p3 = ((overflow_4_fu_1534_p2[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_fu_973_p3 = ((overflow_1_fu_943_p2[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln350_10_fu_4763_p3 = ((underflow_26_fu_4731_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_75_fu_4700_p2);

assign select_ln350_11_fu_5080_p3 = ((underflow_27_fu_5048_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_79_fu_5017_p2);

assign select_ln350_12_fu_4863_p3 = ((underflow_28_fu_4831_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_81_fu_4800_p2);

assign select_ln350_13_fu_4963_p3 = ((underflow_29_fu_4931_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_83_fu_4900_p2);

assign select_ln350_14_fu_5178_p3 = ((underflow_30_fu_5146_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_88_fu_5116_p2);

assign select_ln350_15_fu_5278_p3 = ((underflow_31_fu_5246_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_90_fu_5215_p2);

assign select_ln350_1_fu_3885_p3 = ((underflow_17_fu_3853_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_51_fu_3822_p2);

assign select_ln350_2_fu_3985_p3 = ((underflow_18_fu_3953_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_55_fu_3922_p2);

assign select_ln350_3_fu_4081_p3 = ((underflow_19_fu_4049_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_57_fu_4018_p2);

assign select_ln350_4_fu_4181_p3 = ((underflow_20_fu_4149_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_59_fu_4118_p2);

assign select_ln350_5_fu_4308_p3 = ((underflow_21_fu_4280_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_61_reg_5434);

assign select_ln350_6_fu_4405_p3 = ((underflow_22_fu_4373_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_63_fu_4343_p2);

assign select_ln350_7_fu_4464_p3 = ((underflow_23_fu_4436_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_65_reg_5454);

assign select_ln350_8_fu_4563_p3 = ((underflow_24_fu_4531_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_70_fu_4500_p2);

assign select_ln350_9_fu_4663_p3 = ((underflow_25_fu_4631_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_73_fu_4600_p2);

assign select_ln350_fu_3789_p3 = ((underflow_16_fu_3757_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_50_fu_3726_p2);

assign sext_ln1273_1_fu_2913_p1 = $signed(shl_ln1273_1_fu_2905_p3);

assign sext_ln1273_fu_2901_p1 = $signed(shl_ln_fu_2893_p3);

assign sext_ln70_10_fu_2703_p0 = ap_port_reg_p_read5;

assign sext_ln70_10_fu_2703_p1 = sext_ln70_10_fu_2703_p0;

assign sext_ln70_11_fu_2708_p0 = ap_port_reg_p_read5;

assign sext_ln70_11_fu_2708_p1 = sext_ln70_11_fu_2708_p0;

assign sext_ln70_12_fu_3315_p1 = $signed(ap_port_reg_p_read6);

assign sext_ln70_13_fu_3512_p1 = $signed(ap_port_reg_p_read7);

assign sext_ln70_1_fu_682_p0 = p_read;

assign sext_ln70_1_fu_682_p1 = sext_ln70_1_fu_682_p0;

assign sext_ln70_2_fu_995_p0 = p_read1;

assign sext_ln70_2_fu_995_p1 = sext_ln70_2_fu_995_p0;

assign sext_ln70_3_fu_1000_p0 = p_read1;

assign sext_ln70_3_fu_1000_p1 = sext_ln70_3_fu_1000_p0;

assign sext_ln70_4_fu_1586_p0 = p_read2;

assign sext_ln70_4_fu_1586_p1 = sext_ln70_4_fu_1586_p0;

assign sext_ln70_5_fu_2189_p1 = p_read218_reg_5311;

assign sext_ln70_6_fu_1591_p0 = p_read2;

assign sext_ln70_6_fu_1591_p1 = sext_ln70_6_fu_1591_p0;

assign sext_ln70_7_fu_1992_p1 = $signed(p_read3);

assign sext_ln70_8_fu_2343_p0 = ap_port_reg_p_read4;

assign sext_ln70_8_fu_2343_p1 = sext_ln70_8_fu_2343_p0;

assign sext_ln70_9_fu_2348_p0 = ap_port_reg_p_read4;

assign sext_ln70_9_fu_2348_p1 = sext_ln70_9_fu_2348_p0;

assign sext_ln70_fu_677_p0 = p_read;

assign sext_ln70_fu_677_p1 = sext_ln70_fu_677_p0;

assign sext_ln813_10_fu_4326_p1 = mult_V_21_reg_5364;

assign sext_ln813_11_fu_4231_p1 = lhs_4_fu_4189_p3;

assign sext_ln813_12_fu_4235_p1 = mult_V_22_reg_5352;

assign sext_ln813_13_fu_4479_p1 = p_Val2_93_fu_4315_p3;

assign sext_ln813_14_fu_4483_p1 = mult_V_23_reg_5358;

assign sext_ln813_15_fu_4579_p1 = p_Val2_96_fu_4571_p3;

assign sext_ln813_16_fu_4583_p1 = mult_V_24_reg_5370;

assign sext_ln813_17_fu_4679_p1 = p_Val2_95_fu_4471_p3;

assign sext_ln813_18_fu_4683_p1 = mult_V_25_reg_5376;

assign sext_ln813_19_fu_4996_p1 = p_Val2_97_reg_5467;

assign sext_ln813_1_fu_3805_p1 = mult_V_16_reg_5322;

assign sext_ln813_20_fu_4999_p1 = mult_V_26_fu_4989_p3;

assign sext_ln813_21_fu_4779_p1 = p_Val2_94_fu_4413_p3;

assign sext_ln813_22_fu_4783_p1 = mult_V_27_reg_5397;

assign sext_ln813_23_fu_4879_p1 = p_Val2_98_fu_4771_p3;

assign sext_ln813_24_fu_4883_p1 = mult_V_28_reg_5403;

assign sext_ln813_25_fu_5096_p1 = p_Val2_99_reg_5478;

assign sext_ln813_26_fu_5099_p1 = mult_V_29_reg_5409;

assign sext_ln813_27_fu_5194_p1 = lhs_12_fu_5186_p3;

assign sext_ln813_28_fu_5198_p1 = mult_V_30_reg_5415;

assign sext_ln813_2_fu_3901_p1 = p_Val2_s_fu_3797_p3;

assign sext_ln813_3_fu_3905_p1 = mult_V_17_reg_5328;

assign sext_ln813_4_fu_4001_p1 = mult_V_18_reg_5334;

assign sext_ln813_5_fu_4097_p1 = p_Val2_92_fu_3893_p3;

assign sext_ln813_6_fu_4101_p1 = mult_V_19_reg_5340;

assign sext_ln813_7_fu_4197_p1 = lhs_2_fu_3993_p3;

assign sext_ln813_8_fu_4201_p1 = mult_V_20_reg_5346;

assign sext_ln813_9_fu_4323_p1 = lhs_3_reg_5421;

assign sext_ln813_fu_3709_p1 = mult_V_reg_5316;

assign sext_ln818_1_fu_1614_p1 = $signed(p_Val2_17_fu_1604_p4);

assign sext_ln818_fu_1408_p1 = $signed(p_Val2_14_fu_1398_p4);

assign sext_ln823_1_fu_1810_p1 = $signed(p_Val2_23_fu_1800_p4);

assign sext_ln823_2_fu_2353_p1 = $signed(grp_fu_643_p4);

assign sext_ln823_3_fu_2731_p1 = $signed(p_Val2_35_fu_2721_p4);

assign sext_ln823_4_fu_2941_p1 = $signed(p_Val2_38_fu_2931_p4);

assign sext_ln823_fu_837_p1 = $signed(grp_fu_643_p4);

assign sext_ln856_1_fu_1840_p1 = p_Val2_24_fu_1834_p2;

assign sext_ln856_2_fu_2367_p1 = p_Val2_30_fu_2361_p2;

assign sext_ln856_3_fu_4979_p1 = p_Val2_36_reg_5382;

assign sext_ln856_4_fu_2971_p1 = p_Val2_39_fu_2965_p2;

assign sext_ln856_fu_851_p1 = p_Val2_6_fu_845_p2;

assign shl_ln1273_1_fu_2905_p1 = ap_port_reg_p_read5;

assign shl_ln1273_1_fu_2905_p3 = {{shl_ln1273_1_fu_2905_p1}, {2'd0}};

assign shl_ln_fu_2893_p1 = ap_port_reg_p_read5;

assign shl_ln_fu_2893_p3 = {{shl_ln_fu_2893_p1}, {11'd0}};

assign tmp_12_fu_1032_p1 = grp_fu_194_p2;

assign tmp_12_fu_1032_p3 = tmp_12_fu_1032_p1[32'd13];

assign tmp_15_fu_1096_p1 = grp_fu_194_p2;

assign tmp_15_fu_1096_p3 = tmp_15_fu_1096_p1[32'd32];

assign tmp_18_fu_1224_p3 = r_V_3_fu_188_p2[32'd13];

assign tmp_21_fu_1288_p3 = r_V_3_fu_188_p2[32'd32];

assign tmp_24_fu_1420_p1 = grp_fu_193_p2;

assign tmp_24_fu_1420_p3 = tmp_24_fu_1420_p1[32'd13];

assign tmp_27_fu_1484_p1 = grp_fu_193_p2;

assign tmp_27_fu_1484_p3 = tmp_27_fu_1484_p1[32'd31];

assign tmp_30_fu_1626_p1 = grp_fu_190_p2;

assign tmp_30_fu_1626_p3 = tmp_30_fu_1626_p1[32'd13];

assign tmp_33_fu_1690_p1 = grp_fu_190_p2;

assign tmp_33_fu_1690_p3 = tmp_33_fu_1690_p1[32'd31];

assign tmp_39_fu_2241_p3 = grp_fu_195_p2[32'd32];

assign tmp_3_fu_735_p3 = grp_fu_195_p2[32'd32];

assign tmp_42_fu_1822_p1 = grp_fu_191_p2;

assign tmp_42_fu_1822_p3 = tmp_42_fu_1822_p1[32'd13];

assign tmp_45_fu_1890_p1 = grp_fu_191_p2;

assign tmp_45_fu_1890_p3 = tmp_45_fu_1890_p1[32'd30];

assign tmp_48_fu_2023_p3 = grp_fu_189_p2[32'd13];

assign tmp_51_fu_2087_p3 = grp_fu_189_p2[32'd33];

assign tmp_57_fu_2409_p3 = grp_fu_192_p2[32'd30];

assign tmp_60_fu_2537_p3 = grp_fu_191_p2[32'd13];

assign tmp_63_fu_2601_p3 = grp_fu_191_p2[32'd32];

assign tmp_66_fu_2743_p1 = grp_fu_189_p2;

assign tmp_66_fu_2743_p3 = tmp_66_fu_2743_p1[32'd13];

assign tmp_69_fu_2807_p1 = grp_fu_189_p2;

assign tmp_69_fu_2807_p3 = tmp_69_fu_2807_p1[32'd29];

assign tmp_72_fu_2953_p3 = r_V_12_fu_2917_p2[32'd13];

assign tmp_75_fu_3021_p3 = r_V_12_fu_2917_p2[32'd30];

assign tmp_78_fu_3149_p3 = grp_fu_193_p2[32'd13];

assign tmp_81_fu_3213_p3 = grp_fu_193_p2[32'd32];

assign tmp_84_fu_3346_p3 = grp_fu_194_p2[32'd13];

assign tmp_87_fu_3410_p3 = grp_fu_194_p2[32'd33];

assign tmp_90_fu_3543_p3 = grp_fu_190_p2[32'd13];

assign tmp_93_fu_3607_p3 = grp_fu_190_p2[32'd33];

assign tmp_9_fu_893_p3 = grp_fu_192_p2[32'd30];

assign underflow_10_fu_2675_p2 = (xor_ln896_58_fu_2669_p2 & p_Result_30_fu_2511_p3);

assign underflow_11_fu_2881_p2 = (xor_ln896_59_fu_2875_p2 & p_Result_33_fu_2713_p3);

assign underflow_12_fu_3095_p2 = (xor_ln896_60_fu_3089_p2 & p_Result_36_fu_2923_p3);

assign underflow_13_fu_3287_p2 = (xor_ln896_61_fu_3281_p2 & p_Result_39_fu_3123_p3);

assign underflow_14_fu_3484_p2 = (xor_ln896_62_fu_3478_p2 & p_Result_42_fu_3320_p3);

assign underflow_15_fu_3681_p2 = (xor_ln896_63_fu_3675_p2 & p_Result_45_fu_3517_p3);

assign underflow_16_fu_3757_p2 = (xor_ln896_32_fu_3751_p2 & p_Result_48_fu_3718_p3);

assign underflow_17_fu_3853_p2 = (xor_ln896_33_fu_3847_p2 & p_Result_50_fu_3814_p3);

assign underflow_18_fu_3953_p2 = (xor_ln896_34_fu_3947_p2 & p_Result_52_fu_3914_p3);

assign underflow_19_fu_4049_p2 = (xor_ln896_35_fu_4043_p2 & p_Result_54_fu_4010_p3);

assign underflow_1_fu_967_p2 = (xor_ln896_49_fu_961_p2 & grp_fu_635_p3);

assign underflow_20_fu_4149_p2 = (xor_ln896_36_fu_4143_p2 & p_Result_56_fu_4110_p3);

assign underflow_21_fu_4280_p2 = (xor_ln896_37_fu_4275_p2 & p_Result_58_reg_5427);

assign underflow_22_fu_4373_p2 = (xor_ln896_38_fu_4367_p2 & p_Result_60_fu_4335_p3);

assign underflow_23_fu_4436_p2 = (xor_ln896_39_fu_4431_p2 & p_Result_62_reg_5447);

assign underflow_24_fu_4531_p2 = (xor_ln896_40_fu_4525_p2 & p_Result_64_fu_4492_p3);

assign underflow_25_fu_4631_p2 = (xor_ln896_41_fu_4625_p2 & p_Result_66_fu_4592_p3);

assign underflow_26_fu_4731_p2 = (xor_ln896_42_fu_4725_p2 & p_Result_68_fu_4692_p3);

assign underflow_27_fu_5048_p2 = (xor_ln896_43_fu_5042_p2 & p_Result_70_fu_5009_p3);

assign underflow_28_fu_4831_p2 = (xor_ln896_44_fu_4825_p2 & p_Result_72_fu_4792_p3);

assign underflow_29_fu_4931_p2 = (xor_ln896_45_fu_4925_p2 & p_Result_74_fu_4892_p3);

assign underflow_2_fu_1170_p2 = (xor_ln896_50_fu_1164_p2 & p_Result_6_fu_1006_p3);

assign underflow_30_fu_5146_p2 = (xor_ln896_46_fu_5140_p2 & p_Result_76_fu_5108_p3);

assign underflow_31_fu_5246_p2 = (xor_ln896_47_fu_5240_p2 & p_Result_78_fu_5207_p3);

assign underflow_3_fu_1362_p2 = (xor_ln896_51_fu_1356_p2 & p_Result_9_fu_1198_p3);

assign underflow_4_fu_1558_p2 = (xor_ln896_52_fu_1552_p2 & p_Result_12_fu_1390_p3);

assign underflow_5_fu_1764_p2 = (xor_ln896_53_fu_1758_p2 & p_Result_15_fu_1596_p3);

assign underflow_6_fu_2315_p2 = (xor_ln896_54_fu_2309_p2 & grp_fu_593_p3);

assign underflow_7_fu_1964_p2 = (xor_ln896_55_fu_1958_p2 & p_Result_21_fu_1792_p3);

assign underflow_8_fu_2161_p2 = (xor_ln896_56_fu_2155_p2 & p_Result_24_fu_1997_p3);

assign underflow_9_fu_2483_p2 = (xor_ln896_57_fu_2477_p2 & grp_fu_635_p3);

assign underflow_fu_809_p2 = (xor_ln896_48_fu_803_p2 & grp_fu_593_p3);

assign xor_ln302_10_fu_4285_p2 = (p_Result_59_reg_5440 ^ p_Result_58_reg_5427);

assign xor_ln302_11_fu_4289_p2 = (xor_ln302_10_fu_4285_p2 ^ 1'd1);

assign xor_ln302_12_fu_4379_p2 = (p_Result_61_fu_4347_p3 ^ p_Result_60_fu_4335_p3);

assign xor_ln302_13_fu_4385_p2 = (xor_ln302_12_fu_4379_p2 ^ 1'd1);

assign xor_ln302_14_fu_4441_p2 = (p_Result_63_reg_5460 ^ p_Result_62_reg_5447);

assign xor_ln302_15_fu_4445_p2 = (xor_ln302_14_fu_4441_p2 ^ 1'd1);

assign xor_ln302_16_fu_4537_p2 = (p_Result_65_fu_4505_p3 ^ p_Result_64_fu_4492_p3);

assign xor_ln302_17_fu_4543_p2 = (xor_ln302_16_fu_4537_p2 ^ 1'd1);

assign xor_ln302_18_fu_4637_p2 = (p_Result_67_fu_4605_p3 ^ p_Result_66_fu_4592_p3);

assign xor_ln302_19_fu_4643_p2 = (xor_ln302_18_fu_4637_p2 ^ 1'd1);

assign xor_ln302_1_fu_3769_p2 = (xor_ln302_fu_3763_p2 ^ 1'd1);

assign xor_ln302_20_fu_4737_p2 = (p_Result_69_fu_4705_p3 ^ p_Result_68_fu_4692_p3);

assign xor_ln302_21_fu_4743_p2 = (xor_ln302_20_fu_4737_p2 ^ 1'd1);

assign xor_ln302_22_fu_5054_p2 = (p_Result_71_fu_5022_p3 ^ p_Result_70_fu_5009_p3);

assign xor_ln302_23_fu_5060_p2 = (xor_ln302_22_fu_5054_p2 ^ 1'd1);

assign xor_ln302_24_fu_4837_p2 = (p_Result_73_fu_4805_p3 ^ p_Result_72_fu_4792_p3);

assign xor_ln302_25_fu_4843_p2 = (xor_ln302_24_fu_4837_p2 ^ 1'd1);

assign xor_ln302_26_fu_4937_p2 = (p_Result_75_fu_4905_p3 ^ p_Result_74_fu_4892_p3);

assign xor_ln302_27_fu_4943_p2 = (xor_ln302_26_fu_4937_p2 ^ 1'd1);

assign xor_ln302_28_fu_5152_p2 = (p_Result_77_fu_5120_p3 ^ p_Result_76_fu_5108_p3);

assign xor_ln302_29_fu_5158_p2 = (xor_ln302_28_fu_5152_p2 ^ 1'd1);

assign xor_ln302_2_fu_3859_p2 = (p_Result_51_fu_3827_p3 ^ p_Result_50_fu_3814_p3);

assign xor_ln302_30_fu_5252_p2 = (p_Result_79_fu_5220_p3 ^ p_Result_78_fu_5207_p3);

assign xor_ln302_31_fu_5258_p2 = (xor_ln302_30_fu_5252_p2 ^ 1'd1);

assign xor_ln302_3_fu_3865_p2 = (xor_ln302_2_fu_3859_p2 ^ 1'd1);

assign xor_ln302_4_fu_3959_p2 = (p_Result_53_fu_3927_p3 ^ p_Result_52_fu_3914_p3);

assign xor_ln302_5_fu_3965_p2 = (xor_ln302_4_fu_3959_p2 ^ 1'd1);

assign xor_ln302_6_fu_4055_p2 = (p_Result_55_fu_4023_p3 ^ p_Result_54_fu_4010_p3);

assign xor_ln302_7_fu_4061_p2 = (xor_ln302_6_fu_4055_p2 ^ 1'd1);

assign xor_ln302_8_fu_4155_p2 = (p_Result_57_fu_4123_p3 ^ p_Result_56_fu_4110_p3);

assign xor_ln302_9_fu_4161_p2 = (xor_ln302_8_fu_4155_p2 ^ 1'd1);

assign xor_ln302_fu_3763_p2 = (p_Result_49_fu_3731_p3 ^ p_Result_48_fu_3718_p3);

assign xor_ln888_10_fu_1672_p2 = (p_Result_16_fu_1618_p3 ^ 1'd1);

assign xor_ln888_12_fu_2223_p2 = (grp_fu_611_p3 ^ 1'd1);

assign xor_ln888_14_fu_1872_p2 = (p_Result_22_fu_1814_p3 ^ 1'd1);

assign xor_ln888_16_fu_2069_p2 = (p_Result_25_fu_2015_p3 ^ 1'd1);

assign xor_ln888_18_fu_2391_p2 = (grp_fu_653_p3 ^ 1'd1);

assign xor_ln888_20_fu_2583_p2 = (p_Result_31_fu_2529_p3 ^ 1'd1);

assign xor_ln888_22_fu_2789_p2 = (p_Result_34_fu_2735_p3 ^ 1'd1);

assign xor_ln888_24_fu_3003_p2 = (p_Result_37_fu_2945_p3 ^ 1'd1);

assign xor_ln888_26_fu_3195_p2 = (p_Result_40_fu_3141_p3 ^ 1'd1);

assign xor_ln888_28_fu_3392_p2 = (p_Result_43_fu_3338_p3 ^ 1'd1);

assign xor_ln888_2_fu_875_p2 = (grp_fu_653_p3 ^ 1'd1);

assign xor_ln888_30_fu_3589_p2 = (p_Result_46_fu_3535_p3 ^ 1'd1);

assign xor_ln888_4_fu_1078_p2 = (p_Result_7_fu_1024_p3 ^ 1'd1);

assign xor_ln888_6_fu_1270_p2 = (p_Result_10_fu_1216_p3 ^ 1'd1);

assign xor_ln888_8_fu_1466_p2 = (p_Result_13_fu_1412_p3 ^ 1'd1);

assign xor_ln888_fu_717_p2 = (grp_fu_611_p3 ^ 1'd1);

assign xor_ln890_10_fu_2609_p2 = (tmp_63_fu_2601_p3 ^ 1'd1);

assign xor_ln890_11_fu_2815_p2 = (tmp_69_fu_2807_p3 ^ 1'd1);

assign xor_ln890_12_fu_3029_p2 = (tmp_75_fu_3021_p3 ^ 1'd1);

assign xor_ln890_13_fu_3221_p2 = (tmp_81_fu_3213_p3 ^ 1'd1);

assign xor_ln890_14_fu_3418_p2 = (tmp_87_fu_3410_p3 ^ 1'd1);

assign xor_ln890_15_fu_3615_p2 = (tmp_93_fu_3607_p3 ^ 1'd1);

assign xor_ln890_1_fu_901_p2 = (tmp_9_fu_893_p3 ^ 1'd1);

assign xor_ln890_2_fu_1104_p2 = (tmp_15_fu_1096_p3 ^ 1'd1);

assign xor_ln890_3_fu_1296_p2 = (tmp_21_fu_1288_p3 ^ 1'd1);

assign xor_ln890_4_fu_1492_p2 = (tmp_27_fu_1484_p3 ^ 1'd1);

assign xor_ln890_5_fu_1698_p2 = (tmp_33_fu_1690_p3 ^ 1'd1);

assign xor_ln890_6_fu_2249_p2 = (tmp_39_fu_2241_p3 ^ 1'd1);

assign xor_ln890_7_fu_1898_p2 = (tmp_45_fu_1890_p3 ^ 1'd1);

assign xor_ln890_8_fu_2095_p2 = (tmp_51_fu_2087_p3 ^ 1'd1);

assign xor_ln890_9_fu_2417_p2 = (tmp_57_fu_2409_p3 ^ 1'd1);

assign xor_ln890_fu_743_p2 = (tmp_3_fu_735_p3 ^ 1'd1);

assign xor_ln895_10_fu_1722_p2 = (deleted_zeros_5_fu_1684_p2 ^ 1'd1);

assign xor_ln895_11_fu_1734_p2 = (p_Result_15_fu_1596_p3 ^ 1'd1);

assign xor_ln895_12_fu_2273_p2 = (deleted_zeros_6_fu_2235_p2 ^ 1'd1);

assign xor_ln895_13_fu_2285_p2 = (grp_fu_593_p3 ^ 1'd1);

assign xor_ln895_14_fu_1922_p2 = (deleted_zeros_7_fu_1884_p2 ^ 1'd1);

assign xor_ln895_15_fu_1934_p2 = (p_Result_21_fu_1792_p3 ^ 1'd1);

assign xor_ln895_16_fu_2119_p2 = (deleted_zeros_8_fu_2081_p2 ^ 1'd1);

assign xor_ln895_17_fu_2131_p2 = (p_Result_24_fu_1997_p3 ^ 1'd1);

assign xor_ln895_18_fu_2441_p2 = (deleted_zeros_9_fu_2403_p2 ^ 1'd1);

assign xor_ln895_19_fu_2453_p2 = (grp_fu_635_p3 ^ 1'd1);

assign xor_ln895_1_fu_779_p2 = (grp_fu_593_p3 ^ 1'd1);

assign xor_ln895_20_fu_2633_p2 = (deleted_zeros_10_fu_2595_p2 ^ 1'd1);

assign xor_ln895_21_fu_2645_p2 = (p_Result_30_fu_2511_p3 ^ 1'd1);

assign xor_ln895_22_fu_2839_p2 = (deleted_zeros_11_fu_2801_p2 ^ 1'd1);

assign xor_ln895_23_fu_2851_p2 = (p_Result_33_fu_2713_p3 ^ 1'd1);

assign xor_ln895_24_fu_3053_p2 = (deleted_zeros_12_fu_3015_p2 ^ 1'd1);

assign xor_ln895_25_fu_3065_p2 = (p_Result_36_fu_2923_p3 ^ 1'd1);

assign xor_ln895_26_fu_3245_p2 = (deleted_zeros_13_fu_3207_p2 ^ 1'd1);

assign xor_ln895_27_fu_3257_p2 = (p_Result_39_fu_3123_p3 ^ 1'd1);

assign xor_ln895_28_fu_3442_p2 = (deleted_zeros_14_fu_3404_p2 ^ 1'd1);

assign xor_ln895_29_fu_3454_p2 = (p_Result_42_fu_3320_p3 ^ 1'd1);

assign xor_ln895_2_fu_925_p2 = (deleted_zeros_1_fu_887_p2 ^ 1'd1);

assign xor_ln895_30_fu_3639_p2 = (deleted_zeros_15_fu_3601_p2 ^ 1'd1);

assign xor_ln895_31_fu_3651_p2 = (p_Result_45_fu_3517_p3 ^ 1'd1);

assign xor_ln895_32_fu_3739_p2 = (p_Result_48_fu_3718_p3 ^ 1'd1);

assign xor_ln895_33_fu_3835_p2 = (p_Result_50_fu_3814_p3 ^ 1'd1);

assign xor_ln895_34_fu_3935_p2 = (p_Result_52_fu_3914_p3 ^ 1'd1);

assign xor_ln895_35_fu_4031_p2 = (p_Result_54_fu_4010_p3 ^ 1'd1);

assign xor_ln895_36_fu_4131_p2 = (p_Result_56_fu_4110_p3 ^ 1'd1);

assign xor_ln895_37_fu_4265_p2 = (p_Result_58_reg_5427 ^ 1'd1);

assign xor_ln895_38_fu_4355_p2 = (p_Result_60_fu_4335_p3 ^ 1'd1);

assign xor_ln895_39_fu_4421_p2 = (p_Result_62_reg_5447 ^ 1'd1);

assign xor_ln895_3_fu_937_p2 = (grp_fu_635_p3 ^ 1'd1);

assign xor_ln895_40_fu_4513_p2 = (p_Result_64_fu_4492_p3 ^ 1'd1);

assign xor_ln895_41_fu_4613_p2 = (p_Result_66_fu_4592_p3 ^ 1'd1);

assign xor_ln895_42_fu_4713_p2 = (p_Result_68_fu_4692_p3 ^ 1'd1);

assign xor_ln895_43_fu_5030_p2 = (p_Result_70_fu_5009_p3 ^ 1'd1);

assign xor_ln895_44_fu_4813_p2 = (p_Result_72_fu_4792_p3 ^ 1'd1);

assign xor_ln895_45_fu_4913_p2 = (p_Result_74_fu_4892_p3 ^ 1'd1);

assign xor_ln895_46_fu_5128_p2 = (p_Result_76_fu_5108_p3 ^ 1'd1);

assign xor_ln895_47_fu_5228_p2 = (p_Result_78_fu_5207_p3 ^ 1'd1);

assign xor_ln895_4_fu_1128_p2 = (deleted_zeros_2_fu_1090_p2 ^ 1'd1);

assign xor_ln895_5_fu_1140_p2 = (p_Result_6_fu_1006_p3 ^ 1'd1);

assign xor_ln895_6_fu_1320_p2 = (deleted_zeros_3_fu_1282_p2 ^ 1'd1);

assign xor_ln895_7_fu_1332_p2 = (p_Result_9_fu_1198_p3 ^ 1'd1);

assign xor_ln895_8_fu_1516_p2 = (deleted_zeros_4_fu_1478_p2 ^ 1'd1);

assign xor_ln895_9_fu_1528_p2 = (p_Result_12_fu_1390_p3 ^ 1'd1);

assign xor_ln895_fu_767_p2 = (deleted_zeros_fu_729_p2 ^ 1'd1);

assign xor_ln896_10_fu_1652_p2 = (p_Result_17_fu_1644_p3 ^ 1'd1);

assign xor_ln896_11_fu_1746_p2 = (deleted_ones_5_fu_1710_p2 ^ 1'd1);

assign xor_ln896_12_fu_2211_p2 = (p_Result_20_fu_2203_p3 ^ 1'd1);

assign xor_ln896_13_fu_2297_p2 = (deleted_ones_6_fu_2261_p2 ^ 1'd1);

assign xor_ln896_14_fu_1852_p2 = (p_Result_23_fu_1844_p3 ^ 1'd1);

assign xor_ln896_15_fu_1946_p2 = (deleted_ones_7_fu_1910_p2 ^ 1'd1);

assign xor_ln896_16_fu_2049_p2 = (p_Result_26_fu_2041_p3 ^ 1'd1);

assign xor_ln896_17_fu_2143_p2 = (deleted_ones_8_fu_2107_p2 ^ 1'd1);

assign xor_ln896_18_fu_2379_p2 = (p_Result_29_fu_2371_p3 ^ 1'd1);

assign xor_ln896_19_fu_2465_p2 = (deleted_ones_9_fu_2429_p2 ^ 1'd1);

assign xor_ln896_1_fu_791_p2 = (deleted_ones_fu_755_p2 ^ 1'd1);

assign xor_ln896_20_fu_2563_p2 = (p_Result_32_fu_2555_p3 ^ 1'd1);

assign xor_ln896_21_fu_2657_p2 = (deleted_ones_10_fu_2621_p2 ^ 1'd1);

assign xor_ln896_22_fu_2769_p2 = (p_Result_35_fu_2761_p3 ^ 1'd1);

assign xor_ln896_23_fu_2863_p2 = (deleted_ones_11_fu_2827_p2 ^ 1'd1);

assign xor_ln896_24_fu_2983_p2 = (p_Result_38_fu_2975_p3 ^ 1'd1);

assign xor_ln896_25_fu_3077_p2 = (deleted_ones_12_fu_3041_p2 ^ 1'd1);

assign xor_ln896_26_fu_3175_p2 = (p_Result_41_fu_3167_p3 ^ 1'd1);

assign xor_ln896_27_fu_3269_p2 = (deleted_ones_13_fu_3233_p2 ^ 1'd1);

assign xor_ln896_28_fu_3372_p2 = (p_Result_44_fu_3364_p3 ^ 1'd1);

assign xor_ln896_29_fu_3466_p2 = (deleted_ones_14_fu_3430_p2 ^ 1'd1);

assign xor_ln896_2_fu_863_p2 = (p_Result_5_fu_855_p3 ^ 1'd1);

assign xor_ln896_30_fu_3569_p2 = (p_Result_47_fu_3561_p3 ^ 1'd1);

assign xor_ln896_31_fu_3663_p2 = (deleted_ones_15_fu_3627_p2 ^ 1'd1);

assign xor_ln896_32_fu_3751_p2 = (p_Result_49_fu_3731_p3 ^ 1'd1);

assign xor_ln896_33_fu_3847_p2 = (p_Result_51_fu_3827_p3 ^ 1'd1);

assign xor_ln896_34_fu_3947_p2 = (p_Result_53_fu_3927_p3 ^ 1'd1);

assign xor_ln896_35_fu_4043_p2 = (p_Result_55_fu_4023_p3 ^ 1'd1);

assign xor_ln896_36_fu_4143_p2 = (p_Result_57_fu_4123_p3 ^ 1'd1);

assign xor_ln896_37_fu_4275_p2 = (p_Result_59_reg_5440 ^ 1'd1);

assign xor_ln896_38_fu_4367_p2 = (p_Result_61_fu_4347_p3 ^ 1'd1);

assign xor_ln896_39_fu_4431_p2 = (p_Result_63_reg_5460 ^ 1'd1);

assign xor_ln896_3_fu_949_p2 = (deleted_ones_1_fu_913_p2 ^ 1'd1);

assign xor_ln896_40_fu_4525_p2 = (p_Result_65_fu_4505_p3 ^ 1'd1);

assign xor_ln896_41_fu_4625_p2 = (p_Result_67_fu_4605_p3 ^ 1'd1);

assign xor_ln896_42_fu_4725_p2 = (p_Result_69_fu_4705_p3 ^ 1'd1);

assign xor_ln896_43_fu_5042_p2 = (p_Result_71_fu_5022_p3 ^ 1'd1);

assign xor_ln896_44_fu_4825_p2 = (p_Result_73_fu_4805_p3 ^ 1'd1);

assign xor_ln896_45_fu_4925_p2 = (p_Result_75_fu_4905_p3 ^ 1'd1);

assign xor_ln896_46_fu_5140_p2 = (p_Result_77_fu_5120_p3 ^ 1'd1);

assign xor_ln896_47_fu_5240_p2 = (p_Result_79_fu_5220_p3 ^ 1'd1);

assign xor_ln896_48_fu_803_p2 = (or_ln896_fu_797_p2 ^ and_ln891_fu_761_p2);

assign xor_ln896_49_fu_961_p2 = (or_ln896_1_fu_955_p2 ^ and_ln891_1_fu_919_p2);

assign xor_ln896_4_fu_1058_p2 = (p_Result_8_fu_1050_p3 ^ 1'd1);

assign xor_ln896_50_fu_1164_p2 = (or_ln896_2_fu_1158_p2 ^ and_ln891_2_fu_1122_p2);

assign xor_ln896_51_fu_1356_p2 = (or_ln896_3_fu_1350_p2 ^ and_ln891_3_fu_1314_p2);

assign xor_ln896_52_fu_1552_p2 = (or_ln896_4_fu_1546_p2 ^ and_ln891_4_fu_1510_p2);

assign xor_ln896_53_fu_1758_p2 = (or_ln896_5_fu_1752_p2 ^ and_ln891_5_fu_1716_p2);

assign xor_ln896_54_fu_2309_p2 = (or_ln896_6_fu_2303_p2 ^ and_ln891_6_fu_2267_p2);

assign xor_ln896_55_fu_1958_p2 = (or_ln896_7_fu_1952_p2 ^ and_ln891_7_fu_1916_p2);

assign xor_ln896_56_fu_2155_p2 = (or_ln896_8_fu_2149_p2 ^ and_ln891_8_fu_2113_p2);

assign xor_ln896_57_fu_2477_p2 = (or_ln896_9_fu_2471_p2 ^ and_ln891_9_fu_2435_p2);

assign xor_ln896_58_fu_2669_p2 = (or_ln896_10_fu_2663_p2 ^ and_ln891_10_fu_2627_p2);

assign xor_ln896_59_fu_2875_p2 = (or_ln896_11_fu_2869_p2 ^ and_ln891_11_fu_2833_p2);

assign xor_ln896_5_fu_1152_p2 = (deleted_ones_2_fu_1116_p2 ^ 1'd1);

assign xor_ln896_60_fu_3089_p2 = (or_ln896_12_fu_3083_p2 ^ and_ln891_12_fu_3047_p2);

assign xor_ln896_61_fu_3281_p2 = (or_ln896_13_fu_3275_p2 ^ and_ln891_13_fu_3239_p2);

assign xor_ln896_62_fu_3478_p2 = (or_ln896_14_fu_3472_p2 ^ and_ln891_14_fu_3436_p2);

assign xor_ln896_63_fu_3675_p2 = (or_ln896_15_fu_3669_p2 ^ and_ln891_15_fu_3633_p2);

assign xor_ln896_6_fu_1250_p2 = (p_Result_11_fu_1242_p3 ^ 1'd1);

assign xor_ln896_7_fu_1344_p2 = (deleted_ones_3_fu_1308_p2 ^ 1'd1);

assign xor_ln896_8_fu_1446_p2 = (p_Result_14_fu_1438_p3 ^ 1'd1);

assign xor_ln896_9_fu_1540_p2 = (deleted_ones_4_fu_1504_p2 ^ 1'd1);

assign xor_ln896_fu_705_p2 = (p_Result_2_fu_697_p3 ^ 1'd1);

assign zext_ln377_10_fu_2545_p1 = tmp_60_fu_2537_p3;

assign zext_ln377_11_fu_2751_p1 = tmp_66_fu_2743_p3;

assign zext_ln377_12_fu_2961_p1 = tmp_72_fu_2953_p3;

assign zext_ln377_13_fu_3157_p1 = tmp_78_fu_3149_p3;

assign zext_ln377_14_fu_3354_p1 = tmp_84_fu_3346_p3;

assign zext_ln377_15_fu_3551_p1 = tmp_90_fu_3543_p3;

assign zext_ln377_1_fu_841_p1 = grp_fu_661_p3;

assign zext_ln377_2_fu_1040_p1 = tmp_12_fu_1032_p3;

assign zext_ln377_3_fu_1232_p1 = tmp_18_fu_1224_p3;

assign zext_ln377_4_fu_1428_p1 = tmp_24_fu_1420_p3;

assign zext_ln377_5_fu_1634_p1 = tmp_30_fu_1626_p3;

assign zext_ln377_6_fu_2193_p1 = grp_fu_619_p3;

assign zext_ln377_7_fu_1830_p1 = tmp_42_fu_1822_p3;

assign zext_ln377_8_fu_2031_p1 = tmp_48_fu_2023_p3;

assign zext_ln377_9_fu_2357_p1 = grp_fu_661_p3;

assign zext_ln377_fu_687_p1 = grp_fu_619_p3;

endmodule //der2_sp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s
