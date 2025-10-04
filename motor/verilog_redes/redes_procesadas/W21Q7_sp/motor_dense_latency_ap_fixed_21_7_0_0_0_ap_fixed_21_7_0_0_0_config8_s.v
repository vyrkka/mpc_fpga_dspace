module motor_dense_latency_ap_fixed_21_7_0_0_0_ap_fixed_21_7_0_0_0_config8_s (
        ap_clk,
        ap_rst,
        p_read,
        p_read1,
        p_read2,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_ce
);


input   ap_clk;
input   ap_rst;
input  [20:0] p_read;
input  [20:0] p_read1;
input  [20:0] p_read2;
output  [20:0] ap_return_0;
output  [20:0] ap_return_1;
output  [20:0] ap_return_2;
input   ap_ce;

reg[20:0] ap_return_0;
reg[20:0] ap_return_1;
reg[20:0] ap_return_2;

reg  signed [20:0] p_read_8_reg_1886;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
wire   [20:0] p_Val2_6_fu_297_p2;
reg   [20:0] p_Val2_6_reg_1891;
wire   [0:0] overflow_1_fu_399_p2;
reg   [0:0] overflow_1_reg_1896;
wire   [0:0] or_ln346_1_fu_429_p2;
reg   [0:0] or_ln346_1_reg_1901;
wire   [20:0] p_Val2_9_fu_473_p2;
reg   [20:0] p_Val2_9_reg_1906;
wire   [0:0] overflow_2_fu_575_p2;
reg   [0:0] overflow_2_reg_1911;
wire   [0:0] or_ln346_2_fu_605_p2;
reg   [0:0] or_ln346_2_reg_1916;
wire  signed [16:0] p_Val2_12_fu_694_p2;
reg  signed [16:0] p_Val2_12_reg_1921;
wire   [0:0] overflow_3_fu_796_p2;
reg   [0:0] overflow_3_reg_1926;
wire   [0:0] or_ln346_3_fu_826_p2;
reg   [0:0] or_ln346_3_reg_1931;
wire  signed [19:0] p_Val2_15_fu_874_p2;
reg  signed [19:0] p_Val2_15_reg_1936;
wire   [0:0] overflow_4_fu_976_p2;
reg   [0:0] overflow_4_reg_1941;
wire   [0:0] or_ln346_4_fu_1006_p2;
reg   [0:0] or_ln346_4_reg_1946;
wire   [0:0] p_Result_s_fu_1016_p3;
reg   [0:0] p_Result_s_reg_1951;
wire   [20:0] p_Val2_3_fu_1054_p2;
reg   [20:0] p_Val2_3_reg_1956;
wire   [0:0] carry_1_fu_1074_p2;
reg   [0:0] carry_1_reg_1961;
wire   [0:0] Range1_all_ones_fu_1098_p2;
reg   [0:0] Range1_all_ones_reg_1966;
wire   [0:0] overflow_fu_1164_p2;
reg   [0:0] overflow_reg_1971;
wire   [0:0] or_ln896_fu_1176_p2;
reg   [0:0] or_ln896_reg_1977;
wire   [20:0] p_Val2_26_fu_1532_p3;
reg   [20:0] p_Val2_26_reg_1982;
wire  signed [20:0] p_Val2_s_fu_1634_p3;
reg  signed [20:0] p_Val2_s_reg_1987;
wire  signed [20:0] r_V_2_fu_134_p0;
wire  signed [35:0] sext_ln70_1_fu_253_p1;
wire  signed [14:0] r_V_2_fu_134_p1;
wire    ap_block_pp0_stage0;
wire   [11:0] r_V_4_fu_135_p1;
wire  signed [15:0] r_V_fu_136_p1;
wire  signed [20:0] r_V_1_fu_137_p0;
wire   [14:0] r_V_1_fu_137_p1;
wire   [35:0] r_V_1_fu_137_p2;
wire   [0:0] tmp_9_fu_285_p3;
wire   [20:0] zext_ln377_1_fu_293_p1;
wire   [20:0] p_Val2_4_fu_267_p4;
wire   [0:0] p_Result_5_fu_303_p3;
wire   [0:0] p_Result_4_fu_277_p3;
wire   [0:0] xor_ln896_2_fu_311_p2;
wire   [0:0] xor_ln888_fu_331_p2;
wire   [0:0] Range2_all_ones_5_fu_323_p3;
wire   [0:0] or_ln888_fu_337_p2;
wire   [0:0] tmp_12_fu_349_p3;
wire   [0:0] xor_ln890_1_fu_357_p2;
wire   [0:0] or_ln890_fu_363_p2;
wire   [0:0] carry_3_fu_317_p2;
wire   [0:0] deleted_zeros_1_fu_343_p2;
wire   [0:0] xor_ln895_2_fu_381_p2;
wire   [0:0] p_Result_3_fu_259_p3;
wire   [0:0] or_ln895_1_fu_387_p2;
wire   [0:0] xor_ln895_3_fu_393_p2;
wire   [0:0] deleted_ones_1_fu_369_p2;
wire   [0:0] xor_ln896_3_fu_405_p2;
wire   [0:0] and_ln891_1_fu_375_p2;
wire   [0:0] or_ln896_1_fu_411_p2;
wire   [0:0] xor_ln896_17_fu_417_p2;
wire   [0:0] underflow_1_fu_423_p2;
wire   [35:0] r_V_2_fu_134_p2;
wire   [0:0] tmp_15_fu_461_p3;
wire   [20:0] zext_ln377_2_fu_469_p1;
wire   [20:0] p_Val2_7_fu_443_p4;
wire   [0:0] p_Result_8_fu_479_p3;
wire   [0:0] p_Result_7_fu_453_p3;
wire   [0:0] xor_ln896_4_fu_487_p2;
wire   [0:0] xor_ln888_2_fu_507_p2;
wire   [0:0] Range2_all_ones_6_fu_499_p3;
wire   [0:0] or_ln888_1_fu_513_p2;
wire   [0:0] tmp_18_fu_525_p3;
wire   [0:0] xor_ln890_2_fu_533_p2;
wire   [0:0] or_ln890_1_fu_539_p2;
wire   [0:0] carry_5_fu_493_p2;
wire   [0:0] deleted_zeros_2_fu_519_p2;
wire   [0:0] xor_ln895_4_fu_557_p2;
wire   [0:0] p_Result_6_fu_435_p3;
wire   [0:0] or_ln895_2_fu_563_p2;
wire   [0:0] xor_ln895_5_fu_569_p2;
wire   [0:0] deleted_ones_2_fu_545_p2;
wire   [0:0] xor_ln896_5_fu_581_p2;
wire   [0:0] and_ln891_2_fu_551_p2;
wire   [0:0] or_ln896_2_fu_587_p2;
wire   [0:0] xor_ln896_18_fu_593_p2;
wire   [0:0] underflow_2_fu_599_p2;
wire  signed [20:0] shl_ln_fu_616_p1;
wire   [28:0] shl_ln_fu_616_p3;
wire  signed [29:0] sext_ln1273_fu_624_p1;
wire  signed [20:0] shl_ln1273_1_fu_634_p1;
wire   [21:0] shl_ln1273_1_fu_634_p3;
wire   [29:0] sub_ln1273_fu_628_p2;
wire  signed [29:0] sext_ln1273_1_fu_642_p1;
wire   [29:0] r_V_3_fu_646_p2;
wire   [15:0] p_Val2_11_fu_660_p4;
wire   [0:0] tmp_21_fu_682_p3;
wire   [16:0] zext_ln377_3_fu_690_p1;
wire  signed [16:0] sext_ln823_fu_670_p1;
wire   [0:0] p_Result_11_fu_700_p3;
wire   [0:0] p_Result_10_fu_674_p3;
wire   [0:0] xor_ln896_6_fu_708_p2;
wire   [0:0] xor_ln888_4_fu_728_p2;
wire   [0:0] Range2_all_ones_7_fu_720_p3;
wire   [0:0] or_ln888_2_fu_734_p2;
wire   [0:0] tmp_24_fu_746_p3;
wire   [0:0] xor_ln890_3_fu_754_p2;
wire   [0:0] or_ln890_2_fu_760_p2;
wire   [0:0] carry_7_fu_714_p2;
wire   [0:0] deleted_zeros_3_fu_740_p2;
wire   [0:0] xor_ln895_6_fu_778_p2;
wire   [0:0] p_Result_9_fu_652_p3;
wire   [0:0] or_ln895_3_fu_784_p2;
wire   [0:0] xor_ln895_7_fu_790_p2;
wire   [0:0] deleted_ones_3_fu_766_p2;
wire   [0:0] xor_ln896_7_fu_802_p2;
wire   [0:0] and_ln891_3_fu_772_p2;
wire   [0:0] or_ln896_3_fu_808_p2;
wire   [0:0] xor_ln896_19_fu_814_p2;
wire   [0:0] underflow_3_fu_820_p2;
wire   [32:0] r_V_4_fu_135_p2;
wire   [18:0] p_Val2_14_fu_840_p4;
wire   [0:0] tmp_27_fu_862_p3;
wire   [19:0] zext_ln377_4_fu_870_p1;
wire  signed [19:0] sext_ln823_1_fu_850_p1;
wire   [0:0] p_Result_14_fu_880_p3;
wire   [0:0] p_Result_13_fu_854_p3;
wire   [0:0] xor_ln896_8_fu_888_p2;
wire   [0:0] xor_ln888_6_fu_908_p2;
wire   [0:0] Range2_all_ones_8_fu_900_p3;
wire   [0:0] or_ln888_3_fu_914_p2;
wire   [0:0] tmp_30_fu_926_p3;
wire   [0:0] xor_ln890_4_fu_934_p2;
wire   [0:0] or_ln890_3_fu_940_p2;
wire   [0:0] carry_9_fu_894_p2;
wire   [0:0] deleted_zeros_4_fu_920_p2;
wire   [0:0] xor_ln895_8_fu_958_p2;
wire   [0:0] p_Result_12_fu_832_p3;
wire   [0:0] or_ln895_4_fu_964_p2;
wire   [0:0] xor_ln895_9_fu_970_p2;
wire   [0:0] deleted_ones_4_fu_946_p2;
wire   [0:0] xor_ln896_9_fu_982_p2;
wire   [0:0] and_ln891_4_fu_952_p2;
wire   [0:0] or_ln896_4_fu_988_p2;
wire   [0:0] xor_ln896_20_fu_994_p2;
wire   [0:0] underflow_4_fu_1000_p2;
wire   [36:0] r_V_fu_136_p2;
wire   [0:0] tmp_3_fu_1042_p3;
wire   [20:0] zext_ln377_fu_1050_p1;
wire   [20:0] p_Val2_1_fu_1024_p4;
wire   [0:0] p_Result_2_fu_1060_p3;
wire   [0:0] p_Result_1_fu_1034_p3;
wire   [0:0] xor_ln896_fu_1068_p2;
wire   [1:0] tmp_fu_1088_p4;
wire   [0:0] Range1_all_zeros_fu_1104_p2;
wire   [0:0] tmp_6_fu_1118_p3;
wire   [0:0] Range2_all_ones_fu_1080_p3;
wire   [0:0] xor_ln890_fu_1126_p2;
wire   [0:0] and_ln890_fu_1132_p2;
wire   [0:0] deleted_zeros_fu_1110_p3;
wire   [0:0] xor_ln895_fu_1146_p2;
wire   [0:0] or_ln895_fu_1152_p2;
wire   [0:0] xor_ln895_1_fu_1158_p2;
wire   [0:0] deleted_ones_fu_1138_p3;
wire   [0:0] xor_ln896_1_fu_1170_p2;
wire   [20:0] select_ln346_2_fu_1182_p3;
wire   [20:0] select_ln346_4_fu_1195_p3;
wire   [20:0] select_ln346_6_fu_1211_p3;
wire  signed [20:0] sext_ln856_fu_1208_p1;
wire   [20:0] select_ln346_8_fu_1228_p3;
wire  signed [20:0] sext_ln856_1_fu_1225_p1;
wire  signed [20:0] rhs_1_fu_1189_p3;
wire  signed [21:0] sext_ln813_1_fu_1242_p1;
wire   [21:0] ret_V_1_fu_1246_p2;
wire   [20:0] p_Val2_20_fu_1260_p2;
wire   [0:0] p_Result_17_fu_1252_p3;
wire   [0:0] p_Result_18_fu_1266_p3;
wire   [0:0] xor_ln895_11_fu_1274_p2;
wire   [0:0] xor_ln896_11_fu_1286_p2;
wire   [0:0] xor_ln302_2_fu_1298_p2;
wire   [0:0] overflow_6_fu_1280_p2;
wire   [0:0] xor_ln302_3_fu_1304_p2;
wire   [0:0] underflow_6_fu_1292_p2;
wire   [0:0] or_ln302_1_fu_1310_p2;
wire   [20:0] select_ln302_2_fu_1316_p3;
wire   [20:0] select_ln350_1_fu_1324_p3;
wire  signed [20:0] rhs_2_fu_1202_p3;
wire  signed [21:0] sext_ln813_2_fu_1340_p1;
wire   [21:0] ret_V_2_fu_1344_p2;
wire   [20:0] p_Val2_22_fu_1358_p2;
wire   [0:0] p_Result_19_fu_1350_p3;
wire   [0:0] p_Result_20_fu_1364_p3;
wire   [0:0] xor_ln895_12_fu_1372_p2;
wire   [0:0] xor_ln896_12_fu_1384_p2;
wire   [0:0] xor_ln302_4_fu_1396_p2;
wire   [0:0] overflow_7_fu_1378_p2;
wire   [0:0] xor_ln302_5_fu_1402_p2;
wire   [0:0] underflow_7_fu_1390_p2;
wire   [0:0] or_ln302_2_fu_1408_p2;
wire   [20:0] select_ln302_4_fu_1414_p3;
wire   [20:0] select_ln350_2_fu_1422_p3;
wire  signed [20:0] lhs_fu_1332_p3;
wire  signed [20:0] rhs_3_fu_1218_p3;
wire  signed [21:0] sext_ln813_4_fu_1442_p1;
wire  signed [21:0] sext_ln813_3_fu_1438_p1;
wire   [21:0] ret_V_3_fu_1446_p2;
wire   [20:0] p_Val2_24_fu_1460_p2;
wire   [0:0] p_Result_21_fu_1452_p3;
wire   [0:0] p_Result_22_fu_1466_p3;
wire   [0:0] xor_ln895_13_fu_1474_p2;
wire   [0:0] xor_ln896_13_fu_1486_p2;
wire   [0:0] xor_ln302_6_fu_1498_p2;
wire   [0:0] overflow_8_fu_1480_p2;
wire   [0:0] xor_ln302_7_fu_1504_p2;
wire   [0:0] underflow_8_fu_1492_p2;
wire   [0:0] or_ln302_3_fu_1510_p2;
wire   [20:0] select_ln302_6_fu_1516_p3;
wire   [20:0] select_ln350_3_fu_1524_p3;
wire  signed [20:0] lhs_1_fu_1430_p3;
wire  signed [20:0] rhs_4_fu_1235_p3;
wire  signed [21:0] sext_ln813_6_fu_1544_p1;
wire  signed [21:0] sext_ln813_5_fu_1540_p1;
wire   [21:0] ret_V_4_fu_1548_p2;
wire   [20:0] p_Val2_25_fu_1562_p2;
wire   [0:0] p_Result_23_fu_1554_p3;
wire   [0:0] p_Result_24_fu_1568_p3;
wire   [0:0] xor_ln895_14_fu_1576_p2;
wire   [0:0] xor_ln896_14_fu_1588_p2;
wire   [0:0] xor_ln302_8_fu_1600_p2;
wire   [0:0] overflow_9_fu_1582_p2;
wire   [0:0] xor_ln302_9_fu_1606_p2;
wire   [0:0] underflow_9_fu_1594_p2;
wire   [0:0] or_ln302_4_fu_1612_p2;
wire   [20:0] select_ln302_8_fu_1618_p3;
wire   [20:0] select_ln350_4_fu_1626_p3;
wire   [0:0] and_ln891_fu_1642_p2;
wire   [0:0] xor_ln896_16_fu_1646_p2;
wire   [0:0] underflow_fu_1651_p2;
wire   [0:0] or_ln346_fu_1663_p2;
wire   [20:0] select_ln346_fu_1656_p3;
wire  signed [20:0] rhs_fu_1668_p3;
wire  signed [21:0] sext_ln813_fu_1675_p1;
wire   [21:0] ret_V_fu_1679_p2;
wire   [20:0] p_Val2_17_fu_1693_p2;
wire   [0:0] p_Result_15_fu_1685_p3;
wire   [0:0] p_Result_16_fu_1699_p3;
wire   [0:0] xor_ln895_10_fu_1707_p2;
wire   [0:0] xor_ln896_10_fu_1719_p2;
wire   [0:0] xor_ln302_fu_1731_p2;
wire   [0:0] overflow_5_fu_1713_p2;
wire   [0:0] xor_ln302_1_fu_1737_p2;
wire   [0:0] underflow_5_fu_1725_p2;
wire   [0:0] or_ln302_fu_1743_p2;
wire   [20:0] select_ln302_fu_1749_p3;
wire   [20:0] select_ln350_fu_1757_p3;
wire  signed [21:0] sext_ln813_7_fu_1773_p1;
wire   [21:0] ret_V_5_fu_1776_p2;
wire   [20:0] p_Val2_29_fu_1790_p2;
wire   [0:0] p_Result_25_fu_1782_p3;
wire   [0:0] p_Result_26_fu_1795_p3;
wire   [0:0] xor_ln895_15_fu_1803_p2;
wire   [0:0] xor_ln896_15_fu_1815_p2;
wire   [0:0] xor_ln302_10_fu_1827_p2;
wire   [0:0] overflow_10_fu_1809_p2;
wire   [0:0] xor_ln302_11_fu_1833_p2;
wire   [0:0] underflow_10_fu_1821_p2;
wire   [0:0] or_ln302_5_fu_1839_p2;
wire   [20:0] select_ln302_10_fu_1845_p3;
wire   [20:0] select_ln350_5_fu_1853_p3;
wire   [20:0] p_Val2_18_fu_1765_p3;
wire   [20:0] select_ln302_11_fu_1861_p3;
reg    ap_ce_reg;
reg   [20:0] p_read_int_reg;
reg   [20:0] p_read1_int_reg;
reg  signed [20:0] p_read2_int_reg;
reg   [20:0] ap_return_0_int_reg;
reg   [20:0] ap_return_1_int_reg;
reg   [20:0] ap_return_2_int_reg;

motor_mul_21s_15s_36_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 36 ))
mul_21s_15s_36_1_0_U34(
    .din0(r_V_2_fu_134_p0),
    .din1(r_V_2_fu_134_p1),
    .dout(r_V_2_fu_134_p2)
);

motor_mul_21s_12ns_33_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 12 ),
    .dout_WIDTH( 33 ))
mul_21s_12ns_33_1_0_U35(
    .din0(p_read2_int_reg),
    .din1(r_V_4_fu_135_p1),
    .dout(r_V_4_fu_135_p2)
);

motor_mul_21s_16s_37_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 37 ))
mul_21s_16s_37_1_0_U36(
    .din0(p_read_8_reg_1886),
    .din1(r_V_fu_136_p1),
    .dout(r_V_fu_136_p2)
);

motor_mul_21s_15ns_36_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 36 ))
mul_21s_15ns_36_1_0_U37(
    .din0(r_V_1_fu_137_p0),
    .din1(r_V_1_fu_137_p1),
    .dout(r_V_1_fu_137_p2)
);

always @ (posedge ap_clk) begin
    ap_ce_reg <= ap_ce;
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        Range1_all_ones_reg_1966 <= Range1_all_ones_fu_1098_p2;
        carry_1_reg_1961 <= carry_1_fu_1074_p2;
        or_ln346_1_reg_1901 <= or_ln346_1_fu_429_p2;
        or_ln346_2_reg_1916 <= or_ln346_2_fu_605_p2;
        or_ln346_3_reg_1931 <= or_ln346_3_fu_826_p2;
        or_ln346_4_reg_1946 <= or_ln346_4_fu_1006_p2;
        or_ln896_reg_1977 <= or_ln896_fu_1176_p2;
        overflow_1_reg_1896 <= overflow_1_fu_399_p2;
        overflow_2_reg_1911 <= overflow_2_fu_575_p2;
        overflow_3_reg_1926 <= overflow_3_fu_796_p2;
        overflow_4_reg_1941 <= overflow_4_fu_976_p2;
        overflow_reg_1971 <= overflow_fu_1164_p2;
        p_Result_s_reg_1951 <= r_V_fu_136_p2[32'd36];
        p_Val2_12_reg_1921 <= p_Val2_12_fu_694_p2;
        p_Val2_15_reg_1936 <= p_Val2_15_fu_874_p2;
        p_Val2_26_reg_1982 <= p_Val2_26_fu_1532_p3;
        p_Val2_3_reg_1956 <= p_Val2_3_fu_1054_p2;
        p_Val2_6_reg_1891 <= p_Val2_6_fu_297_p2;
        p_Val2_9_reg_1906 <= p_Val2_9_fu_473_p2;
        p_Val2_s_reg_1987 <= p_Val2_s_fu_1634_p3;
        p_read_8_reg_1886 <= p_read_int_reg;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce_reg)) begin
        ap_return_0_int_reg <= p_Val2_26_reg_1982;
        ap_return_1_int_reg <= p_Val2_18_fu_1765_p3;
        ap_return_2_int_reg <= select_ln302_11_fu_1861_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        p_read1_int_reg <= p_read1;
        p_read2_int_reg <= p_read2;
        p_read_int_reg <= p_read;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_0 = ap_return_0_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_0 = p_Val2_26_reg_1982;
    end else begin
        ap_return_0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_1 = ap_return_1_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_1 = p_Val2_18_fu_1765_p3;
    end else begin
        ap_return_1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_2 = ap_return_2_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_2 = select_ln302_11_fu_1861_p3;
    end else begin
        ap_return_2 = 'bx;
    end
end

assign Range1_all_ones_fu_1098_p2 = ((tmp_fu_1088_p4 == 2'd3) ? 1'b1 : 1'b0);

assign Range1_all_zeros_fu_1104_p2 = ((tmp_fu_1088_p4 == 2'd0) ? 1'b1 : 1'b0);

assign Range2_all_ones_5_fu_323_p3 = r_V_1_fu_137_p2[32'd35];

assign Range2_all_ones_6_fu_499_p3 = r_V_2_fu_134_p2[32'd35];

assign Range2_all_ones_7_fu_720_p3 = r_V_3_fu_646_p2[32'd29];

assign Range2_all_ones_8_fu_900_p3 = r_V_4_fu_135_p2[32'd32];

assign Range2_all_ones_fu_1080_p3 = r_V_fu_136_p2[32'd36];

assign and_ln890_fu_1132_p2 = (xor_ln890_fu_1126_p2 & Range2_all_ones_fu_1080_p3);

assign and_ln891_1_fu_375_p2 = (carry_3_fu_317_p2 & Range2_all_ones_5_fu_323_p3);

assign and_ln891_2_fu_551_p2 = (carry_5_fu_493_p2 & Range2_all_ones_6_fu_499_p3);

assign and_ln891_3_fu_772_p2 = (carry_7_fu_714_p2 & Range2_all_ones_7_fu_720_p3);

assign and_ln891_4_fu_952_p2 = (carry_9_fu_894_p2 & Range2_all_ones_8_fu_900_p3);

assign and_ln891_fu_1642_p2 = (carry_1_reg_1961 & Range1_all_ones_reg_1966);

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign carry_1_fu_1074_p2 = (xor_ln896_fu_1068_p2 & p_Result_1_fu_1034_p3);

assign carry_3_fu_317_p2 = (xor_ln896_2_fu_311_p2 & p_Result_4_fu_277_p3);

assign carry_5_fu_493_p2 = (xor_ln896_4_fu_487_p2 & p_Result_7_fu_453_p3);

assign carry_7_fu_714_p2 = (xor_ln896_6_fu_708_p2 & p_Result_10_fu_674_p3);

assign carry_9_fu_894_p2 = (xor_ln896_8_fu_888_p2 & p_Result_13_fu_854_p3);

assign deleted_ones_1_fu_369_p2 = (or_ln890_fu_363_p2 & Range2_all_ones_5_fu_323_p3);

assign deleted_ones_2_fu_545_p2 = (or_ln890_1_fu_539_p2 & Range2_all_ones_6_fu_499_p3);

assign deleted_ones_3_fu_766_p2 = (or_ln890_2_fu_760_p2 & Range2_all_ones_7_fu_720_p3);

assign deleted_ones_4_fu_946_p2 = (or_ln890_3_fu_940_p2 & Range2_all_ones_8_fu_900_p3);

assign deleted_ones_fu_1138_p3 = ((carry_1_fu_1074_p2[0:0] == 1'b1) ? and_ln890_fu_1132_p2 : Range1_all_ones_fu_1098_p2);

assign deleted_zeros_1_fu_343_p2 = (or_ln888_fu_337_p2 ^ Range2_all_ones_5_fu_323_p3);

assign deleted_zeros_2_fu_519_p2 = (or_ln888_1_fu_513_p2 ^ Range2_all_ones_6_fu_499_p3);

assign deleted_zeros_3_fu_740_p2 = (or_ln888_2_fu_734_p2 ^ Range2_all_ones_7_fu_720_p3);

assign deleted_zeros_4_fu_920_p2 = (or_ln888_3_fu_914_p2 ^ Range2_all_ones_8_fu_900_p3);

assign deleted_zeros_fu_1110_p3 = ((carry_1_fu_1074_p2[0:0] == 1'b1) ? Range1_all_ones_fu_1098_p2 : Range1_all_zeros_fu_1104_p2);

assign lhs_1_fu_1430_p3 = ((or_ln302_2_fu_1408_p2[0:0] == 1'b1) ? select_ln302_4_fu_1414_p3 : select_ln350_2_fu_1422_p3);

assign lhs_fu_1332_p3 = ((or_ln302_1_fu_1310_p2[0:0] == 1'b1) ? select_ln302_2_fu_1316_p3 : select_ln350_1_fu_1324_p3);

assign or_ln302_1_fu_1310_p2 = (xor_ln302_3_fu_1304_p2 | overflow_6_fu_1280_p2);

assign or_ln302_2_fu_1408_p2 = (xor_ln302_5_fu_1402_p2 | overflow_7_fu_1378_p2);

assign or_ln302_3_fu_1510_p2 = (xor_ln302_7_fu_1504_p2 | overflow_8_fu_1480_p2);

assign or_ln302_4_fu_1612_p2 = (xor_ln302_9_fu_1606_p2 | overflow_9_fu_1582_p2);

assign or_ln302_5_fu_1839_p2 = (xor_ln302_11_fu_1833_p2 | overflow_10_fu_1809_p2);

assign or_ln302_fu_1743_p2 = (xor_ln302_1_fu_1737_p2 | overflow_5_fu_1713_p2);

assign or_ln346_1_fu_429_p2 = (underflow_1_fu_423_p2 | overflow_1_fu_399_p2);

assign or_ln346_2_fu_605_p2 = (underflow_2_fu_599_p2 | overflow_2_fu_575_p2);

assign or_ln346_3_fu_826_p2 = (underflow_3_fu_820_p2 | overflow_3_fu_796_p2);

assign or_ln346_4_fu_1006_p2 = (underflow_4_fu_1000_p2 | overflow_4_fu_976_p2);

assign or_ln346_fu_1663_p2 = (underflow_fu_1651_p2 | overflow_reg_1971);

assign or_ln888_1_fu_513_p2 = (xor_ln888_2_fu_507_p2 | p_Result_8_fu_479_p3);

assign or_ln888_2_fu_734_p2 = (xor_ln888_4_fu_728_p2 | p_Result_11_fu_700_p3);

assign or_ln888_3_fu_914_p2 = (xor_ln888_6_fu_908_p2 | p_Result_14_fu_880_p3);

assign or_ln888_fu_337_p2 = (xor_ln888_fu_331_p2 | p_Result_5_fu_303_p3);

assign or_ln890_1_fu_539_p2 = (xor_ln890_2_fu_533_p2 | or_ln888_1_fu_513_p2);

assign or_ln890_2_fu_760_p2 = (xor_ln890_3_fu_754_p2 | or_ln888_2_fu_734_p2);

assign or_ln890_3_fu_940_p2 = (xor_ln890_4_fu_934_p2 | or_ln888_3_fu_914_p2);

assign or_ln890_fu_363_p2 = (xor_ln890_1_fu_357_p2 | or_ln888_fu_337_p2);

assign or_ln895_1_fu_387_p2 = (xor_ln895_2_fu_381_p2 | p_Result_5_fu_303_p3);

assign or_ln895_2_fu_563_p2 = (xor_ln895_4_fu_557_p2 | p_Result_8_fu_479_p3);

assign or_ln895_3_fu_784_p2 = (xor_ln895_6_fu_778_p2 | p_Result_11_fu_700_p3);

assign or_ln895_4_fu_964_p2 = (xor_ln895_8_fu_958_p2 | p_Result_14_fu_880_p3);

assign or_ln895_fu_1152_p2 = (xor_ln895_fu_1146_p2 | p_Result_2_fu_1060_p3);

assign or_ln896_1_fu_411_p2 = (xor_ln896_3_fu_405_p2 | xor_ln896_2_fu_311_p2);

assign or_ln896_2_fu_587_p2 = (xor_ln896_5_fu_581_p2 | xor_ln896_4_fu_487_p2);

assign or_ln896_3_fu_808_p2 = (xor_ln896_7_fu_802_p2 | xor_ln896_6_fu_708_p2);

assign or_ln896_4_fu_988_p2 = (xor_ln896_9_fu_982_p2 | xor_ln896_8_fu_888_p2);

assign or_ln896_fu_1176_p2 = (xor_ln896_fu_1068_p2 | xor_ln896_1_fu_1170_p2);

assign overflow_10_fu_1809_p2 = (xor_ln895_15_fu_1803_p2 & p_Result_26_fu_1795_p3);

assign overflow_1_fu_399_p2 = (xor_ln895_3_fu_393_p2 & or_ln895_1_fu_387_p2);

assign overflow_2_fu_575_p2 = (xor_ln895_5_fu_569_p2 & or_ln895_2_fu_563_p2);

assign overflow_3_fu_796_p2 = (xor_ln895_7_fu_790_p2 & or_ln895_3_fu_784_p2);

assign overflow_4_fu_976_p2 = (xor_ln895_9_fu_970_p2 & or_ln895_4_fu_964_p2);

assign overflow_5_fu_1713_p2 = (xor_ln895_10_fu_1707_p2 & p_Result_16_fu_1699_p3);

assign overflow_6_fu_1280_p2 = (xor_ln895_11_fu_1274_p2 & p_Result_18_fu_1266_p3);

assign overflow_7_fu_1378_p2 = (xor_ln895_12_fu_1372_p2 & p_Result_20_fu_1364_p3);

assign overflow_8_fu_1480_p2 = (xor_ln895_13_fu_1474_p2 & p_Result_22_fu_1466_p3);

assign overflow_9_fu_1582_p2 = (xor_ln895_14_fu_1576_p2 & p_Result_24_fu_1568_p3);

assign overflow_fu_1164_p2 = (xor_ln895_1_fu_1158_p2 & or_ln895_fu_1152_p2);

assign p_Result_10_fu_674_p3 = r_V_3_fu_646_p2[32'd29];

assign p_Result_11_fu_700_p3 = p_Val2_12_fu_694_p2[32'd16];

assign p_Result_12_fu_832_p3 = r_V_4_fu_135_p2[32'd32];

assign p_Result_13_fu_854_p3 = r_V_4_fu_135_p2[32'd32];

assign p_Result_14_fu_880_p3 = p_Val2_15_fu_874_p2[32'd19];

assign p_Result_15_fu_1685_p3 = ret_V_fu_1679_p2[32'd21];

assign p_Result_16_fu_1699_p3 = p_Val2_17_fu_1693_p2[32'd20];

assign p_Result_17_fu_1252_p3 = ret_V_1_fu_1246_p2[32'd21];

assign p_Result_18_fu_1266_p3 = p_Val2_20_fu_1260_p2[32'd20];

assign p_Result_19_fu_1350_p3 = ret_V_2_fu_1344_p2[32'd21];

assign p_Result_1_fu_1034_p3 = r_V_fu_136_p2[32'd34];

assign p_Result_20_fu_1364_p3 = p_Val2_22_fu_1358_p2[32'd20];

assign p_Result_21_fu_1452_p3 = ret_V_3_fu_1446_p2[32'd21];

assign p_Result_22_fu_1466_p3 = p_Val2_24_fu_1460_p2[32'd20];

assign p_Result_23_fu_1554_p3 = ret_V_4_fu_1548_p2[32'd21];

assign p_Result_24_fu_1568_p3 = p_Val2_25_fu_1562_p2[32'd20];

assign p_Result_25_fu_1782_p3 = ret_V_5_fu_1776_p2[32'd21];

assign p_Result_26_fu_1795_p3 = p_Val2_29_fu_1790_p2[32'd20];

assign p_Result_2_fu_1060_p3 = p_Val2_3_fu_1054_p2[32'd20];

assign p_Result_3_fu_259_p3 = r_V_1_fu_137_p2[32'd35];

assign p_Result_4_fu_277_p3 = r_V_1_fu_137_p2[32'd34];

assign p_Result_5_fu_303_p3 = p_Val2_6_fu_297_p2[32'd20];

assign p_Result_6_fu_435_p3 = r_V_2_fu_134_p2[32'd35];

assign p_Result_7_fu_453_p3 = r_V_2_fu_134_p2[32'd34];

assign p_Result_8_fu_479_p3 = p_Val2_9_fu_473_p2[32'd20];

assign p_Result_9_fu_652_p3 = r_V_3_fu_646_p2[32'd29];

assign p_Result_s_fu_1016_p3 = r_V_fu_136_p2[32'd36];

assign p_Val2_11_fu_660_p4 = {{r_V_3_fu_646_p2[29:14]}};

assign p_Val2_12_fu_694_p2 = ($signed(zext_ln377_3_fu_690_p1) + $signed(sext_ln823_fu_670_p1));

assign p_Val2_14_fu_840_p4 = {{r_V_4_fu_135_p2[32:14]}};

assign p_Val2_15_fu_874_p2 = ($signed(zext_ln377_4_fu_870_p1) + $signed(sext_ln823_1_fu_850_p1));

assign p_Val2_17_fu_1693_p2 = ($signed(rhs_fu_1668_p3) + $signed(21'd4935));

assign p_Val2_18_fu_1765_p3 = ((or_ln302_fu_1743_p2[0:0] == 1'b1) ? select_ln302_fu_1749_p3 : select_ln350_fu_1757_p3);

assign p_Val2_1_fu_1024_p4 = {{r_V_fu_136_p2[34:14]}};

assign p_Val2_20_fu_1260_p2 = ($signed(rhs_1_fu_1189_p3) + $signed(21'd115));

assign p_Val2_22_fu_1358_p2 = ($signed(rhs_2_fu_1202_p3) + $signed(21'd6783));

assign p_Val2_24_fu_1460_p2 = ($signed(rhs_3_fu_1218_p3) + $signed(lhs_fu_1332_p3));

assign p_Val2_25_fu_1562_p2 = ($signed(rhs_4_fu_1235_p3) + $signed(lhs_1_fu_1430_p3));

assign p_Val2_26_fu_1532_p3 = ((or_ln302_3_fu_1510_p2[0:0] == 1'b1) ? select_ln302_6_fu_1516_p3 : select_ln350_3_fu_1524_p3);

assign p_Val2_29_fu_1790_p2 = ($signed(p_Val2_s_reg_1987) + $signed(21'd3684));

assign p_Val2_3_fu_1054_p2 = (zext_ln377_fu_1050_p1 + p_Val2_1_fu_1024_p4);

assign p_Val2_4_fu_267_p4 = {{r_V_1_fu_137_p2[34:14]}};

assign p_Val2_6_fu_297_p2 = (zext_ln377_1_fu_293_p1 + p_Val2_4_fu_267_p4);

assign p_Val2_7_fu_443_p4 = {{r_V_2_fu_134_p2[34:14]}};

assign p_Val2_9_fu_473_p2 = (zext_ln377_2_fu_469_p1 + p_Val2_7_fu_443_p4);

assign p_Val2_s_fu_1634_p3 = ((or_ln302_4_fu_1612_p2[0:0] == 1'b1) ? select_ln302_8_fu_1618_p3 : select_ln350_4_fu_1626_p3);

assign r_V_1_fu_137_p0 = sext_ln70_1_fu_253_p1;

assign r_V_1_fu_137_p1 = 36'd10247;

assign r_V_2_fu_134_p0 = sext_ln70_1_fu_253_p1;

assign r_V_2_fu_134_p1 = 36'd68719467991;

assign r_V_3_fu_646_p2 = ($signed(sub_ln1273_fu_628_p2) - $signed(sext_ln1273_1_fu_642_p1));

assign r_V_4_fu_135_p1 = 33'd1444;

assign r_V_fu_136_p1 = 37'd137438929758;

assign ret_V_1_fu_1246_p2 = ($signed(sext_ln813_1_fu_1242_p1) + $signed(22'd115));

assign ret_V_2_fu_1344_p2 = ($signed(sext_ln813_2_fu_1340_p1) + $signed(22'd6783));

assign ret_V_3_fu_1446_p2 = ($signed(sext_ln813_4_fu_1442_p1) + $signed(sext_ln813_3_fu_1438_p1));

assign ret_V_4_fu_1548_p2 = ($signed(sext_ln813_6_fu_1544_p1) + $signed(sext_ln813_5_fu_1540_p1));

assign ret_V_5_fu_1776_p2 = ($signed(sext_ln813_7_fu_1773_p1) + $signed(22'd3684));

assign ret_V_fu_1679_p2 = ($signed(sext_ln813_fu_1675_p1) + $signed(22'd4935));

assign rhs_1_fu_1189_p3 = ((or_ln346_1_reg_1901[0:0] == 1'b1) ? select_ln346_2_fu_1182_p3 : p_Val2_6_reg_1891);

assign rhs_2_fu_1202_p3 = ((or_ln346_2_reg_1916[0:0] == 1'b1) ? select_ln346_4_fu_1195_p3 : p_Val2_9_reg_1906);

assign rhs_3_fu_1218_p3 = ((or_ln346_3_reg_1931[0:0] == 1'b1) ? select_ln346_6_fu_1211_p3 : sext_ln856_fu_1208_p1);

assign rhs_4_fu_1235_p3 = ((or_ln346_4_reg_1946[0:0] == 1'b1) ? select_ln346_8_fu_1228_p3 : sext_ln856_1_fu_1225_p1);

assign rhs_fu_1668_p3 = ((or_ln346_fu_1663_p2[0:0] == 1'b1) ? select_ln346_fu_1656_p3 : p_Val2_3_reg_1956);

assign select_ln302_10_fu_1845_p3 = ((xor_ln302_10_fu_1827_p2[0:0] == 1'b1) ? 21'd1048575 : p_Val2_29_fu_1790_p2);

assign select_ln302_11_fu_1861_p3 = ((or_ln302_5_fu_1839_p2[0:0] == 1'b1) ? select_ln302_10_fu_1845_p3 : select_ln350_5_fu_1853_p3);

assign select_ln302_2_fu_1316_p3 = ((xor_ln302_2_fu_1298_p2[0:0] == 1'b1) ? 21'd1048575 : p_Val2_20_fu_1260_p2);

assign select_ln302_4_fu_1414_p3 = ((xor_ln302_4_fu_1396_p2[0:0] == 1'b1) ? 21'd1048575 : p_Val2_22_fu_1358_p2);

assign select_ln302_6_fu_1516_p3 = ((xor_ln302_6_fu_1498_p2[0:0] == 1'b1) ? 21'd1048575 : p_Val2_24_fu_1460_p2);

assign select_ln302_8_fu_1618_p3 = ((xor_ln302_8_fu_1600_p2[0:0] == 1'b1) ? 21'd1048575 : p_Val2_25_fu_1562_p2);

assign select_ln302_fu_1749_p3 = ((xor_ln302_fu_1731_p2[0:0] == 1'b1) ? 21'd1048575 : p_Val2_17_fu_1693_p2);

assign select_ln346_2_fu_1182_p3 = ((overflow_1_reg_1896[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_4_fu_1195_p3 = ((overflow_2_reg_1911[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_6_fu_1211_p3 = ((overflow_3_reg_1926[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_8_fu_1228_p3 = ((overflow_4_reg_1941[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_fu_1656_p3 = ((overflow_reg_1971[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln350_1_fu_1324_p3 = ((underflow_6_fu_1292_p2[0:0] == 1'b1) ? 21'd1048576 : p_Val2_20_fu_1260_p2);

assign select_ln350_2_fu_1422_p3 = ((underflow_7_fu_1390_p2[0:0] == 1'b1) ? 21'd1048576 : p_Val2_22_fu_1358_p2);

assign select_ln350_3_fu_1524_p3 = ((underflow_8_fu_1492_p2[0:0] == 1'b1) ? 21'd1048576 : p_Val2_24_fu_1460_p2);

assign select_ln350_4_fu_1626_p3 = ((underflow_9_fu_1594_p2[0:0] == 1'b1) ? 21'd1048576 : p_Val2_25_fu_1562_p2);

assign select_ln350_5_fu_1853_p3 = ((underflow_10_fu_1821_p2[0:0] == 1'b1) ? 21'd1048576 : p_Val2_29_fu_1790_p2);

assign select_ln350_fu_1757_p3 = ((underflow_5_fu_1725_p2[0:0] == 1'b1) ? 21'd1048576 : p_Val2_17_fu_1693_p2);

assign sext_ln1273_1_fu_642_p1 = $signed(shl_ln1273_1_fu_634_p3);

assign sext_ln1273_fu_624_p1 = $signed(shl_ln_fu_616_p3);

assign sext_ln70_1_fu_253_p1 = $signed(p_read1_int_reg);

assign sext_ln813_1_fu_1242_p1 = rhs_1_fu_1189_p3;

assign sext_ln813_2_fu_1340_p1 = rhs_2_fu_1202_p3;

assign sext_ln813_3_fu_1438_p1 = lhs_fu_1332_p3;

assign sext_ln813_4_fu_1442_p1 = rhs_3_fu_1218_p3;

assign sext_ln813_5_fu_1540_p1 = lhs_1_fu_1430_p3;

assign sext_ln813_6_fu_1544_p1 = rhs_4_fu_1235_p3;

assign sext_ln813_7_fu_1773_p1 = p_Val2_s_reg_1987;

assign sext_ln813_fu_1675_p1 = rhs_fu_1668_p3;

assign sext_ln823_1_fu_850_p1 = $signed(p_Val2_14_fu_840_p4);

assign sext_ln823_fu_670_p1 = $signed(p_Val2_11_fu_660_p4);

assign sext_ln856_1_fu_1225_p1 = p_Val2_15_reg_1936;

assign sext_ln856_fu_1208_p1 = p_Val2_12_reg_1921;

assign shl_ln1273_1_fu_634_p1 = p_read2_int_reg;

assign shl_ln1273_1_fu_634_p3 = {{shl_ln1273_1_fu_634_p1}, {1'd0}};

assign shl_ln_fu_616_p1 = p_read2_int_reg;

assign shl_ln_fu_616_p3 = {{shl_ln_fu_616_p1}, {8'd0}};

assign sub_ln1273_fu_628_p2 = ($signed(30'd0) - $signed(sext_ln1273_fu_624_p1));

assign tmp_12_fu_349_p3 = r_V_1_fu_137_p2[32'd35];

assign tmp_15_fu_461_p3 = r_V_2_fu_134_p2[32'd13];

assign tmp_18_fu_525_p3 = r_V_2_fu_134_p2[32'd35];

assign tmp_21_fu_682_p3 = r_V_3_fu_646_p2[32'd13];

assign tmp_24_fu_746_p3 = r_V_3_fu_646_p2[32'd29];

assign tmp_27_fu_862_p3 = r_V_4_fu_135_p2[32'd13];

assign tmp_30_fu_926_p3 = r_V_4_fu_135_p2[32'd32];

assign tmp_3_fu_1042_p3 = r_V_fu_136_p2[32'd13];

assign tmp_6_fu_1118_p3 = r_V_fu_136_p2[32'd35];

assign tmp_9_fu_285_p3 = r_V_1_fu_137_p2[32'd13];

assign tmp_fu_1088_p4 = {{r_V_fu_136_p2[36:35]}};

assign underflow_10_fu_1821_p2 = (xor_ln896_15_fu_1815_p2 & p_Result_25_fu_1782_p3);

assign underflow_1_fu_423_p2 = (xor_ln896_17_fu_417_p2 & p_Result_3_fu_259_p3);

assign underflow_2_fu_599_p2 = (xor_ln896_18_fu_593_p2 & p_Result_6_fu_435_p3);

assign underflow_3_fu_820_p2 = (xor_ln896_19_fu_814_p2 & p_Result_9_fu_652_p3);

assign underflow_4_fu_1000_p2 = (xor_ln896_20_fu_994_p2 & p_Result_12_fu_832_p3);

assign underflow_5_fu_1725_p2 = (xor_ln896_10_fu_1719_p2 & p_Result_15_fu_1685_p3);

assign underflow_6_fu_1292_p2 = (xor_ln896_11_fu_1286_p2 & p_Result_17_fu_1252_p3);

assign underflow_7_fu_1390_p2 = (xor_ln896_12_fu_1384_p2 & p_Result_19_fu_1350_p3);

assign underflow_8_fu_1492_p2 = (xor_ln896_13_fu_1486_p2 & p_Result_21_fu_1452_p3);

assign underflow_9_fu_1594_p2 = (xor_ln896_14_fu_1588_p2 & p_Result_23_fu_1554_p3);

assign underflow_fu_1651_p2 = (xor_ln896_16_fu_1646_p2 & p_Result_s_reg_1951);

assign xor_ln302_10_fu_1827_p2 = (p_Result_26_fu_1795_p3 ^ p_Result_25_fu_1782_p3);

assign xor_ln302_11_fu_1833_p2 = (xor_ln302_10_fu_1827_p2 ^ 1'd1);

assign xor_ln302_1_fu_1737_p2 = (xor_ln302_fu_1731_p2 ^ 1'd1);

assign xor_ln302_2_fu_1298_p2 = (p_Result_18_fu_1266_p3 ^ p_Result_17_fu_1252_p3);

assign xor_ln302_3_fu_1304_p2 = (xor_ln302_2_fu_1298_p2 ^ 1'd1);

assign xor_ln302_4_fu_1396_p2 = (p_Result_20_fu_1364_p3 ^ p_Result_19_fu_1350_p3);

assign xor_ln302_5_fu_1402_p2 = (xor_ln302_4_fu_1396_p2 ^ 1'd1);

assign xor_ln302_6_fu_1498_p2 = (p_Result_22_fu_1466_p3 ^ p_Result_21_fu_1452_p3);

assign xor_ln302_7_fu_1504_p2 = (xor_ln302_6_fu_1498_p2 ^ 1'd1);

assign xor_ln302_8_fu_1600_p2 = (p_Result_24_fu_1568_p3 ^ p_Result_23_fu_1554_p3);

assign xor_ln302_9_fu_1606_p2 = (xor_ln302_8_fu_1600_p2 ^ 1'd1);

assign xor_ln302_fu_1731_p2 = (p_Result_16_fu_1699_p3 ^ p_Result_15_fu_1685_p3);

assign xor_ln888_2_fu_507_p2 = (p_Result_7_fu_453_p3 ^ 1'd1);

assign xor_ln888_4_fu_728_p2 = (p_Result_10_fu_674_p3 ^ 1'd1);

assign xor_ln888_6_fu_908_p2 = (p_Result_13_fu_854_p3 ^ 1'd1);

assign xor_ln888_fu_331_p2 = (p_Result_4_fu_277_p3 ^ 1'd1);

assign xor_ln890_1_fu_357_p2 = (tmp_12_fu_349_p3 ^ 1'd1);

assign xor_ln890_2_fu_533_p2 = (tmp_18_fu_525_p3 ^ 1'd1);

assign xor_ln890_3_fu_754_p2 = (tmp_24_fu_746_p3 ^ 1'd1);

assign xor_ln890_4_fu_934_p2 = (tmp_30_fu_926_p3 ^ 1'd1);

assign xor_ln890_fu_1126_p2 = (tmp_6_fu_1118_p3 ^ 1'd1);

assign xor_ln895_10_fu_1707_p2 = (p_Result_15_fu_1685_p3 ^ 1'd1);

assign xor_ln895_11_fu_1274_p2 = (p_Result_17_fu_1252_p3 ^ 1'd1);

assign xor_ln895_12_fu_1372_p2 = (p_Result_19_fu_1350_p3 ^ 1'd1);

assign xor_ln895_13_fu_1474_p2 = (p_Result_21_fu_1452_p3 ^ 1'd1);

assign xor_ln895_14_fu_1576_p2 = (p_Result_23_fu_1554_p3 ^ 1'd1);

assign xor_ln895_15_fu_1803_p2 = (p_Result_25_fu_1782_p3 ^ 1'd1);

assign xor_ln895_1_fu_1158_p2 = (p_Result_s_fu_1016_p3 ^ 1'd1);

assign xor_ln895_2_fu_381_p2 = (deleted_zeros_1_fu_343_p2 ^ 1'd1);

assign xor_ln895_3_fu_393_p2 = (p_Result_3_fu_259_p3 ^ 1'd1);

assign xor_ln895_4_fu_557_p2 = (deleted_zeros_2_fu_519_p2 ^ 1'd1);

assign xor_ln895_5_fu_569_p2 = (p_Result_6_fu_435_p3 ^ 1'd1);

assign xor_ln895_6_fu_778_p2 = (deleted_zeros_3_fu_740_p2 ^ 1'd1);

assign xor_ln895_7_fu_790_p2 = (p_Result_9_fu_652_p3 ^ 1'd1);

assign xor_ln895_8_fu_958_p2 = (deleted_zeros_4_fu_920_p2 ^ 1'd1);

assign xor_ln895_9_fu_970_p2 = (p_Result_12_fu_832_p3 ^ 1'd1);

assign xor_ln895_fu_1146_p2 = (deleted_zeros_fu_1110_p3 ^ 1'd1);

assign xor_ln896_10_fu_1719_p2 = (p_Result_16_fu_1699_p3 ^ 1'd1);

assign xor_ln896_11_fu_1286_p2 = (p_Result_18_fu_1266_p3 ^ 1'd1);

assign xor_ln896_12_fu_1384_p2 = (p_Result_20_fu_1364_p3 ^ 1'd1);

assign xor_ln896_13_fu_1486_p2 = (p_Result_22_fu_1466_p3 ^ 1'd1);

assign xor_ln896_14_fu_1588_p2 = (p_Result_24_fu_1568_p3 ^ 1'd1);

assign xor_ln896_15_fu_1815_p2 = (p_Result_26_fu_1795_p3 ^ 1'd1);

assign xor_ln896_16_fu_1646_p2 = (or_ln896_reg_1977 ^ and_ln891_fu_1642_p2);

assign xor_ln896_17_fu_417_p2 = (or_ln896_1_fu_411_p2 ^ and_ln891_1_fu_375_p2);

assign xor_ln896_18_fu_593_p2 = (or_ln896_2_fu_587_p2 ^ and_ln891_2_fu_551_p2);

assign xor_ln896_19_fu_814_p2 = (or_ln896_3_fu_808_p2 ^ and_ln891_3_fu_772_p2);

assign xor_ln896_1_fu_1170_p2 = (deleted_ones_fu_1138_p3 ^ 1'd1);

assign xor_ln896_20_fu_994_p2 = (or_ln896_4_fu_988_p2 ^ and_ln891_4_fu_952_p2);

assign xor_ln896_2_fu_311_p2 = (p_Result_5_fu_303_p3 ^ 1'd1);

assign xor_ln896_3_fu_405_p2 = (deleted_ones_1_fu_369_p2 ^ 1'd1);

assign xor_ln896_4_fu_487_p2 = (p_Result_8_fu_479_p3 ^ 1'd1);

assign xor_ln896_5_fu_581_p2 = (deleted_ones_2_fu_545_p2 ^ 1'd1);

assign xor_ln896_6_fu_708_p2 = (p_Result_11_fu_700_p3 ^ 1'd1);

assign xor_ln896_7_fu_802_p2 = (deleted_ones_3_fu_766_p2 ^ 1'd1);

assign xor_ln896_8_fu_888_p2 = (p_Result_14_fu_880_p3 ^ 1'd1);

assign xor_ln896_9_fu_982_p2 = (deleted_ones_4_fu_946_p2 ^ 1'd1);

assign xor_ln896_fu_1068_p2 = (p_Result_2_fu_1060_p3 ^ 1'd1);

assign zext_ln377_1_fu_293_p1 = tmp_9_fu_285_p3;

assign zext_ln377_2_fu_469_p1 = tmp_15_fu_461_p3;

assign zext_ln377_3_fu_690_p1 = tmp_21_fu_682_p3;

assign zext_ln377_4_fu_870_p1 = tmp_27_fu_862_p3;

assign zext_ln377_fu_1050_p1 = tmp_3_fu_1042_p3;

endmodule //motor_dense_latency_ap_fixed_21_7_0_0_0_ap_fixed_21_7_0_0_0_config8_s
