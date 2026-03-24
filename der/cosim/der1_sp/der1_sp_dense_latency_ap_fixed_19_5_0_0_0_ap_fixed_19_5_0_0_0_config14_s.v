module der1_sp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s (
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
input  [18:0] p_read;
input  [18:0] p_read1;
input  [18:0] p_read2;
input  [18:0] p_read3;
input  [18:0] p_read4;
output  [18:0] ap_return_0;
output  [18:0] ap_return_1;

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
wire  signed [18:0] rhs_fu_528_p3;
reg  signed [18:0] rhs_reg_3345;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire  signed [16:0] p_Val2_4030_fu_578_p2;
reg  signed [16:0] p_Val2_4030_reg_3351;
wire   [0:0] overflow_1446_fu_680_p2;
reg   [0:0] overflow_1446_reg_3356;
wire   [0:0] or_ln346_722_fu_710_p2;
reg   [0:0] or_ln346_722_reg_3361;
wire  signed [18:0] rhs_723_fu_918_p3;
reg  signed [18:0] rhs_723_reg_3366;
wire  signed [18:0] rhs_724_fu_1114_p3;
reg  signed [18:0] rhs_724_reg_3372;
wire  signed [29:0] sext_ln70_267_fu_1122_p1;
reg  signed [29:0] sext_ln70_267_reg_3378;
wire  signed [16:0] p_Val2_4039_fu_1169_p2;
reg  signed [16:0] p_Val2_4039_reg_3383;
wire   [0:0] overflow_1449_fu_1271_p2;
reg   [0:0] overflow_1449_reg_3388;
wire   [0:0] or_ln346_725_fu_1301_p2;
reg   [0:0] or_ln346_725_reg_3393;
wire  signed [18:0] rhs_726_fu_1533_p3;
reg  signed [18:0] rhs_726_reg_3398;
wire    ap_block_pp0_stage1_11001;
wire  signed [18:0] rhs_727_fu_1743_p3;
reg  signed [18:0] rhs_727_reg_3404;
wire  signed [16:0] p_Val2_4048_fu_1793_p2;
reg  signed [16:0] p_Val2_4048_reg_3410;
wire   [0:0] overflow_1452_fu_1895_p2;
reg   [0:0] overflow_1452_reg_3415;
wire   [0:0] or_ln346_728_fu_1925_p2;
reg   [0:0] or_ln346_728_reg_3420;
wire  signed [18:0] rhs_729_fu_2129_p3;
reg  signed [18:0] rhs_729_reg_3425;
wire  signed [18:0] rhs_730_fu_2329_p3;
reg  signed [18:0] rhs_730_reg_3431;
wire  signed [18:0] lhs_673_fu_2723_p3;
reg  signed [18:0] lhs_673_reg_3437;
reg   [0:0] p_Result_3655_reg_3443;
wire   [18:0] p_Val2_4065_fu_2753_p2;
reg   [18:0] p_Val2_4065_reg_3450;
reg   [0:0] p_Result_3656_reg_3456;
wire   [18:0] p_Val2_4080_fu_3234_p3;
reg   [18:0] p_Val2_4080_reg_3463;
reg   [0:0] p_Result_3665_reg_3468;
wire   [18:0] p_Val2_4079_fu_3263_p2;
reg   [18:0] p_Val2_4079_reg_3475;
reg   [0:0] p_Result_3666_reg_3481;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [18:0] ap_port_reg_p_read3;
reg   [18:0] ap_port_reg_p_read4;
reg  signed [18:0] grp_fu_140_p0;
wire  signed [30:0] sext_ln70_270_fu_1931_p1;
reg  signed [11:0] grp_fu_140_p1;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
reg  signed [18:0] grp_fu_141_p0;
wire  signed [28:0] sext_ln70_264_fu_331_p1;
reg  signed [10:0] grp_fu_141_p1;
reg  signed [18:0] grp_fu_142_p0;
wire  signed [31:0] sext_ln70_265_fu_716_p1;
reg  signed [13:0] grp_fu_142_p1;
reg  signed [18:0] grp_fu_143_p0;
wire  signed [30:0] sext_ln70_266_fu_721_p1;
wire  signed [29:0] sext_ln70_268_fu_1541_p1;
reg   [11:0] grp_fu_143_p1;
reg  signed [18:0] grp_fu_144_p0;
wire  signed [29:0] sext_ln70_fu_326_p1;
wire  signed [30:0] sext_ln70_269_fu_1546_p1;
reg  signed [11:0] grp_fu_144_p1;
wire  signed [18:0] sext_ln70_fu_326_p0;
wire  signed [18:0] sext_ln70_264_fu_331_p0;
wire   [28:0] p_Result_s_fu_336_p1;
wire   [29:0] grp_fu_141_p2;
wire   [28:0] p_Val2_4026_fu_344_p1;
wire   [14:0] p_Val2_4026_fu_344_p4;
wire   [28:0] p_Result_3618_fu_358_p1;
wire   [28:0] tmp_fu_366_p1;
wire   [0:0] tmp_fu_366_p3;
wire   [15:0] zext_ln377_fu_374_p1;
wire  signed [15:0] sext_ln823_fu_354_p1;
wire  signed [15:0] p_Val2_4027_fu_378_p2;
wire   [0:0] p_Result_3619_fu_388_p3;
wire   [0:0] p_Result_3618_fu_358_p3;
wire   [0:0] xor_ln896_fu_396_p2;
wire   [28:0] Range2_all_ones_fu_408_p1;
wire   [0:0] xor_ln888_fu_416_p2;
wire   [0:0] Range2_all_ones_fu_408_p3;
wire   [0:0] or_ln888_fu_422_p2;
wire   [28:0] tmp_5751_fu_434_p1;
wire   [0:0] tmp_5751_fu_434_p3;
wire   [0:0] xor_ln890_fu_442_p2;
wire   [0:0] or_ln890_fu_448_p2;
wire   [0:0] carry_1445_fu_402_p2;
wire   [0:0] deleted_zeros_fu_428_p2;
wire   [0:0] xor_ln895_fu_466_p2;
wire   [0:0] p_Result_s_fu_336_p3;
wire   [0:0] or_ln895_fu_472_p2;
wire   [0:0] xor_ln895_2170_fu_478_p2;
wire   [0:0] deleted_ones_fu_454_p2;
wire   [0:0] xor_ln896_2170_fu_490_p2;
wire   [0:0] and_ln891_fu_460_p2;
wire   [0:0] or_ln896_fu_496_p2;
wire   [0:0] xor_ln896_2348_fu_502_p2;
wire   [0:0] overflow_fu_484_p2;
wire   [0:0] underflow_fu_508_p2;
wire   [0:0] or_ln346_fu_522_p2;
wire   [18:0] select_ln346_1034_fu_514_p3;
wire  signed [18:0] sext_ln856_fu_384_p1;
wire   [29:0] p_Result_3620_fu_536_p1;
wire   [30:0] grp_fu_144_p2;
wire   [29:0] p_Val2_4029_fu_544_p1;
wire   [15:0] p_Val2_4029_fu_544_p4;
wire   [29:0] p_Result_3621_fu_558_p1;
wire   [29:0] tmp_5754_fu_566_p1;
wire   [0:0] tmp_5754_fu_566_p3;
wire   [16:0] zext_ln377_722_fu_574_p1;
wire  signed [16:0] sext_ln823_106_fu_554_p1;
wire   [0:0] p_Result_3622_fu_584_p3;
wire   [0:0] p_Result_3621_fu_558_p3;
wire   [0:0] xor_ln896_2171_fu_592_p2;
wire   [29:0] Range2_all_ones_1190_fu_604_p1;
wire   [0:0] xor_ln888_934_fu_612_p2;
wire   [0:0] Range2_all_ones_1190_fu_604_p3;
wire   [0:0] or_ln888_466_fu_618_p2;
wire   [29:0] tmp_5757_fu_630_p1;
wire   [0:0] tmp_5757_fu_630_p3;
wire   [0:0] xor_ln890_722_fu_638_p2;
wire   [0:0] or_ln890_466_fu_644_p2;
wire   [0:0] carry_1447_fu_598_p2;
wire   [0:0] deleted_zeros_721_fu_624_p2;
wire   [0:0] xor_ln895_2171_fu_662_p2;
wire   [0:0] p_Result_3620_fu_536_p3;
wire   [0:0] or_ln895_722_fu_668_p2;
wire   [0:0] xor_ln895_2172_fu_674_p2;
wire   [0:0] deleted_ones_1446_fu_650_p2;
wire   [0:0] xor_ln896_2172_fu_686_p2;
wire   [0:0] and_ln891_722_fu_656_p2;
wire   [0:0] or_ln896_722_fu_692_p2;
wire   [0:0] xor_ln896_2349_fu_698_p2;
wire   [0:0] underflow_1446_fu_704_p2;
wire  signed [18:0] sext_ln70_265_fu_716_p0;
wire  signed [18:0] sext_ln70_266_fu_721_p0;
wire   [30:0] grp_fu_143_p2;
wire   [16:0] p_Val2_4032_fu_734_p4;
wire   [0:0] tmp_5760_fu_756_p3;
wire   [17:0] zext_ln377_723_fu_764_p1;
wire  signed [17:0] sext_ln823_107_fu_744_p1;
wire  signed [17:0] p_Val2_4033_fu_768_p2;
wire   [0:0] p_Result_3625_fu_778_p3;
wire   [0:0] p_Result_3624_fu_748_p3;
wire   [0:0] xor_ln896_2173_fu_786_p2;
wire   [0:0] xor_ln888_936_fu_806_p2;
wire   [0:0] Range2_all_ones_1191_fu_798_p3;
wire   [0:0] or_ln888_467_fu_812_p2;
wire   [0:0] tmp_5763_fu_824_p3;
wire   [0:0] xor_ln890_723_fu_832_p2;
wire   [0:0] or_ln890_467_fu_838_p2;
wire   [0:0] carry_1449_fu_792_p2;
wire   [0:0] deleted_zeros_722_fu_818_p2;
wire   [0:0] xor_ln895_2173_fu_856_p2;
wire   [0:0] p_Result_3623_fu_726_p3;
wire   [0:0] or_ln895_723_fu_862_p2;
wire   [0:0] xor_ln895_2174_fu_868_p2;
wire   [0:0] deleted_ones_1447_fu_844_p2;
wire   [0:0] xor_ln896_2174_fu_880_p2;
wire   [0:0] and_ln891_723_fu_850_p2;
wire   [0:0] or_ln896_723_fu_886_p2;
wire   [0:0] xor_ln896_2350_fu_892_p2;
wire   [0:0] overflow_1447_fu_874_p2;
wire   [0:0] underflow_1447_fu_898_p2;
wire   [0:0] or_ln346_723_fu_912_p2;
wire   [18:0] select_ln346_1036_fu_904_p3;
wire  signed [18:0] sext_ln856_107_fu_774_p1;
wire   [31:0] grp_fu_142_p2;
wire   [17:0] p_Val2_4035_fu_934_p4;
wire   [0:0] tmp_5766_fu_956_p3;
wire   [18:0] zext_ln377_724_fu_964_p1;
wire  signed [18:0] sext_ln818_fu_944_p1;
wire   [18:0] p_Val2_4036_fu_968_p2;
wire   [0:0] p_Result_3628_fu_974_p3;
wire   [0:0] p_Result_3627_fu_948_p3;
wire   [0:0] xor_ln896_2175_fu_982_p2;
wire   [0:0] xor_ln888_938_fu_1002_p2;
wire   [0:0] Range2_all_ones_1192_fu_994_p3;
wire   [0:0] or_ln888_468_fu_1008_p2;
wire   [0:0] tmp_5769_fu_1020_p3;
wire   [0:0] xor_ln890_724_fu_1028_p2;
wire   [0:0] or_ln890_468_fu_1034_p2;
wire   [0:0] carry_1451_fu_988_p2;
wire   [0:0] deleted_zeros_723_fu_1014_p2;
wire   [0:0] xor_ln895_2175_fu_1052_p2;
wire   [0:0] p_Result_3626_fu_926_p3;
wire   [0:0] or_ln895_724_fu_1058_p2;
wire   [0:0] xor_ln895_2176_fu_1064_p2;
wire   [0:0] deleted_ones_1448_fu_1040_p2;
wire   [0:0] xor_ln896_2176_fu_1076_p2;
wire   [0:0] and_ln891_724_fu_1046_p2;
wire   [0:0] or_ln896_724_fu_1082_p2;
wire   [0:0] xor_ln896_2351_fu_1088_p2;
wire   [0:0] overflow_1448_fu_1070_p2;
wire   [0:0] underflow_1448_fu_1094_p2;
wire   [0:0] or_ln346_724_fu_1108_p2;
wire   [18:0] select_ln346_1037_fu_1100_p3;
wire   [29:0] p_Result_3629_fu_1127_p1;
wire   [30:0] grp_fu_140_p2;
wire   [29:0] p_Val2_4038_fu_1135_p1;
wire   [15:0] p_Val2_4038_fu_1135_p4;
wire   [29:0] p_Result_3630_fu_1149_p1;
wire   [29:0] tmp_5772_fu_1157_p1;
wire   [0:0] tmp_5772_fu_1157_p3;
wire   [16:0] zext_ln377_725_fu_1165_p1;
wire  signed [16:0] sext_ln823_108_fu_1145_p1;
wire   [0:0] p_Result_3631_fu_1175_p3;
wire   [0:0] p_Result_3630_fu_1149_p3;
wire   [0:0] xor_ln896_2177_fu_1183_p2;
wire   [29:0] Range2_all_ones_1193_fu_1195_p1;
wire   [0:0] xor_ln888_940_fu_1203_p2;
wire   [0:0] Range2_all_ones_1193_fu_1195_p3;
wire   [0:0] or_ln888_469_fu_1209_p2;
wire   [29:0] tmp_5775_fu_1221_p1;
wire   [0:0] tmp_5775_fu_1221_p3;
wire   [0:0] xor_ln890_725_fu_1229_p2;
wire   [0:0] or_ln890_469_fu_1235_p2;
wire   [0:0] carry_1453_fu_1189_p2;
wire   [0:0] deleted_zeros_724_fu_1215_p2;
wire   [0:0] xor_ln895_2177_fu_1253_p2;
wire   [0:0] p_Result_3629_fu_1127_p3;
wire   [0:0] or_ln895_725_fu_1259_p2;
wire   [0:0] xor_ln895_2178_fu_1265_p2;
wire   [0:0] deleted_ones_1449_fu_1241_p2;
wire   [0:0] xor_ln896_2178_fu_1277_p2;
wire   [0:0] and_ln891_725_fu_1247_p2;
wire   [0:0] or_ln896_725_fu_1283_p2;
wire   [0:0] xor_ln896_2352_fu_1289_p2;
wire   [0:0] underflow_1449_fu_1295_p2;
wire   [18:0] select_ln346_1035_fu_1310_p3;
wire  signed [18:0] sext_ln856_106_fu_1307_p1;
wire   [18:0] select_ln346_1038_fu_1327_p3;
wire  signed [18:0] sext_ln856_108_fu_1324_p1;
wire   [15:0] p_Val2_4041_fu_1349_p4;
wire   [0:0] tmp_5778_fu_1371_p3;
wire   [16:0] zext_ln377_726_fu_1379_p1;
wire  signed [16:0] sext_ln823_109_fu_1359_p1;
wire  signed [16:0] p_Val2_4042_fu_1383_p2;
wire   [0:0] p_Result_3634_fu_1393_p3;
wire   [0:0] p_Result_3633_fu_1363_p3;
wire   [0:0] xor_ln896_2179_fu_1401_p2;
wire   [0:0] xor_ln888_942_fu_1421_p2;
wire   [0:0] Range2_all_ones_1194_fu_1413_p3;
wire   [0:0] or_ln888_470_fu_1427_p2;
wire   [0:0] tmp_5781_fu_1439_p3;
wire   [0:0] xor_ln890_726_fu_1447_p2;
wire   [0:0] or_ln890_470_fu_1453_p2;
wire   [0:0] carry_1455_fu_1407_p2;
wire   [0:0] deleted_zeros_725_fu_1433_p2;
wire   [0:0] xor_ln895_2179_fu_1471_p2;
wire   [0:0] p_Result_3632_fu_1341_p3;
wire   [0:0] or_ln895_726_fu_1477_p2;
wire   [0:0] xor_ln895_2180_fu_1483_p2;
wire   [0:0] deleted_ones_1450_fu_1459_p2;
wire   [0:0] xor_ln896_2180_fu_1495_p2;
wire   [0:0] and_ln891_726_fu_1465_p2;
wire   [0:0] or_ln896_726_fu_1501_p2;
wire   [0:0] xor_ln896_2353_fu_1507_p2;
wire   [0:0] overflow_1450_fu_1489_p2;
wire   [0:0] underflow_1450_fu_1513_p2;
wire   [0:0] or_ln346_726_fu_1527_p2;
wire   [18:0] select_ln346_1039_fu_1519_p3;
wire  signed [18:0] sext_ln856_109_fu_1389_p1;
wire  signed [18:0] sext_ln70_268_fu_1541_p0;
wire  signed [18:0] sext_ln70_269_fu_1546_p0;
wire   [16:0] p_Val2_4044_fu_1559_p4;
wire   [0:0] tmp_5784_fu_1581_p3;
wire   [17:0] zext_ln377_727_fu_1589_p1;
wire  signed [17:0] sext_ln823_110_fu_1569_p1;
wire  signed [17:0] p_Val2_4045_fu_1593_p2;
wire   [0:0] p_Result_3637_fu_1603_p3;
wire   [0:0] p_Result_3636_fu_1573_p3;
wire   [0:0] xor_ln896_2181_fu_1611_p2;
wire   [0:0] xor_ln888_944_fu_1631_p2;
wire   [0:0] Range2_all_ones_1195_fu_1623_p3;
wire   [0:0] or_ln888_471_fu_1637_p2;
wire   [0:0] tmp_5787_fu_1649_p3;
wire   [0:0] xor_ln890_727_fu_1657_p2;
wire   [0:0] or_ln890_471_fu_1663_p2;
wire   [0:0] carry_1457_fu_1617_p2;
wire   [0:0] deleted_zeros_726_fu_1643_p2;
wire   [0:0] xor_ln895_2181_fu_1681_p2;
wire   [0:0] p_Result_3635_fu_1551_p3;
wire   [0:0] or_ln895_727_fu_1687_p2;
wire   [0:0] xor_ln895_2182_fu_1693_p2;
wire   [0:0] deleted_ones_1451_fu_1669_p2;
wire   [0:0] xor_ln896_2182_fu_1705_p2;
wire   [0:0] and_ln891_727_fu_1675_p2;
wire   [0:0] or_ln896_727_fu_1711_p2;
wire   [0:0] xor_ln896_2354_fu_1717_p2;
wire   [0:0] overflow_1451_fu_1699_p2;
wire   [0:0] underflow_1451_fu_1723_p2;
wire   [0:0] or_ln346_727_fu_1737_p2;
wire   [18:0] select_ln346_1040_fu_1729_p3;
wire  signed [18:0] sext_ln856_110_fu_1599_p1;
wire   [29:0] p_Result_3638_fu_1751_p1;
wire   [29:0] p_Val2_4047_fu_1759_p1;
wire   [15:0] p_Val2_4047_fu_1759_p4;
wire   [29:0] p_Result_3639_fu_1773_p1;
wire   [29:0] tmp_5790_fu_1781_p1;
wire   [0:0] tmp_5790_fu_1781_p3;
wire   [16:0] zext_ln377_728_fu_1789_p1;
wire  signed [16:0] sext_ln823_111_fu_1769_p1;
wire   [0:0] p_Result_3640_fu_1799_p3;
wire   [0:0] p_Result_3639_fu_1773_p3;
wire   [0:0] xor_ln896_2183_fu_1807_p2;
wire   [29:0] Range2_all_ones_1196_fu_1819_p1;
wire   [0:0] xor_ln888_946_fu_1827_p2;
wire   [0:0] Range2_all_ones_1196_fu_1819_p3;
wire   [0:0] or_ln888_472_fu_1833_p2;
wire   [29:0] tmp_5793_fu_1845_p1;
wire   [0:0] tmp_5793_fu_1845_p3;
wire   [0:0] xor_ln890_728_fu_1853_p2;
wire   [0:0] or_ln890_472_fu_1859_p2;
wire   [0:0] carry_1459_fu_1813_p2;
wire   [0:0] deleted_zeros_727_fu_1839_p2;
wire   [0:0] xor_ln895_2183_fu_1877_p2;
wire   [0:0] p_Result_3638_fu_1751_p3;
wire   [0:0] or_ln895_728_fu_1883_p2;
wire   [0:0] xor_ln895_2184_fu_1889_p2;
wire   [0:0] deleted_ones_1452_fu_1865_p2;
wire   [0:0] xor_ln896_2184_fu_1901_p2;
wire   [0:0] and_ln891_728_fu_1871_p2;
wire   [0:0] or_ln896_728_fu_1907_p2;
wire   [0:0] xor_ln896_2355_fu_1913_p2;
wire   [0:0] underflow_1452_fu_1919_p2;
wire   [30:0] p_Result_3641_fu_1937_p1;
wire   [30:0] p_Val2_4050_fu_1945_p1;
wire   [16:0] p_Val2_4050_fu_1945_p4;
wire   [30:0] p_Result_3642_fu_1959_p1;
wire   [30:0] tmp_5796_fu_1967_p1;
wire   [0:0] tmp_5796_fu_1967_p3;
wire   [17:0] zext_ln377_729_fu_1975_p1;
wire  signed [17:0] sext_ln823_112_fu_1955_p1;
wire  signed [17:0] p_Val2_4051_fu_1979_p2;
wire   [0:0] p_Result_3643_fu_1989_p3;
wire   [0:0] p_Result_3642_fu_1959_p3;
wire   [0:0] xor_ln896_2185_fu_1997_p2;
wire   [30:0] Range2_all_ones_1197_fu_2009_p1;
wire   [0:0] xor_ln888_948_fu_2017_p2;
wire   [0:0] Range2_all_ones_1197_fu_2009_p3;
wire   [0:0] or_ln888_473_fu_2023_p2;
wire   [30:0] tmp_5799_fu_2035_p1;
wire   [0:0] tmp_5799_fu_2035_p3;
wire   [0:0] xor_ln890_729_fu_2043_p2;
wire   [0:0] or_ln890_473_fu_2049_p2;
wire   [0:0] carry_1461_fu_2003_p2;
wire   [0:0] deleted_zeros_728_fu_2029_p2;
wire   [0:0] xor_ln895_2185_fu_2067_p2;
wire   [0:0] p_Result_3641_fu_1937_p3;
wire   [0:0] or_ln895_729_fu_2073_p2;
wire   [0:0] xor_ln895_2186_fu_2079_p2;
wire   [0:0] deleted_ones_1453_fu_2055_p2;
wire   [0:0] xor_ln896_2186_fu_2091_p2;
wire   [0:0] and_ln891_729_fu_2061_p2;
wire   [0:0] or_ln896_729_fu_2097_p2;
wire   [0:0] xor_ln896_2356_fu_2103_p2;
wire   [0:0] overflow_1453_fu_2085_p2;
wire   [0:0] underflow_1453_fu_2109_p2;
wire   [0:0] or_ln346_729_fu_2123_p2;
wire   [18:0] select_ln346_1042_fu_2115_p3;
wire  signed [18:0] sext_ln856_112_fu_1985_p1;
wire   [16:0] p_Val2_4053_fu_2145_p4;
wire   [0:0] tmp_5802_fu_2167_p3;
wire   [17:0] zext_ln377_730_fu_2175_p1;
wire  signed [17:0] sext_ln823_113_fu_2155_p1;
wire  signed [17:0] p_Val2_4054_fu_2179_p2;
wire   [0:0] p_Result_3646_fu_2189_p3;
wire   [0:0] p_Result_3645_fu_2159_p3;
wire   [0:0] xor_ln896_2187_fu_2197_p2;
wire   [0:0] xor_ln888_950_fu_2217_p2;
wire   [0:0] Range2_all_ones_1198_fu_2209_p3;
wire   [0:0] or_ln888_474_fu_2223_p2;
wire   [0:0] tmp_5805_fu_2235_p3;
wire   [0:0] xor_ln890_730_fu_2243_p2;
wire   [0:0] or_ln890_474_fu_2249_p2;
wire   [0:0] carry_1463_fu_2203_p2;
wire   [0:0] deleted_zeros_729_fu_2229_p2;
wire   [0:0] xor_ln895_2187_fu_2267_p2;
wire   [0:0] p_Result_3644_fu_2137_p3;
wire   [0:0] or_ln895_730_fu_2273_p2;
wire   [0:0] xor_ln895_2188_fu_2279_p2;
wire   [0:0] deleted_ones_1454_fu_2255_p2;
wire   [0:0] xor_ln896_2188_fu_2291_p2;
wire   [0:0] and_ln891_730_fu_2261_p2;
wire   [0:0] or_ln896_730_fu_2297_p2;
wire   [0:0] xor_ln896_2357_fu_2303_p2;
wire   [0:0] overflow_1454_fu_2285_p2;
wire   [0:0] underflow_1454_fu_2309_p2;
wire   [0:0] or_ln346_730_fu_2323_p2;
wire   [18:0] select_ln346_1043_fu_2315_p3;
wire  signed [18:0] sext_ln856_113_fu_2185_p1;
wire  signed [19:0] sext_ln813_fu_2337_p1;
wire   [19:0] ret_V_fu_2340_p2;
wire   [18:0] p_Val2_4056_fu_2354_p2;
wire   [0:0] p_Result_3647_fu_2346_p3;
wire   [0:0] p_Result_3648_fu_2359_p3;
wire   [0:0] xor_ln895_2189_fu_2367_p2;
wire   [0:0] xor_ln896_2189_fu_2379_p2;
wire   [0:0] xor_ln302_fu_2391_p2;
wire   [0:0] overflow_1455_fu_2373_p2;
wire   [0:0] xor_ln302_1446_fu_2397_p2;
wire   [0:0] underflow_1455_fu_2385_p2;
wire   [0:0] or_ln302_fu_2403_p2;
wire   [18:0] select_ln302_fu_2409_p3;
wire   [18:0] select_ln350_fu_2417_p3;
wire  signed [18:0] rhs_722_fu_1317_p3;
wire  signed [19:0] sext_ln813_1395_fu_2433_p1;
wire   [19:0] ret_V_722_fu_2437_p2;
wire   [18:0] p_Val2_4057_fu_2451_p2;
wire   [0:0] p_Result_3649_fu_2443_p3;
wire   [0:0] p_Result_3650_fu_2457_p3;
wire   [0:0] xor_ln895_2190_fu_2465_p2;
wire   [0:0] xor_ln896_2190_fu_2477_p2;
wire   [0:0] xor_ln302_1447_fu_2489_p2;
wire   [0:0] overflow_1456_fu_2471_p2;
wire   [0:0] xor_ln302_1448_fu_2495_p2;
wire   [0:0] underflow_1456_fu_2483_p2;
wire   [0:0] or_ln302_722_fu_2501_p2;
wire   [18:0] select_ln302_1447_fu_2507_p3;
wire   [18:0] select_ln350_722_fu_2515_p3;
wire  signed [18:0] p_Val2_s_fu_2425_p3;
wire  signed [19:0] sext_ln813_1397_fu_2535_p1;
wire  signed [19:0] sext_ln813_1396_fu_2531_p1;
wire   [19:0] ret_V_723_fu_2538_p2;
wire   [18:0] p_Val2_4061_fu_2552_p2;
wire   [0:0] p_Result_3651_fu_2544_p3;
wire   [0:0] p_Result_3652_fu_2557_p3;
wire   [0:0] xor_ln895_2191_fu_2565_p2;
wire   [0:0] xor_ln896_2191_fu_2577_p2;
wire   [0:0] xor_ln302_1449_fu_2589_p2;
wire   [0:0] overflow_1457_fu_2571_p2;
wire   [0:0] xor_ln302_1450_fu_2595_p2;
wire   [0:0] underflow_1457_fu_2583_p2;
wire   [0:0] or_ln302_723_fu_2601_p2;
wire   [18:0] select_ln302_1449_fu_2607_p3;
wire   [18:0] select_ln350_723_fu_2615_p3;
wire  signed [18:0] p_Val2_4082_fu_2523_p3;
wire  signed [19:0] sext_ln813_1399_fu_2635_p1;
wire  signed [19:0] sext_ln813_1398_fu_2631_p1;
wire   [19:0] ret_V_724_fu_2638_p2;
wire   [18:0] p_Val2_4063_fu_2652_p2;
wire   [0:0] p_Result_3653_fu_2644_p3;
wire   [0:0] p_Result_3654_fu_2657_p3;
wire   [0:0] xor_ln895_2192_fu_2665_p2;
wire   [0:0] xor_ln896_2192_fu_2677_p2;
wire   [0:0] xor_ln302_1451_fu_2689_p2;
wire   [0:0] overflow_1458_fu_2671_p2;
wire   [0:0] xor_ln302_1452_fu_2695_p2;
wire   [0:0] underflow_1458_fu_2683_p2;
wire   [0:0] or_ln302_724_fu_2701_p2;
wire   [18:0] select_ln302_1451_fu_2707_p3;
wire   [18:0] select_ln350_724_fu_2715_p3;
wire  signed [18:0] lhs_672_fu_2623_p3;
wire  signed [18:0] rhs_725_fu_1334_p3;
wire  signed [19:0] sext_ln813_1401_fu_2735_p1;
wire  signed [19:0] sext_ln813_1400_fu_2731_p1;
wire   [19:0] ret_V_725_fu_2739_p2;
wire   [18:0] select_ln346_1041_fu_2770_p3;
wire  signed [18:0] sext_ln856_111_fu_2767_p1;
wire   [0:0] xor_ln895_2193_fu_2784_p2;
wire   [0:0] xor_ln896_2193_fu_2794_p2;
wire   [0:0] xor_ln302_1453_fu_2804_p2;
wire   [0:0] overflow_1459_fu_2789_p2;
wire   [0:0] xor_ln302_1454_fu_2808_p2;
wire   [0:0] underflow_1459_fu_2799_p2;
wire   [0:0] or_ln302_725_fu_2814_p2;
wire   [18:0] select_ln302_1453_fu_2820_p3;
wire   [18:0] select_ln350_725_fu_2827_p3;
wire  signed [19:0] sext_ln813_1403_fu_2845_p1;
wire  signed [19:0] sext_ln813_1402_fu_2842_p1;
wire   [19:0] ret_V_726_fu_2848_p2;
wire   [18:0] p_Val2_4067_fu_2862_p2;
wire   [0:0] p_Result_3657_fu_2854_p3;
wire   [0:0] p_Result_3658_fu_2866_p3;
wire   [0:0] xor_ln895_2194_fu_2874_p2;
wire   [0:0] xor_ln896_2194_fu_2886_p2;
wire   [0:0] xor_ln302_1455_fu_2898_p2;
wire   [0:0] overflow_1460_fu_2880_p2;
wire   [0:0] xor_ln302_1456_fu_2904_p2;
wire   [0:0] underflow_1460_fu_2892_p2;
wire   [0:0] or_ln302_726_fu_2910_p2;
wire   [18:0] select_ln302_1455_fu_2916_p3;
wire   [18:0] select_ln350_726_fu_2924_p3;
wire  signed [18:0] p_Val2_4083_fu_2834_p3;
wire  signed [19:0] sext_ln813_1405_fu_2944_p1;
wire  signed [19:0] sext_ln813_1404_fu_2940_p1;
wire   [19:0] ret_V_727_fu_2947_p2;
wire   [18:0] p_Val2_4071_fu_2961_p2;
wire   [0:0] p_Result_3659_fu_2953_p3;
wire   [0:0] p_Result_3660_fu_2966_p3;
wire   [0:0] xor_ln895_2195_fu_2974_p2;
wire   [0:0] xor_ln896_2195_fu_2986_p2;
wire   [0:0] xor_ln302_1457_fu_2998_p2;
wire   [0:0] overflow_1461_fu_2980_p2;
wire   [0:0] xor_ln302_1458_fu_3004_p2;
wire   [0:0] underflow_1461_fu_2992_p2;
wire   [0:0] or_ln302_727_fu_3010_p2;
wire   [18:0] select_ln302_1457_fu_3016_p3;
wire   [18:0] select_ln350_727_fu_3024_p3;
wire  signed [18:0] p_Val2_4084_fu_2932_p3;
wire  signed [18:0] rhs_728_fu_2777_p3;
wire  signed [19:0] sext_ln813_1407_fu_3044_p1;
wire  signed [19:0] sext_ln813_1406_fu_3040_p1;
wire   [19:0] ret_V_728_fu_3048_p2;
wire   [18:0] p_Val2_4073_fu_3062_p2;
wire   [0:0] p_Result_3661_fu_3054_p3;
wire   [0:0] p_Result_3662_fu_3068_p3;
wire   [0:0] xor_ln895_2196_fu_3076_p2;
wire   [0:0] xor_ln896_2196_fu_3088_p2;
wire   [0:0] xor_ln302_1459_fu_3100_p2;
wire   [0:0] overflow_1462_fu_3082_p2;
wire   [0:0] xor_ln302_1460_fu_3106_p2;
wire   [0:0] underflow_1462_fu_3094_p2;
wire   [0:0] or_ln302_728_fu_3112_p2;
wire   [18:0] select_ln302_1459_fu_3118_p3;
wire   [18:0] select_ln350_728_fu_3126_p3;
wire  signed [18:0] p_Val2_4085_fu_3032_p3;
wire  signed [19:0] sext_ln813_1409_fu_3146_p1;
wire  signed [19:0] sext_ln813_1408_fu_3142_p1;
wire   [19:0] ret_V_729_fu_3149_p2;
wire   [18:0] p_Val2_4077_fu_3163_p2;
wire   [0:0] p_Result_3663_fu_3155_p3;
wire   [0:0] p_Result_3664_fu_3168_p3;
wire   [0:0] xor_ln895_2197_fu_3176_p2;
wire   [0:0] xor_ln896_2197_fu_3188_p2;
wire   [0:0] xor_ln302_1461_fu_3200_p2;
wire   [0:0] overflow_1463_fu_3182_p2;
wire   [0:0] xor_ln302_1462_fu_3206_p2;
wire   [0:0] underflow_1463_fu_3194_p2;
wire   [0:0] or_ln302_729_fu_3212_p2;
wire   [18:0] select_ln302_1461_fu_3218_p3;
wire   [18:0] select_ln350_729_fu_3226_p3;
wire  signed [18:0] p_Val2_4086_fu_3134_p3;
wire  signed [19:0] sext_ln813_1411_fu_3246_p1;
wire  signed [19:0] sext_ln813_1410_fu_3242_p1;
wire   [19:0] ret_V_730_fu_3249_p2;
wire   [0:0] xor_ln895_2198_fu_3276_p2;
wire   [0:0] xor_ln896_2198_fu_3286_p2;
wire   [0:0] xor_ln302_1463_fu_3296_p2;
wire   [0:0] overflow_1464_fu_3281_p2;
wire   [0:0] xor_ln302_1464_fu_3300_p2;
wire   [0:0] underflow_1464_fu_3291_p2;
wire   [0:0] or_ln302_730_fu_3306_p2;
wire   [18:0] select_ln302_1463_fu_3312_p3;
wire   [18:0] select_ln350_730_fu_3319_p3;
wire   [18:0] p_Val2_4081_fu_3326_p3;
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

der1_sp_mul_19s_12s_31_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 19 ),
    .din1_WIDTH( 12 ),
    .dout_WIDTH( 31 ))
mul_19s_12s_31_1_1_U535(
    .din0(grp_fu_140_p0),
    .din1(grp_fu_140_p1),
    .dout(grp_fu_140_p2)
);

der1_sp_mul_19s_11s_30_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 19 ),
    .din1_WIDTH( 11 ),
    .dout_WIDTH( 30 ))
mul_19s_11s_30_1_1_U536(
    .din0(grp_fu_141_p0),
    .din1(grp_fu_141_p1),
    .dout(grp_fu_141_p2)
);

der1_sp_mul_19s_14s_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 19 ),
    .din1_WIDTH( 14 ),
    .dout_WIDTH( 32 ))
mul_19s_14s_32_1_1_U537(
    .din0(grp_fu_142_p0),
    .din1(grp_fu_142_p1),
    .dout(grp_fu_142_p2)
);

der1_sp_mul_19s_12ns_31_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 19 ),
    .din1_WIDTH( 12 ),
    .dout_WIDTH( 31 ))
mul_19s_12ns_31_1_1_U538(
    .din0(grp_fu_143_p0),
    .din1(grp_fu_143_p1),
    .dout(grp_fu_143_p2)
);

der1_sp_mul_19s_12s_31_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 19 ),
    .din1_WIDTH( 12 ),
    .dout_WIDTH( 31 ))
mul_19s_12s_31_1_1_U539(
    .din0(grp_fu_144_p0),
    .din1(grp_fu_144_p1),
    .dout(grp_fu_144_p2)
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
        lhs_673_reg_3437 <= lhs_673_fu_2723_p3;
        or_ln346_728_reg_3420 <= or_ln346_728_fu_1925_p2;
        overflow_1452_reg_3415 <= overflow_1452_fu_1895_p2;
        p_Result_3655_reg_3443 <= ret_V_725_fu_2739_p2[32'd19];
        p_Result_3656_reg_3456 <= p_Val2_4065_fu_2753_p2[32'd18];
        p_Val2_4048_reg_3410 <= p_Val2_4048_fu_1793_p2;
        p_Val2_4065_reg_3450 <= p_Val2_4065_fu_2753_p2;
        rhs_726_reg_3398 <= rhs_726_fu_1533_p3;
        rhs_727_reg_3404 <= rhs_727_fu_1743_p3;
        rhs_729_reg_3425 <= rhs_729_fu_2129_p3;
        rhs_730_reg_3431 <= rhs_730_fu_2329_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        or_ln346_722_reg_3361 <= or_ln346_722_fu_710_p2;
        or_ln346_725_reg_3393 <= or_ln346_725_fu_1301_p2;
        overflow_1446_reg_3356 <= overflow_1446_fu_680_p2;
        overflow_1449_reg_3388 <= overflow_1449_fu_1271_p2;
        p_Result_3665_reg_3468 <= ret_V_730_fu_3249_p2[32'd19];
        p_Result_3666_reg_3481 <= p_Val2_4079_fu_3263_p2[32'd18];
        p_Val2_4030_reg_3351 <= p_Val2_4030_fu_578_p2;
        p_Val2_4039_reg_3383 <= p_Val2_4039_fu_1169_p2;
        p_Val2_4079_reg_3475 <= p_Val2_4079_fu_3263_p2;
        p_Val2_4080_reg_3463 <= p_Val2_4080_fu_3234_p3;
        rhs_723_reg_3366 <= rhs_723_fu_918_p3;
        rhs_724_reg_3372 <= rhs_724_fu_1114_p3;
        rhs_reg_3345 <= rhs_fu_528_p3;
        sext_ln70_267_reg_3378 <= sext_ln70_267_fu_1122_p1;
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
            grp_fu_140_p0 = sext_ln70_270_fu_1931_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_140_p0 = sext_ln70_267_fu_1122_p1;
        end else begin
            grp_fu_140_p0 = 'bx;
        end
    end else begin
        grp_fu_140_p0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_140_p1 = 31'd2147482525;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_140_p1 = 30'd611;
        end else begin
            grp_fu_140_p1 = 'bx;
        end
    end else begin
        grp_fu_140_p1 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_141_p0 = sext_ln70_267_reg_3378;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_141_p0 = sext_ln70_264_fu_331_p1;
        end else begin
            grp_fu_141_p0 = 'bx;
        end
    end else begin
        grp_fu_141_p0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_141_p1 = 30'd1073741008;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_141_p1 = 29'd536870463;
        end else begin
            grp_fu_141_p1 = 'bx;
        end
    end else begin
        grp_fu_141_p1 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_142_p0 = sext_ln70_270_fu_1931_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_142_p0 = sext_ln70_265_fu_716_p1;
        end else begin
            grp_fu_142_p0 = 'bx;
        end
    end else begin
        grp_fu_142_p0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_142_p1 = 31'd2147482548;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_142_p1 = 32'd3085;
        end else begin
            grp_fu_142_p1 = 'bx;
        end
    end else begin
        grp_fu_142_p1 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_143_p0 = sext_ln70_268_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_143_p0 = sext_ln70_266_fu_721_p1;
        end else begin
            grp_fu_143_p0 = 'bx;
        end
    end else begin
        grp_fu_143_p0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_143_p1 = 30'd941;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_143_p1 = 31'd1459;
        end else begin
            grp_fu_143_p1 = 'bx;
        end
    end else begin
        grp_fu_143_p1 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_144_p0 = sext_ln70_269_fu_1546_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_144_p0 = sext_ln70_fu_326_p1;
        end else begin
            grp_fu_144_p0 = 'bx;
        end
    end else begin
        grp_fu_144_p0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_144_p1 = 31'd2147481806;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_144_p1 = 30'd1073740878;
        end else begin
            grp_fu_144_p1 = 'bx;
        end
    end else begin
        grp_fu_144_p1 = 'bx;
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

assign Range2_all_ones_1190_fu_604_p1 = grp_fu_144_p2;

assign Range2_all_ones_1190_fu_604_p3 = Range2_all_ones_1190_fu_604_p1[32'd29];

assign Range2_all_ones_1191_fu_798_p3 = grp_fu_143_p2[32'd30];

assign Range2_all_ones_1192_fu_994_p3 = grp_fu_142_p2[32'd31];

assign Range2_all_ones_1193_fu_1195_p1 = grp_fu_140_p2;

assign Range2_all_ones_1193_fu_1195_p3 = Range2_all_ones_1193_fu_1195_p1[32'd29];

assign Range2_all_ones_1194_fu_1413_p3 = grp_fu_141_p2[32'd29];

assign Range2_all_ones_1195_fu_1623_p3 = grp_fu_144_p2[32'd30];

assign Range2_all_ones_1196_fu_1819_p1 = grp_fu_143_p2;

assign Range2_all_ones_1196_fu_1819_p3 = Range2_all_ones_1196_fu_1819_p1[32'd29];

assign Range2_all_ones_1197_fu_2009_p1 = grp_fu_142_p2;

assign Range2_all_ones_1197_fu_2009_p3 = Range2_all_ones_1197_fu_2009_p1[32'd30];

assign Range2_all_ones_1198_fu_2209_p3 = grp_fu_140_p2[32'd30];

assign Range2_all_ones_fu_408_p1 = grp_fu_141_p2;

assign Range2_all_ones_fu_408_p3 = Range2_all_ones_fu_408_p1[32'd28];

assign and_ln891_722_fu_656_p2 = (carry_1447_fu_598_p2 & Range2_all_ones_1190_fu_604_p3);

assign and_ln891_723_fu_850_p2 = (carry_1449_fu_792_p2 & Range2_all_ones_1191_fu_798_p3);

assign and_ln891_724_fu_1046_p2 = (carry_1451_fu_988_p2 & Range2_all_ones_1192_fu_994_p3);

assign and_ln891_725_fu_1247_p2 = (carry_1453_fu_1189_p2 & Range2_all_ones_1193_fu_1195_p3);

assign and_ln891_726_fu_1465_p2 = (carry_1455_fu_1407_p2 & Range2_all_ones_1194_fu_1413_p3);

assign and_ln891_727_fu_1675_p2 = (carry_1457_fu_1617_p2 & Range2_all_ones_1195_fu_1623_p3);

assign and_ln891_728_fu_1871_p2 = (carry_1459_fu_1813_p2 & Range2_all_ones_1196_fu_1819_p3);

assign and_ln891_729_fu_2061_p2 = (carry_1461_fu_2003_p2 & Range2_all_ones_1197_fu_2009_p3);

assign and_ln891_730_fu_2261_p2 = (carry_1463_fu_2203_p2 & Range2_all_ones_1198_fu_2209_p3);

assign and_ln891_fu_460_p2 = (carry_1445_fu_402_p2 & Range2_all_ones_fu_408_p3);

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

assign ap_return_0 = p_Val2_4080_reg_3463;

assign ap_return_1 = p_Val2_4081_fu_3326_p3;

assign carry_1445_fu_402_p2 = (xor_ln896_fu_396_p2 & p_Result_3618_fu_358_p3);

assign carry_1447_fu_598_p2 = (xor_ln896_2171_fu_592_p2 & p_Result_3621_fu_558_p3);

assign carry_1449_fu_792_p2 = (xor_ln896_2173_fu_786_p2 & p_Result_3624_fu_748_p3);

assign carry_1451_fu_988_p2 = (xor_ln896_2175_fu_982_p2 & p_Result_3627_fu_948_p3);

assign carry_1453_fu_1189_p2 = (xor_ln896_2177_fu_1183_p2 & p_Result_3630_fu_1149_p3);

assign carry_1455_fu_1407_p2 = (xor_ln896_2179_fu_1401_p2 & p_Result_3633_fu_1363_p3);

assign carry_1457_fu_1617_p2 = (xor_ln896_2181_fu_1611_p2 & p_Result_3636_fu_1573_p3);

assign carry_1459_fu_1813_p2 = (xor_ln896_2183_fu_1807_p2 & p_Result_3639_fu_1773_p3);

assign carry_1461_fu_2003_p2 = (xor_ln896_2185_fu_1997_p2 & p_Result_3642_fu_1959_p3);

assign carry_1463_fu_2203_p2 = (xor_ln896_2187_fu_2197_p2 & p_Result_3645_fu_2159_p3);

assign deleted_ones_1446_fu_650_p2 = (or_ln890_466_fu_644_p2 & Range2_all_ones_1190_fu_604_p3);

assign deleted_ones_1447_fu_844_p2 = (or_ln890_467_fu_838_p2 & Range2_all_ones_1191_fu_798_p3);

assign deleted_ones_1448_fu_1040_p2 = (or_ln890_468_fu_1034_p2 & Range2_all_ones_1192_fu_994_p3);

assign deleted_ones_1449_fu_1241_p2 = (or_ln890_469_fu_1235_p2 & Range2_all_ones_1193_fu_1195_p3);

assign deleted_ones_1450_fu_1459_p2 = (or_ln890_470_fu_1453_p2 & Range2_all_ones_1194_fu_1413_p3);

assign deleted_ones_1451_fu_1669_p2 = (or_ln890_471_fu_1663_p2 & Range2_all_ones_1195_fu_1623_p3);

assign deleted_ones_1452_fu_1865_p2 = (or_ln890_472_fu_1859_p2 & Range2_all_ones_1196_fu_1819_p3);

assign deleted_ones_1453_fu_2055_p2 = (or_ln890_473_fu_2049_p2 & Range2_all_ones_1197_fu_2009_p3);

assign deleted_ones_1454_fu_2255_p2 = (or_ln890_474_fu_2249_p2 & Range2_all_ones_1198_fu_2209_p3);

assign deleted_ones_fu_454_p2 = (or_ln890_fu_448_p2 & Range2_all_ones_fu_408_p3);

assign deleted_zeros_721_fu_624_p2 = (or_ln888_466_fu_618_p2 ^ Range2_all_ones_1190_fu_604_p3);

assign deleted_zeros_722_fu_818_p2 = (or_ln888_467_fu_812_p2 ^ Range2_all_ones_1191_fu_798_p3);

assign deleted_zeros_723_fu_1014_p2 = (or_ln888_468_fu_1008_p2 ^ Range2_all_ones_1192_fu_994_p3);

assign deleted_zeros_724_fu_1215_p2 = (or_ln888_469_fu_1209_p2 ^ Range2_all_ones_1193_fu_1195_p3);

assign deleted_zeros_725_fu_1433_p2 = (or_ln888_470_fu_1427_p2 ^ Range2_all_ones_1194_fu_1413_p3);

assign deleted_zeros_726_fu_1643_p2 = (or_ln888_471_fu_1637_p2 ^ Range2_all_ones_1195_fu_1623_p3);

assign deleted_zeros_727_fu_1839_p2 = (or_ln888_472_fu_1833_p2 ^ Range2_all_ones_1196_fu_1819_p3);

assign deleted_zeros_728_fu_2029_p2 = (or_ln888_473_fu_2023_p2 ^ Range2_all_ones_1197_fu_2009_p3);

assign deleted_zeros_729_fu_2229_p2 = (or_ln888_474_fu_2223_p2 ^ Range2_all_ones_1198_fu_2209_p3);

assign deleted_zeros_fu_428_p2 = (or_ln888_fu_422_p2 ^ Range2_all_ones_fu_408_p3);

assign lhs_672_fu_2623_p3 = ((or_ln302_723_fu_2601_p2[0:0] == 1'b1) ? select_ln302_1449_fu_2607_p3 : select_ln350_723_fu_2615_p3);

assign lhs_673_fu_2723_p3 = ((or_ln302_724_fu_2701_p2[0:0] == 1'b1) ? select_ln302_1451_fu_2707_p3 : select_ln350_724_fu_2715_p3);

assign or_ln302_722_fu_2501_p2 = (xor_ln302_1448_fu_2495_p2 | overflow_1456_fu_2471_p2);

assign or_ln302_723_fu_2601_p2 = (xor_ln302_1450_fu_2595_p2 | overflow_1457_fu_2571_p2);

assign or_ln302_724_fu_2701_p2 = (xor_ln302_1452_fu_2695_p2 | overflow_1458_fu_2671_p2);

assign or_ln302_725_fu_2814_p2 = (xor_ln302_1454_fu_2808_p2 | overflow_1459_fu_2789_p2);

assign or_ln302_726_fu_2910_p2 = (xor_ln302_1456_fu_2904_p2 | overflow_1460_fu_2880_p2);

assign or_ln302_727_fu_3010_p2 = (xor_ln302_1458_fu_3004_p2 | overflow_1461_fu_2980_p2);

assign or_ln302_728_fu_3112_p2 = (xor_ln302_1460_fu_3106_p2 | overflow_1462_fu_3082_p2);

assign or_ln302_729_fu_3212_p2 = (xor_ln302_1462_fu_3206_p2 | overflow_1463_fu_3182_p2);

assign or_ln302_730_fu_3306_p2 = (xor_ln302_1464_fu_3300_p2 | overflow_1464_fu_3281_p2);

assign or_ln302_fu_2403_p2 = (xor_ln302_1446_fu_2397_p2 | overflow_1455_fu_2373_p2);

assign or_ln346_722_fu_710_p2 = (underflow_1446_fu_704_p2 | overflow_1446_fu_680_p2);

assign or_ln346_723_fu_912_p2 = (underflow_1447_fu_898_p2 | overflow_1447_fu_874_p2);

assign or_ln346_724_fu_1108_p2 = (underflow_1448_fu_1094_p2 | overflow_1448_fu_1070_p2);

assign or_ln346_725_fu_1301_p2 = (underflow_1449_fu_1295_p2 | overflow_1449_fu_1271_p2);

assign or_ln346_726_fu_1527_p2 = (underflow_1450_fu_1513_p2 | overflow_1450_fu_1489_p2);

assign or_ln346_727_fu_1737_p2 = (underflow_1451_fu_1723_p2 | overflow_1451_fu_1699_p2);

assign or_ln346_728_fu_1925_p2 = (underflow_1452_fu_1919_p2 | overflow_1452_fu_1895_p2);

assign or_ln346_729_fu_2123_p2 = (underflow_1453_fu_2109_p2 | overflow_1453_fu_2085_p2);

assign or_ln346_730_fu_2323_p2 = (underflow_1454_fu_2309_p2 | overflow_1454_fu_2285_p2);

assign or_ln346_fu_522_p2 = (underflow_fu_508_p2 | overflow_fu_484_p2);

assign or_ln888_466_fu_618_p2 = (xor_ln888_934_fu_612_p2 | p_Result_3622_fu_584_p3);

assign or_ln888_467_fu_812_p2 = (xor_ln888_936_fu_806_p2 | p_Result_3625_fu_778_p3);

assign or_ln888_468_fu_1008_p2 = (xor_ln888_938_fu_1002_p2 | p_Result_3628_fu_974_p3);

assign or_ln888_469_fu_1209_p2 = (xor_ln888_940_fu_1203_p2 | p_Result_3631_fu_1175_p3);

assign or_ln888_470_fu_1427_p2 = (xor_ln888_942_fu_1421_p2 | p_Result_3634_fu_1393_p3);

assign or_ln888_471_fu_1637_p2 = (xor_ln888_944_fu_1631_p2 | p_Result_3637_fu_1603_p3);

assign or_ln888_472_fu_1833_p2 = (xor_ln888_946_fu_1827_p2 | p_Result_3640_fu_1799_p3);

assign or_ln888_473_fu_2023_p2 = (xor_ln888_948_fu_2017_p2 | p_Result_3643_fu_1989_p3);

assign or_ln888_474_fu_2223_p2 = (xor_ln888_950_fu_2217_p2 | p_Result_3646_fu_2189_p3);

assign or_ln888_fu_422_p2 = (xor_ln888_fu_416_p2 | p_Result_3619_fu_388_p3);

assign or_ln890_466_fu_644_p2 = (xor_ln890_722_fu_638_p2 | or_ln888_466_fu_618_p2);

assign or_ln890_467_fu_838_p2 = (xor_ln890_723_fu_832_p2 | or_ln888_467_fu_812_p2);

assign or_ln890_468_fu_1034_p2 = (xor_ln890_724_fu_1028_p2 | or_ln888_468_fu_1008_p2);

assign or_ln890_469_fu_1235_p2 = (xor_ln890_725_fu_1229_p2 | or_ln888_469_fu_1209_p2);

assign or_ln890_470_fu_1453_p2 = (xor_ln890_726_fu_1447_p2 | or_ln888_470_fu_1427_p2);

assign or_ln890_471_fu_1663_p2 = (xor_ln890_727_fu_1657_p2 | or_ln888_471_fu_1637_p2);

assign or_ln890_472_fu_1859_p2 = (xor_ln890_728_fu_1853_p2 | or_ln888_472_fu_1833_p2);

assign or_ln890_473_fu_2049_p2 = (xor_ln890_729_fu_2043_p2 | or_ln888_473_fu_2023_p2);

assign or_ln890_474_fu_2249_p2 = (xor_ln890_730_fu_2243_p2 | or_ln888_474_fu_2223_p2);

assign or_ln890_fu_448_p2 = (xor_ln890_fu_442_p2 | or_ln888_fu_422_p2);

assign or_ln895_722_fu_668_p2 = (xor_ln895_2171_fu_662_p2 | p_Result_3622_fu_584_p3);

assign or_ln895_723_fu_862_p2 = (xor_ln895_2173_fu_856_p2 | p_Result_3625_fu_778_p3);

assign or_ln895_724_fu_1058_p2 = (xor_ln895_2175_fu_1052_p2 | p_Result_3628_fu_974_p3);

assign or_ln895_725_fu_1259_p2 = (xor_ln895_2177_fu_1253_p2 | p_Result_3631_fu_1175_p3);

assign or_ln895_726_fu_1477_p2 = (xor_ln895_2179_fu_1471_p2 | p_Result_3634_fu_1393_p3);

assign or_ln895_727_fu_1687_p2 = (xor_ln895_2181_fu_1681_p2 | p_Result_3637_fu_1603_p3);

assign or_ln895_728_fu_1883_p2 = (xor_ln895_2183_fu_1877_p2 | p_Result_3640_fu_1799_p3);

assign or_ln895_729_fu_2073_p2 = (xor_ln895_2185_fu_2067_p2 | p_Result_3643_fu_1989_p3);

assign or_ln895_730_fu_2273_p2 = (xor_ln895_2187_fu_2267_p2 | p_Result_3646_fu_2189_p3);

assign or_ln895_fu_472_p2 = (xor_ln895_fu_466_p2 | p_Result_3619_fu_388_p3);

assign or_ln896_722_fu_692_p2 = (xor_ln896_2172_fu_686_p2 | xor_ln896_2171_fu_592_p2);

assign or_ln896_723_fu_886_p2 = (xor_ln896_2174_fu_880_p2 | xor_ln896_2173_fu_786_p2);

assign or_ln896_724_fu_1082_p2 = (xor_ln896_2176_fu_1076_p2 | xor_ln896_2175_fu_982_p2);

assign or_ln896_725_fu_1283_p2 = (xor_ln896_2178_fu_1277_p2 | xor_ln896_2177_fu_1183_p2);

assign or_ln896_726_fu_1501_p2 = (xor_ln896_2180_fu_1495_p2 | xor_ln896_2179_fu_1401_p2);

assign or_ln896_727_fu_1711_p2 = (xor_ln896_2182_fu_1705_p2 | xor_ln896_2181_fu_1611_p2);

assign or_ln896_728_fu_1907_p2 = (xor_ln896_2184_fu_1901_p2 | xor_ln896_2183_fu_1807_p2);

assign or_ln896_729_fu_2097_p2 = (xor_ln896_2186_fu_2091_p2 | xor_ln896_2185_fu_1997_p2);

assign or_ln896_730_fu_2297_p2 = (xor_ln896_2188_fu_2291_p2 | xor_ln896_2187_fu_2197_p2);

assign or_ln896_fu_496_p2 = (xor_ln896_fu_396_p2 | xor_ln896_2170_fu_490_p2);

assign overflow_1446_fu_680_p2 = (xor_ln895_2172_fu_674_p2 & or_ln895_722_fu_668_p2);

assign overflow_1447_fu_874_p2 = (xor_ln895_2174_fu_868_p2 & or_ln895_723_fu_862_p2);

assign overflow_1448_fu_1070_p2 = (xor_ln895_2176_fu_1064_p2 & or_ln895_724_fu_1058_p2);

assign overflow_1449_fu_1271_p2 = (xor_ln895_2178_fu_1265_p2 & or_ln895_725_fu_1259_p2);

assign overflow_1450_fu_1489_p2 = (xor_ln895_2180_fu_1483_p2 & or_ln895_726_fu_1477_p2);

assign overflow_1451_fu_1699_p2 = (xor_ln895_2182_fu_1693_p2 & or_ln895_727_fu_1687_p2);

assign overflow_1452_fu_1895_p2 = (xor_ln895_2184_fu_1889_p2 & or_ln895_728_fu_1883_p2);

assign overflow_1453_fu_2085_p2 = (xor_ln895_2186_fu_2079_p2 & or_ln895_729_fu_2073_p2);

assign overflow_1454_fu_2285_p2 = (xor_ln895_2188_fu_2279_p2 & or_ln895_730_fu_2273_p2);

assign overflow_1455_fu_2373_p2 = (xor_ln895_2189_fu_2367_p2 & p_Result_3648_fu_2359_p3);

assign overflow_1456_fu_2471_p2 = (xor_ln895_2190_fu_2465_p2 & p_Result_3650_fu_2457_p3);

assign overflow_1457_fu_2571_p2 = (xor_ln895_2191_fu_2565_p2 & p_Result_3652_fu_2557_p3);

assign overflow_1458_fu_2671_p2 = (xor_ln895_2192_fu_2665_p2 & p_Result_3654_fu_2657_p3);

assign overflow_1459_fu_2789_p2 = (xor_ln895_2193_fu_2784_p2 & p_Result_3656_reg_3456);

assign overflow_1460_fu_2880_p2 = (xor_ln895_2194_fu_2874_p2 & p_Result_3658_fu_2866_p3);

assign overflow_1461_fu_2980_p2 = (xor_ln895_2195_fu_2974_p2 & p_Result_3660_fu_2966_p3);

assign overflow_1462_fu_3082_p2 = (xor_ln895_2196_fu_3076_p2 & p_Result_3662_fu_3068_p3);

assign overflow_1463_fu_3182_p2 = (xor_ln895_2197_fu_3176_p2 & p_Result_3664_fu_3168_p3);

assign overflow_1464_fu_3281_p2 = (xor_ln895_2198_fu_3276_p2 & p_Result_3666_reg_3481);

assign overflow_fu_484_p2 = (xor_ln895_2170_fu_478_p2 & or_ln895_fu_472_p2);

assign p_Result_3618_fu_358_p1 = grp_fu_141_p2;

assign p_Result_3618_fu_358_p3 = p_Result_3618_fu_358_p1[32'd28];

assign p_Result_3619_fu_388_p3 = p_Val2_4027_fu_378_p2[32'd15];

assign p_Result_3620_fu_536_p1 = grp_fu_144_p2;

assign p_Result_3620_fu_536_p3 = p_Result_3620_fu_536_p1[32'd29];

assign p_Result_3621_fu_558_p1 = grp_fu_144_p2;

assign p_Result_3621_fu_558_p3 = p_Result_3621_fu_558_p1[32'd29];

assign p_Result_3622_fu_584_p3 = p_Val2_4030_fu_578_p2[32'd16];

assign p_Result_3623_fu_726_p3 = grp_fu_143_p2[32'd30];

assign p_Result_3624_fu_748_p3 = grp_fu_143_p2[32'd30];

assign p_Result_3625_fu_778_p3 = p_Val2_4033_fu_768_p2[32'd17];

assign p_Result_3626_fu_926_p3 = grp_fu_142_p2[32'd31];

assign p_Result_3627_fu_948_p3 = grp_fu_142_p2[32'd31];

assign p_Result_3628_fu_974_p3 = p_Val2_4036_fu_968_p2[32'd18];

assign p_Result_3629_fu_1127_p1 = grp_fu_140_p2;

assign p_Result_3629_fu_1127_p3 = p_Result_3629_fu_1127_p1[32'd29];

assign p_Result_3630_fu_1149_p1 = grp_fu_140_p2;

assign p_Result_3630_fu_1149_p3 = p_Result_3630_fu_1149_p1[32'd29];

assign p_Result_3631_fu_1175_p3 = p_Val2_4039_fu_1169_p2[32'd16];

assign p_Result_3632_fu_1341_p3 = grp_fu_141_p2[32'd29];

assign p_Result_3633_fu_1363_p3 = grp_fu_141_p2[32'd29];

assign p_Result_3634_fu_1393_p3 = p_Val2_4042_fu_1383_p2[32'd16];

assign p_Result_3635_fu_1551_p3 = grp_fu_144_p2[32'd30];

assign p_Result_3636_fu_1573_p3 = grp_fu_144_p2[32'd30];

assign p_Result_3637_fu_1603_p3 = p_Val2_4045_fu_1593_p2[32'd17];

assign p_Result_3638_fu_1751_p1 = grp_fu_143_p2;

assign p_Result_3638_fu_1751_p3 = p_Result_3638_fu_1751_p1[32'd29];

assign p_Result_3639_fu_1773_p1 = grp_fu_143_p2;

assign p_Result_3639_fu_1773_p3 = p_Result_3639_fu_1773_p1[32'd29];

assign p_Result_3640_fu_1799_p3 = p_Val2_4048_fu_1793_p2[32'd16];

assign p_Result_3641_fu_1937_p1 = grp_fu_142_p2;

assign p_Result_3641_fu_1937_p3 = p_Result_3641_fu_1937_p1[32'd30];

assign p_Result_3642_fu_1959_p1 = grp_fu_142_p2;

assign p_Result_3642_fu_1959_p3 = p_Result_3642_fu_1959_p1[32'd30];

assign p_Result_3643_fu_1989_p3 = p_Val2_4051_fu_1979_p2[32'd17];

assign p_Result_3644_fu_2137_p3 = grp_fu_140_p2[32'd30];

assign p_Result_3645_fu_2159_p3 = grp_fu_140_p2[32'd30];

assign p_Result_3646_fu_2189_p3 = p_Val2_4054_fu_2179_p2[32'd17];

assign p_Result_3647_fu_2346_p3 = ret_V_fu_2340_p2[32'd19];

assign p_Result_3648_fu_2359_p3 = p_Val2_4056_fu_2354_p2[32'd18];

assign p_Result_3649_fu_2443_p3 = ret_V_722_fu_2437_p2[32'd19];

assign p_Result_3650_fu_2457_p3 = p_Val2_4057_fu_2451_p2[32'd18];

assign p_Result_3651_fu_2544_p3 = ret_V_723_fu_2538_p2[32'd19];

assign p_Result_3652_fu_2557_p3 = p_Val2_4061_fu_2552_p2[32'd18];

assign p_Result_3653_fu_2644_p3 = ret_V_724_fu_2638_p2[32'd19];

assign p_Result_3654_fu_2657_p3 = p_Val2_4063_fu_2652_p2[32'd18];

assign p_Result_3657_fu_2854_p3 = ret_V_726_fu_2848_p2[32'd19];

assign p_Result_3658_fu_2866_p3 = p_Val2_4067_fu_2862_p2[32'd18];

assign p_Result_3659_fu_2953_p3 = ret_V_727_fu_2947_p2[32'd19];

assign p_Result_3660_fu_2966_p3 = p_Val2_4071_fu_2961_p2[32'd18];

assign p_Result_3661_fu_3054_p3 = ret_V_728_fu_3048_p2[32'd19];

assign p_Result_3662_fu_3068_p3 = p_Val2_4073_fu_3062_p2[32'd18];

assign p_Result_3663_fu_3155_p3 = ret_V_729_fu_3149_p2[32'd19];

assign p_Result_3664_fu_3168_p3 = p_Val2_4077_fu_3163_p2[32'd18];

assign p_Result_s_fu_336_p1 = grp_fu_141_p2;

assign p_Result_s_fu_336_p3 = p_Result_s_fu_336_p1[32'd28];

assign p_Val2_4026_fu_344_p1 = grp_fu_141_p2;

assign p_Val2_4026_fu_344_p4 = {{p_Val2_4026_fu_344_p1[28:14]}};

assign p_Val2_4027_fu_378_p2 = ($signed(zext_ln377_fu_374_p1) + $signed(sext_ln823_fu_354_p1));

assign p_Val2_4029_fu_544_p1 = grp_fu_144_p2;

assign p_Val2_4029_fu_544_p4 = {{p_Val2_4029_fu_544_p1[29:14]}};

assign p_Val2_4030_fu_578_p2 = ($signed(zext_ln377_722_fu_574_p1) + $signed(sext_ln823_106_fu_554_p1));

assign p_Val2_4032_fu_734_p4 = {{grp_fu_143_p2[30:14]}};

assign p_Val2_4033_fu_768_p2 = ($signed(zext_ln377_723_fu_764_p1) + $signed(sext_ln823_107_fu_744_p1));

assign p_Val2_4035_fu_934_p4 = {{grp_fu_142_p2[31:14]}};

assign p_Val2_4036_fu_968_p2 = ($signed(zext_ln377_724_fu_964_p1) + $signed(sext_ln818_fu_944_p1));

assign p_Val2_4038_fu_1135_p1 = grp_fu_140_p2;

assign p_Val2_4038_fu_1135_p4 = {{p_Val2_4038_fu_1135_p1[29:14]}};

assign p_Val2_4039_fu_1169_p2 = ($signed(zext_ln377_725_fu_1165_p1) + $signed(sext_ln823_108_fu_1145_p1));

assign p_Val2_4041_fu_1349_p4 = {{grp_fu_141_p2[29:14]}};

assign p_Val2_4042_fu_1383_p2 = ($signed(zext_ln377_726_fu_1379_p1) + $signed(sext_ln823_109_fu_1359_p1));

assign p_Val2_4044_fu_1559_p4 = {{grp_fu_144_p2[30:14]}};

assign p_Val2_4045_fu_1593_p2 = ($signed(zext_ln377_727_fu_1589_p1) + $signed(sext_ln823_110_fu_1569_p1));

assign p_Val2_4047_fu_1759_p1 = grp_fu_143_p2;

assign p_Val2_4047_fu_1759_p4 = {{p_Val2_4047_fu_1759_p1[29:14]}};

assign p_Val2_4048_fu_1793_p2 = ($signed(zext_ln377_728_fu_1789_p1) + $signed(sext_ln823_111_fu_1769_p1));

assign p_Val2_4050_fu_1945_p1 = grp_fu_142_p2;

assign p_Val2_4050_fu_1945_p4 = {{p_Val2_4050_fu_1945_p1[30:14]}};

assign p_Val2_4051_fu_1979_p2 = ($signed(zext_ln377_729_fu_1975_p1) + $signed(sext_ln823_112_fu_1955_p1));

assign p_Val2_4053_fu_2145_p4 = {{grp_fu_140_p2[30:14]}};

assign p_Val2_4054_fu_2179_p2 = ($signed(zext_ln377_730_fu_2175_p1) + $signed(sext_ln823_113_fu_2155_p1));

assign p_Val2_4056_fu_2354_p2 = ($signed(rhs_reg_3345) + $signed(19'd12815));

assign p_Val2_4057_fu_2451_p2 = ($signed(rhs_722_fu_1317_p3) + $signed(19'd2100));

assign p_Val2_4061_fu_2552_p2 = ($signed(rhs_723_reg_3366) + $signed(p_Val2_s_fu_2425_p3));

assign p_Val2_4063_fu_2652_p2 = ($signed(rhs_724_reg_3372) + $signed(p_Val2_4082_fu_2523_p3));

assign p_Val2_4065_fu_2753_p2 = ($signed(rhs_725_fu_1334_p3) + $signed(lhs_672_fu_2623_p3));

assign p_Val2_4067_fu_2862_p2 = ($signed(rhs_726_reg_3398) + $signed(lhs_673_reg_3437));

assign p_Val2_4071_fu_2961_p2 = ($signed(rhs_727_reg_3404) + $signed(p_Val2_4083_fu_2834_p3));

assign p_Val2_4073_fu_3062_p2 = ($signed(rhs_728_fu_2777_p3) + $signed(p_Val2_4084_fu_2932_p3));

assign p_Val2_4077_fu_3163_p2 = ($signed(rhs_729_reg_3425) + $signed(p_Val2_4085_fu_3032_p3));

assign p_Val2_4079_fu_3263_p2 = ($signed(rhs_730_reg_3431) + $signed(p_Val2_4086_fu_3134_p3));

assign p_Val2_4080_fu_3234_p3 = ((or_ln302_729_fu_3212_p2[0:0] == 1'b1) ? select_ln302_1461_fu_3218_p3 : select_ln350_729_fu_3226_p3);

assign p_Val2_4081_fu_3326_p3 = ((or_ln302_730_fu_3306_p2[0:0] == 1'b1) ? select_ln302_1463_fu_3312_p3 : select_ln350_730_fu_3319_p3);

assign p_Val2_4082_fu_2523_p3 = ((or_ln302_722_fu_2501_p2[0:0] == 1'b1) ? select_ln302_1447_fu_2507_p3 : select_ln350_722_fu_2515_p3);

assign p_Val2_4083_fu_2834_p3 = ((or_ln302_725_fu_2814_p2[0:0] == 1'b1) ? select_ln302_1453_fu_2820_p3 : select_ln350_725_fu_2827_p3);

assign p_Val2_4084_fu_2932_p3 = ((or_ln302_726_fu_2910_p2[0:0] == 1'b1) ? select_ln302_1455_fu_2916_p3 : select_ln350_726_fu_2924_p3);

assign p_Val2_4085_fu_3032_p3 = ((or_ln302_727_fu_3010_p2[0:0] == 1'b1) ? select_ln302_1457_fu_3016_p3 : select_ln350_727_fu_3024_p3);

assign p_Val2_4086_fu_3134_p3 = ((or_ln302_728_fu_3112_p2[0:0] == 1'b1) ? select_ln302_1459_fu_3118_p3 : select_ln350_728_fu_3126_p3);

assign p_Val2_s_fu_2425_p3 = ((or_ln302_fu_2403_p2[0:0] == 1'b1) ? select_ln302_fu_2409_p3 : select_ln350_fu_2417_p3);

assign ret_V_722_fu_2437_p2 = ($signed(sext_ln813_1395_fu_2433_p1) + $signed(20'd2100));

assign ret_V_723_fu_2538_p2 = ($signed(sext_ln813_1397_fu_2535_p1) + $signed(sext_ln813_1396_fu_2531_p1));

assign ret_V_724_fu_2638_p2 = ($signed(sext_ln813_1399_fu_2635_p1) + $signed(sext_ln813_1398_fu_2631_p1));

assign ret_V_725_fu_2739_p2 = ($signed(sext_ln813_1401_fu_2735_p1) + $signed(sext_ln813_1400_fu_2731_p1));

assign ret_V_726_fu_2848_p2 = ($signed(sext_ln813_1403_fu_2845_p1) + $signed(sext_ln813_1402_fu_2842_p1));

assign ret_V_727_fu_2947_p2 = ($signed(sext_ln813_1405_fu_2944_p1) + $signed(sext_ln813_1404_fu_2940_p1));

assign ret_V_728_fu_3048_p2 = ($signed(sext_ln813_1407_fu_3044_p1) + $signed(sext_ln813_1406_fu_3040_p1));

assign ret_V_729_fu_3149_p2 = ($signed(sext_ln813_1409_fu_3146_p1) + $signed(sext_ln813_1408_fu_3142_p1));

assign ret_V_730_fu_3249_p2 = ($signed(sext_ln813_1411_fu_3246_p1) + $signed(sext_ln813_1410_fu_3242_p1));

assign ret_V_fu_2340_p2 = ($signed(sext_ln813_fu_2337_p1) + $signed(20'd12815));

assign rhs_722_fu_1317_p3 = ((or_ln346_722_reg_3361[0:0] == 1'b1) ? select_ln346_1035_fu_1310_p3 : sext_ln856_106_fu_1307_p1);

assign rhs_723_fu_918_p3 = ((or_ln346_723_fu_912_p2[0:0] == 1'b1) ? select_ln346_1036_fu_904_p3 : sext_ln856_107_fu_774_p1);

assign rhs_724_fu_1114_p3 = ((or_ln346_724_fu_1108_p2[0:0] == 1'b1) ? select_ln346_1037_fu_1100_p3 : p_Val2_4036_fu_968_p2);

assign rhs_725_fu_1334_p3 = ((or_ln346_725_reg_3393[0:0] == 1'b1) ? select_ln346_1038_fu_1327_p3 : sext_ln856_108_fu_1324_p1);

assign rhs_726_fu_1533_p3 = ((or_ln346_726_fu_1527_p2[0:0] == 1'b1) ? select_ln346_1039_fu_1519_p3 : sext_ln856_109_fu_1389_p1);

assign rhs_727_fu_1743_p3 = ((or_ln346_727_fu_1737_p2[0:0] == 1'b1) ? select_ln346_1040_fu_1729_p3 : sext_ln856_110_fu_1599_p1);

assign rhs_728_fu_2777_p3 = ((or_ln346_728_reg_3420[0:0] == 1'b1) ? select_ln346_1041_fu_2770_p3 : sext_ln856_111_fu_2767_p1);

assign rhs_729_fu_2129_p3 = ((or_ln346_729_fu_2123_p2[0:0] == 1'b1) ? select_ln346_1042_fu_2115_p3 : sext_ln856_112_fu_1985_p1);

assign rhs_730_fu_2329_p3 = ((or_ln346_730_fu_2323_p2[0:0] == 1'b1) ? select_ln346_1043_fu_2315_p3 : sext_ln856_113_fu_2185_p1);

assign rhs_fu_528_p3 = ((or_ln346_fu_522_p2[0:0] == 1'b1) ? select_ln346_1034_fu_514_p3 : sext_ln856_fu_384_p1);

assign select_ln302_1447_fu_2507_p3 = ((xor_ln302_1447_fu_2489_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_4057_fu_2451_p2);

assign select_ln302_1449_fu_2607_p3 = ((xor_ln302_1449_fu_2589_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_4061_fu_2552_p2);

assign select_ln302_1451_fu_2707_p3 = ((xor_ln302_1451_fu_2689_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_4063_fu_2652_p2);

assign select_ln302_1453_fu_2820_p3 = ((xor_ln302_1453_fu_2804_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_4065_reg_3450);

assign select_ln302_1455_fu_2916_p3 = ((xor_ln302_1455_fu_2898_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_4067_fu_2862_p2);

assign select_ln302_1457_fu_3016_p3 = ((xor_ln302_1457_fu_2998_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_4071_fu_2961_p2);

assign select_ln302_1459_fu_3118_p3 = ((xor_ln302_1459_fu_3100_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_4073_fu_3062_p2);

assign select_ln302_1461_fu_3218_p3 = ((xor_ln302_1461_fu_3200_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_4077_fu_3163_p2);

assign select_ln302_1463_fu_3312_p3 = ((xor_ln302_1463_fu_3296_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_4079_reg_3475);

assign select_ln302_fu_2409_p3 = ((xor_ln302_fu_2391_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_4056_fu_2354_p2);

assign select_ln346_1034_fu_514_p3 = ((overflow_fu_484_p2[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_1035_fu_1310_p3 = ((overflow_1446_reg_3356[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_1036_fu_904_p3 = ((overflow_1447_fu_874_p2[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_1037_fu_1100_p3 = ((overflow_1448_fu_1070_p2[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_1038_fu_1327_p3 = ((overflow_1449_reg_3388[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_1039_fu_1519_p3 = ((overflow_1450_fu_1489_p2[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_1040_fu_1729_p3 = ((overflow_1451_fu_1699_p2[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_1041_fu_2770_p3 = ((overflow_1452_reg_3415[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_1042_fu_2115_p3 = ((overflow_1453_fu_2085_p2[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_1043_fu_2315_p3 = ((overflow_1454_fu_2285_p2[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln350_722_fu_2515_p3 = ((underflow_1456_fu_2483_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_4057_fu_2451_p2);

assign select_ln350_723_fu_2615_p3 = ((underflow_1457_fu_2583_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_4061_fu_2552_p2);

assign select_ln350_724_fu_2715_p3 = ((underflow_1458_fu_2683_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_4063_fu_2652_p2);

assign select_ln350_725_fu_2827_p3 = ((underflow_1459_fu_2799_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_4065_reg_3450);

assign select_ln350_726_fu_2924_p3 = ((underflow_1460_fu_2892_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_4067_fu_2862_p2);

assign select_ln350_727_fu_3024_p3 = ((underflow_1461_fu_2992_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_4071_fu_2961_p2);

assign select_ln350_728_fu_3126_p3 = ((underflow_1462_fu_3094_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_4073_fu_3062_p2);

assign select_ln350_729_fu_3226_p3 = ((underflow_1463_fu_3194_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_4077_fu_3163_p2);

assign select_ln350_730_fu_3319_p3 = ((underflow_1464_fu_3291_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_4079_reg_3475);

assign select_ln350_fu_2417_p3 = ((underflow_1455_fu_2385_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_4056_fu_2354_p2);

assign sext_ln70_264_fu_331_p0 = p_read;

assign sext_ln70_264_fu_331_p1 = sext_ln70_264_fu_331_p0;

assign sext_ln70_265_fu_716_p0 = p_read1;

assign sext_ln70_265_fu_716_p1 = sext_ln70_265_fu_716_p0;

assign sext_ln70_266_fu_721_p0 = p_read1;

assign sext_ln70_266_fu_721_p1 = sext_ln70_266_fu_721_p0;

assign sext_ln70_267_fu_1122_p1 = $signed(p_read2);

assign sext_ln70_268_fu_1541_p0 = ap_port_reg_p_read3;

assign sext_ln70_268_fu_1541_p1 = sext_ln70_268_fu_1541_p0;

assign sext_ln70_269_fu_1546_p0 = ap_port_reg_p_read3;

assign sext_ln70_269_fu_1546_p1 = sext_ln70_269_fu_1546_p0;

assign sext_ln70_270_fu_1931_p1 = $signed(ap_port_reg_p_read4);

assign sext_ln70_fu_326_p0 = p_read;

assign sext_ln70_fu_326_p1 = sext_ln70_fu_326_p0;

assign sext_ln813_1395_fu_2433_p1 = rhs_722_fu_1317_p3;

assign sext_ln813_1396_fu_2531_p1 = p_Val2_s_fu_2425_p3;

assign sext_ln813_1397_fu_2535_p1 = rhs_723_reg_3366;

assign sext_ln813_1398_fu_2631_p1 = p_Val2_4082_fu_2523_p3;

assign sext_ln813_1399_fu_2635_p1 = rhs_724_reg_3372;

assign sext_ln813_1400_fu_2731_p1 = lhs_672_fu_2623_p3;

assign sext_ln813_1401_fu_2735_p1 = rhs_725_fu_1334_p3;

assign sext_ln813_1402_fu_2842_p1 = lhs_673_reg_3437;

assign sext_ln813_1403_fu_2845_p1 = rhs_726_reg_3398;

assign sext_ln813_1404_fu_2940_p1 = p_Val2_4083_fu_2834_p3;

assign sext_ln813_1405_fu_2944_p1 = rhs_727_reg_3404;

assign sext_ln813_1406_fu_3040_p1 = p_Val2_4084_fu_2932_p3;

assign sext_ln813_1407_fu_3044_p1 = rhs_728_fu_2777_p3;

assign sext_ln813_1408_fu_3142_p1 = p_Val2_4085_fu_3032_p3;

assign sext_ln813_1409_fu_3146_p1 = rhs_729_reg_3425;

assign sext_ln813_1410_fu_3242_p1 = p_Val2_4086_fu_3134_p3;

assign sext_ln813_1411_fu_3246_p1 = rhs_730_reg_3431;

assign sext_ln813_fu_2337_p1 = rhs_reg_3345;

assign sext_ln818_fu_944_p1 = $signed(p_Val2_4035_fu_934_p4);

assign sext_ln823_106_fu_554_p1 = $signed(p_Val2_4029_fu_544_p4);

assign sext_ln823_107_fu_744_p1 = $signed(p_Val2_4032_fu_734_p4);

assign sext_ln823_108_fu_1145_p1 = $signed(p_Val2_4038_fu_1135_p4);

assign sext_ln823_109_fu_1359_p1 = $signed(p_Val2_4041_fu_1349_p4);

assign sext_ln823_110_fu_1569_p1 = $signed(p_Val2_4044_fu_1559_p4);

assign sext_ln823_111_fu_1769_p1 = $signed(p_Val2_4047_fu_1759_p4);

assign sext_ln823_112_fu_1955_p1 = $signed(p_Val2_4050_fu_1945_p4);

assign sext_ln823_113_fu_2155_p1 = $signed(p_Val2_4053_fu_2145_p4);

assign sext_ln823_fu_354_p1 = $signed(p_Val2_4026_fu_344_p4);

assign sext_ln856_106_fu_1307_p1 = p_Val2_4030_reg_3351;

assign sext_ln856_107_fu_774_p1 = p_Val2_4033_fu_768_p2;

assign sext_ln856_108_fu_1324_p1 = p_Val2_4039_reg_3383;

assign sext_ln856_109_fu_1389_p1 = p_Val2_4042_fu_1383_p2;

assign sext_ln856_110_fu_1599_p1 = p_Val2_4045_fu_1593_p2;

assign sext_ln856_111_fu_2767_p1 = p_Val2_4048_reg_3410;

assign sext_ln856_112_fu_1985_p1 = p_Val2_4051_fu_1979_p2;

assign sext_ln856_113_fu_2185_p1 = p_Val2_4054_fu_2179_p2;

assign sext_ln856_fu_384_p1 = p_Val2_4027_fu_378_p2;

assign tmp_5751_fu_434_p1 = grp_fu_141_p2;

assign tmp_5751_fu_434_p3 = tmp_5751_fu_434_p1[32'd28];

assign tmp_5754_fu_566_p1 = grp_fu_144_p2;

assign tmp_5754_fu_566_p3 = tmp_5754_fu_566_p1[32'd13];

assign tmp_5757_fu_630_p1 = grp_fu_144_p2;

assign tmp_5757_fu_630_p3 = tmp_5757_fu_630_p1[32'd29];

assign tmp_5760_fu_756_p3 = grp_fu_143_p2[32'd13];

assign tmp_5763_fu_824_p3 = grp_fu_143_p2[32'd30];

assign tmp_5766_fu_956_p3 = grp_fu_142_p2[32'd13];

assign tmp_5769_fu_1020_p3 = grp_fu_142_p2[32'd31];

assign tmp_5772_fu_1157_p1 = grp_fu_140_p2;

assign tmp_5772_fu_1157_p3 = tmp_5772_fu_1157_p1[32'd13];

assign tmp_5775_fu_1221_p1 = grp_fu_140_p2;

assign tmp_5775_fu_1221_p3 = tmp_5775_fu_1221_p1[32'd29];

assign tmp_5778_fu_1371_p3 = grp_fu_141_p2[32'd13];

assign tmp_5781_fu_1439_p3 = grp_fu_141_p2[32'd29];

assign tmp_5784_fu_1581_p3 = grp_fu_144_p2[32'd13];

assign tmp_5787_fu_1649_p3 = grp_fu_144_p2[32'd30];

assign tmp_5790_fu_1781_p1 = grp_fu_143_p2;

assign tmp_5790_fu_1781_p3 = tmp_5790_fu_1781_p1[32'd13];

assign tmp_5793_fu_1845_p1 = grp_fu_143_p2;

assign tmp_5793_fu_1845_p3 = tmp_5793_fu_1845_p1[32'd29];

assign tmp_5796_fu_1967_p1 = grp_fu_142_p2;

assign tmp_5796_fu_1967_p3 = tmp_5796_fu_1967_p1[32'd13];

assign tmp_5799_fu_2035_p1 = grp_fu_142_p2;

assign tmp_5799_fu_2035_p3 = tmp_5799_fu_2035_p1[32'd30];

assign tmp_5802_fu_2167_p3 = grp_fu_140_p2[32'd13];

assign tmp_5805_fu_2235_p3 = grp_fu_140_p2[32'd30];

assign tmp_fu_366_p1 = grp_fu_141_p2;

assign tmp_fu_366_p3 = tmp_fu_366_p1[32'd13];

assign underflow_1446_fu_704_p2 = (xor_ln896_2349_fu_698_p2 & p_Result_3620_fu_536_p3);

assign underflow_1447_fu_898_p2 = (xor_ln896_2350_fu_892_p2 & p_Result_3623_fu_726_p3);

assign underflow_1448_fu_1094_p2 = (xor_ln896_2351_fu_1088_p2 & p_Result_3626_fu_926_p3);

assign underflow_1449_fu_1295_p2 = (xor_ln896_2352_fu_1289_p2 & p_Result_3629_fu_1127_p3);

assign underflow_1450_fu_1513_p2 = (xor_ln896_2353_fu_1507_p2 & p_Result_3632_fu_1341_p3);

assign underflow_1451_fu_1723_p2 = (xor_ln896_2354_fu_1717_p2 & p_Result_3635_fu_1551_p3);

assign underflow_1452_fu_1919_p2 = (xor_ln896_2355_fu_1913_p2 & p_Result_3638_fu_1751_p3);

assign underflow_1453_fu_2109_p2 = (xor_ln896_2356_fu_2103_p2 & p_Result_3641_fu_1937_p3);

assign underflow_1454_fu_2309_p2 = (xor_ln896_2357_fu_2303_p2 & p_Result_3644_fu_2137_p3);

assign underflow_1455_fu_2385_p2 = (xor_ln896_2189_fu_2379_p2 & p_Result_3647_fu_2346_p3);

assign underflow_1456_fu_2483_p2 = (xor_ln896_2190_fu_2477_p2 & p_Result_3649_fu_2443_p3);

assign underflow_1457_fu_2583_p2 = (xor_ln896_2191_fu_2577_p2 & p_Result_3651_fu_2544_p3);

assign underflow_1458_fu_2683_p2 = (xor_ln896_2192_fu_2677_p2 & p_Result_3653_fu_2644_p3);

assign underflow_1459_fu_2799_p2 = (xor_ln896_2193_fu_2794_p2 & p_Result_3655_reg_3443);

assign underflow_1460_fu_2892_p2 = (xor_ln896_2194_fu_2886_p2 & p_Result_3657_fu_2854_p3);

assign underflow_1461_fu_2992_p2 = (xor_ln896_2195_fu_2986_p2 & p_Result_3659_fu_2953_p3);

assign underflow_1462_fu_3094_p2 = (xor_ln896_2196_fu_3088_p2 & p_Result_3661_fu_3054_p3);

assign underflow_1463_fu_3194_p2 = (xor_ln896_2197_fu_3188_p2 & p_Result_3663_fu_3155_p3);

assign underflow_1464_fu_3291_p2 = (xor_ln896_2198_fu_3286_p2 & p_Result_3665_reg_3468);

assign underflow_fu_508_p2 = (xor_ln896_2348_fu_502_p2 & p_Result_s_fu_336_p3);

assign xor_ln302_1446_fu_2397_p2 = (xor_ln302_fu_2391_p2 ^ 1'd1);

assign xor_ln302_1447_fu_2489_p2 = (p_Result_3650_fu_2457_p3 ^ p_Result_3649_fu_2443_p3);

assign xor_ln302_1448_fu_2495_p2 = (xor_ln302_1447_fu_2489_p2 ^ 1'd1);

assign xor_ln302_1449_fu_2589_p2 = (p_Result_3652_fu_2557_p3 ^ p_Result_3651_fu_2544_p3);

assign xor_ln302_1450_fu_2595_p2 = (xor_ln302_1449_fu_2589_p2 ^ 1'd1);

assign xor_ln302_1451_fu_2689_p2 = (p_Result_3654_fu_2657_p3 ^ p_Result_3653_fu_2644_p3);

assign xor_ln302_1452_fu_2695_p2 = (xor_ln302_1451_fu_2689_p2 ^ 1'd1);

assign xor_ln302_1453_fu_2804_p2 = (p_Result_3656_reg_3456 ^ p_Result_3655_reg_3443);

assign xor_ln302_1454_fu_2808_p2 = (xor_ln302_1453_fu_2804_p2 ^ 1'd1);

assign xor_ln302_1455_fu_2898_p2 = (p_Result_3658_fu_2866_p3 ^ p_Result_3657_fu_2854_p3);

assign xor_ln302_1456_fu_2904_p2 = (xor_ln302_1455_fu_2898_p2 ^ 1'd1);

assign xor_ln302_1457_fu_2998_p2 = (p_Result_3660_fu_2966_p3 ^ p_Result_3659_fu_2953_p3);

assign xor_ln302_1458_fu_3004_p2 = (xor_ln302_1457_fu_2998_p2 ^ 1'd1);

assign xor_ln302_1459_fu_3100_p2 = (p_Result_3662_fu_3068_p3 ^ p_Result_3661_fu_3054_p3);

assign xor_ln302_1460_fu_3106_p2 = (xor_ln302_1459_fu_3100_p2 ^ 1'd1);

assign xor_ln302_1461_fu_3200_p2 = (p_Result_3664_fu_3168_p3 ^ p_Result_3663_fu_3155_p3);

assign xor_ln302_1462_fu_3206_p2 = (xor_ln302_1461_fu_3200_p2 ^ 1'd1);

assign xor_ln302_1463_fu_3296_p2 = (p_Result_3666_reg_3481 ^ p_Result_3665_reg_3468);

assign xor_ln302_1464_fu_3300_p2 = (xor_ln302_1463_fu_3296_p2 ^ 1'd1);

assign xor_ln302_fu_2391_p2 = (p_Result_3648_fu_2359_p3 ^ p_Result_3647_fu_2346_p3);

assign xor_ln888_934_fu_612_p2 = (p_Result_3621_fu_558_p3 ^ 1'd1);

assign xor_ln888_936_fu_806_p2 = (p_Result_3624_fu_748_p3 ^ 1'd1);

assign xor_ln888_938_fu_1002_p2 = (p_Result_3627_fu_948_p3 ^ 1'd1);

assign xor_ln888_940_fu_1203_p2 = (p_Result_3630_fu_1149_p3 ^ 1'd1);

assign xor_ln888_942_fu_1421_p2 = (p_Result_3633_fu_1363_p3 ^ 1'd1);

assign xor_ln888_944_fu_1631_p2 = (p_Result_3636_fu_1573_p3 ^ 1'd1);

assign xor_ln888_946_fu_1827_p2 = (p_Result_3639_fu_1773_p3 ^ 1'd1);

assign xor_ln888_948_fu_2017_p2 = (p_Result_3642_fu_1959_p3 ^ 1'd1);

assign xor_ln888_950_fu_2217_p2 = (p_Result_3645_fu_2159_p3 ^ 1'd1);

assign xor_ln888_fu_416_p2 = (p_Result_3618_fu_358_p3 ^ 1'd1);

assign xor_ln890_722_fu_638_p2 = (tmp_5757_fu_630_p3 ^ 1'd1);

assign xor_ln890_723_fu_832_p2 = (tmp_5763_fu_824_p3 ^ 1'd1);

assign xor_ln890_724_fu_1028_p2 = (tmp_5769_fu_1020_p3 ^ 1'd1);

assign xor_ln890_725_fu_1229_p2 = (tmp_5775_fu_1221_p3 ^ 1'd1);

assign xor_ln890_726_fu_1447_p2 = (tmp_5781_fu_1439_p3 ^ 1'd1);

assign xor_ln890_727_fu_1657_p2 = (tmp_5787_fu_1649_p3 ^ 1'd1);

assign xor_ln890_728_fu_1853_p2 = (tmp_5793_fu_1845_p3 ^ 1'd1);

assign xor_ln890_729_fu_2043_p2 = (tmp_5799_fu_2035_p3 ^ 1'd1);

assign xor_ln890_730_fu_2243_p2 = (tmp_5805_fu_2235_p3 ^ 1'd1);

assign xor_ln890_fu_442_p2 = (tmp_5751_fu_434_p3 ^ 1'd1);

assign xor_ln895_2170_fu_478_p2 = (p_Result_s_fu_336_p3 ^ 1'd1);

assign xor_ln895_2171_fu_662_p2 = (deleted_zeros_721_fu_624_p2 ^ 1'd1);

assign xor_ln895_2172_fu_674_p2 = (p_Result_3620_fu_536_p3 ^ 1'd1);

assign xor_ln895_2173_fu_856_p2 = (deleted_zeros_722_fu_818_p2 ^ 1'd1);

assign xor_ln895_2174_fu_868_p2 = (p_Result_3623_fu_726_p3 ^ 1'd1);

assign xor_ln895_2175_fu_1052_p2 = (deleted_zeros_723_fu_1014_p2 ^ 1'd1);

assign xor_ln895_2176_fu_1064_p2 = (p_Result_3626_fu_926_p3 ^ 1'd1);

assign xor_ln895_2177_fu_1253_p2 = (deleted_zeros_724_fu_1215_p2 ^ 1'd1);

assign xor_ln895_2178_fu_1265_p2 = (p_Result_3629_fu_1127_p3 ^ 1'd1);

assign xor_ln895_2179_fu_1471_p2 = (deleted_zeros_725_fu_1433_p2 ^ 1'd1);

assign xor_ln895_2180_fu_1483_p2 = (p_Result_3632_fu_1341_p3 ^ 1'd1);

assign xor_ln895_2181_fu_1681_p2 = (deleted_zeros_726_fu_1643_p2 ^ 1'd1);

assign xor_ln895_2182_fu_1693_p2 = (p_Result_3635_fu_1551_p3 ^ 1'd1);

assign xor_ln895_2183_fu_1877_p2 = (deleted_zeros_727_fu_1839_p2 ^ 1'd1);

assign xor_ln895_2184_fu_1889_p2 = (p_Result_3638_fu_1751_p3 ^ 1'd1);

assign xor_ln895_2185_fu_2067_p2 = (deleted_zeros_728_fu_2029_p2 ^ 1'd1);

assign xor_ln895_2186_fu_2079_p2 = (p_Result_3641_fu_1937_p3 ^ 1'd1);

assign xor_ln895_2187_fu_2267_p2 = (deleted_zeros_729_fu_2229_p2 ^ 1'd1);

assign xor_ln895_2188_fu_2279_p2 = (p_Result_3644_fu_2137_p3 ^ 1'd1);

assign xor_ln895_2189_fu_2367_p2 = (p_Result_3647_fu_2346_p3 ^ 1'd1);

assign xor_ln895_2190_fu_2465_p2 = (p_Result_3649_fu_2443_p3 ^ 1'd1);

assign xor_ln895_2191_fu_2565_p2 = (p_Result_3651_fu_2544_p3 ^ 1'd1);

assign xor_ln895_2192_fu_2665_p2 = (p_Result_3653_fu_2644_p3 ^ 1'd1);

assign xor_ln895_2193_fu_2784_p2 = (p_Result_3655_reg_3443 ^ 1'd1);

assign xor_ln895_2194_fu_2874_p2 = (p_Result_3657_fu_2854_p3 ^ 1'd1);

assign xor_ln895_2195_fu_2974_p2 = (p_Result_3659_fu_2953_p3 ^ 1'd1);

assign xor_ln895_2196_fu_3076_p2 = (p_Result_3661_fu_3054_p3 ^ 1'd1);

assign xor_ln895_2197_fu_3176_p2 = (p_Result_3663_fu_3155_p3 ^ 1'd1);

assign xor_ln895_2198_fu_3276_p2 = (p_Result_3665_reg_3468 ^ 1'd1);

assign xor_ln895_fu_466_p2 = (deleted_zeros_fu_428_p2 ^ 1'd1);

assign xor_ln896_2170_fu_490_p2 = (deleted_ones_fu_454_p2 ^ 1'd1);

assign xor_ln896_2171_fu_592_p2 = (p_Result_3622_fu_584_p3 ^ 1'd1);

assign xor_ln896_2172_fu_686_p2 = (deleted_ones_1446_fu_650_p2 ^ 1'd1);

assign xor_ln896_2173_fu_786_p2 = (p_Result_3625_fu_778_p3 ^ 1'd1);

assign xor_ln896_2174_fu_880_p2 = (deleted_ones_1447_fu_844_p2 ^ 1'd1);

assign xor_ln896_2175_fu_982_p2 = (p_Result_3628_fu_974_p3 ^ 1'd1);

assign xor_ln896_2176_fu_1076_p2 = (deleted_ones_1448_fu_1040_p2 ^ 1'd1);

assign xor_ln896_2177_fu_1183_p2 = (p_Result_3631_fu_1175_p3 ^ 1'd1);

assign xor_ln896_2178_fu_1277_p2 = (deleted_ones_1449_fu_1241_p2 ^ 1'd1);

assign xor_ln896_2179_fu_1401_p2 = (p_Result_3634_fu_1393_p3 ^ 1'd1);

assign xor_ln896_2180_fu_1495_p2 = (deleted_ones_1450_fu_1459_p2 ^ 1'd1);

assign xor_ln896_2181_fu_1611_p2 = (p_Result_3637_fu_1603_p3 ^ 1'd1);

assign xor_ln896_2182_fu_1705_p2 = (deleted_ones_1451_fu_1669_p2 ^ 1'd1);

assign xor_ln896_2183_fu_1807_p2 = (p_Result_3640_fu_1799_p3 ^ 1'd1);

assign xor_ln896_2184_fu_1901_p2 = (deleted_ones_1452_fu_1865_p2 ^ 1'd1);

assign xor_ln896_2185_fu_1997_p2 = (p_Result_3643_fu_1989_p3 ^ 1'd1);

assign xor_ln896_2186_fu_2091_p2 = (deleted_ones_1453_fu_2055_p2 ^ 1'd1);

assign xor_ln896_2187_fu_2197_p2 = (p_Result_3646_fu_2189_p3 ^ 1'd1);

assign xor_ln896_2188_fu_2291_p2 = (deleted_ones_1454_fu_2255_p2 ^ 1'd1);

assign xor_ln896_2189_fu_2379_p2 = (p_Result_3648_fu_2359_p3 ^ 1'd1);

assign xor_ln896_2190_fu_2477_p2 = (p_Result_3650_fu_2457_p3 ^ 1'd1);

assign xor_ln896_2191_fu_2577_p2 = (p_Result_3652_fu_2557_p3 ^ 1'd1);

assign xor_ln896_2192_fu_2677_p2 = (p_Result_3654_fu_2657_p3 ^ 1'd1);

assign xor_ln896_2193_fu_2794_p2 = (p_Result_3656_reg_3456 ^ 1'd1);

assign xor_ln896_2194_fu_2886_p2 = (p_Result_3658_fu_2866_p3 ^ 1'd1);

assign xor_ln896_2195_fu_2986_p2 = (p_Result_3660_fu_2966_p3 ^ 1'd1);

assign xor_ln896_2196_fu_3088_p2 = (p_Result_3662_fu_3068_p3 ^ 1'd1);

assign xor_ln896_2197_fu_3188_p2 = (p_Result_3664_fu_3168_p3 ^ 1'd1);

assign xor_ln896_2198_fu_3286_p2 = (p_Result_3666_reg_3481 ^ 1'd1);

assign xor_ln896_2348_fu_502_p2 = (or_ln896_fu_496_p2 ^ and_ln891_fu_460_p2);

assign xor_ln896_2349_fu_698_p2 = (or_ln896_722_fu_692_p2 ^ and_ln891_722_fu_656_p2);

assign xor_ln896_2350_fu_892_p2 = (or_ln896_723_fu_886_p2 ^ and_ln891_723_fu_850_p2);

assign xor_ln896_2351_fu_1088_p2 = (or_ln896_724_fu_1082_p2 ^ and_ln891_724_fu_1046_p2);

assign xor_ln896_2352_fu_1289_p2 = (or_ln896_725_fu_1283_p2 ^ and_ln891_725_fu_1247_p2);

assign xor_ln896_2353_fu_1507_p2 = (or_ln896_726_fu_1501_p2 ^ and_ln891_726_fu_1465_p2);

assign xor_ln896_2354_fu_1717_p2 = (or_ln896_727_fu_1711_p2 ^ and_ln891_727_fu_1675_p2);

assign xor_ln896_2355_fu_1913_p2 = (or_ln896_728_fu_1907_p2 ^ and_ln891_728_fu_1871_p2);

assign xor_ln896_2356_fu_2103_p2 = (or_ln896_729_fu_2097_p2 ^ and_ln891_729_fu_2061_p2);

assign xor_ln896_2357_fu_2303_p2 = (or_ln896_730_fu_2297_p2 ^ and_ln891_730_fu_2261_p2);

assign xor_ln896_fu_396_p2 = (p_Result_3619_fu_388_p3 ^ 1'd1);

assign zext_ln377_722_fu_574_p1 = tmp_5754_fu_566_p3;

assign zext_ln377_723_fu_764_p1 = tmp_5760_fu_756_p3;

assign zext_ln377_724_fu_964_p1 = tmp_5766_fu_956_p3;

assign zext_ln377_725_fu_1165_p1 = tmp_5772_fu_1157_p3;

assign zext_ln377_726_fu_1379_p1 = tmp_5778_fu_1371_p3;

assign zext_ln377_727_fu_1589_p1 = tmp_5784_fu_1581_p3;

assign zext_ln377_728_fu_1789_p1 = tmp_5790_fu_1781_p3;

assign zext_ln377_729_fu_1975_p1 = tmp_5796_fu_1967_p3;

assign zext_ln377_730_fu_2175_p1 = tmp_5802_fu_2167_p3;

assign zext_ln377_fu_374_p1 = tmp_fu_366_p3;

endmodule //der1_sp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s
