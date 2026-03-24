module der_dense_latency_ap_fixed_22_8_0_0_0_ap_fixed_22_8_0_0_0_config14_s (
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
        ap_return_0,
        ap_return_1
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
input  [21:0] p_read;
input  [21:0] p_read1;
input  [21:0] p_read2;
input  [21:0] p_read3;
input  [21:0] p_read4;
output  [21:0] ap_return_0;
output  [21:0] ap_return_1;

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
wire  signed [17:0] p_Val2_4033_fu_377_p2;
reg  signed [17:0] p_Val2_4033_reg_3373;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] overflow_fu_479_p2;
reg   [0:0] overflow_reg_3378;
wire   [0:0] or_ln346_fu_509_p2;
reg   [0:0] or_ln346_reg_3383;
wire  signed [20:0] p_Val2_4036_fu_557_p2;
reg  signed [20:0] p_Val2_4036_reg_3388;
wire   [0:0] overflow_1448_fu_659_p2;
reg   [0:0] overflow_1448_reg_3393;
wire   [0:0] or_ln346_723_fu_689_p2;
reg   [0:0] or_ln346_723_reg_3398;
wire  signed [20:0] p_Val2_4039_fu_747_p2;
reg  signed [20:0] p_Val2_4039_reg_3403;
wire   [0:0] overflow_1449_fu_849_p2;
reg   [0:0] overflow_1449_reg_3408;
wire   [0:0] or_ln346_724_fu_879_p2;
reg   [0:0] or_ln346_724_reg_3413;
wire   [21:0] p_Val2_4042_fu_927_p2;
reg   [21:0] p_Val2_4042_reg_3418;
wire   [0:0] overflow_1450_fu_1029_p2;
reg   [0:0] overflow_1450_reg_3423;
wire   [0:0] or_ln346_725_fu_1059_p2;
reg   [0:0] or_ln346_725_reg_3428;
wire  signed [32:0] sext_ln70_270_fu_1065_p1;
reg  signed [32:0] sext_ln70_270_reg_3433;
wire  signed [19:0] p_Val2_4045_fu_1112_p2;
reg  signed [19:0] p_Val2_4045_reg_3438;
wire   [0:0] overflow_1451_fu_1214_p2;
reg   [0:0] overflow_1451_reg_3443;
wire   [0:0] or_ln346_726_fu_1244_p2;
reg   [0:0] or_ln346_726_reg_3448;
reg  signed [21:0] p_read432_reg_3453;
wire    ap_block_pp0_stage1_11001;
wire  signed [21:0] rhs_726_fu_1324_p3;
reg  signed [21:0] rhs_726_reg_3459;
wire  signed [19:0] p_Val2_4048_fu_1373_p2;
reg  signed [19:0] p_Val2_4048_reg_3465;
wire   [0:0] overflow_1452_fu_1475_p2;
reg   [0:0] overflow_1452_reg_3470;
wire   [0:0] or_ln346_727_fu_1505_p2;
reg   [0:0] or_ln346_727_reg_3475;
wire  signed [20:0] p_Val2_4051_fu_1563_p2;
reg  signed [20:0] p_Val2_4051_reg_3480;
wire   [0:0] overflow_1453_fu_1665_p2;
reg   [0:0] overflow_1453_reg_3485;
wire   [0:0] or_ln346_728_fu_1695_p2;
reg   [0:0] or_ln346_728_reg_3490;
wire  signed [19:0] p_Val2_4054_fu_1743_p2;
reg  signed [19:0] p_Val2_4054_reg_3495;
wire   [0:0] overflow_1454_fu_1845_p2;
reg   [0:0] overflow_1454_reg_3500;
wire   [0:0] or_ln346_729_fu_1875_p2;
reg   [0:0] or_ln346_729_reg_3505;
wire  signed [20:0] p_Val2_4057_fu_1928_p2;
reg  signed [20:0] p_Val2_4057_reg_3510;
wire   [0:0] overflow_1455_fu_2030_p2;
reg   [0:0] overflow_1455_reg_3515;
wire   [0:0] or_ln346_730_fu_2060_p2;
reg   [0:0] or_ln346_730_reg_3520;
wire  signed [21:0] lhs_673_fu_2356_p3;
reg  signed [21:0] lhs_673_reg_3525;
wire  signed [21:0] lhs_674_fu_2458_p3;
reg  signed [21:0] lhs_674_reg_3531;
wire  signed [19:0] p_Val2_4060_fu_2610_p2;
reg  signed [19:0] p_Val2_4060_reg_3537;
wire   [0:0] overflow_1456_fu_2712_p2;
reg   [0:0] overflow_1456_reg_3542;
wire   [0:0] or_ln346_731_fu_2742_p2;
reg   [0:0] or_ln346_731_reg_3547;
wire  signed [21:0] p_Val2_4092_fu_3142_p3;
reg  signed [21:0] p_Val2_4092_reg_3552;
reg   [0:0] p_Result_3668_reg_3558;
wire   [21:0] p_Val2_4083_fu_3172_p2;
reg   [21:0] p_Val2_4083_reg_3565;
reg   [0:0] p_Result_3669_reg_3571;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [21:0] ap_port_reg_p_read3;
reg   [21:0] ap_port_reg_p_read4;
wire   [10:0] r_V_891_fu_148_p1;
wire    ap_block_pp0_stage0;
reg  signed [21:0] grp_fu_149_p0;
wire  signed [30:0] sext_ln70_267_fu_330_p1;
wire  signed [33:0] sext_ln70_273_fu_1881_p1;
reg  signed [11:0] grp_fu_149_p1;
wire    ap_block_pp0_stage1;
reg  signed [21:0] grp_fu_150_p0;
wire  signed [34:0] sext_ln70_268_fu_695_p1;
wire  signed [33:0] sext_ln70_272_fu_1516_p1;
reg  signed [13:0] grp_fu_150_p1;
reg  signed [21:0] grp_fu_151_p0;
wire  signed [33:0] sext_ln70_269_fu_700_p1;
wire  signed [32:0] sext_ln70_271_fu_1511_p1;
reg   [11:0] grp_fu_151_p1;
reg  signed [21:0] grp_fu_152_p0;
wire  signed [33:0] sext_ln70_fu_325_p1;
reg  signed [11:0] grp_fu_152_p1;
wire  signed [21:0] sext_ln70_fu_325_p0;
wire  signed [21:0] sext_ln70_267_fu_330_p0;
wire   [30:0] p_Result_s_fu_335_p1;
wire   [33:0] grp_fu_149_p2;
wire   [30:0] p_Val2_4032_fu_343_p1;
wire   [16:0] p_Val2_4032_fu_343_p4;
wire   [30:0] p_Result_3623_fu_357_p1;
wire   [30:0] tmp_fu_365_p1;
wire   [0:0] tmp_fu_365_p3;
wire   [17:0] zext_ln377_fu_373_p1;
wire  signed [17:0] sext_ln823_fu_353_p1;
wire   [0:0] p_Result_3624_fu_383_p3;
wire   [0:0] p_Result_3623_fu_357_p3;
wire   [0:0] xor_ln896_fu_391_p2;
wire   [30:0] Range2_all_ones_fu_403_p1;
wire   [0:0] xor_ln888_fu_411_p2;
wire   [0:0] Range2_all_ones_fu_403_p3;
wire   [0:0] or_ln888_fu_417_p2;
wire   [30:0] tmp_5763_fu_429_p1;
wire   [0:0] tmp_5763_fu_429_p3;
wire   [0:0] xor_ln890_fu_437_p2;
wire   [0:0] or_ln890_fu_443_p2;
wire   [0:0] carry_1447_fu_397_p2;
wire   [0:0] deleted_zeros_fu_423_p2;
wire   [0:0] xor_ln895_fu_461_p2;
wire   [0:0] p_Result_s_fu_335_p3;
wire   [0:0] or_ln895_fu_467_p2;
wire   [0:0] xor_ln895_2173_fu_473_p2;
wire   [0:0] deleted_ones_fu_449_p2;
wire   [0:0] xor_ln896_2173_fu_485_p2;
wire   [0:0] and_ln891_fu_455_p2;
wire   [0:0] or_ln896_fu_491_p2;
wire   [0:0] xor_ln896_2352_fu_497_p2;
wire   [0:0] underflow_fu_503_p2;
wire   [33:0] grp_fu_152_p2;
wire   [19:0] p_Val2_4035_fu_523_p4;
wire   [0:0] tmp_5766_fu_545_p3;
wire   [20:0] zext_ln377_723_fu_553_p1;
wire  signed [20:0] sext_ln823_99_fu_533_p1;
wire   [0:0] p_Result_3627_fu_563_p3;
wire   [0:0] p_Result_3626_fu_537_p3;
wire   [0:0] xor_ln896_2174_fu_571_p2;
wire   [0:0] xor_ln888_924_fu_591_p2;
wire   [0:0] Range2_all_ones_1186_fu_583_p3;
wire   [0:0] or_ln888_461_fu_597_p2;
wire   [0:0] tmp_5769_fu_609_p3;
wire   [0:0] xor_ln890_723_fu_617_p2;
wire   [0:0] or_ln890_461_fu_623_p2;
wire   [0:0] carry_1449_fu_577_p2;
wire   [0:0] deleted_zeros_722_fu_603_p2;
wire   [0:0] xor_ln895_2174_fu_641_p2;
wire   [0:0] p_Result_3625_fu_515_p3;
wire   [0:0] or_ln895_723_fu_647_p2;
wire   [0:0] xor_ln895_2175_fu_653_p2;
wire   [0:0] deleted_ones_1448_fu_629_p2;
wire   [0:0] xor_ln896_2175_fu_665_p2;
wire   [0:0] and_ln891_723_fu_635_p2;
wire   [0:0] or_ln896_723_fu_671_p2;
wire   [0:0] xor_ln896_2353_fu_677_p2;
wire   [0:0] underflow_1448_fu_683_p2;
wire  signed [21:0] sext_ln70_268_fu_695_p0;
wire  signed [21:0] sext_ln70_269_fu_700_p0;
wire   [33:0] grp_fu_151_p2;
wire   [19:0] p_Val2_4038_fu_713_p4;
wire   [0:0] tmp_5772_fu_735_p3;
wire   [20:0] zext_ln377_724_fu_743_p1;
wire  signed [20:0] sext_ln823_100_fu_723_p1;
wire   [0:0] p_Result_3630_fu_753_p3;
wire   [0:0] p_Result_3629_fu_727_p3;
wire   [0:0] xor_ln896_2176_fu_761_p2;
wire   [0:0] xor_ln888_926_fu_781_p2;
wire   [0:0] Range2_all_ones_1187_fu_773_p3;
wire   [0:0] or_ln888_462_fu_787_p2;
wire   [0:0] tmp_5775_fu_799_p3;
wire   [0:0] xor_ln890_724_fu_807_p2;
wire   [0:0] or_ln890_462_fu_813_p2;
wire   [0:0] carry_1451_fu_767_p2;
wire   [0:0] deleted_zeros_723_fu_793_p2;
wire   [0:0] xor_ln895_2176_fu_831_p2;
wire   [0:0] p_Result_3628_fu_705_p3;
wire   [0:0] or_ln895_724_fu_837_p2;
wire   [0:0] xor_ln895_2177_fu_843_p2;
wire   [0:0] deleted_ones_1449_fu_819_p2;
wire   [0:0] xor_ln896_2177_fu_855_p2;
wire   [0:0] and_ln891_724_fu_825_p2;
wire   [0:0] or_ln896_724_fu_861_p2;
wire   [0:0] xor_ln896_2354_fu_867_p2;
wire   [0:0] underflow_1449_fu_873_p2;
wire   [34:0] grp_fu_150_p2;
wire   [20:0] p_Val2_4041_fu_893_p4;
wire   [0:0] tmp_5778_fu_915_p3;
wire   [21:0] zext_ln377_725_fu_923_p1;
wire  signed [21:0] sext_ln818_fu_903_p1;
wire   [0:0] p_Result_3633_fu_933_p3;
wire   [0:0] p_Result_3632_fu_907_p3;
wire   [0:0] xor_ln896_2178_fu_941_p2;
wire   [0:0] xor_ln888_928_fu_961_p2;
wire   [0:0] Range2_all_ones_1188_fu_953_p3;
wire   [0:0] or_ln888_463_fu_967_p2;
wire   [0:0] tmp_5781_fu_979_p3;
wire   [0:0] xor_ln890_725_fu_987_p2;
wire   [0:0] or_ln890_463_fu_993_p2;
wire   [0:0] carry_1453_fu_947_p2;
wire   [0:0] deleted_zeros_724_fu_973_p2;
wire   [0:0] xor_ln895_2178_fu_1011_p2;
wire   [0:0] p_Result_3631_fu_885_p3;
wire   [0:0] or_ln895_725_fu_1017_p2;
wire   [0:0] xor_ln895_2179_fu_1023_p2;
wire   [0:0] deleted_ones_1450_fu_999_p2;
wire   [0:0] xor_ln896_2179_fu_1035_p2;
wire   [0:0] and_ln891_725_fu_1005_p2;
wire   [0:0] or_ln896_725_fu_1041_p2;
wire   [0:0] xor_ln896_2355_fu_1047_p2;
wire   [0:0] underflow_1450_fu_1053_p2;
wire   [32:0] r_V_891_fu_148_p2;
wire   [18:0] p_Val2_4044_fu_1078_p4;
wire   [0:0] tmp_5784_fu_1100_p3;
wire   [19:0] zext_ln377_726_fu_1108_p1;
wire  signed [19:0] sext_ln823_101_fu_1088_p1;
wire   [0:0] p_Result_3636_fu_1118_p3;
wire   [0:0] p_Result_3635_fu_1092_p3;
wire   [0:0] xor_ln896_2180_fu_1126_p2;
wire   [0:0] xor_ln888_930_fu_1146_p2;
wire   [0:0] Range2_all_ones_1189_fu_1138_p3;
wire   [0:0] or_ln888_464_fu_1152_p2;
wire   [0:0] tmp_5787_fu_1164_p3;
wire   [0:0] xor_ln890_726_fu_1172_p2;
wire   [0:0] or_ln890_464_fu_1178_p2;
wire   [0:0] carry_1455_fu_1132_p2;
wire   [0:0] deleted_zeros_725_fu_1158_p2;
wire   [0:0] xor_ln895_2180_fu_1196_p2;
wire   [0:0] p_Result_3634_fu_1070_p3;
wire   [0:0] or_ln895_726_fu_1202_p2;
wire   [0:0] xor_ln895_2181_fu_1208_p2;
wire   [0:0] deleted_ones_1451_fu_1184_p2;
wire   [0:0] xor_ln896_2181_fu_1220_p2;
wire   [0:0] and_ln891_726_fu_1190_p2;
wire   [0:0] or_ln896_726_fu_1226_p2;
wire   [0:0] xor_ln896_2356_fu_1232_p2;
wire   [0:0] underflow_1451_fu_1238_p2;
wire   [21:0] select_ln346_1034_fu_1253_p3;
wire  signed [21:0] sext_ln856_fu_1250_p1;
wire   [21:0] select_ln346_1035_fu_1270_p3;
wire  signed [21:0] sext_ln856_99_fu_1267_p1;
wire   [21:0] select_ln346_1036_fu_1287_p3;
wire  signed [21:0] sext_ln856_100_fu_1284_p1;
wire   [21:0] select_ln346_1037_fu_1301_p3;
wire   [21:0] select_ln346_1038_fu_1317_p3;
wire  signed [21:0] sext_ln856_101_fu_1314_p1;
wire   [32:0] p_Result_3637_fu_1331_p1;
wire   [32:0] p_Val2_4047_fu_1339_p1;
wire   [18:0] p_Val2_4047_fu_1339_p4;
wire   [32:0] p_Result_3638_fu_1353_p1;
wire   [32:0] tmp_5790_fu_1361_p1;
wire   [0:0] tmp_5790_fu_1361_p3;
wire   [19:0] zext_ln377_727_fu_1369_p1;
wire  signed [19:0] sext_ln823_102_fu_1349_p1;
wire   [0:0] p_Result_3639_fu_1379_p3;
wire   [0:0] p_Result_3638_fu_1353_p3;
wire   [0:0] xor_ln896_2182_fu_1387_p2;
wire   [32:0] Range2_all_ones_1190_fu_1399_p1;
wire   [0:0] xor_ln888_932_fu_1407_p2;
wire   [0:0] Range2_all_ones_1190_fu_1399_p3;
wire   [0:0] or_ln888_465_fu_1413_p2;
wire   [32:0] tmp_5793_fu_1425_p1;
wire   [0:0] tmp_5793_fu_1425_p3;
wire   [0:0] xor_ln890_727_fu_1433_p2;
wire   [0:0] or_ln890_465_fu_1439_p2;
wire   [0:0] carry_1457_fu_1393_p2;
wire   [0:0] deleted_zeros_726_fu_1419_p2;
wire   [0:0] xor_ln895_2182_fu_1457_p2;
wire   [0:0] p_Result_3637_fu_1331_p3;
wire   [0:0] or_ln895_727_fu_1463_p2;
wire   [0:0] xor_ln895_2183_fu_1469_p2;
wire   [0:0] deleted_ones_1452_fu_1445_p2;
wire   [0:0] xor_ln896_2183_fu_1481_p2;
wire   [0:0] and_ln891_727_fu_1451_p2;
wire   [0:0] or_ln896_727_fu_1487_p2;
wire   [0:0] xor_ln896_2357_fu_1493_p2;
wire   [0:0] underflow_1452_fu_1499_p2;
wire  signed [21:0] sext_ln70_271_fu_1511_p0;
wire  signed [21:0] sext_ln70_272_fu_1516_p0;
wire   [33:0] p_Result_3640_fu_1521_p1;
wire   [33:0] p_Val2_4050_fu_1529_p1;
wire   [19:0] p_Val2_4050_fu_1529_p4;
wire   [33:0] p_Result_3641_fu_1543_p1;
wire   [33:0] tmp_5796_fu_1551_p1;
wire   [0:0] tmp_5796_fu_1551_p3;
wire   [20:0] zext_ln377_728_fu_1559_p1;
wire  signed [20:0] sext_ln823_103_fu_1539_p1;
wire   [0:0] p_Result_3642_fu_1569_p3;
wire   [0:0] p_Result_3641_fu_1543_p3;
wire   [0:0] xor_ln896_2184_fu_1577_p2;
wire   [33:0] Range2_all_ones_1191_fu_1589_p1;
wire   [0:0] xor_ln888_934_fu_1597_p2;
wire   [0:0] Range2_all_ones_1191_fu_1589_p3;
wire   [0:0] or_ln888_466_fu_1603_p2;
wire   [33:0] tmp_5799_fu_1615_p1;
wire   [0:0] tmp_5799_fu_1615_p3;
wire   [0:0] xor_ln890_728_fu_1623_p2;
wire   [0:0] or_ln890_466_fu_1629_p2;
wire   [0:0] carry_1459_fu_1583_p2;
wire   [0:0] deleted_zeros_727_fu_1609_p2;
wire   [0:0] xor_ln895_2184_fu_1647_p2;
wire   [0:0] p_Result_3640_fu_1521_p3;
wire   [0:0] or_ln895_728_fu_1653_p2;
wire   [0:0] xor_ln895_2185_fu_1659_p2;
wire   [0:0] deleted_ones_1453_fu_1635_p2;
wire   [0:0] xor_ln896_2185_fu_1671_p2;
wire   [0:0] and_ln891_728_fu_1641_p2;
wire   [0:0] or_ln896_728_fu_1677_p2;
wire   [0:0] xor_ln896_2358_fu_1683_p2;
wire   [0:0] underflow_1453_fu_1689_p2;
wire   [32:0] p_Result_3643_fu_1701_p1;
wire   [32:0] p_Val2_4053_fu_1709_p1;
wire   [18:0] p_Val2_4053_fu_1709_p4;
wire   [32:0] p_Result_3644_fu_1723_p1;
wire   [32:0] tmp_5802_fu_1731_p1;
wire   [0:0] tmp_5802_fu_1731_p3;
wire   [19:0] zext_ln377_729_fu_1739_p1;
wire  signed [19:0] sext_ln823_104_fu_1719_p1;
wire   [0:0] p_Result_3645_fu_1749_p3;
wire   [0:0] p_Result_3644_fu_1723_p3;
wire   [0:0] xor_ln896_2186_fu_1757_p2;
wire   [32:0] Range2_all_ones_1192_fu_1769_p1;
wire   [0:0] xor_ln888_936_fu_1777_p2;
wire   [0:0] Range2_all_ones_1192_fu_1769_p3;
wire   [0:0] or_ln888_467_fu_1783_p2;
wire   [32:0] tmp_5805_fu_1795_p1;
wire   [0:0] tmp_5805_fu_1795_p3;
wire   [0:0] xor_ln890_729_fu_1803_p2;
wire   [0:0] or_ln890_467_fu_1809_p2;
wire   [0:0] carry_1461_fu_1763_p2;
wire   [0:0] deleted_zeros_728_fu_1789_p2;
wire   [0:0] xor_ln895_2186_fu_1827_p2;
wire   [0:0] p_Result_3643_fu_1701_p3;
wire   [0:0] or_ln895_729_fu_1833_p2;
wire   [0:0] xor_ln895_2187_fu_1839_p2;
wire   [0:0] deleted_ones_1454_fu_1815_p2;
wire   [0:0] xor_ln896_2187_fu_1851_p2;
wire   [0:0] and_ln891_729_fu_1821_p2;
wire   [0:0] or_ln896_729_fu_1857_p2;
wire   [0:0] xor_ln896_2359_fu_1863_p2;
wire   [0:0] underflow_1454_fu_1869_p2;
wire  signed [21:0] sext_ln70_273_fu_1881_p0;
wire   [19:0] p_Val2_4056_fu_1894_p4;
wire   [0:0] tmp_5808_fu_1916_p3;
wire   [20:0] zext_ln377_730_fu_1924_p1;
wire  signed [20:0] sext_ln823_105_fu_1904_p1;
wire   [0:0] p_Result_3648_fu_1934_p3;
wire   [0:0] p_Result_3647_fu_1908_p3;
wire   [0:0] xor_ln896_2188_fu_1942_p2;
wire   [0:0] xor_ln888_938_fu_1962_p2;
wire   [0:0] Range2_all_ones_1193_fu_1954_p3;
wire   [0:0] or_ln888_468_fu_1968_p2;
wire   [0:0] tmp_5811_fu_1980_p3;
wire   [0:0] xor_ln890_730_fu_1988_p2;
wire   [0:0] or_ln890_468_fu_1994_p2;
wire   [0:0] carry_1463_fu_1948_p2;
wire   [0:0] deleted_zeros_729_fu_1974_p2;
wire   [0:0] xor_ln895_2188_fu_2012_p2;
wire   [0:0] p_Result_3646_fu_1886_p3;
wire   [0:0] or_ln895_730_fu_2018_p2;
wire   [0:0] xor_ln895_2189_fu_2024_p2;
wire   [0:0] deleted_ones_1455_fu_2000_p2;
wire   [0:0] xor_ln896_2189_fu_2036_p2;
wire   [0:0] and_ln891_730_fu_2006_p2;
wire   [0:0] or_ln896_730_fu_2042_p2;
wire   [0:0] xor_ln896_2360_fu_2048_p2;
wire   [0:0] underflow_1455_fu_2054_p2;
wire  signed [21:0] rhs_fu_1260_p3;
wire  signed [22:0] sext_ln813_fu_2066_p1;
wire   [22:0] ret_V_fu_2070_p2;
wire   [21:0] p_Val2_4062_fu_2084_p2;
wire   [0:0] p_Result_3652_fu_2076_p3;
wire   [0:0] p_Result_3653_fu_2090_p3;
wire   [0:0] xor_ln895_2192_fu_2098_p2;
wire   [0:0] xor_ln896_2192_fu_2110_p2;
wire   [0:0] xor_ln302_fu_2122_p2;
wire   [0:0] overflow_1457_fu_2104_p2;
wire   [0:0] xor_ln302_1448_fu_2128_p2;
wire   [0:0] underflow_1457_fu_2116_p2;
wire   [0:0] or_ln302_fu_2134_p2;
wire   [21:0] select_ln302_fu_2140_p3;
wire   [21:0] select_ln350_fu_2148_p3;
wire  signed [21:0] rhs_723_fu_1277_p3;
wire  signed [22:0] sext_ln813_1397_fu_2164_p1;
wire   [22:0] ret_V_723_fu_2168_p2;
wire   [21:0] p_Val2_4063_fu_2182_p2;
wire   [0:0] p_Result_3654_fu_2174_p3;
wire   [0:0] p_Result_3655_fu_2188_p3;
wire   [0:0] xor_ln895_2193_fu_2196_p2;
wire   [0:0] xor_ln896_2193_fu_2208_p2;
wire   [0:0] xor_ln302_1449_fu_2220_p2;
wire   [0:0] overflow_1458_fu_2202_p2;
wire   [0:0] xor_ln302_1450_fu_2226_p2;
wire   [0:0] underflow_1458_fu_2214_p2;
wire   [0:0] or_ln302_723_fu_2232_p2;
wire   [21:0] select_ln302_1449_fu_2238_p3;
wire   [21:0] select_ln350_723_fu_2246_p3;
wire  signed [21:0] p_Val2_s_fu_2156_p3;
wire  signed [21:0] rhs_724_fu_1294_p3;
wire  signed [22:0] sext_ln813_1399_fu_2266_p1;
wire  signed [22:0] sext_ln813_1398_fu_2262_p1;
wire   [22:0] ret_V_724_fu_2270_p2;
wire   [21:0] p_Val2_4067_fu_2284_p2;
wire   [0:0] p_Result_3656_fu_2276_p3;
wire   [0:0] p_Result_3657_fu_2290_p3;
wire   [0:0] xor_ln895_2194_fu_2298_p2;
wire   [0:0] xor_ln896_2194_fu_2310_p2;
wire   [0:0] xor_ln302_1451_fu_2322_p2;
wire   [0:0] overflow_1459_fu_2304_p2;
wire   [0:0] xor_ln302_1452_fu_2328_p2;
wire   [0:0] underflow_1459_fu_2316_p2;
wire   [0:0] or_ln302_724_fu_2334_p2;
wire   [21:0] select_ln302_1451_fu_2340_p3;
wire   [21:0] select_ln350_724_fu_2348_p3;
wire  signed [21:0] p_Val2_4088_fu_2254_p3;
wire  signed [21:0] rhs_725_fu_1308_p3;
wire  signed [22:0] sext_ln813_1401_fu_2368_p1;
wire  signed [22:0] sext_ln813_1400_fu_2364_p1;
wire   [22:0] ret_V_725_fu_2372_p2;
wire   [21:0] p_Val2_4069_fu_2386_p2;
wire   [0:0] p_Result_3658_fu_2378_p3;
wire   [0:0] p_Result_3659_fu_2392_p3;
wire   [0:0] xor_ln895_2195_fu_2400_p2;
wire   [0:0] xor_ln896_2195_fu_2412_p2;
wire   [0:0] xor_ln302_1453_fu_2424_p2;
wire   [0:0] overflow_1460_fu_2406_p2;
wire   [0:0] xor_ln302_1454_fu_2430_p2;
wire   [0:0] underflow_1460_fu_2418_p2;
wire   [0:0] or_ln302_725_fu_2436_p2;
wire   [21:0] select_ln302_1453_fu_2442_p3;
wire   [21:0] select_ln350_725_fu_2450_p3;
wire   [21:0] select_ln346_1039_fu_2469_p3;
wire  signed [21:0] sext_ln856_102_fu_2466_p1;
wire   [21:0] select_ln346_1040_fu_2486_p3;
wire  signed [21:0] sext_ln856_103_fu_2483_p1;
wire   [21:0] select_ln346_1041_fu_2503_p3;
wire  signed [21:0] sext_ln856_104_fu_2500_p1;
wire   [21:0] select_ln346_1042_fu_2520_p3;
wire  signed [21:0] sext_ln856_105_fu_2517_p1;
wire   [31:0] shl_ln_fu_2534_p3;
wire  signed [32:0] sext_ln1273_fu_2541_p1;
wire   [29:0] shl_ln1273_s_fu_2551_p3;
wire   [32:0] sub_ln1273_fu_2545_p2;
wire  signed [32:0] sext_ln1273_12_fu_2558_p1;
wire   [32:0] r_V_896_fu_2562_p2;
wire   [18:0] p_Val2_4059_fu_2576_p4;
wire   [0:0] tmp_5814_fu_2598_p3;
wire   [19:0] zext_ln377_731_fu_2606_p1;
wire  signed [19:0] sext_ln823_106_fu_2586_p1;
wire   [0:0] p_Result_3651_fu_2616_p3;
wire   [0:0] p_Result_3650_fu_2590_p3;
wire   [0:0] xor_ln896_2190_fu_2624_p2;
wire   [0:0] xor_ln888_940_fu_2644_p2;
wire   [0:0] Range2_all_ones_1194_fu_2636_p3;
wire   [0:0] or_ln888_469_fu_2650_p2;
wire   [0:0] tmp_5817_fu_2662_p3;
wire   [0:0] xor_ln890_731_fu_2670_p2;
wire   [0:0] or_ln890_469_fu_2676_p2;
wire   [0:0] carry_1465_fu_2630_p2;
wire   [0:0] deleted_zeros_730_fu_2656_p2;
wire   [0:0] xor_ln895_2190_fu_2694_p2;
wire   [0:0] p_Result_3649_fu_2568_p3;
wire   [0:0] or_ln895_731_fu_2700_p2;
wire   [0:0] xor_ln895_2191_fu_2706_p2;
wire   [0:0] deleted_ones_1456_fu_2682_p2;
wire   [0:0] xor_ln896_2191_fu_2718_p2;
wire   [0:0] and_ln891_731_fu_2688_p2;
wire   [0:0] or_ln896_731_fu_2724_p2;
wire   [0:0] xor_ln896_2361_fu_2730_p2;
wire   [0:0] underflow_1456_fu_2736_p2;
wire  signed [22:0] sext_ln813_1403_fu_2751_p1;
wire  signed [22:0] sext_ln813_1402_fu_2748_p1;
wire   [22:0] ret_V_726_fu_2754_p2;
wire   [21:0] p_Val2_4071_fu_2768_p2;
wire   [0:0] p_Result_3660_fu_2760_p3;
wire   [0:0] p_Result_3661_fu_2772_p3;
wire   [0:0] xor_ln895_2196_fu_2780_p2;
wire   [0:0] xor_ln896_2196_fu_2792_p2;
wire   [0:0] xor_ln302_1455_fu_2804_p2;
wire   [0:0] overflow_1461_fu_2786_p2;
wire   [0:0] xor_ln302_1456_fu_2810_p2;
wire   [0:0] underflow_1461_fu_2798_p2;
wire   [0:0] or_ln302_726_fu_2816_p2;
wire   [21:0] select_ln302_1455_fu_2822_p3;
wire   [21:0] select_ln350_726_fu_2830_p3;
wire  signed [21:0] rhs_727_fu_2476_p3;
wire  signed [22:0] sext_ln813_1405_fu_2849_p1;
wire  signed [22:0] sext_ln813_1404_fu_2846_p1;
wire   [22:0] ret_V_727_fu_2853_p2;
wire   [21:0] p_Val2_4073_fu_2867_p2;
wire   [0:0] p_Result_3662_fu_2859_p3;
wire   [0:0] p_Result_3663_fu_2872_p3;
wire   [0:0] xor_ln895_2197_fu_2880_p2;
wire   [0:0] xor_ln896_2197_fu_2892_p2;
wire   [0:0] xor_ln302_1457_fu_2904_p2;
wire   [0:0] overflow_1462_fu_2886_p2;
wire   [0:0] xor_ln302_1458_fu_2910_p2;
wire   [0:0] underflow_1462_fu_2898_p2;
wire   [0:0] or_ln302_727_fu_2916_p2;
wire   [21:0] select_ln302_1457_fu_2922_p3;
wire   [21:0] select_ln350_727_fu_2930_p3;
wire  signed [21:0] p_Val2_4089_fu_2838_p3;
wire  signed [21:0] rhs_728_fu_2493_p3;
wire  signed [22:0] sext_ln813_1407_fu_2950_p1;
wire  signed [22:0] sext_ln813_1406_fu_2946_p1;
wire   [22:0] ret_V_728_fu_2954_p2;
wire   [21:0] p_Val2_4077_fu_2968_p2;
wire   [0:0] p_Result_3664_fu_2960_p3;
wire   [0:0] p_Result_3665_fu_2974_p3;
wire   [0:0] xor_ln895_2198_fu_2982_p2;
wire   [0:0] xor_ln896_2198_fu_2994_p2;
wire   [0:0] xor_ln302_1459_fu_3006_p2;
wire   [0:0] overflow_1463_fu_2988_p2;
wire   [0:0] xor_ln302_1460_fu_3012_p2;
wire   [0:0] underflow_1463_fu_3000_p2;
wire   [0:0] or_ln302_728_fu_3018_p2;
wire   [21:0] select_ln302_1459_fu_3024_p3;
wire   [21:0] select_ln350_728_fu_3032_p3;
wire  signed [21:0] p_Val2_4090_fu_2938_p3;
wire  signed [21:0] rhs_729_fu_2510_p3;
wire  signed [22:0] sext_ln813_1409_fu_3052_p1;
wire  signed [22:0] sext_ln813_1408_fu_3048_p1;
wire   [22:0] ret_V_729_fu_3056_p2;
wire   [21:0] p_Val2_4079_fu_3070_p2;
wire   [0:0] p_Result_3666_fu_3062_p3;
wire   [0:0] p_Result_3667_fu_3076_p3;
wire   [0:0] xor_ln895_2199_fu_3084_p2;
wire   [0:0] xor_ln896_2199_fu_3096_p2;
wire   [0:0] xor_ln302_1461_fu_3108_p2;
wire   [0:0] overflow_1464_fu_3090_p2;
wire   [0:0] xor_ln302_1462_fu_3114_p2;
wire   [0:0] underflow_1464_fu_3102_p2;
wire   [0:0] or_ln302_729_fu_3120_p2;
wire   [21:0] select_ln302_1461_fu_3126_p3;
wire   [21:0] select_ln350_729_fu_3134_p3;
wire  signed [21:0] p_Val2_4091_fu_3040_p3;
wire  signed [21:0] rhs_730_fu_2527_p3;
wire  signed [22:0] sext_ln813_1411_fu_3154_p1;
wire  signed [22:0] sext_ln813_1410_fu_3150_p1;
wire   [22:0] ret_V_730_fu_3158_p2;
wire   [21:0] select_ln346_1043_fu_3189_p3;
wire  signed [21:0] sext_ln856_106_fu_3186_p1;
wire   [0:0] xor_ln895_2200_fu_3203_p2;
wire   [0:0] xor_ln896_2200_fu_3213_p2;
wire   [0:0] xor_ln302_1463_fu_3223_p2;
wire   [0:0] overflow_1465_fu_3208_p2;
wire   [0:0] xor_ln302_1464_fu_3227_p2;
wire   [0:0] underflow_1465_fu_3218_p2;
wire   [0:0] or_ln302_730_fu_3233_p2;
wire   [21:0] select_ln302_1463_fu_3239_p3;
wire   [21:0] select_ln350_730_fu_3246_p3;
wire  signed [21:0] rhs_731_fu_3196_p3;
wire  signed [22:0] sext_ln813_1413_fu_3264_p1;
wire  signed [22:0] sext_ln813_1412_fu_3261_p1;
wire   [22:0] ret_V_731_fu_3268_p2;
wire   [21:0] p_Val2_4085_fu_3282_p2;
wire   [0:0] p_Result_3670_fu_3274_p3;
wire   [0:0] p_Result_3671_fu_3287_p3;
wire   [0:0] xor_ln895_2201_fu_3295_p2;
wire   [0:0] xor_ln896_2201_fu_3307_p2;
wire   [0:0] xor_ln302_1465_fu_3319_p2;
wire   [0:0] overflow_1466_fu_3301_p2;
wire   [0:0] xor_ln302_1466_fu_3325_p2;
wire   [0:0] underflow_1466_fu_3313_p2;
wire   [0:0] or_ln302_731_fu_3331_p2;
wire   [21:0] select_ln302_1465_fu_3337_p3;
wire   [21:0] select_ln350_731_fu_3345_p3;
wire   [21:0] p_Val2_4086_fu_3253_p3;
wire   [21:0] p_Val2_4087_fu_3353_p3;
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

der_mul_22s_11ns_33_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 22 ),
    .din1_WIDTH( 11 ),
    .dout_WIDTH( 33 ))
mul_22s_11ns_33_1_1_U532(
    .din0(p_read2),
    .din1(r_V_891_fu_148_p1),
    .dout(r_V_891_fu_148_p2)
);

der_mul_22s_12s_34_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 22 ),
    .din1_WIDTH( 12 ),
    .dout_WIDTH( 34 ))
mul_22s_12s_34_1_1_U533(
    .din0(grp_fu_149_p0),
    .din1(grp_fu_149_p1),
    .dout(grp_fu_149_p2)
);

der_mul_22s_14s_35_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 22 ),
    .din1_WIDTH( 14 ),
    .dout_WIDTH( 35 ))
mul_22s_14s_35_1_1_U534(
    .din0(grp_fu_150_p0),
    .din1(grp_fu_150_p1),
    .dout(grp_fu_150_p2)
);

der_mul_22s_12ns_34_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 22 ),
    .din1_WIDTH( 12 ),
    .dout_WIDTH( 34 ))
mul_22s_12ns_34_1_1_U535(
    .din0(grp_fu_151_p0),
    .din1(grp_fu_151_p1),
    .dout(grp_fu_151_p2)
);

der_mul_22s_12s_34_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 22 ),
    .din1_WIDTH( 12 ),
    .dout_WIDTH( 34 ))
mul_22s_12s_34_1_1_U536(
    .din0(grp_fu_152_p0),
    .din1(grp_fu_152_p1),
    .dout(grp_fu_152_p2)
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
        ap_port_reg_p_read3 <= p_read3;
        ap_port_reg_p_read4 <= p_read4;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lhs_673_reg_3525 <= lhs_673_fu_2356_p3;
        lhs_674_reg_3531 <= lhs_674_fu_2458_p3;
        or_ln346_727_reg_3475 <= or_ln346_727_fu_1505_p2;
        or_ln346_728_reg_3490 <= or_ln346_728_fu_1695_p2;
        or_ln346_729_reg_3505 <= or_ln346_729_fu_1875_p2;
        or_ln346_730_reg_3520 <= or_ln346_730_fu_2060_p2;
        overflow_1452_reg_3470 <= overflow_1452_fu_1475_p2;
        overflow_1453_reg_3485 <= overflow_1453_fu_1665_p2;
        overflow_1454_reg_3500 <= overflow_1454_fu_1845_p2;
        overflow_1455_reg_3515 <= overflow_1455_fu_2030_p2;
        p_Val2_4048_reg_3465 <= p_Val2_4048_fu_1373_p2;
        p_Val2_4051_reg_3480 <= p_Val2_4051_fu_1563_p2;
        p_Val2_4054_reg_3495 <= p_Val2_4054_fu_1743_p2;
        p_Val2_4057_reg_3510 <= p_Val2_4057_fu_1928_p2;
        p_read432_reg_3453 <= ap_port_reg_p_read4;
        rhs_726_reg_3459 <= rhs_726_fu_1324_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        or_ln346_723_reg_3398 <= or_ln346_723_fu_689_p2;
        or_ln346_724_reg_3413 <= or_ln346_724_fu_879_p2;
        or_ln346_725_reg_3428 <= or_ln346_725_fu_1059_p2;
        or_ln346_726_reg_3448 <= or_ln346_726_fu_1244_p2;
        or_ln346_731_reg_3547 <= or_ln346_731_fu_2742_p2;
        or_ln346_reg_3383 <= or_ln346_fu_509_p2;
        overflow_1448_reg_3393 <= overflow_1448_fu_659_p2;
        overflow_1449_reg_3408 <= overflow_1449_fu_849_p2;
        overflow_1450_reg_3423 <= overflow_1450_fu_1029_p2;
        overflow_1451_reg_3443 <= overflow_1451_fu_1214_p2;
        overflow_1456_reg_3542 <= overflow_1456_fu_2712_p2;
        overflow_reg_3378 <= overflow_fu_479_p2;
        p_Result_3668_reg_3558 <= ret_V_730_fu_3158_p2[32'd22];
        p_Result_3669_reg_3571 <= p_Val2_4083_fu_3172_p2[32'd21];
        p_Val2_4033_reg_3373 <= p_Val2_4033_fu_377_p2;
        p_Val2_4036_reg_3388 <= p_Val2_4036_fu_557_p2;
        p_Val2_4039_reg_3403 <= p_Val2_4039_fu_747_p2;
        p_Val2_4042_reg_3418 <= p_Val2_4042_fu_927_p2;
        p_Val2_4045_reg_3438 <= p_Val2_4045_fu_1112_p2;
        p_Val2_4060_reg_3537 <= p_Val2_4060_fu_2610_p2;
        p_Val2_4083_reg_3565 <= p_Val2_4083_fu_3172_p2;
        p_Val2_4092_reg_3552 <= p_Val2_4092_fu_3142_p3;
        sext_ln70_270_reg_3433 <= sext_ln70_270_fu_1065_p1;
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
            grp_fu_149_p0 = sext_ln70_273_fu_1881_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_149_p0 = sext_ln70_267_fu_330_p1;
        end else begin
            grp_fu_149_p0 = 'bx;
        end
    end else begin
        grp_fu_149_p0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_149_p1 = 34'd17179867993;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_149_p1 = 31'd2147483438;
        end else begin
            grp_fu_149_p1 = 'bx;
        end
    end else begin
        grp_fu_149_p1 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_150_p0 = sext_ln70_272_fu_1516_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_150_p0 = sext_ln70_268_fu_695_p1;
        end else begin
            grp_fu_150_p0 = 'bx;
        end
    end else begin
        grp_fu_150_p0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_150_p1 = 34'd17179867488;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_150_p1 = 35'd2876;
        end else begin
            grp_fu_150_p1 = 'bx;
        end
    end else begin
        grp_fu_150_p1 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_151_p0 = sext_ln70_271_fu_1511_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_151_p0 = sext_ln70_269_fu_700_p1;
        end else begin
            grp_fu_151_p0 = 'bx;
        end
    end else begin
        grp_fu_151_p0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_151_p1 = 33'd902;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_151_p1 = 34'd1456;
        end else begin
            grp_fu_151_p1 = 'bx;
        end
    end else begin
        grp_fu_151_p1 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_152_p0 = sext_ln70_270_reg_3433;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_152_p0 = sext_ln70_fu_325_p1;
        end else begin
            grp_fu_152_p0 = 'bx;
        end
    end else begin
        grp_fu_152_p0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_152_p1 = 33'd8589933630;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_152_p1 = 34'd17179868112;
        end else begin
            grp_fu_152_p1 = 'bx;
        end
    end else begin
        grp_fu_152_p1 = 'bx;
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

assign Range2_all_ones_1186_fu_583_p3 = grp_fu_152_p2[32'd33];

assign Range2_all_ones_1187_fu_773_p3 = grp_fu_151_p2[32'd33];

assign Range2_all_ones_1188_fu_953_p3 = grp_fu_150_p2[32'd34];

assign Range2_all_ones_1189_fu_1138_p3 = r_V_891_fu_148_p2[32'd32];

assign Range2_all_ones_1190_fu_1399_p1 = grp_fu_152_p2;

assign Range2_all_ones_1190_fu_1399_p3 = Range2_all_ones_1190_fu_1399_p1[32'd32];

assign Range2_all_ones_1191_fu_1589_p1 = grp_fu_150_p2;

assign Range2_all_ones_1191_fu_1589_p3 = Range2_all_ones_1191_fu_1589_p1[32'd33];

assign Range2_all_ones_1192_fu_1769_p1 = grp_fu_151_p2;

assign Range2_all_ones_1192_fu_1769_p3 = Range2_all_ones_1192_fu_1769_p1[32'd32];

assign Range2_all_ones_1193_fu_1954_p3 = grp_fu_149_p2[32'd33];

assign Range2_all_ones_1194_fu_2636_p3 = r_V_896_fu_2562_p2[32'd32];

assign Range2_all_ones_fu_403_p1 = grp_fu_149_p2;

assign Range2_all_ones_fu_403_p3 = Range2_all_ones_fu_403_p1[32'd30];

assign and_ln891_723_fu_635_p2 = (carry_1449_fu_577_p2 & Range2_all_ones_1186_fu_583_p3);

assign and_ln891_724_fu_825_p2 = (carry_1451_fu_767_p2 & Range2_all_ones_1187_fu_773_p3);

assign and_ln891_725_fu_1005_p2 = (carry_1453_fu_947_p2 & Range2_all_ones_1188_fu_953_p3);

assign and_ln891_726_fu_1190_p2 = (carry_1455_fu_1132_p2 & Range2_all_ones_1189_fu_1138_p3);

assign and_ln891_727_fu_1451_p2 = (carry_1457_fu_1393_p2 & Range2_all_ones_1190_fu_1399_p3);

assign and_ln891_728_fu_1641_p2 = (carry_1459_fu_1583_p2 & Range2_all_ones_1191_fu_1589_p3);

assign and_ln891_729_fu_1821_p2 = (carry_1461_fu_1763_p2 & Range2_all_ones_1192_fu_1769_p3);

assign and_ln891_730_fu_2006_p2 = (carry_1463_fu_1948_p2 & Range2_all_ones_1193_fu_1954_p3);

assign and_ln891_731_fu_2688_p2 = (carry_1465_fu_2630_p2 & Range2_all_ones_1194_fu_2636_p3);

assign and_ln891_fu_455_p2 = (carry_1447_fu_397_p2 & Range2_all_ones_fu_403_p3);

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

assign ap_return_0 = p_Val2_4086_fu_3253_p3;

assign ap_return_1 = p_Val2_4087_fu_3353_p3;

assign carry_1447_fu_397_p2 = (xor_ln896_fu_391_p2 & p_Result_3623_fu_357_p3);

assign carry_1449_fu_577_p2 = (xor_ln896_2174_fu_571_p2 & p_Result_3626_fu_537_p3);

assign carry_1451_fu_767_p2 = (xor_ln896_2176_fu_761_p2 & p_Result_3629_fu_727_p3);

assign carry_1453_fu_947_p2 = (xor_ln896_2178_fu_941_p2 & p_Result_3632_fu_907_p3);

assign carry_1455_fu_1132_p2 = (xor_ln896_2180_fu_1126_p2 & p_Result_3635_fu_1092_p3);

assign carry_1457_fu_1393_p2 = (xor_ln896_2182_fu_1387_p2 & p_Result_3638_fu_1353_p3);

assign carry_1459_fu_1583_p2 = (xor_ln896_2184_fu_1577_p2 & p_Result_3641_fu_1543_p3);

assign carry_1461_fu_1763_p2 = (xor_ln896_2186_fu_1757_p2 & p_Result_3644_fu_1723_p3);

assign carry_1463_fu_1948_p2 = (xor_ln896_2188_fu_1942_p2 & p_Result_3647_fu_1908_p3);

assign carry_1465_fu_2630_p2 = (xor_ln896_2190_fu_2624_p2 & p_Result_3650_fu_2590_p3);

assign deleted_ones_1448_fu_629_p2 = (or_ln890_461_fu_623_p2 & Range2_all_ones_1186_fu_583_p3);

assign deleted_ones_1449_fu_819_p2 = (or_ln890_462_fu_813_p2 & Range2_all_ones_1187_fu_773_p3);

assign deleted_ones_1450_fu_999_p2 = (or_ln890_463_fu_993_p2 & Range2_all_ones_1188_fu_953_p3);

assign deleted_ones_1451_fu_1184_p2 = (or_ln890_464_fu_1178_p2 & Range2_all_ones_1189_fu_1138_p3);

assign deleted_ones_1452_fu_1445_p2 = (or_ln890_465_fu_1439_p2 & Range2_all_ones_1190_fu_1399_p3);

assign deleted_ones_1453_fu_1635_p2 = (or_ln890_466_fu_1629_p2 & Range2_all_ones_1191_fu_1589_p3);

assign deleted_ones_1454_fu_1815_p2 = (or_ln890_467_fu_1809_p2 & Range2_all_ones_1192_fu_1769_p3);

assign deleted_ones_1455_fu_2000_p2 = (or_ln890_468_fu_1994_p2 & Range2_all_ones_1193_fu_1954_p3);

assign deleted_ones_1456_fu_2682_p2 = (or_ln890_469_fu_2676_p2 & Range2_all_ones_1194_fu_2636_p3);

assign deleted_ones_fu_449_p2 = (or_ln890_fu_443_p2 & Range2_all_ones_fu_403_p3);

assign deleted_zeros_722_fu_603_p2 = (or_ln888_461_fu_597_p2 ^ Range2_all_ones_1186_fu_583_p3);

assign deleted_zeros_723_fu_793_p2 = (or_ln888_462_fu_787_p2 ^ Range2_all_ones_1187_fu_773_p3);

assign deleted_zeros_724_fu_973_p2 = (or_ln888_463_fu_967_p2 ^ Range2_all_ones_1188_fu_953_p3);

assign deleted_zeros_725_fu_1158_p2 = (or_ln888_464_fu_1152_p2 ^ Range2_all_ones_1189_fu_1138_p3);

assign deleted_zeros_726_fu_1419_p2 = (or_ln888_465_fu_1413_p2 ^ Range2_all_ones_1190_fu_1399_p3);

assign deleted_zeros_727_fu_1609_p2 = (or_ln888_466_fu_1603_p2 ^ Range2_all_ones_1191_fu_1589_p3);

assign deleted_zeros_728_fu_1789_p2 = (or_ln888_467_fu_1783_p2 ^ Range2_all_ones_1192_fu_1769_p3);

assign deleted_zeros_729_fu_1974_p2 = (or_ln888_468_fu_1968_p2 ^ Range2_all_ones_1193_fu_1954_p3);

assign deleted_zeros_730_fu_2656_p2 = (or_ln888_469_fu_2650_p2 ^ Range2_all_ones_1194_fu_2636_p3);

assign deleted_zeros_fu_423_p2 = (or_ln888_fu_417_p2 ^ Range2_all_ones_fu_403_p3);

assign lhs_673_fu_2356_p3 = ((or_ln302_724_fu_2334_p2[0:0] == 1'b1) ? select_ln302_1451_fu_2340_p3 : select_ln350_724_fu_2348_p3);

assign lhs_674_fu_2458_p3 = ((or_ln302_725_fu_2436_p2[0:0] == 1'b1) ? select_ln302_1453_fu_2442_p3 : select_ln350_725_fu_2450_p3);

assign or_ln302_723_fu_2232_p2 = (xor_ln302_1450_fu_2226_p2 | overflow_1458_fu_2202_p2);

assign or_ln302_724_fu_2334_p2 = (xor_ln302_1452_fu_2328_p2 | overflow_1459_fu_2304_p2);

assign or_ln302_725_fu_2436_p2 = (xor_ln302_1454_fu_2430_p2 | overflow_1460_fu_2406_p2);

assign or_ln302_726_fu_2816_p2 = (xor_ln302_1456_fu_2810_p2 | overflow_1461_fu_2786_p2);

assign or_ln302_727_fu_2916_p2 = (xor_ln302_1458_fu_2910_p2 | overflow_1462_fu_2886_p2);

assign or_ln302_728_fu_3018_p2 = (xor_ln302_1460_fu_3012_p2 | overflow_1463_fu_2988_p2);

assign or_ln302_729_fu_3120_p2 = (xor_ln302_1462_fu_3114_p2 | overflow_1464_fu_3090_p2);

assign or_ln302_730_fu_3233_p2 = (xor_ln302_1464_fu_3227_p2 | overflow_1465_fu_3208_p2);

assign or_ln302_731_fu_3331_p2 = (xor_ln302_1466_fu_3325_p2 | overflow_1466_fu_3301_p2);

assign or_ln302_fu_2134_p2 = (xor_ln302_1448_fu_2128_p2 | overflow_1457_fu_2104_p2);

assign or_ln346_723_fu_689_p2 = (underflow_1448_fu_683_p2 | overflow_1448_fu_659_p2);

assign or_ln346_724_fu_879_p2 = (underflow_1449_fu_873_p2 | overflow_1449_fu_849_p2);

assign or_ln346_725_fu_1059_p2 = (underflow_1450_fu_1053_p2 | overflow_1450_fu_1029_p2);

assign or_ln346_726_fu_1244_p2 = (underflow_1451_fu_1238_p2 | overflow_1451_fu_1214_p2);

assign or_ln346_727_fu_1505_p2 = (underflow_1452_fu_1499_p2 | overflow_1452_fu_1475_p2);

assign or_ln346_728_fu_1695_p2 = (underflow_1453_fu_1689_p2 | overflow_1453_fu_1665_p2);

assign or_ln346_729_fu_1875_p2 = (underflow_1454_fu_1869_p2 | overflow_1454_fu_1845_p2);

assign or_ln346_730_fu_2060_p2 = (underflow_1455_fu_2054_p2 | overflow_1455_fu_2030_p2);

assign or_ln346_731_fu_2742_p2 = (underflow_1456_fu_2736_p2 | overflow_1456_fu_2712_p2);

assign or_ln346_fu_509_p2 = (underflow_fu_503_p2 | overflow_fu_479_p2);

assign or_ln888_461_fu_597_p2 = (xor_ln888_924_fu_591_p2 | p_Result_3627_fu_563_p3);

assign or_ln888_462_fu_787_p2 = (xor_ln888_926_fu_781_p2 | p_Result_3630_fu_753_p3);

assign or_ln888_463_fu_967_p2 = (xor_ln888_928_fu_961_p2 | p_Result_3633_fu_933_p3);

assign or_ln888_464_fu_1152_p2 = (xor_ln888_930_fu_1146_p2 | p_Result_3636_fu_1118_p3);

assign or_ln888_465_fu_1413_p2 = (xor_ln888_932_fu_1407_p2 | p_Result_3639_fu_1379_p3);

assign or_ln888_466_fu_1603_p2 = (xor_ln888_934_fu_1597_p2 | p_Result_3642_fu_1569_p3);

assign or_ln888_467_fu_1783_p2 = (xor_ln888_936_fu_1777_p2 | p_Result_3645_fu_1749_p3);

assign or_ln888_468_fu_1968_p2 = (xor_ln888_938_fu_1962_p2 | p_Result_3648_fu_1934_p3);

assign or_ln888_469_fu_2650_p2 = (xor_ln888_940_fu_2644_p2 | p_Result_3651_fu_2616_p3);

assign or_ln888_fu_417_p2 = (xor_ln888_fu_411_p2 | p_Result_3624_fu_383_p3);

assign or_ln890_461_fu_623_p2 = (xor_ln890_723_fu_617_p2 | or_ln888_461_fu_597_p2);

assign or_ln890_462_fu_813_p2 = (xor_ln890_724_fu_807_p2 | or_ln888_462_fu_787_p2);

assign or_ln890_463_fu_993_p2 = (xor_ln890_725_fu_987_p2 | or_ln888_463_fu_967_p2);

assign or_ln890_464_fu_1178_p2 = (xor_ln890_726_fu_1172_p2 | or_ln888_464_fu_1152_p2);

assign or_ln890_465_fu_1439_p2 = (xor_ln890_727_fu_1433_p2 | or_ln888_465_fu_1413_p2);

assign or_ln890_466_fu_1629_p2 = (xor_ln890_728_fu_1623_p2 | or_ln888_466_fu_1603_p2);

assign or_ln890_467_fu_1809_p2 = (xor_ln890_729_fu_1803_p2 | or_ln888_467_fu_1783_p2);

assign or_ln890_468_fu_1994_p2 = (xor_ln890_730_fu_1988_p2 | or_ln888_468_fu_1968_p2);

assign or_ln890_469_fu_2676_p2 = (xor_ln890_731_fu_2670_p2 | or_ln888_469_fu_2650_p2);

assign or_ln890_fu_443_p2 = (xor_ln890_fu_437_p2 | or_ln888_fu_417_p2);

assign or_ln895_723_fu_647_p2 = (xor_ln895_2174_fu_641_p2 | p_Result_3627_fu_563_p3);

assign or_ln895_724_fu_837_p2 = (xor_ln895_2176_fu_831_p2 | p_Result_3630_fu_753_p3);

assign or_ln895_725_fu_1017_p2 = (xor_ln895_2178_fu_1011_p2 | p_Result_3633_fu_933_p3);

assign or_ln895_726_fu_1202_p2 = (xor_ln895_2180_fu_1196_p2 | p_Result_3636_fu_1118_p3);

assign or_ln895_727_fu_1463_p2 = (xor_ln895_2182_fu_1457_p2 | p_Result_3639_fu_1379_p3);

assign or_ln895_728_fu_1653_p2 = (xor_ln895_2184_fu_1647_p2 | p_Result_3642_fu_1569_p3);

assign or_ln895_729_fu_1833_p2 = (xor_ln895_2186_fu_1827_p2 | p_Result_3645_fu_1749_p3);

assign or_ln895_730_fu_2018_p2 = (xor_ln895_2188_fu_2012_p2 | p_Result_3648_fu_1934_p3);

assign or_ln895_731_fu_2700_p2 = (xor_ln895_2190_fu_2694_p2 | p_Result_3651_fu_2616_p3);

assign or_ln895_fu_467_p2 = (xor_ln895_fu_461_p2 | p_Result_3624_fu_383_p3);

assign or_ln896_723_fu_671_p2 = (xor_ln896_2175_fu_665_p2 | xor_ln896_2174_fu_571_p2);

assign or_ln896_724_fu_861_p2 = (xor_ln896_2177_fu_855_p2 | xor_ln896_2176_fu_761_p2);

assign or_ln896_725_fu_1041_p2 = (xor_ln896_2179_fu_1035_p2 | xor_ln896_2178_fu_941_p2);

assign or_ln896_726_fu_1226_p2 = (xor_ln896_2181_fu_1220_p2 | xor_ln896_2180_fu_1126_p2);

assign or_ln896_727_fu_1487_p2 = (xor_ln896_2183_fu_1481_p2 | xor_ln896_2182_fu_1387_p2);

assign or_ln896_728_fu_1677_p2 = (xor_ln896_2185_fu_1671_p2 | xor_ln896_2184_fu_1577_p2);

assign or_ln896_729_fu_1857_p2 = (xor_ln896_2187_fu_1851_p2 | xor_ln896_2186_fu_1757_p2);

assign or_ln896_730_fu_2042_p2 = (xor_ln896_2189_fu_2036_p2 | xor_ln896_2188_fu_1942_p2);

assign or_ln896_731_fu_2724_p2 = (xor_ln896_2191_fu_2718_p2 | xor_ln896_2190_fu_2624_p2);

assign or_ln896_fu_491_p2 = (xor_ln896_fu_391_p2 | xor_ln896_2173_fu_485_p2);

assign overflow_1448_fu_659_p2 = (xor_ln895_2175_fu_653_p2 & or_ln895_723_fu_647_p2);

assign overflow_1449_fu_849_p2 = (xor_ln895_2177_fu_843_p2 & or_ln895_724_fu_837_p2);

assign overflow_1450_fu_1029_p2 = (xor_ln895_2179_fu_1023_p2 & or_ln895_725_fu_1017_p2);

assign overflow_1451_fu_1214_p2 = (xor_ln895_2181_fu_1208_p2 & or_ln895_726_fu_1202_p2);

assign overflow_1452_fu_1475_p2 = (xor_ln895_2183_fu_1469_p2 & or_ln895_727_fu_1463_p2);

assign overflow_1453_fu_1665_p2 = (xor_ln895_2185_fu_1659_p2 & or_ln895_728_fu_1653_p2);

assign overflow_1454_fu_1845_p2 = (xor_ln895_2187_fu_1839_p2 & or_ln895_729_fu_1833_p2);

assign overflow_1455_fu_2030_p2 = (xor_ln895_2189_fu_2024_p2 & or_ln895_730_fu_2018_p2);

assign overflow_1456_fu_2712_p2 = (xor_ln895_2191_fu_2706_p2 & or_ln895_731_fu_2700_p2);

assign overflow_1457_fu_2104_p2 = (xor_ln895_2192_fu_2098_p2 & p_Result_3653_fu_2090_p3);

assign overflow_1458_fu_2202_p2 = (xor_ln895_2193_fu_2196_p2 & p_Result_3655_fu_2188_p3);

assign overflow_1459_fu_2304_p2 = (xor_ln895_2194_fu_2298_p2 & p_Result_3657_fu_2290_p3);

assign overflow_1460_fu_2406_p2 = (xor_ln895_2195_fu_2400_p2 & p_Result_3659_fu_2392_p3);

assign overflow_1461_fu_2786_p2 = (xor_ln895_2196_fu_2780_p2 & p_Result_3661_fu_2772_p3);

assign overflow_1462_fu_2886_p2 = (xor_ln895_2197_fu_2880_p2 & p_Result_3663_fu_2872_p3);

assign overflow_1463_fu_2988_p2 = (xor_ln895_2198_fu_2982_p2 & p_Result_3665_fu_2974_p3);

assign overflow_1464_fu_3090_p2 = (xor_ln895_2199_fu_3084_p2 & p_Result_3667_fu_3076_p3);

assign overflow_1465_fu_3208_p2 = (xor_ln895_2200_fu_3203_p2 & p_Result_3669_reg_3571);

assign overflow_1466_fu_3301_p2 = (xor_ln895_2201_fu_3295_p2 & p_Result_3671_fu_3287_p3);

assign overflow_fu_479_p2 = (xor_ln895_2173_fu_473_p2 & or_ln895_fu_467_p2);

assign p_Result_3623_fu_357_p1 = grp_fu_149_p2;

assign p_Result_3623_fu_357_p3 = p_Result_3623_fu_357_p1[32'd30];

assign p_Result_3624_fu_383_p3 = p_Val2_4033_fu_377_p2[32'd17];

assign p_Result_3625_fu_515_p3 = grp_fu_152_p2[32'd33];

assign p_Result_3626_fu_537_p3 = grp_fu_152_p2[32'd33];

assign p_Result_3627_fu_563_p3 = p_Val2_4036_fu_557_p2[32'd20];

assign p_Result_3628_fu_705_p3 = grp_fu_151_p2[32'd33];

assign p_Result_3629_fu_727_p3 = grp_fu_151_p2[32'd33];

assign p_Result_3630_fu_753_p3 = p_Val2_4039_fu_747_p2[32'd20];

assign p_Result_3631_fu_885_p3 = grp_fu_150_p2[32'd34];

assign p_Result_3632_fu_907_p3 = grp_fu_150_p2[32'd34];

assign p_Result_3633_fu_933_p3 = p_Val2_4042_fu_927_p2[32'd21];

assign p_Result_3634_fu_1070_p3 = r_V_891_fu_148_p2[32'd32];

assign p_Result_3635_fu_1092_p3 = r_V_891_fu_148_p2[32'd32];

assign p_Result_3636_fu_1118_p3 = p_Val2_4045_fu_1112_p2[32'd19];

assign p_Result_3637_fu_1331_p1 = grp_fu_152_p2;

assign p_Result_3637_fu_1331_p3 = p_Result_3637_fu_1331_p1[32'd32];

assign p_Result_3638_fu_1353_p1 = grp_fu_152_p2;

assign p_Result_3638_fu_1353_p3 = p_Result_3638_fu_1353_p1[32'd32];

assign p_Result_3639_fu_1379_p3 = p_Val2_4048_fu_1373_p2[32'd19];

assign p_Result_3640_fu_1521_p1 = grp_fu_150_p2;

assign p_Result_3640_fu_1521_p3 = p_Result_3640_fu_1521_p1[32'd33];

assign p_Result_3641_fu_1543_p1 = grp_fu_150_p2;

assign p_Result_3641_fu_1543_p3 = p_Result_3641_fu_1543_p1[32'd33];

assign p_Result_3642_fu_1569_p3 = p_Val2_4051_fu_1563_p2[32'd20];

assign p_Result_3643_fu_1701_p1 = grp_fu_151_p2;

assign p_Result_3643_fu_1701_p3 = p_Result_3643_fu_1701_p1[32'd32];

assign p_Result_3644_fu_1723_p1 = grp_fu_151_p2;

assign p_Result_3644_fu_1723_p3 = p_Result_3644_fu_1723_p1[32'd32];

assign p_Result_3645_fu_1749_p3 = p_Val2_4054_fu_1743_p2[32'd19];

assign p_Result_3646_fu_1886_p3 = grp_fu_149_p2[32'd33];

assign p_Result_3647_fu_1908_p3 = grp_fu_149_p2[32'd33];

assign p_Result_3648_fu_1934_p3 = p_Val2_4057_fu_1928_p2[32'd20];

assign p_Result_3649_fu_2568_p3 = r_V_896_fu_2562_p2[32'd32];

assign p_Result_3650_fu_2590_p3 = r_V_896_fu_2562_p2[32'd32];

assign p_Result_3651_fu_2616_p3 = p_Val2_4060_fu_2610_p2[32'd19];

assign p_Result_3652_fu_2076_p3 = ret_V_fu_2070_p2[32'd22];

assign p_Result_3653_fu_2090_p3 = p_Val2_4062_fu_2084_p2[32'd21];

assign p_Result_3654_fu_2174_p3 = ret_V_723_fu_2168_p2[32'd22];

assign p_Result_3655_fu_2188_p3 = p_Val2_4063_fu_2182_p2[32'd21];

assign p_Result_3656_fu_2276_p3 = ret_V_724_fu_2270_p2[32'd22];

assign p_Result_3657_fu_2290_p3 = p_Val2_4067_fu_2284_p2[32'd21];

assign p_Result_3658_fu_2378_p3 = ret_V_725_fu_2372_p2[32'd22];

assign p_Result_3659_fu_2392_p3 = p_Val2_4069_fu_2386_p2[32'd21];

assign p_Result_3660_fu_2760_p3 = ret_V_726_fu_2754_p2[32'd22];

assign p_Result_3661_fu_2772_p3 = p_Val2_4071_fu_2768_p2[32'd21];

assign p_Result_3662_fu_2859_p3 = ret_V_727_fu_2853_p2[32'd22];

assign p_Result_3663_fu_2872_p3 = p_Val2_4073_fu_2867_p2[32'd21];

assign p_Result_3664_fu_2960_p3 = ret_V_728_fu_2954_p2[32'd22];

assign p_Result_3665_fu_2974_p3 = p_Val2_4077_fu_2968_p2[32'd21];

assign p_Result_3666_fu_3062_p3 = ret_V_729_fu_3056_p2[32'd22];

assign p_Result_3667_fu_3076_p3 = p_Val2_4079_fu_3070_p2[32'd21];

assign p_Result_3670_fu_3274_p3 = ret_V_731_fu_3268_p2[32'd22];

assign p_Result_3671_fu_3287_p3 = p_Val2_4085_fu_3282_p2[32'd21];

assign p_Result_s_fu_335_p1 = grp_fu_149_p2;

assign p_Result_s_fu_335_p3 = p_Result_s_fu_335_p1[32'd30];

assign p_Val2_4032_fu_343_p1 = grp_fu_149_p2;

assign p_Val2_4032_fu_343_p4 = {{p_Val2_4032_fu_343_p1[30:14]}};

assign p_Val2_4033_fu_377_p2 = ($signed(zext_ln377_fu_373_p1) + $signed(sext_ln823_fu_353_p1));

assign p_Val2_4035_fu_523_p4 = {{grp_fu_152_p2[33:14]}};

assign p_Val2_4036_fu_557_p2 = ($signed(zext_ln377_723_fu_553_p1) + $signed(sext_ln823_99_fu_533_p1));

assign p_Val2_4038_fu_713_p4 = {{grp_fu_151_p2[33:14]}};

assign p_Val2_4039_fu_747_p2 = ($signed(zext_ln377_724_fu_743_p1) + $signed(sext_ln823_100_fu_723_p1));

assign p_Val2_4041_fu_893_p4 = {{grp_fu_150_p2[34:14]}};

assign p_Val2_4042_fu_927_p2 = ($signed(zext_ln377_725_fu_923_p1) + $signed(sext_ln818_fu_903_p1));

assign p_Val2_4044_fu_1078_p4 = {{r_V_891_fu_148_p2[32:14]}};

assign p_Val2_4045_fu_1112_p2 = ($signed(zext_ln377_726_fu_1108_p1) + $signed(sext_ln823_101_fu_1088_p1));

assign p_Val2_4047_fu_1339_p1 = grp_fu_152_p2;

assign p_Val2_4047_fu_1339_p4 = {{p_Val2_4047_fu_1339_p1[32:14]}};

assign p_Val2_4048_fu_1373_p2 = ($signed(zext_ln377_727_fu_1369_p1) + $signed(sext_ln823_102_fu_1349_p1));

assign p_Val2_4050_fu_1529_p1 = grp_fu_150_p2;

assign p_Val2_4050_fu_1529_p4 = {{p_Val2_4050_fu_1529_p1[33:14]}};

assign p_Val2_4051_fu_1563_p2 = ($signed(zext_ln377_728_fu_1559_p1) + $signed(sext_ln823_103_fu_1539_p1));

assign p_Val2_4053_fu_1709_p1 = grp_fu_151_p2;

assign p_Val2_4053_fu_1709_p4 = {{p_Val2_4053_fu_1709_p1[32:14]}};

assign p_Val2_4054_fu_1743_p2 = ($signed(zext_ln377_729_fu_1739_p1) + $signed(sext_ln823_104_fu_1719_p1));

assign p_Val2_4056_fu_1894_p4 = {{grp_fu_149_p2[33:14]}};

assign p_Val2_4057_fu_1928_p2 = ($signed(zext_ln377_730_fu_1924_p1) + $signed(sext_ln823_105_fu_1904_p1));

assign p_Val2_4059_fu_2576_p4 = {{r_V_896_fu_2562_p2[32:14]}};

assign p_Val2_4060_fu_2610_p2 = ($signed(zext_ln377_731_fu_2606_p1) + $signed(sext_ln823_106_fu_2586_p1));

assign p_Val2_4062_fu_2084_p2 = ($signed(rhs_fu_1260_p3) + $signed(22'd12754));

assign p_Val2_4063_fu_2182_p2 = ($signed(rhs_723_fu_1277_p3) + $signed(22'd2332));

assign p_Val2_4067_fu_2284_p2 = ($signed(rhs_724_fu_1294_p3) + $signed(p_Val2_s_fu_2156_p3));

assign p_Val2_4069_fu_2386_p2 = ($signed(rhs_725_fu_1308_p3) + $signed(p_Val2_4088_fu_2254_p3));

assign p_Val2_4071_fu_2768_p2 = ($signed(rhs_726_reg_3459) + $signed(lhs_673_reg_3525));

assign p_Val2_4073_fu_2867_p2 = ($signed(rhs_727_fu_2476_p3) + $signed(lhs_674_reg_3531));

assign p_Val2_4077_fu_2968_p2 = ($signed(rhs_728_fu_2493_p3) + $signed(p_Val2_4089_fu_2838_p3));

assign p_Val2_4079_fu_3070_p2 = ($signed(rhs_729_fu_2510_p3) + $signed(p_Val2_4090_fu_2938_p3));

assign p_Val2_4083_fu_3172_p2 = ($signed(rhs_730_fu_2527_p3) + $signed(p_Val2_4091_fu_3040_p3));

assign p_Val2_4085_fu_3282_p2 = ($signed(rhs_731_fu_3196_p3) + $signed(p_Val2_4092_reg_3552));

assign p_Val2_4086_fu_3253_p3 = ((or_ln302_730_fu_3233_p2[0:0] == 1'b1) ? select_ln302_1463_fu_3239_p3 : select_ln350_730_fu_3246_p3);

assign p_Val2_4087_fu_3353_p3 = ((or_ln302_731_fu_3331_p2[0:0] == 1'b1) ? select_ln302_1465_fu_3337_p3 : select_ln350_731_fu_3345_p3);

assign p_Val2_4088_fu_2254_p3 = ((or_ln302_723_fu_2232_p2[0:0] == 1'b1) ? select_ln302_1449_fu_2238_p3 : select_ln350_723_fu_2246_p3);

assign p_Val2_4089_fu_2838_p3 = ((or_ln302_726_fu_2816_p2[0:0] == 1'b1) ? select_ln302_1455_fu_2822_p3 : select_ln350_726_fu_2830_p3);

assign p_Val2_4090_fu_2938_p3 = ((or_ln302_727_fu_2916_p2[0:0] == 1'b1) ? select_ln302_1457_fu_2922_p3 : select_ln350_727_fu_2930_p3);

assign p_Val2_4091_fu_3040_p3 = ((or_ln302_728_fu_3018_p2[0:0] == 1'b1) ? select_ln302_1459_fu_3024_p3 : select_ln350_728_fu_3032_p3);

assign p_Val2_4092_fu_3142_p3 = ((or_ln302_729_fu_3120_p2[0:0] == 1'b1) ? select_ln302_1461_fu_3126_p3 : select_ln350_729_fu_3134_p3);

assign p_Val2_s_fu_2156_p3 = ((or_ln302_fu_2134_p2[0:0] == 1'b1) ? select_ln302_fu_2140_p3 : select_ln350_fu_2148_p3);

assign r_V_891_fu_148_p1 = 33'd613;

assign r_V_896_fu_2562_p2 = ($signed(sub_ln1273_fu_2545_p2) - $signed(sext_ln1273_12_fu_2558_p1));

assign ret_V_723_fu_2168_p2 = ($signed(sext_ln813_1397_fu_2164_p1) + $signed(23'd2332));

assign ret_V_724_fu_2270_p2 = ($signed(sext_ln813_1399_fu_2266_p1) + $signed(sext_ln813_1398_fu_2262_p1));

assign ret_V_725_fu_2372_p2 = ($signed(sext_ln813_1401_fu_2368_p1) + $signed(sext_ln813_1400_fu_2364_p1));

assign ret_V_726_fu_2754_p2 = ($signed(sext_ln813_1403_fu_2751_p1) + $signed(sext_ln813_1402_fu_2748_p1));

assign ret_V_727_fu_2853_p2 = ($signed(sext_ln813_1405_fu_2849_p1) + $signed(sext_ln813_1404_fu_2846_p1));

assign ret_V_728_fu_2954_p2 = ($signed(sext_ln813_1407_fu_2950_p1) + $signed(sext_ln813_1406_fu_2946_p1));

assign ret_V_729_fu_3056_p2 = ($signed(sext_ln813_1409_fu_3052_p1) + $signed(sext_ln813_1408_fu_3048_p1));

assign ret_V_730_fu_3158_p2 = ($signed(sext_ln813_1411_fu_3154_p1) + $signed(sext_ln813_1410_fu_3150_p1));

assign ret_V_731_fu_3268_p2 = ($signed(sext_ln813_1413_fu_3264_p1) + $signed(sext_ln813_1412_fu_3261_p1));

assign ret_V_fu_2070_p2 = ($signed(sext_ln813_fu_2066_p1) + $signed(23'd12754));

assign rhs_723_fu_1277_p3 = ((or_ln346_723_reg_3398[0:0] == 1'b1) ? select_ln346_1035_fu_1270_p3 : sext_ln856_99_fu_1267_p1);

assign rhs_724_fu_1294_p3 = ((or_ln346_724_reg_3413[0:0] == 1'b1) ? select_ln346_1036_fu_1287_p3 : sext_ln856_100_fu_1284_p1);

assign rhs_725_fu_1308_p3 = ((or_ln346_725_reg_3428[0:0] == 1'b1) ? select_ln346_1037_fu_1301_p3 : p_Val2_4042_reg_3418);

assign rhs_726_fu_1324_p3 = ((or_ln346_726_reg_3448[0:0] == 1'b1) ? select_ln346_1038_fu_1317_p3 : sext_ln856_101_fu_1314_p1);

assign rhs_727_fu_2476_p3 = ((or_ln346_727_reg_3475[0:0] == 1'b1) ? select_ln346_1039_fu_2469_p3 : sext_ln856_102_fu_2466_p1);

assign rhs_728_fu_2493_p3 = ((or_ln346_728_reg_3490[0:0] == 1'b1) ? select_ln346_1040_fu_2486_p3 : sext_ln856_103_fu_2483_p1);

assign rhs_729_fu_2510_p3 = ((or_ln346_729_reg_3505[0:0] == 1'b1) ? select_ln346_1041_fu_2503_p3 : sext_ln856_104_fu_2500_p1);

assign rhs_730_fu_2527_p3 = ((or_ln346_730_reg_3520[0:0] == 1'b1) ? select_ln346_1042_fu_2520_p3 : sext_ln856_105_fu_2517_p1);

assign rhs_731_fu_3196_p3 = ((or_ln346_731_reg_3547[0:0] == 1'b1) ? select_ln346_1043_fu_3189_p3 : sext_ln856_106_fu_3186_p1);

assign rhs_fu_1260_p3 = ((or_ln346_reg_3383[0:0] == 1'b1) ? select_ln346_1034_fu_1253_p3 : sext_ln856_fu_1250_p1);

assign select_ln302_1449_fu_2238_p3 = ((xor_ln302_1449_fu_2220_p2[0:0] == 1'b1) ? 22'd2097151 : p_Val2_4063_fu_2182_p2);

assign select_ln302_1451_fu_2340_p3 = ((xor_ln302_1451_fu_2322_p2[0:0] == 1'b1) ? 22'd2097151 : p_Val2_4067_fu_2284_p2);

assign select_ln302_1453_fu_2442_p3 = ((xor_ln302_1453_fu_2424_p2[0:0] == 1'b1) ? 22'd2097151 : p_Val2_4069_fu_2386_p2);

assign select_ln302_1455_fu_2822_p3 = ((xor_ln302_1455_fu_2804_p2[0:0] == 1'b1) ? 22'd2097151 : p_Val2_4071_fu_2768_p2);

assign select_ln302_1457_fu_2922_p3 = ((xor_ln302_1457_fu_2904_p2[0:0] == 1'b1) ? 22'd2097151 : p_Val2_4073_fu_2867_p2);

assign select_ln302_1459_fu_3024_p3 = ((xor_ln302_1459_fu_3006_p2[0:0] == 1'b1) ? 22'd2097151 : p_Val2_4077_fu_2968_p2);

assign select_ln302_1461_fu_3126_p3 = ((xor_ln302_1461_fu_3108_p2[0:0] == 1'b1) ? 22'd2097151 : p_Val2_4079_fu_3070_p2);

assign select_ln302_1463_fu_3239_p3 = ((xor_ln302_1463_fu_3223_p2[0:0] == 1'b1) ? 22'd2097151 : p_Val2_4083_reg_3565);

assign select_ln302_1465_fu_3337_p3 = ((xor_ln302_1465_fu_3319_p2[0:0] == 1'b1) ? 22'd2097151 : p_Val2_4085_fu_3282_p2);

assign select_ln302_fu_2140_p3 = ((xor_ln302_fu_2122_p2[0:0] == 1'b1) ? 22'd2097151 : p_Val2_4062_fu_2084_p2);

assign select_ln346_1034_fu_1253_p3 = ((overflow_reg_3378[0:0] == 1'b1) ? 22'd2097151 : 22'd2097152);

assign select_ln346_1035_fu_1270_p3 = ((overflow_1448_reg_3393[0:0] == 1'b1) ? 22'd2097151 : 22'd2097152);

assign select_ln346_1036_fu_1287_p3 = ((overflow_1449_reg_3408[0:0] == 1'b1) ? 22'd2097151 : 22'd2097152);

assign select_ln346_1037_fu_1301_p3 = ((overflow_1450_reg_3423[0:0] == 1'b1) ? 22'd2097151 : 22'd2097152);

assign select_ln346_1038_fu_1317_p3 = ((overflow_1451_reg_3443[0:0] == 1'b1) ? 22'd2097151 : 22'd2097152);

assign select_ln346_1039_fu_2469_p3 = ((overflow_1452_reg_3470[0:0] == 1'b1) ? 22'd2097151 : 22'd2097152);

assign select_ln346_1040_fu_2486_p3 = ((overflow_1453_reg_3485[0:0] == 1'b1) ? 22'd2097151 : 22'd2097152);

assign select_ln346_1041_fu_2503_p3 = ((overflow_1454_reg_3500[0:0] == 1'b1) ? 22'd2097151 : 22'd2097152);

assign select_ln346_1042_fu_2520_p3 = ((overflow_1455_reg_3515[0:0] == 1'b1) ? 22'd2097151 : 22'd2097152);

assign select_ln346_1043_fu_3189_p3 = ((overflow_1456_reg_3542[0:0] == 1'b1) ? 22'd2097151 : 22'd2097152);

assign select_ln350_723_fu_2246_p3 = ((underflow_1458_fu_2214_p2[0:0] == 1'b1) ? 22'd2097152 : p_Val2_4063_fu_2182_p2);

assign select_ln350_724_fu_2348_p3 = ((underflow_1459_fu_2316_p2[0:0] == 1'b1) ? 22'd2097152 : p_Val2_4067_fu_2284_p2);

assign select_ln350_725_fu_2450_p3 = ((underflow_1460_fu_2418_p2[0:0] == 1'b1) ? 22'd2097152 : p_Val2_4069_fu_2386_p2);

assign select_ln350_726_fu_2830_p3 = ((underflow_1461_fu_2798_p2[0:0] == 1'b1) ? 22'd2097152 : p_Val2_4071_fu_2768_p2);

assign select_ln350_727_fu_2930_p3 = ((underflow_1462_fu_2898_p2[0:0] == 1'b1) ? 22'd2097152 : p_Val2_4073_fu_2867_p2);

assign select_ln350_728_fu_3032_p3 = ((underflow_1463_fu_3000_p2[0:0] == 1'b1) ? 22'd2097152 : p_Val2_4077_fu_2968_p2);

assign select_ln350_729_fu_3134_p3 = ((underflow_1464_fu_3102_p2[0:0] == 1'b1) ? 22'd2097152 : p_Val2_4079_fu_3070_p2);

assign select_ln350_730_fu_3246_p3 = ((underflow_1465_fu_3218_p2[0:0] == 1'b1) ? 22'd2097152 : p_Val2_4083_reg_3565);

assign select_ln350_731_fu_3345_p3 = ((underflow_1466_fu_3313_p2[0:0] == 1'b1) ? 22'd2097152 : p_Val2_4085_fu_3282_p2);

assign select_ln350_fu_2148_p3 = ((underflow_1457_fu_2116_p2[0:0] == 1'b1) ? 22'd2097152 : p_Val2_4062_fu_2084_p2);

assign sext_ln1273_12_fu_2558_p1 = $signed(shl_ln1273_s_fu_2551_p3);

assign sext_ln1273_fu_2541_p1 = $signed(shl_ln_fu_2534_p3);

assign sext_ln70_267_fu_330_p0 = p_read;

assign sext_ln70_267_fu_330_p1 = sext_ln70_267_fu_330_p0;

assign sext_ln70_268_fu_695_p0 = p_read1;

assign sext_ln70_268_fu_695_p1 = sext_ln70_268_fu_695_p0;

assign sext_ln70_269_fu_700_p0 = p_read1;

assign sext_ln70_269_fu_700_p1 = sext_ln70_269_fu_700_p0;

assign sext_ln70_270_fu_1065_p1 = $signed(p_read2);

assign sext_ln70_271_fu_1511_p0 = ap_port_reg_p_read3;

assign sext_ln70_271_fu_1511_p1 = sext_ln70_271_fu_1511_p0;

assign sext_ln70_272_fu_1516_p0 = ap_port_reg_p_read3;

assign sext_ln70_272_fu_1516_p1 = sext_ln70_272_fu_1516_p0;

assign sext_ln70_273_fu_1881_p0 = ap_port_reg_p_read4;

assign sext_ln70_273_fu_1881_p1 = sext_ln70_273_fu_1881_p0;

assign sext_ln70_fu_325_p0 = p_read;

assign sext_ln70_fu_325_p1 = sext_ln70_fu_325_p0;

assign sext_ln813_1397_fu_2164_p1 = rhs_723_fu_1277_p3;

assign sext_ln813_1398_fu_2262_p1 = p_Val2_s_fu_2156_p3;

assign sext_ln813_1399_fu_2266_p1 = rhs_724_fu_1294_p3;

assign sext_ln813_1400_fu_2364_p1 = p_Val2_4088_fu_2254_p3;

assign sext_ln813_1401_fu_2368_p1 = rhs_725_fu_1308_p3;

assign sext_ln813_1402_fu_2748_p1 = lhs_673_reg_3525;

assign sext_ln813_1403_fu_2751_p1 = rhs_726_reg_3459;

assign sext_ln813_1404_fu_2846_p1 = lhs_674_reg_3531;

assign sext_ln813_1405_fu_2849_p1 = rhs_727_fu_2476_p3;

assign sext_ln813_1406_fu_2946_p1 = p_Val2_4089_fu_2838_p3;

assign sext_ln813_1407_fu_2950_p1 = rhs_728_fu_2493_p3;

assign sext_ln813_1408_fu_3048_p1 = p_Val2_4090_fu_2938_p3;

assign sext_ln813_1409_fu_3052_p1 = rhs_729_fu_2510_p3;

assign sext_ln813_1410_fu_3150_p1 = p_Val2_4091_fu_3040_p3;

assign sext_ln813_1411_fu_3154_p1 = rhs_730_fu_2527_p3;

assign sext_ln813_1412_fu_3261_p1 = p_Val2_4092_reg_3552;

assign sext_ln813_1413_fu_3264_p1 = rhs_731_fu_3196_p3;

assign sext_ln813_fu_2066_p1 = rhs_fu_1260_p3;

assign sext_ln818_fu_903_p1 = $signed(p_Val2_4041_fu_893_p4);

assign sext_ln823_100_fu_723_p1 = $signed(p_Val2_4038_fu_713_p4);

assign sext_ln823_101_fu_1088_p1 = $signed(p_Val2_4044_fu_1078_p4);

assign sext_ln823_102_fu_1349_p1 = $signed(p_Val2_4047_fu_1339_p4);

assign sext_ln823_103_fu_1539_p1 = $signed(p_Val2_4050_fu_1529_p4);

assign sext_ln823_104_fu_1719_p1 = $signed(p_Val2_4053_fu_1709_p4);

assign sext_ln823_105_fu_1904_p1 = $signed(p_Val2_4056_fu_1894_p4);

assign sext_ln823_106_fu_2586_p1 = $signed(p_Val2_4059_fu_2576_p4);

assign sext_ln823_99_fu_533_p1 = $signed(p_Val2_4035_fu_523_p4);

assign sext_ln823_fu_353_p1 = $signed(p_Val2_4032_fu_343_p4);

assign sext_ln856_100_fu_1284_p1 = p_Val2_4039_reg_3403;

assign sext_ln856_101_fu_1314_p1 = p_Val2_4045_reg_3438;

assign sext_ln856_102_fu_2466_p1 = p_Val2_4048_reg_3465;

assign sext_ln856_103_fu_2483_p1 = p_Val2_4051_reg_3480;

assign sext_ln856_104_fu_2500_p1 = p_Val2_4054_reg_3495;

assign sext_ln856_105_fu_2517_p1 = p_Val2_4057_reg_3510;

assign sext_ln856_106_fu_3186_p1 = p_Val2_4060_reg_3537;

assign sext_ln856_99_fu_1267_p1 = p_Val2_4036_reg_3388;

assign sext_ln856_fu_1250_p1 = p_Val2_4033_reg_3373;

assign shl_ln1273_s_fu_2551_p3 = {{p_read432_reg_3453}, {8'd0}};

assign shl_ln_fu_2534_p3 = {{p_read432_reg_3453}, {10'd0}};

assign sub_ln1273_fu_2545_p2 = ($signed(33'd0) - $signed(sext_ln1273_fu_2541_p1));

assign tmp_5763_fu_429_p1 = grp_fu_149_p2;

assign tmp_5763_fu_429_p3 = tmp_5763_fu_429_p1[32'd30];

assign tmp_5766_fu_545_p3 = grp_fu_152_p2[32'd13];

assign tmp_5769_fu_609_p3 = grp_fu_152_p2[32'd33];

assign tmp_5772_fu_735_p3 = grp_fu_151_p2[32'd13];

assign tmp_5775_fu_799_p3 = grp_fu_151_p2[32'd33];

assign tmp_5778_fu_915_p3 = grp_fu_150_p2[32'd13];

assign tmp_5781_fu_979_p3 = grp_fu_150_p2[32'd34];

assign tmp_5784_fu_1100_p3 = r_V_891_fu_148_p2[32'd13];

assign tmp_5787_fu_1164_p3 = r_V_891_fu_148_p2[32'd32];

assign tmp_5790_fu_1361_p1 = grp_fu_152_p2;

assign tmp_5790_fu_1361_p3 = tmp_5790_fu_1361_p1[32'd13];

assign tmp_5793_fu_1425_p1 = grp_fu_152_p2;

assign tmp_5793_fu_1425_p3 = tmp_5793_fu_1425_p1[32'd32];

assign tmp_5796_fu_1551_p1 = grp_fu_150_p2;

assign tmp_5796_fu_1551_p3 = tmp_5796_fu_1551_p1[32'd13];

assign tmp_5799_fu_1615_p1 = grp_fu_150_p2;

assign tmp_5799_fu_1615_p3 = tmp_5799_fu_1615_p1[32'd33];

assign tmp_5802_fu_1731_p1 = grp_fu_151_p2;

assign tmp_5802_fu_1731_p3 = tmp_5802_fu_1731_p1[32'd13];

assign tmp_5805_fu_1795_p1 = grp_fu_151_p2;

assign tmp_5805_fu_1795_p3 = tmp_5805_fu_1795_p1[32'd32];

assign tmp_5808_fu_1916_p3 = grp_fu_149_p2[32'd13];

assign tmp_5811_fu_1980_p3 = grp_fu_149_p2[32'd33];

assign tmp_5814_fu_2598_p3 = r_V_896_fu_2562_p2[32'd13];

assign tmp_5817_fu_2662_p3 = r_V_896_fu_2562_p2[32'd32];

assign tmp_fu_365_p1 = grp_fu_149_p2;

assign tmp_fu_365_p3 = tmp_fu_365_p1[32'd13];

assign underflow_1448_fu_683_p2 = (xor_ln896_2353_fu_677_p2 & p_Result_3625_fu_515_p3);

assign underflow_1449_fu_873_p2 = (xor_ln896_2354_fu_867_p2 & p_Result_3628_fu_705_p3);

assign underflow_1450_fu_1053_p2 = (xor_ln896_2355_fu_1047_p2 & p_Result_3631_fu_885_p3);

assign underflow_1451_fu_1238_p2 = (xor_ln896_2356_fu_1232_p2 & p_Result_3634_fu_1070_p3);

assign underflow_1452_fu_1499_p2 = (xor_ln896_2357_fu_1493_p2 & p_Result_3637_fu_1331_p3);

assign underflow_1453_fu_1689_p2 = (xor_ln896_2358_fu_1683_p2 & p_Result_3640_fu_1521_p3);

assign underflow_1454_fu_1869_p2 = (xor_ln896_2359_fu_1863_p2 & p_Result_3643_fu_1701_p3);

assign underflow_1455_fu_2054_p2 = (xor_ln896_2360_fu_2048_p2 & p_Result_3646_fu_1886_p3);

assign underflow_1456_fu_2736_p2 = (xor_ln896_2361_fu_2730_p2 & p_Result_3649_fu_2568_p3);

assign underflow_1457_fu_2116_p2 = (xor_ln896_2192_fu_2110_p2 & p_Result_3652_fu_2076_p3);

assign underflow_1458_fu_2214_p2 = (xor_ln896_2193_fu_2208_p2 & p_Result_3654_fu_2174_p3);

assign underflow_1459_fu_2316_p2 = (xor_ln896_2194_fu_2310_p2 & p_Result_3656_fu_2276_p3);

assign underflow_1460_fu_2418_p2 = (xor_ln896_2195_fu_2412_p2 & p_Result_3658_fu_2378_p3);

assign underflow_1461_fu_2798_p2 = (xor_ln896_2196_fu_2792_p2 & p_Result_3660_fu_2760_p3);

assign underflow_1462_fu_2898_p2 = (xor_ln896_2197_fu_2892_p2 & p_Result_3662_fu_2859_p3);

assign underflow_1463_fu_3000_p2 = (xor_ln896_2198_fu_2994_p2 & p_Result_3664_fu_2960_p3);

assign underflow_1464_fu_3102_p2 = (xor_ln896_2199_fu_3096_p2 & p_Result_3666_fu_3062_p3);

assign underflow_1465_fu_3218_p2 = (xor_ln896_2200_fu_3213_p2 & p_Result_3668_reg_3558);

assign underflow_1466_fu_3313_p2 = (xor_ln896_2201_fu_3307_p2 & p_Result_3670_fu_3274_p3);

assign underflow_fu_503_p2 = (xor_ln896_2352_fu_497_p2 & p_Result_s_fu_335_p3);

assign xor_ln302_1448_fu_2128_p2 = (xor_ln302_fu_2122_p2 ^ 1'd1);

assign xor_ln302_1449_fu_2220_p2 = (p_Result_3655_fu_2188_p3 ^ p_Result_3654_fu_2174_p3);

assign xor_ln302_1450_fu_2226_p2 = (xor_ln302_1449_fu_2220_p2 ^ 1'd1);

assign xor_ln302_1451_fu_2322_p2 = (p_Result_3657_fu_2290_p3 ^ p_Result_3656_fu_2276_p3);

assign xor_ln302_1452_fu_2328_p2 = (xor_ln302_1451_fu_2322_p2 ^ 1'd1);

assign xor_ln302_1453_fu_2424_p2 = (p_Result_3659_fu_2392_p3 ^ p_Result_3658_fu_2378_p3);

assign xor_ln302_1454_fu_2430_p2 = (xor_ln302_1453_fu_2424_p2 ^ 1'd1);

assign xor_ln302_1455_fu_2804_p2 = (p_Result_3661_fu_2772_p3 ^ p_Result_3660_fu_2760_p3);

assign xor_ln302_1456_fu_2810_p2 = (xor_ln302_1455_fu_2804_p2 ^ 1'd1);

assign xor_ln302_1457_fu_2904_p2 = (p_Result_3663_fu_2872_p3 ^ p_Result_3662_fu_2859_p3);

assign xor_ln302_1458_fu_2910_p2 = (xor_ln302_1457_fu_2904_p2 ^ 1'd1);

assign xor_ln302_1459_fu_3006_p2 = (p_Result_3665_fu_2974_p3 ^ p_Result_3664_fu_2960_p3);

assign xor_ln302_1460_fu_3012_p2 = (xor_ln302_1459_fu_3006_p2 ^ 1'd1);

assign xor_ln302_1461_fu_3108_p2 = (p_Result_3667_fu_3076_p3 ^ p_Result_3666_fu_3062_p3);

assign xor_ln302_1462_fu_3114_p2 = (xor_ln302_1461_fu_3108_p2 ^ 1'd1);

assign xor_ln302_1463_fu_3223_p2 = (p_Result_3669_reg_3571 ^ p_Result_3668_reg_3558);

assign xor_ln302_1464_fu_3227_p2 = (xor_ln302_1463_fu_3223_p2 ^ 1'd1);

assign xor_ln302_1465_fu_3319_p2 = (p_Result_3671_fu_3287_p3 ^ p_Result_3670_fu_3274_p3);

assign xor_ln302_1466_fu_3325_p2 = (xor_ln302_1465_fu_3319_p2 ^ 1'd1);

assign xor_ln302_fu_2122_p2 = (p_Result_3653_fu_2090_p3 ^ p_Result_3652_fu_2076_p3);

assign xor_ln888_924_fu_591_p2 = (p_Result_3626_fu_537_p3 ^ 1'd1);

assign xor_ln888_926_fu_781_p2 = (p_Result_3629_fu_727_p3 ^ 1'd1);

assign xor_ln888_928_fu_961_p2 = (p_Result_3632_fu_907_p3 ^ 1'd1);

assign xor_ln888_930_fu_1146_p2 = (p_Result_3635_fu_1092_p3 ^ 1'd1);

assign xor_ln888_932_fu_1407_p2 = (p_Result_3638_fu_1353_p3 ^ 1'd1);

assign xor_ln888_934_fu_1597_p2 = (p_Result_3641_fu_1543_p3 ^ 1'd1);

assign xor_ln888_936_fu_1777_p2 = (p_Result_3644_fu_1723_p3 ^ 1'd1);

assign xor_ln888_938_fu_1962_p2 = (p_Result_3647_fu_1908_p3 ^ 1'd1);

assign xor_ln888_940_fu_2644_p2 = (p_Result_3650_fu_2590_p3 ^ 1'd1);

assign xor_ln888_fu_411_p2 = (p_Result_3623_fu_357_p3 ^ 1'd1);

assign xor_ln890_723_fu_617_p2 = (tmp_5769_fu_609_p3 ^ 1'd1);

assign xor_ln890_724_fu_807_p2 = (tmp_5775_fu_799_p3 ^ 1'd1);

assign xor_ln890_725_fu_987_p2 = (tmp_5781_fu_979_p3 ^ 1'd1);

assign xor_ln890_726_fu_1172_p2 = (tmp_5787_fu_1164_p3 ^ 1'd1);

assign xor_ln890_727_fu_1433_p2 = (tmp_5793_fu_1425_p3 ^ 1'd1);

assign xor_ln890_728_fu_1623_p2 = (tmp_5799_fu_1615_p3 ^ 1'd1);

assign xor_ln890_729_fu_1803_p2 = (tmp_5805_fu_1795_p3 ^ 1'd1);

assign xor_ln890_730_fu_1988_p2 = (tmp_5811_fu_1980_p3 ^ 1'd1);

assign xor_ln890_731_fu_2670_p2 = (tmp_5817_fu_2662_p3 ^ 1'd1);

assign xor_ln890_fu_437_p2 = (tmp_5763_fu_429_p3 ^ 1'd1);

assign xor_ln895_2173_fu_473_p2 = (p_Result_s_fu_335_p3 ^ 1'd1);

assign xor_ln895_2174_fu_641_p2 = (deleted_zeros_722_fu_603_p2 ^ 1'd1);

assign xor_ln895_2175_fu_653_p2 = (p_Result_3625_fu_515_p3 ^ 1'd1);

assign xor_ln895_2176_fu_831_p2 = (deleted_zeros_723_fu_793_p2 ^ 1'd1);

assign xor_ln895_2177_fu_843_p2 = (p_Result_3628_fu_705_p3 ^ 1'd1);

assign xor_ln895_2178_fu_1011_p2 = (deleted_zeros_724_fu_973_p2 ^ 1'd1);

assign xor_ln895_2179_fu_1023_p2 = (p_Result_3631_fu_885_p3 ^ 1'd1);

assign xor_ln895_2180_fu_1196_p2 = (deleted_zeros_725_fu_1158_p2 ^ 1'd1);

assign xor_ln895_2181_fu_1208_p2 = (p_Result_3634_fu_1070_p3 ^ 1'd1);

assign xor_ln895_2182_fu_1457_p2 = (deleted_zeros_726_fu_1419_p2 ^ 1'd1);

assign xor_ln895_2183_fu_1469_p2 = (p_Result_3637_fu_1331_p3 ^ 1'd1);

assign xor_ln895_2184_fu_1647_p2 = (deleted_zeros_727_fu_1609_p2 ^ 1'd1);

assign xor_ln895_2185_fu_1659_p2 = (p_Result_3640_fu_1521_p3 ^ 1'd1);

assign xor_ln895_2186_fu_1827_p2 = (deleted_zeros_728_fu_1789_p2 ^ 1'd1);

assign xor_ln895_2187_fu_1839_p2 = (p_Result_3643_fu_1701_p3 ^ 1'd1);

assign xor_ln895_2188_fu_2012_p2 = (deleted_zeros_729_fu_1974_p2 ^ 1'd1);

assign xor_ln895_2189_fu_2024_p2 = (p_Result_3646_fu_1886_p3 ^ 1'd1);

assign xor_ln895_2190_fu_2694_p2 = (deleted_zeros_730_fu_2656_p2 ^ 1'd1);

assign xor_ln895_2191_fu_2706_p2 = (p_Result_3649_fu_2568_p3 ^ 1'd1);

assign xor_ln895_2192_fu_2098_p2 = (p_Result_3652_fu_2076_p3 ^ 1'd1);

assign xor_ln895_2193_fu_2196_p2 = (p_Result_3654_fu_2174_p3 ^ 1'd1);

assign xor_ln895_2194_fu_2298_p2 = (p_Result_3656_fu_2276_p3 ^ 1'd1);

assign xor_ln895_2195_fu_2400_p2 = (p_Result_3658_fu_2378_p3 ^ 1'd1);

assign xor_ln895_2196_fu_2780_p2 = (p_Result_3660_fu_2760_p3 ^ 1'd1);

assign xor_ln895_2197_fu_2880_p2 = (p_Result_3662_fu_2859_p3 ^ 1'd1);

assign xor_ln895_2198_fu_2982_p2 = (p_Result_3664_fu_2960_p3 ^ 1'd1);

assign xor_ln895_2199_fu_3084_p2 = (p_Result_3666_fu_3062_p3 ^ 1'd1);

assign xor_ln895_2200_fu_3203_p2 = (p_Result_3668_reg_3558 ^ 1'd1);

assign xor_ln895_2201_fu_3295_p2 = (p_Result_3670_fu_3274_p3 ^ 1'd1);

assign xor_ln895_fu_461_p2 = (deleted_zeros_fu_423_p2 ^ 1'd1);

assign xor_ln896_2173_fu_485_p2 = (deleted_ones_fu_449_p2 ^ 1'd1);

assign xor_ln896_2174_fu_571_p2 = (p_Result_3627_fu_563_p3 ^ 1'd1);

assign xor_ln896_2175_fu_665_p2 = (deleted_ones_1448_fu_629_p2 ^ 1'd1);

assign xor_ln896_2176_fu_761_p2 = (p_Result_3630_fu_753_p3 ^ 1'd1);

assign xor_ln896_2177_fu_855_p2 = (deleted_ones_1449_fu_819_p2 ^ 1'd1);

assign xor_ln896_2178_fu_941_p2 = (p_Result_3633_fu_933_p3 ^ 1'd1);

assign xor_ln896_2179_fu_1035_p2 = (deleted_ones_1450_fu_999_p2 ^ 1'd1);

assign xor_ln896_2180_fu_1126_p2 = (p_Result_3636_fu_1118_p3 ^ 1'd1);

assign xor_ln896_2181_fu_1220_p2 = (deleted_ones_1451_fu_1184_p2 ^ 1'd1);

assign xor_ln896_2182_fu_1387_p2 = (p_Result_3639_fu_1379_p3 ^ 1'd1);

assign xor_ln896_2183_fu_1481_p2 = (deleted_ones_1452_fu_1445_p2 ^ 1'd1);

assign xor_ln896_2184_fu_1577_p2 = (p_Result_3642_fu_1569_p3 ^ 1'd1);

assign xor_ln896_2185_fu_1671_p2 = (deleted_ones_1453_fu_1635_p2 ^ 1'd1);

assign xor_ln896_2186_fu_1757_p2 = (p_Result_3645_fu_1749_p3 ^ 1'd1);

assign xor_ln896_2187_fu_1851_p2 = (deleted_ones_1454_fu_1815_p2 ^ 1'd1);

assign xor_ln896_2188_fu_1942_p2 = (p_Result_3648_fu_1934_p3 ^ 1'd1);

assign xor_ln896_2189_fu_2036_p2 = (deleted_ones_1455_fu_2000_p2 ^ 1'd1);

assign xor_ln896_2190_fu_2624_p2 = (p_Result_3651_fu_2616_p3 ^ 1'd1);

assign xor_ln896_2191_fu_2718_p2 = (deleted_ones_1456_fu_2682_p2 ^ 1'd1);

assign xor_ln896_2192_fu_2110_p2 = (p_Result_3653_fu_2090_p3 ^ 1'd1);

assign xor_ln896_2193_fu_2208_p2 = (p_Result_3655_fu_2188_p3 ^ 1'd1);

assign xor_ln896_2194_fu_2310_p2 = (p_Result_3657_fu_2290_p3 ^ 1'd1);

assign xor_ln896_2195_fu_2412_p2 = (p_Result_3659_fu_2392_p3 ^ 1'd1);

assign xor_ln896_2196_fu_2792_p2 = (p_Result_3661_fu_2772_p3 ^ 1'd1);

assign xor_ln896_2197_fu_2892_p2 = (p_Result_3663_fu_2872_p3 ^ 1'd1);

assign xor_ln896_2198_fu_2994_p2 = (p_Result_3665_fu_2974_p3 ^ 1'd1);

assign xor_ln896_2199_fu_3096_p2 = (p_Result_3667_fu_3076_p3 ^ 1'd1);

assign xor_ln896_2200_fu_3213_p2 = (p_Result_3669_reg_3571 ^ 1'd1);

assign xor_ln896_2201_fu_3307_p2 = (p_Result_3671_fu_3287_p3 ^ 1'd1);

assign xor_ln896_2352_fu_497_p2 = (or_ln896_fu_491_p2 ^ and_ln891_fu_455_p2);

assign xor_ln896_2353_fu_677_p2 = (or_ln896_723_fu_671_p2 ^ and_ln891_723_fu_635_p2);

assign xor_ln896_2354_fu_867_p2 = (or_ln896_724_fu_861_p2 ^ and_ln891_724_fu_825_p2);

assign xor_ln896_2355_fu_1047_p2 = (or_ln896_725_fu_1041_p2 ^ and_ln891_725_fu_1005_p2);

assign xor_ln896_2356_fu_1232_p2 = (or_ln896_726_fu_1226_p2 ^ and_ln891_726_fu_1190_p2);

assign xor_ln896_2357_fu_1493_p2 = (or_ln896_727_fu_1487_p2 ^ and_ln891_727_fu_1451_p2);

assign xor_ln896_2358_fu_1683_p2 = (or_ln896_728_fu_1677_p2 ^ and_ln891_728_fu_1641_p2);

assign xor_ln896_2359_fu_1863_p2 = (or_ln896_729_fu_1857_p2 ^ and_ln891_729_fu_1821_p2);

assign xor_ln896_2360_fu_2048_p2 = (or_ln896_730_fu_2042_p2 ^ and_ln891_730_fu_2006_p2);

assign xor_ln896_2361_fu_2730_p2 = (or_ln896_731_fu_2724_p2 ^ and_ln891_731_fu_2688_p2);

assign xor_ln896_fu_391_p2 = (p_Result_3624_fu_383_p3 ^ 1'd1);

assign zext_ln377_723_fu_553_p1 = tmp_5766_fu_545_p3;

assign zext_ln377_724_fu_743_p1 = tmp_5772_fu_735_p3;

assign zext_ln377_725_fu_923_p1 = tmp_5778_fu_915_p3;

assign zext_ln377_726_fu_1108_p1 = tmp_5784_fu_1100_p3;

assign zext_ln377_727_fu_1369_p1 = tmp_5790_fu_1361_p3;

assign zext_ln377_728_fu_1559_p1 = tmp_5796_fu_1551_p3;

assign zext_ln377_729_fu_1739_p1 = tmp_5802_fu_1731_p3;

assign zext_ln377_730_fu_1924_p1 = tmp_5808_fu_1916_p3;

assign zext_ln377_731_fu_2606_p1 = tmp_5814_fu_2598_p3;

assign zext_ln377_fu_373_p1 = tmp_fu_365_p3;

endmodule //der_dense_latency_ap_fixed_22_8_0_0_0_ap_fixed_22_8_0_0_0_config14_s
