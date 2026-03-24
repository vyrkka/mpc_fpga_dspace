module der_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s (
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
input  [14:0] p_read;
input  [14:0] p_read1;
input  [14:0] p_read2;
input  [14:0] p_read3;
output  [14:0] ap_return_0;
output  [14:0] ap_return_1;

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
reg    ap_block_pp0_stage1_subdone;
wire  signed [14:0] rhs_fu_423_p3;
reg  signed [14:0] rhs_reg_1564;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire  signed [10:0] p_Val2_4111_fu_491_p2;
reg  signed [10:0] p_Val2_4111_reg_1570;
wire   [0:0] overflow_1418_fu_593_p2;
reg   [0:0] overflow_1418_reg_1575;
wire   [0:0] or_ln346_703_fu_623_p2;
reg   [0:0] or_ln346_703_reg_1580;
wire  signed [14:0] rhs_703_fu_776_p3;
reg  signed [14:0] rhs_703_reg_1585;
wire  signed [14:0] rhs_704_fu_977_p3;
reg  signed [14:0] rhs_704_reg_1591;
wire  signed [14:0] rhs_705_fu_1149_p3;
reg  signed [14:0] rhs_705_reg_1597;
wire    ap_block_pp0_stage1_11001;
wire   [14:0] p_Val2_4129_fu_1349_p3;
reg   [14:0] p_Val2_4129_reg_1603;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_block_pp0_stage0_subdone;
reg   [14:0] ap_port_reg_p_read3;
reg  signed [14:0] grp_fu_116_p0;
wire  signed [25:0] sext_ln70_fu_629_p1;
wire  signed [25:0] sext_ln70_2_fu_1002_p1;
reg   [10:0] grp_fu_116_p1;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire  signed [8:0] r_V_fu_117_p1;
wire  signed [9:0] r_V_698_fu_118_p1;
wire   [25:0] grp_fu_116_p2;
wire   [23:0] r_V_fu_117_p2;
wire   [12:0] p_Val2_4107_fu_239_p4;
wire   [0:0] tmp_fu_261_p3;
wire   [13:0] zext_ln377_fu_269_p1;
wire  signed [13:0] sext_ln823_fu_249_p1;
wire  signed [13:0] p_Val2_4108_fu_273_p2;
wire   [0:0] p_Result_3544_fu_283_p3;
wire   [0:0] p_Result_3543_fu_253_p3;
wire   [0:0] xor_ln896_fu_291_p2;
wire   [0:0] xor_ln888_fu_311_p2;
wire   [0:0] Range2_all_ones_fu_303_p3;
wire   [0:0] or_ln888_fu_317_p2;
wire   [0:0] tmp_5661_fu_329_p3;
wire   [0:0] xor_ln890_fu_337_p2;
wire   [0:0] or_ln890_fu_343_p2;
wire   [0:0] carry_1396_fu_297_p2;
wire   [0:0] deleted_zeros_fu_323_p2;
wire   [0:0] xor_ln895_fu_361_p2;
wire   [0:0] p_Result_s_fu_231_p3;
wire   [0:0] or_ln895_fu_367_p2;
wire   [0:0] xor_ln895_2123_fu_373_p2;
wire   [0:0] deleted_ones_fu_349_p2;
wire   [0:0] xor_ln896_2123_fu_385_p2;
wire   [0:0] and_ln891_fu_355_p2;
wire   [0:0] or_ln896_fu_391_p2;
wire   [0:0] xor_ln896_2237_fu_397_p2;
wire   [0:0] overflow_fu_379_p2;
wire   [0:0] underflow_fu_403_p2;
wire   [0:0] or_ln346_fu_417_p2;
wire   [14:0] select_ln346_1034_fu_409_p3;
wire  signed [14:0] sext_ln856_fu_279_p1;
wire  signed [14:0] shl_ln_fu_431_p1;
wire   [19:0] shl_ln_fu_431_p3;
wire  signed [20:0] sext_ln1273_409_fu_439_p1;
wire   [20:0] r_V_696_fu_443_p2;
wire   [9:0] p_Val2_4110_fu_457_p4;
wire   [0:0] tmp_5664_fu_479_p3;
wire   [10:0] zext_ln377_703_fu_487_p1;
wire  signed [10:0] sext_ln823_289_fu_467_p1;
wire   [0:0] p_Result_3547_fu_497_p3;
wire   [0:0] p_Result_3546_fu_471_p3;
wire   [0:0] xor_ln896_2124_fu_505_p2;
wire   [0:0] xor_ln888_1247_fu_525_p2;
wire   [0:0] Range2_all_ones_1318_fu_517_p3;
wire   [0:0] or_ln888_625_fu_531_p2;
wire   [0:0] tmp_5667_fu_543_p3;
wire   [0:0] xor_ln890_703_fu_551_p2;
wire   [0:0] or_ln890_625_fu_557_p2;
wire   [0:0] carry_1398_fu_511_p2;
wire   [0:0] deleted_zeros_691_fu_537_p2;
wire   [0:0] xor_ln895_2124_fu_575_p2;
wire   [0:0] p_Result_3545_fu_449_p3;
wire   [0:0] or_ln895_703_fu_581_p2;
wire   [0:0] xor_ln895_2125_fu_587_p2;
wire   [0:0] deleted_ones_1418_fu_563_p2;
wire   [0:0] xor_ln896_2125_fu_599_p2;
wire   [0:0] and_ln891_713_fu_569_p2;
wire   [0:0] or_ln896_703_fu_605_p2;
wire   [0:0] xor_ln896_2238_fu_611_p2;
wire   [0:0] underflow_1418_fu_617_p2;
wire   [0:0] grp_fu_210_p3;
wire   [14:0] zext_ln377_704_fu_634_p1;
wire   [14:0] grp_fu_192_p4;
wire   [14:0] p_Val2_4113_fu_638_p2;
wire   [0:0] p_Result_3550_fu_644_p3;
wire   [0:0] grp_fu_202_p3;
wire   [0:0] xor_ln896_2126_fu_652_p2;
wire   [0:0] xor_ln888_1249_fu_664_p2;
wire   [0:0] grp_fu_218_p3;
wire   [0:0] or_ln888_626_fu_670_p2;
wire   [0:0] tmp_5673_fu_682_p3;
wire   [0:0] xor_ln890_704_fu_690_p2;
wire   [0:0] or_ln890_626_fu_696_p2;
wire   [0:0] carry_1400_fu_658_p2;
wire   [0:0] deleted_zeros_692_fu_676_p2;
wire   [0:0] xor_ln895_2126_fu_714_p2;
wire   [0:0] grp_fu_184_p3;
wire   [0:0] or_ln895_704_fu_720_p2;
wire   [0:0] xor_ln895_2127_fu_726_p2;
wire   [0:0] deleted_ones_1419_fu_702_p2;
wire   [0:0] xor_ln896_2127_fu_738_p2;
wire   [0:0] and_ln891_714_fu_708_p2;
wire   [0:0] or_ln896_704_fu_744_p2;
wire   [0:0] xor_ln896_2239_fu_750_p2;
wire   [0:0] overflow_1419_fu_732_p2;
wire   [0:0] underflow_1419_fu_756_p2;
wire   [0:0] or_ln346_704_fu_770_p2;
wire   [14:0] select_ln346_1036_fu_762_p3;
wire   [24:0] r_V_698_fu_118_p2;
wire   [13:0] p_Val2_4115_fu_797_p4;
wire   [0:0] tmp_5676_fu_819_p3;
wire   [14:0] zext_ln377_705_fu_827_p1;
wire  signed [14:0] sext_ln818_fu_807_p1;
wire   [14:0] p_Val2_4116_fu_831_p2;
wire   [0:0] p_Result_3553_fu_837_p3;
wire   [0:0] p_Result_3552_fu_811_p3;
wire   [0:0] xor_ln896_2128_fu_845_p2;
wire   [0:0] xor_ln888_1251_fu_865_p2;
wire   [0:0] Range2_all_ones_1320_fu_857_p3;
wire   [0:0] or_ln888_627_fu_871_p2;
wire   [0:0] tmp_5679_fu_883_p3;
wire   [0:0] xor_ln890_705_fu_891_p2;
wire   [0:0] or_ln890_627_fu_897_p2;
wire   [0:0] carry_1402_fu_851_p2;
wire   [0:0] deleted_zeros_693_fu_877_p2;
wire   [0:0] xor_ln895_2128_fu_915_p2;
wire   [0:0] p_Result_3551_fu_789_p3;
wire   [0:0] or_ln895_705_fu_921_p2;
wire   [0:0] xor_ln895_2129_fu_927_p2;
wire   [0:0] deleted_ones_1420_fu_903_p2;
wire   [0:0] xor_ln896_2129_fu_939_p2;
wire   [0:0] and_ln891_715_fu_909_p2;
wire   [0:0] or_ln896_705_fu_945_p2;
wire   [0:0] xor_ln896_2240_fu_951_p2;
wire   [0:0] overflow_1420_fu_933_p2;
wire   [0:0] underflow_1420_fu_957_p2;
wire   [0:0] or_ln346_705_fu_971_p2;
wire   [14:0] select_ln346_1037_fu_963_p3;
wire   [14:0] select_ln346_1035_fu_988_p3;
wire  signed [14:0] sext_ln856_289_fu_985_p1;
wire   [14:0] zext_ln377_706_fu_1007_p1;
wire   [14:0] p_Val2_4119_fu_1011_p2;
wire   [0:0] p_Result_3556_fu_1017_p3;
wire   [0:0] xor_ln896_2130_fu_1025_p2;
wire   [0:0] xor_ln888_1253_fu_1037_p2;
wire   [0:0] or_ln888_628_fu_1043_p2;
wire   [0:0] tmp_5685_fu_1055_p3;
wire   [0:0] xor_ln890_706_fu_1063_p2;
wire   [0:0] or_ln890_628_fu_1069_p2;
wire   [0:0] carry_1404_fu_1031_p2;
wire   [0:0] deleted_zeros_694_fu_1049_p2;
wire   [0:0] xor_ln895_2130_fu_1087_p2;
wire   [0:0] or_ln895_706_fu_1093_p2;
wire   [0:0] xor_ln895_2131_fu_1099_p2;
wire   [0:0] deleted_ones_1421_fu_1075_p2;
wire   [0:0] xor_ln896_2131_fu_1111_p2;
wire   [0:0] and_ln891_716_fu_1081_p2;
wire   [0:0] or_ln896_706_fu_1117_p2;
wire   [0:0] xor_ln896_2241_fu_1123_p2;
wire   [0:0] overflow_1421_fu_1105_p2;
wire   [0:0] underflow_1421_fu_1129_p2;
wire   [0:0] or_ln346_706_fu_1143_p2;
wire   [14:0] select_ln346_1038_fu_1135_p3;
wire  signed [14:0] p_Val2_s_fu_995_p3;
wire  signed [15:0] sext_ln813_1366_fu_1161_p1;
wire  signed [15:0] sext_ln813_1365_fu_1157_p1;
wire   [15:0] ret_V_713_fu_1164_p2;
wire   [14:0] p_Val2_4125_fu_1178_p2;
wire   [0:0] p_Result_3559_fu_1170_p3;
wire   [0:0] p_Result_3560_fu_1183_p3;
wire   [0:0] xor_ln895_2133_fu_1191_p2;
wire   [0:0] xor_ln896_2133_fu_1203_p2;
wire   [0:0] xor_ln302_1429_fu_1215_p2;
wire   [0:0] overflow_1423_fu_1197_p2;
wire   [0:0] xor_ln302_1430_fu_1221_p2;
wire   [0:0] underflow_1423_fu_1209_p2;
wire   [0:0] or_ln302_713_fu_1227_p2;
wire   [14:0] select_ln302_1429_fu_1233_p3;
wire   [14:0] select_ln350_713_fu_1241_p3;
wire  signed [14:0] p_Val2_4133_fu_1249_p3;
wire  signed [15:0] sext_ln813_1368_fu_1261_p1;
wire  signed [15:0] sext_ln813_1367_fu_1257_p1;
wire   [15:0] ret_V_714_fu_1264_p2;
wire   [14:0] p_Val2_4128_fu_1278_p2;
wire   [0:0] p_Result_3561_fu_1270_p3;
wire   [0:0] p_Result_3562_fu_1283_p3;
wire   [0:0] xor_ln895_2134_fu_1291_p2;
wire   [0:0] xor_ln896_2134_fu_1303_p2;
wire   [0:0] xor_ln302_1431_fu_1315_p2;
wire   [0:0] overflow_1424_fu_1297_p2;
wire   [0:0] xor_ln302_1432_fu_1321_p2;
wire   [0:0] underflow_1424_fu_1309_p2;
wire   [0:0] or_ln302_714_fu_1327_p2;
wire   [14:0] select_ln302_1431_fu_1333_p3;
wire   [14:0] select_ln350_714_fu_1341_p3;
wire  signed [15:0] sext_ln813_fu_1357_p1;
wire   [15:0] ret_V_fu_1360_p2;
wire   [14:0] p_Val2_4121_fu_1374_p2;
wire   [0:0] p_Result_3557_fu_1366_p3;
wire   [0:0] p_Result_3558_fu_1379_p3;
wire   [0:0] xor_ln895_2132_fu_1387_p2;
wire   [0:0] xor_ln896_2132_fu_1399_p2;
wire   [0:0] xor_ln302_fu_1411_p2;
wire   [0:0] overflow_1422_fu_1393_p2;
wire   [0:0] xor_ln302_1428_fu_1417_p2;
wire   [0:0] underflow_1422_fu_1405_p2;
wire   [0:0] or_ln302_fu_1423_p2;
wire   [14:0] select_ln302_fu_1429_p3;
wire   [14:0] select_ln350_fu_1437_p3;
wire  signed [14:0] p_Val2_4132_fu_1445_p3;
wire  signed [15:0] sext_ln813_1370_fu_1457_p1;
wire  signed [15:0] sext_ln813_1369_fu_1453_p1;
wire   [15:0] ret_V_715_fu_1460_p2;
wire   [14:0] p_Val2_4131_fu_1474_p2;
wire   [0:0] p_Result_3563_fu_1466_p3;
wire   [0:0] p_Result_3564_fu_1479_p3;
wire   [0:0] xor_ln895_2135_fu_1487_p2;
wire   [0:0] xor_ln896_2135_fu_1499_p2;
wire   [0:0] xor_ln302_1433_fu_1511_p2;
wire   [0:0] overflow_1425_fu_1493_p2;
wire   [0:0] xor_ln302_1434_fu_1517_p2;
wire   [0:0] underflow_1425_fu_1505_p2;
wire   [0:0] or_ln302_715_fu_1523_p2;
wire   [14:0] select_ln302_1433_fu_1529_p3;
wire   [14:0] select_ln350_715_fu_1537_p3;
wire   [14:0] select_ln302_1434_fu_1545_p3;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
end

der_mul_15s_11ns_26_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 15 ),
    .din1_WIDTH( 11 ),
    .dout_WIDTH( 26 ))
mul_15s_11ns_26_1_1_U524(
    .din0(grp_fu_116_p0),
    .din1(grp_fu_116_p1),
    .dout(grp_fu_116_p2)
);

der_mul_15s_9s_24_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 15 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 24 ))
mul_15s_9s_24_1_1_U525(
    .din0(p_read),
    .din1(r_V_fu_117_p1),
    .dout(r_V_fu_117_p2)
);

der_mul_15s_10s_25_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 15 ),
    .din1_WIDTH( 10 ),
    .dout_WIDTH( 25 ))
mul_15s_10s_25_1_1_U526(
    .din0(p_read2),
    .din1(r_V_698_fu_118_p1),
    .dout(r_V_698_fu_118_p2)
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_port_reg_p_read3 <= p_read3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        or_ln346_703_reg_1580 <= or_ln346_703_fu_623_p2;
        overflow_1418_reg_1575 <= overflow_1418_fu_593_p2;
        p_Val2_4111_reg_1570 <= p_Val2_4111_fu_491_p2;
        rhs_703_reg_1585 <= rhs_703_fu_776_p3;
        rhs_704_reg_1591 <= rhs_704_fu_977_p3;
        rhs_reg_1564 <= rhs_fu_423_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_Val2_4129_reg_1603 <= p_Val2_4129_fu_1349_p3;
        rhs_705_reg_1597 <= rhs_705_fu_1149_p3;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
            grp_fu_116_p0 = sext_ln70_2_fu_1002_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_116_p0 = sext_ln70_fu_629_p1;
        end else begin
            grp_fu_116_p0 = 'bx;
        end
    end else begin
        grp_fu_116_p0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_116_p1 = 26'd769;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_116_p1 = 26'd835;
        end else begin
            grp_fu_116_p1 = 'bx;
        end
    end else begin
        grp_fu_116_p1 = 'bx;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_reset_idle_pp0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_reset_idle_pp0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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

assign Range2_all_ones_1318_fu_517_p3 = r_V_696_fu_443_p2[32'd20];

assign Range2_all_ones_1320_fu_857_p3 = r_V_698_fu_118_p2[32'd24];

assign Range2_all_ones_fu_303_p3 = r_V_fu_117_p2[32'd23];

assign and_ln891_713_fu_569_p2 = (carry_1398_fu_511_p2 & Range2_all_ones_1318_fu_517_p3);

assign and_ln891_714_fu_708_p2 = (grp_fu_218_p3 & carry_1400_fu_658_p2);

assign and_ln891_715_fu_909_p2 = (carry_1402_fu_851_p2 & Range2_all_ones_1320_fu_857_p3);

assign and_ln891_716_fu_1081_p2 = (grp_fu_218_p3 & carry_1404_fu_1031_p2);

assign and_ln891_fu_355_p2 = (carry_1396_fu_297_p2 & Range2_all_ones_fu_303_p3);

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

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_return_0 = select_ln302_1434_fu_1545_p3;

assign ap_return_1 = p_Val2_4129_reg_1603;

assign carry_1396_fu_297_p2 = (xor_ln896_fu_291_p2 & p_Result_3543_fu_253_p3);

assign carry_1398_fu_511_p2 = (xor_ln896_2124_fu_505_p2 & p_Result_3546_fu_471_p3);

assign carry_1400_fu_658_p2 = (xor_ln896_2126_fu_652_p2 & grp_fu_202_p3);

assign carry_1402_fu_851_p2 = (xor_ln896_2128_fu_845_p2 & p_Result_3552_fu_811_p3);

assign carry_1404_fu_1031_p2 = (xor_ln896_2130_fu_1025_p2 & grp_fu_202_p3);

assign deleted_ones_1418_fu_563_p2 = (or_ln890_625_fu_557_p2 & Range2_all_ones_1318_fu_517_p3);

assign deleted_ones_1419_fu_702_p2 = (or_ln890_626_fu_696_p2 & grp_fu_218_p3);

assign deleted_ones_1420_fu_903_p2 = (or_ln890_627_fu_897_p2 & Range2_all_ones_1320_fu_857_p3);

assign deleted_ones_1421_fu_1075_p2 = (or_ln890_628_fu_1069_p2 & grp_fu_218_p3);

assign deleted_ones_fu_349_p2 = (or_ln890_fu_343_p2 & Range2_all_ones_fu_303_p3);

assign deleted_zeros_691_fu_537_p2 = (or_ln888_625_fu_531_p2 ^ Range2_all_ones_1318_fu_517_p3);

assign deleted_zeros_692_fu_676_p2 = (or_ln888_626_fu_670_p2 ^ grp_fu_218_p3);

assign deleted_zeros_693_fu_877_p2 = (or_ln888_627_fu_871_p2 ^ Range2_all_ones_1320_fu_857_p3);

assign deleted_zeros_694_fu_1049_p2 = (or_ln888_628_fu_1043_p2 ^ grp_fu_218_p3);

assign deleted_zeros_fu_323_p2 = (or_ln888_fu_317_p2 ^ Range2_all_ones_fu_303_p3);

assign grp_fu_184_p3 = grp_fu_116_p2[32'd25];

assign grp_fu_192_p4 = {{grp_fu_116_p2[25:11]}};

assign grp_fu_202_p3 = grp_fu_116_p2[32'd25];

assign grp_fu_210_p3 = grp_fu_116_p2[32'd10];

assign grp_fu_218_p3 = grp_fu_116_p2[32'd25];

assign or_ln302_713_fu_1227_p2 = (xor_ln302_1430_fu_1221_p2 | overflow_1423_fu_1197_p2);

assign or_ln302_714_fu_1327_p2 = (xor_ln302_1432_fu_1321_p2 | overflow_1424_fu_1297_p2);

assign or_ln302_715_fu_1523_p2 = (xor_ln302_1434_fu_1517_p2 | overflow_1425_fu_1493_p2);

assign or_ln302_fu_1423_p2 = (xor_ln302_1428_fu_1417_p2 | overflow_1422_fu_1393_p2);

assign or_ln346_703_fu_623_p2 = (underflow_1418_fu_617_p2 | overflow_1418_fu_593_p2);

assign or_ln346_704_fu_770_p2 = (underflow_1419_fu_756_p2 | overflow_1419_fu_732_p2);

assign or_ln346_705_fu_971_p2 = (underflow_1420_fu_957_p2 | overflow_1420_fu_933_p2);

assign or_ln346_706_fu_1143_p2 = (underflow_1421_fu_1129_p2 | overflow_1421_fu_1105_p2);

assign or_ln346_fu_417_p2 = (underflow_fu_403_p2 | overflow_fu_379_p2);

assign or_ln888_625_fu_531_p2 = (xor_ln888_1247_fu_525_p2 | p_Result_3547_fu_497_p3);

assign or_ln888_626_fu_670_p2 = (xor_ln888_1249_fu_664_p2 | p_Result_3550_fu_644_p3);

assign or_ln888_627_fu_871_p2 = (xor_ln888_1251_fu_865_p2 | p_Result_3553_fu_837_p3);

assign or_ln888_628_fu_1043_p2 = (xor_ln888_1253_fu_1037_p2 | p_Result_3556_fu_1017_p3);

assign or_ln888_fu_317_p2 = (xor_ln888_fu_311_p2 | p_Result_3544_fu_283_p3);

assign or_ln890_625_fu_557_p2 = (xor_ln890_703_fu_551_p2 | or_ln888_625_fu_531_p2);

assign or_ln890_626_fu_696_p2 = (xor_ln890_704_fu_690_p2 | or_ln888_626_fu_670_p2);

assign or_ln890_627_fu_897_p2 = (xor_ln890_705_fu_891_p2 | or_ln888_627_fu_871_p2);

assign or_ln890_628_fu_1069_p2 = (xor_ln890_706_fu_1063_p2 | or_ln888_628_fu_1043_p2);

assign or_ln890_fu_343_p2 = (xor_ln890_fu_337_p2 | or_ln888_fu_317_p2);

assign or_ln895_703_fu_581_p2 = (xor_ln895_2124_fu_575_p2 | p_Result_3547_fu_497_p3);

assign or_ln895_704_fu_720_p2 = (xor_ln895_2126_fu_714_p2 | p_Result_3550_fu_644_p3);

assign or_ln895_705_fu_921_p2 = (xor_ln895_2128_fu_915_p2 | p_Result_3553_fu_837_p3);

assign or_ln895_706_fu_1093_p2 = (xor_ln895_2130_fu_1087_p2 | p_Result_3556_fu_1017_p3);

assign or_ln895_fu_367_p2 = (xor_ln895_fu_361_p2 | p_Result_3544_fu_283_p3);

assign or_ln896_703_fu_605_p2 = (xor_ln896_2125_fu_599_p2 | xor_ln896_2124_fu_505_p2);

assign or_ln896_704_fu_744_p2 = (xor_ln896_2127_fu_738_p2 | xor_ln896_2126_fu_652_p2);

assign or_ln896_705_fu_945_p2 = (xor_ln896_2129_fu_939_p2 | xor_ln896_2128_fu_845_p2);

assign or_ln896_706_fu_1117_p2 = (xor_ln896_2131_fu_1111_p2 | xor_ln896_2130_fu_1025_p2);

assign or_ln896_fu_391_p2 = (xor_ln896_fu_291_p2 | xor_ln896_2123_fu_385_p2);

assign overflow_1418_fu_593_p2 = (xor_ln895_2125_fu_587_p2 & or_ln895_703_fu_581_p2);

assign overflow_1419_fu_732_p2 = (xor_ln895_2127_fu_726_p2 & or_ln895_704_fu_720_p2);

assign overflow_1420_fu_933_p2 = (xor_ln895_2129_fu_927_p2 & or_ln895_705_fu_921_p2);

assign overflow_1421_fu_1105_p2 = (xor_ln895_2131_fu_1099_p2 & or_ln895_706_fu_1093_p2);

assign overflow_1422_fu_1393_p2 = (xor_ln895_2132_fu_1387_p2 & p_Result_3558_fu_1379_p3);

assign overflow_1423_fu_1197_p2 = (xor_ln895_2133_fu_1191_p2 & p_Result_3560_fu_1183_p3);

assign overflow_1424_fu_1297_p2 = (xor_ln895_2134_fu_1291_p2 & p_Result_3562_fu_1283_p3);

assign overflow_1425_fu_1493_p2 = (xor_ln895_2135_fu_1487_p2 & p_Result_3564_fu_1479_p3);

assign overflow_fu_379_p2 = (xor_ln895_2123_fu_373_p2 & or_ln895_fu_367_p2);

assign p_Result_3543_fu_253_p3 = r_V_fu_117_p2[32'd23];

assign p_Result_3544_fu_283_p3 = p_Val2_4108_fu_273_p2[32'd13];

assign p_Result_3545_fu_449_p3 = r_V_696_fu_443_p2[32'd20];

assign p_Result_3546_fu_471_p3 = r_V_696_fu_443_p2[32'd20];

assign p_Result_3547_fu_497_p3 = p_Val2_4111_fu_491_p2[32'd10];

assign p_Result_3550_fu_644_p3 = p_Val2_4113_fu_638_p2[32'd14];

assign p_Result_3551_fu_789_p3 = r_V_698_fu_118_p2[32'd24];

assign p_Result_3552_fu_811_p3 = r_V_698_fu_118_p2[32'd24];

assign p_Result_3553_fu_837_p3 = p_Val2_4116_fu_831_p2[32'd14];

assign p_Result_3556_fu_1017_p3 = p_Val2_4119_fu_1011_p2[32'd14];

assign p_Result_3557_fu_1366_p3 = ret_V_fu_1360_p2[32'd15];

assign p_Result_3558_fu_1379_p3 = p_Val2_4121_fu_1374_p2[32'd14];

assign p_Result_3559_fu_1170_p3 = ret_V_713_fu_1164_p2[32'd15];

assign p_Result_3560_fu_1183_p3 = p_Val2_4125_fu_1178_p2[32'd14];

assign p_Result_3561_fu_1270_p3 = ret_V_714_fu_1264_p2[32'd15];

assign p_Result_3562_fu_1283_p3 = p_Val2_4128_fu_1278_p2[32'd14];

assign p_Result_3563_fu_1466_p3 = ret_V_715_fu_1460_p2[32'd15];

assign p_Result_3564_fu_1479_p3 = p_Val2_4131_fu_1474_p2[32'd14];

assign p_Result_s_fu_231_p3 = r_V_fu_117_p2[32'd23];

assign p_Val2_4107_fu_239_p4 = {{r_V_fu_117_p2[23:11]}};

assign p_Val2_4108_fu_273_p2 = ($signed(zext_ln377_fu_269_p1) + $signed(sext_ln823_fu_249_p1));

assign p_Val2_4110_fu_457_p4 = {{r_V_696_fu_443_p2[20:11]}};

assign p_Val2_4111_fu_491_p2 = ($signed(zext_ln377_703_fu_487_p1) + $signed(sext_ln823_289_fu_467_p1));

assign p_Val2_4113_fu_638_p2 = (zext_ln377_704_fu_634_p1 + grp_fu_192_p4);

assign p_Val2_4115_fu_797_p4 = {{r_V_698_fu_118_p2[24:11]}};

assign p_Val2_4116_fu_831_p2 = ($signed(zext_ln377_705_fu_827_p1) + $signed(sext_ln818_fu_807_p1));

assign p_Val2_4119_fu_1011_p2 = (zext_ln377_706_fu_1007_p1 + grp_fu_192_p4);

assign p_Val2_4121_fu_1374_p2 = ($signed(rhs_reg_1564) + $signed(15'd80));

assign p_Val2_4125_fu_1178_p2 = ($signed(rhs_703_reg_1585) + $signed(p_Val2_s_fu_995_p3));

assign p_Val2_4128_fu_1278_p2 = ($signed(rhs_704_reg_1591) + $signed(p_Val2_4133_fu_1249_p3));

assign p_Val2_4129_fu_1349_p3 = ((or_ln302_714_fu_1327_p2[0:0] == 1'b1) ? select_ln302_1431_fu_1333_p3 : select_ln350_714_fu_1341_p3);

assign p_Val2_4131_fu_1474_p2 = ($signed(rhs_705_reg_1597) + $signed(p_Val2_4132_fu_1445_p3));

assign p_Val2_4132_fu_1445_p3 = ((or_ln302_fu_1423_p2[0:0] == 1'b1) ? select_ln302_fu_1429_p3 : select_ln350_fu_1437_p3);

assign p_Val2_4133_fu_1249_p3 = ((or_ln302_713_fu_1227_p2[0:0] == 1'b1) ? select_ln302_1429_fu_1233_p3 : select_ln350_713_fu_1241_p3);

assign p_Val2_s_fu_995_p3 = ((or_ln346_703_reg_1580[0:0] == 1'b1) ? select_ln346_1035_fu_988_p3 : sext_ln856_289_fu_985_p1);

assign r_V_696_fu_443_p2 = ($signed(21'd0) - $signed(sext_ln1273_409_fu_439_p1));

assign r_V_698_fu_118_p1 = 25'd33553971;

assign r_V_fu_117_p1 = 24'd16777081;

assign ret_V_713_fu_1164_p2 = ($signed(sext_ln813_1366_fu_1161_p1) + $signed(sext_ln813_1365_fu_1157_p1));

assign ret_V_714_fu_1264_p2 = ($signed(sext_ln813_1368_fu_1261_p1) + $signed(sext_ln813_1367_fu_1257_p1));

assign ret_V_715_fu_1460_p2 = ($signed(sext_ln813_1370_fu_1457_p1) + $signed(sext_ln813_1369_fu_1453_p1));

assign ret_V_fu_1360_p2 = ($signed(sext_ln813_fu_1357_p1) + $signed(16'd80));

assign rhs_703_fu_776_p3 = ((or_ln346_704_fu_770_p2[0:0] == 1'b1) ? select_ln346_1036_fu_762_p3 : p_Val2_4113_fu_638_p2);

assign rhs_704_fu_977_p3 = ((or_ln346_705_fu_971_p2[0:0] == 1'b1) ? select_ln346_1037_fu_963_p3 : p_Val2_4116_fu_831_p2);

assign rhs_705_fu_1149_p3 = ((or_ln346_706_fu_1143_p2[0:0] == 1'b1) ? select_ln346_1038_fu_1135_p3 : p_Val2_4119_fu_1011_p2);

assign rhs_fu_423_p3 = ((or_ln346_fu_417_p2[0:0] == 1'b1) ? select_ln346_1034_fu_409_p3 : sext_ln856_fu_279_p1);

assign select_ln302_1429_fu_1233_p3 = ((xor_ln302_1429_fu_1215_p2[0:0] == 1'b1) ? 15'd16383 : p_Val2_4125_fu_1178_p2);

assign select_ln302_1431_fu_1333_p3 = ((xor_ln302_1431_fu_1315_p2[0:0] == 1'b1) ? 15'd16383 : p_Val2_4128_fu_1278_p2);

assign select_ln302_1433_fu_1529_p3 = ((xor_ln302_1433_fu_1511_p2[0:0] == 1'b1) ? 15'd16383 : p_Val2_4131_fu_1474_p2);

assign select_ln302_1434_fu_1545_p3 = ((or_ln302_715_fu_1523_p2[0:0] == 1'b1) ? select_ln302_1433_fu_1529_p3 : select_ln350_715_fu_1537_p3);

assign select_ln302_fu_1429_p3 = ((xor_ln302_fu_1411_p2[0:0] == 1'b1) ? 15'd16383 : p_Val2_4121_fu_1374_p2);

assign select_ln346_1034_fu_409_p3 = ((overflow_fu_379_p2[0:0] == 1'b1) ? 15'd16383 : 15'd16384);

assign select_ln346_1035_fu_988_p3 = ((overflow_1418_reg_1575[0:0] == 1'b1) ? 15'd16383 : 15'd16384);

assign select_ln346_1036_fu_762_p3 = ((overflow_1419_fu_732_p2[0:0] == 1'b1) ? 15'd16383 : 15'd16384);

assign select_ln346_1037_fu_963_p3 = ((overflow_1420_fu_933_p2[0:0] == 1'b1) ? 15'd16383 : 15'd16384);

assign select_ln346_1038_fu_1135_p3 = ((overflow_1421_fu_1105_p2[0:0] == 1'b1) ? 15'd16383 : 15'd16384);

assign select_ln350_713_fu_1241_p3 = ((underflow_1423_fu_1209_p2[0:0] == 1'b1) ? 15'd16384 : p_Val2_4125_fu_1178_p2);

assign select_ln350_714_fu_1341_p3 = ((underflow_1424_fu_1309_p2[0:0] == 1'b1) ? 15'd16384 : p_Val2_4128_fu_1278_p2);

assign select_ln350_715_fu_1537_p3 = ((underflow_1425_fu_1505_p2[0:0] == 1'b1) ? 15'd16384 : p_Val2_4131_fu_1474_p2);

assign select_ln350_fu_1437_p3 = ((underflow_1422_fu_1405_p2[0:0] == 1'b1) ? 15'd16384 : p_Val2_4121_fu_1374_p2);

assign sext_ln1273_409_fu_439_p1 = $signed(shl_ln_fu_431_p3);

assign sext_ln70_2_fu_1002_p1 = $signed(ap_port_reg_p_read3);

assign sext_ln70_fu_629_p1 = $signed(p_read1);

assign sext_ln813_1365_fu_1157_p1 = p_Val2_s_fu_995_p3;

assign sext_ln813_1366_fu_1161_p1 = rhs_703_reg_1585;

assign sext_ln813_1367_fu_1257_p1 = p_Val2_4133_fu_1249_p3;

assign sext_ln813_1368_fu_1261_p1 = rhs_704_reg_1591;

assign sext_ln813_1369_fu_1453_p1 = p_Val2_4132_fu_1445_p3;

assign sext_ln813_1370_fu_1457_p1 = rhs_705_reg_1597;

assign sext_ln813_fu_1357_p1 = rhs_reg_1564;

assign sext_ln818_fu_807_p1 = $signed(p_Val2_4115_fu_797_p4);

assign sext_ln823_289_fu_467_p1 = $signed(p_Val2_4110_fu_457_p4);

assign sext_ln823_fu_249_p1 = $signed(p_Val2_4107_fu_239_p4);

assign sext_ln856_289_fu_985_p1 = p_Val2_4111_reg_1570;

assign sext_ln856_fu_279_p1 = p_Val2_4108_fu_273_p2;

assign shl_ln_fu_431_p1 = p_read;

assign shl_ln_fu_431_p3 = {{shl_ln_fu_431_p1}, {5'd0}};

assign tmp_5661_fu_329_p3 = r_V_fu_117_p2[32'd23];

assign tmp_5664_fu_479_p3 = r_V_696_fu_443_p2[32'd10];

assign tmp_5667_fu_543_p3 = r_V_696_fu_443_p2[32'd20];

assign tmp_5673_fu_682_p3 = grp_fu_116_p2[32'd25];

assign tmp_5676_fu_819_p3 = r_V_698_fu_118_p2[32'd10];

assign tmp_5679_fu_883_p3 = r_V_698_fu_118_p2[32'd24];

assign tmp_5685_fu_1055_p3 = grp_fu_116_p2[32'd25];

assign tmp_fu_261_p3 = r_V_fu_117_p2[32'd10];

assign underflow_1418_fu_617_p2 = (xor_ln896_2238_fu_611_p2 & p_Result_3545_fu_449_p3);

assign underflow_1419_fu_756_p2 = (xor_ln896_2239_fu_750_p2 & grp_fu_184_p3);

assign underflow_1420_fu_957_p2 = (xor_ln896_2240_fu_951_p2 & p_Result_3551_fu_789_p3);

assign underflow_1421_fu_1129_p2 = (xor_ln896_2241_fu_1123_p2 & grp_fu_184_p3);

assign underflow_1422_fu_1405_p2 = (xor_ln896_2132_fu_1399_p2 & p_Result_3557_fu_1366_p3);

assign underflow_1423_fu_1209_p2 = (xor_ln896_2133_fu_1203_p2 & p_Result_3559_fu_1170_p3);

assign underflow_1424_fu_1309_p2 = (xor_ln896_2134_fu_1303_p2 & p_Result_3561_fu_1270_p3);

assign underflow_1425_fu_1505_p2 = (xor_ln896_2135_fu_1499_p2 & p_Result_3563_fu_1466_p3);

assign underflow_fu_403_p2 = (xor_ln896_2237_fu_397_p2 & p_Result_s_fu_231_p3);

assign xor_ln302_1428_fu_1417_p2 = (xor_ln302_fu_1411_p2 ^ 1'd1);

assign xor_ln302_1429_fu_1215_p2 = (p_Result_3560_fu_1183_p3 ^ p_Result_3559_fu_1170_p3);

assign xor_ln302_1430_fu_1221_p2 = (xor_ln302_1429_fu_1215_p2 ^ 1'd1);

assign xor_ln302_1431_fu_1315_p2 = (p_Result_3562_fu_1283_p3 ^ p_Result_3561_fu_1270_p3);

assign xor_ln302_1432_fu_1321_p2 = (xor_ln302_1431_fu_1315_p2 ^ 1'd1);

assign xor_ln302_1433_fu_1511_p2 = (p_Result_3564_fu_1479_p3 ^ p_Result_3563_fu_1466_p3);

assign xor_ln302_1434_fu_1517_p2 = (xor_ln302_1433_fu_1511_p2 ^ 1'd1);

assign xor_ln302_fu_1411_p2 = (p_Result_3558_fu_1379_p3 ^ p_Result_3557_fu_1366_p3);

assign xor_ln888_1247_fu_525_p2 = (p_Result_3546_fu_471_p3 ^ 1'd1);

assign xor_ln888_1249_fu_664_p2 = (grp_fu_202_p3 ^ 1'd1);

assign xor_ln888_1251_fu_865_p2 = (p_Result_3552_fu_811_p3 ^ 1'd1);

assign xor_ln888_1253_fu_1037_p2 = (grp_fu_202_p3 ^ 1'd1);

assign xor_ln888_fu_311_p2 = (p_Result_3543_fu_253_p3 ^ 1'd1);

assign xor_ln890_703_fu_551_p2 = (tmp_5667_fu_543_p3 ^ 1'd1);

assign xor_ln890_704_fu_690_p2 = (tmp_5673_fu_682_p3 ^ 1'd1);

assign xor_ln890_705_fu_891_p2 = (tmp_5679_fu_883_p3 ^ 1'd1);

assign xor_ln890_706_fu_1063_p2 = (tmp_5685_fu_1055_p3 ^ 1'd1);

assign xor_ln890_fu_337_p2 = (tmp_5661_fu_329_p3 ^ 1'd1);

assign xor_ln895_2123_fu_373_p2 = (p_Result_s_fu_231_p3 ^ 1'd1);

assign xor_ln895_2124_fu_575_p2 = (deleted_zeros_691_fu_537_p2 ^ 1'd1);

assign xor_ln895_2125_fu_587_p2 = (p_Result_3545_fu_449_p3 ^ 1'd1);

assign xor_ln895_2126_fu_714_p2 = (deleted_zeros_692_fu_676_p2 ^ 1'd1);

assign xor_ln895_2127_fu_726_p2 = (grp_fu_184_p3 ^ 1'd1);

assign xor_ln895_2128_fu_915_p2 = (deleted_zeros_693_fu_877_p2 ^ 1'd1);

assign xor_ln895_2129_fu_927_p2 = (p_Result_3551_fu_789_p3 ^ 1'd1);

assign xor_ln895_2130_fu_1087_p2 = (deleted_zeros_694_fu_1049_p2 ^ 1'd1);

assign xor_ln895_2131_fu_1099_p2 = (grp_fu_184_p3 ^ 1'd1);

assign xor_ln895_2132_fu_1387_p2 = (p_Result_3557_fu_1366_p3 ^ 1'd1);

assign xor_ln895_2133_fu_1191_p2 = (p_Result_3559_fu_1170_p3 ^ 1'd1);

assign xor_ln895_2134_fu_1291_p2 = (p_Result_3561_fu_1270_p3 ^ 1'd1);

assign xor_ln895_2135_fu_1487_p2 = (p_Result_3563_fu_1466_p3 ^ 1'd1);

assign xor_ln895_fu_361_p2 = (deleted_zeros_fu_323_p2 ^ 1'd1);

assign xor_ln896_2123_fu_385_p2 = (deleted_ones_fu_349_p2 ^ 1'd1);

assign xor_ln896_2124_fu_505_p2 = (p_Result_3547_fu_497_p3 ^ 1'd1);

assign xor_ln896_2125_fu_599_p2 = (deleted_ones_1418_fu_563_p2 ^ 1'd1);

assign xor_ln896_2126_fu_652_p2 = (p_Result_3550_fu_644_p3 ^ 1'd1);

assign xor_ln896_2127_fu_738_p2 = (deleted_ones_1419_fu_702_p2 ^ 1'd1);

assign xor_ln896_2128_fu_845_p2 = (p_Result_3553_fu_837_p3 ^ 1'd1);

assign xor_ln896_2129_fu_939_p2 = (deleted_ones_1420_fu_903_p2 ^ 1'd1);

assign xor_ln896_2130_fu_1025_p2 = (p_Result_3556_fu_1017_p3 ^ 1'd1);

assign xor_ln896_2131_fu_1111_p2 = (deleted_ones_1421_fu_1075_p2 ^ 1'd1);

assign xor_ln896_2132_fu_1399_p2 = (p_Result_3558_fu_1379_p3 ^ 1'd1);

assign xor_ln896_2133_fu_1203_p2 = (p_Result_3560_fu_1183_p3 ^ 1'd1);

assign xor_ln896_2134_fu_1303_p2 = (p_Result_3562_fu_1283_p3 ^ 1'd1);

assign xor_ln896_2135_fu_1499_p2 = (p_Result_3564_fu_1479_p3 ^ 1'd1);

assign xor_ln896_2237_fu_397_p2 = (or_ln896_fu_391_p2 ^ and_ln891_fu_355_p2);

assign xor_ln896_2238_fu_611_p2 = (or_ln896_703_fu_605_p2 ^ and_ln891_713_fu_569_p2);

assign xor_ln896_2239_fu_750_p2 = (or_ln896_704_fu_744_p2 ^ and_ln891_714_fu_708_p2);

assign xor_ln896_2240_fu_951_p2 = (or_ln896_705_fu_945_p2 ^ and_ln891_715_fu_909_p2);

assign xor_ln896_2241_fu_1123_p2 = (or_ln896_706_fu_1117_p2 ^ and_ln891_716_fu_1081_p2);

assign xor_ln896_fu_291_p2 = (p_Result_3544_fu_283_p3 ^ 1'd1);

assign zext_ln377_703_fu_487_p1 = tmp_5664_fu_479_p3;

assign zext_ln377_704_fu_634_p1 = grp_fu_210_p3;

assign zext_ln377_705_fu_827_p1 = tmp_5676_fu_819_p3;

assign zext_ln377_706_fu_1007_p1 = grp_fu_210_p3;

assign zext_ln377_fu_269_p1 = tmp_fu_261_p3;

endmodule //der_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s
