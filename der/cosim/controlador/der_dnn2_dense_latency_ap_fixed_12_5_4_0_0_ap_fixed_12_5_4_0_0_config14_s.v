module der_dnn2_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        p_read,
        p_read1,
        p_read2,
        ap_return_0,
        ap_return_1,
        ap_ce
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [11:0] p_read;
input  [11:0] p_read1;
input  [11:0] p_read2;
output  [11:0] ap_return_0;
output  [11:0] ap_return_1;
input   ap_ce;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] p_Result_6949_fu_124_p3;
reg   [0:0] p_Result_6949_reg_1328;
wire   [0:0] p_Result_6951_fu_172_p3;
reg   [0:0] p_Result_6951_reg_1333;
wire   [11:0] p_Val2_3154_fu_196_p2;
reg   [11:0] p_Val2_3154_reg_1338;
wire   [0:0] xor_ln896_fu_210_p2;
reg   [0:0] xor_ln896_reg_1343;
wire   [0:0] Range2_all_ones_fu_216_p3;
reg   [0:0] Range2_all_ones_reg_1348;
wire   [0:0] overflow_fu_286_p2;
reg   [0:0] overflow_reg_1353;
wire   [0:0] or_ln896_fu_298_p2;
reg   [0:0] or_ln896_reg_1359;
wire  signed [11:0] p_Val2_s_fu_335_p3;
reg  signed [11:0] p_Val2_s_reg_1364;
wire    ap_CS_fsm_state2;
wire  signed [6:0] p_Val2_3156_fu_429_p2;
reg  signed [6:0] p_Val2_3156_reg_1370;
wire   [0:0] overflow_1081_fu_531_p2;
reg   [0:0] overflow_1081_reg_1375;
wire   [0:0] or_ln346_524_fu_561_p2;
reg   [0:0] or_ln346_524_reg_1380;
wire   [0:0] p_Result_6957_fu_567_p3;
reg   [0:0] p_Result_6957_reg_1385;
wire   [0:0] p_Result_6959_fu_611_p3;
reg   [0:0] p_Result_6959_reg_1390;
wire   [11:0] p_Val2_3159_fu_635_p2;
reg   [11:0] p_Val2_3159_reg_1395;
wire   [0:0] xor_ln896_1609_fu_649_p2;
reg   [0:0] xor_ln896_1609_reg_1400;
wire   [0:0] Range2_all_ones_938_fu_655_p3;
reg   [0:0] Range2_all_ones_938_reg_1405;
wire   [0:0] overflow_1082_fu_725_p2;
reg   [0:0] overflow_1082_reg_1410;
wire   [0:0] or_ln896_524_fu_737_p2;
reg   [0:0] or_ln896_524_reg_1416;
wire   [0:0] p_Result_6961_fu_786_p3;
reg   [0:0] p_Result_6961_reg_1421;
wire    ap_CS_fsm_state3;
wire   [0:0] p_Result_6963_fu_830_p3;
reg   [0:0] p_Result_6963_reg_1426;
wire   [11:0] p_Val2_3162_fu_854_p2;
reg   [11:0] p_Val2_3162_reg_1431;
wire   [0:0] xor_ln896_1611_fu_868_p2;
reg   [0:0] xor_ln896_1611_reg_1436;
wire   [0:0] Range2_all_ones_939_fu_874_p3;
reg   [0:0] Range2_all_ones_939_reg_1441;
wire   [0:0] overflow_1083_fu_944_p2;
reg   [0:0] overflow_1083_reg_1446;
wire   [0:0] or_ln896_525_fu_956_p2;
reg   [0:0] or_ln896_525_reg_1452;
wire   [11:0] p_Val2_3169_fu_1054_p3;
reg   [11:0] p_Val2_3169_reg_1457;
reg   [11:0] ap_port_reg_p_read1;
reg   [11:0] ap_port_reg_p_read2;
reg  signed [11:0] grp_fu_96_p0;
wire  signed [17:0] sext_ln70_fu_119_p1;
wire  signed [19:0] sext_ln1273_fu_342_p1;
wire  signed [18:0] sext_ln70_66_fu_781_p1;
reg  signed [8:0] grp_fu_96_p1;
wire   [17:0] p_Result_6949_fu_124_p1;
wire   [19:0] grp_fu_96_p2;
wire   [17:0] p_Val2_3153_fu_132_p1;
wire   [10:0] p_Val2_3153_fu_132_p4;
wire   [17:0] p_Result_s_fu_146_p1;
wire   [17:0] p_Result_6950_fu_154_p1;
wire   [17:0] trunc_ln828_fu_162_p0;
wire   [5:0] trunc_ln828_fu_162_p1;
wire   [17:0] p_Result_6951_fu_172_p1;
wire   [0:0] p_Result_s_fu_146_p3;
wire   [0:0] r_fu_166_p2;
wire   [0:0] or_ln374_fu_180_p2;
wire   [0:0] p_Result_6950_fu_154_p3;
wire   [0:0] and_ln374_fu_186_p2;
wire  signed [11:0] sext_ln818_fu_142_p1;
wire   [11:0] zext_ln377_fu_192_p1;
wire   [0:0] p_Result_6952_fu_202_p3;
wire   [17:0] Range2_all_ones_fu_216_p1;
wire   [0:0] xor_ln888_fu_224_p2;
wire   [0:0] or_ln888_fu_230_p2;
wire   [17:0] tmp_fu_242_p1;
wire   [0:0] tmp_fu_242_p3;
wire   [0:0] xor_ln890_fu_250_p2;
wire   [0:0] or_ln890_fu_256_p2;
wire   [0:0] deleted_zeros_fu_236_p2;
wire   [0:0] xor_ln895_fu_268_p2;
wire   [0:0] or_ln895_fu_274_p2;
wire   [0:0] xor_ln895_1606_fu_280_p2;
wire   [0:0] deleted_ones_fu_262_p2;
wire   [0:0] xor_ln896_1606_fu_292_p2;
wire   [0:0] carry_1013_fu_304_p2;
wire   [0:0] and_ln891_fu_308_p2;
wire   [0:0] xor_ln896_1693_fu_313_p2;
wire   [0:0] underflow_fu_318_p2;
wire   [0:0] or_ln346_fu_330_p2;
wire   [11:0] select_ln346_784_fu_323_p3;
wire  signed [11:0] sext_ln1273_fu_342_p0;
wire  signed [11:0] sext_ln1273_349_fu_347_p0;
wire  signed [12:0] sext_ln1273_349_fu_347_p1;
wire   [12:0] r_V_514_fu_351_p2;
wire   [5:0] p_Val2_3155_fu_365_p4;
wire   [5:0] trunc_ln828_502_fu_395_p1;
wire   [0:0] p_Result_6931_fu_379_p3;
wire   [0:0] r_517_fu_399_p2;
wire   [0:0] or_ln374_518_fu_413_p2;
wire   [0:0] p_Result_6954_fu_387_p3;
wire   [0:0] and_ln374_523_fu_419_p2;
wire  signed [6:0] sext_ln823_fu_375_p1;
wire   [6:0] zext_ln377_523_fu_425_p1;
wire   [0:0] p_Result_6956_fu_435_p3;
wire   [0:0] p_Result_6955_fu_405_p3;
wire   [0:0] xor_ln896_1607_fu_443_p2;
wire   [0:0] xor_ln888_855_fu_463_p2;
wire   [0:0] Range2_all_ones_937_fu_455_p3;
wire   [0:0] or_ln888_434_fu_469_p2;
wire   [0:0] tmp_4772_fu_481_p3;
wire   [0:0] xor_ln890_523_fu_489_p2;
wire   [0:0] or_ln890_434_fu_495_p2;
wire   [0:0] carry_1015_fu_449_p2;
wire   [0:0] deleted_zeros_487_fu_475_p2;
wire   [0:0] xor_ln895_1607_fu_513_p2;
wire   [0:0] p_Result_6953_fu_357_p3;
wire   [0:0] or_ln895_524_fu_519_p2;
wire   [0:0] xor_ln895_1608_fu_525_p2;
wire   [0:0] deleted_ones_1080_fu_501_p2;
wire   [0:0] xor_ln896_1608_fu_537_p2;
wire   [0:0] and_ln891_553_fu_507_p2;
wire   [0:0] or_ln896_523_fu_543_p2;
wire   [0:0] xor_ln896_1694_fu_549_p2;
wire   [0:0] underflow_1081_fu_555_p2;
wire   [5:0] trunc_ln828_503_fu_601_p1;
wire   [0:0] p_Result_6936_fu_585_p3;
wire   [0:0] r_518_fu_605_p2;
wire   [0:0] or_ln374_519_fu_619_p2;
wire   [0:0] p_Result_6958_fu_593_p3;
wire   [0:0] and_ln374_524_fu_625_p2;
wire   [11:0] p_Val2_3158_fu_575_p4;
wire   [11:0] zext_ln377_524_fu_631_p1;
wire   [0:0] p_Result_6960_fu_641_p3;
wire   [0:0] xor_ln888_857_fu_663_p2;
wire   [0:0] or_ln888_435_fu_669_p2;
wire   [0:0] tmp_4779_fu_681_p3;
wire   [0:0] xor_ln890_524_fu_689_p2;
wire   [0:0] or_ln890_435_fu_695_p2;
wire   [0:0] deleted_zeros_488_fu_675_p2;
wire   [0:0] xor_ln895_1609_fu_707_p2;
wire   [0:0] or_ln895_525_fu_713_p2;
wire   [0:0] xor_ln895_1610_fu_719_p2;
wire   [0:0] deleted_ones_1081_fu_701_p2;
wire   [0:0] xor_ln896_1610_fu_731_p2;
wire   [0:0] carry_1017_fu_743_p2;
wire   [0:0] and_ln891_554_fu_747_p2;
wire   [0:0] xor_ln896_1695_fu_752_p2;
wire   [0:0] underflow_1082_fu_757_p2;
wire   [0:0] or_ln346_525_fu_769_p2;
wire   [11:0] select_ln346_786_fu_762_p3;
wire   [18:0] p_Result_6961_fu_786_p1;
wire   [18:0] p_Val2_3161_fu_794_p1;
wire   [18:0] p_Result_6941_fu_804_p1;
wire   [18:0] p_Result_6962_fu_812_p1;
wire   [18:0] trunc_ln828_504_fu_820_p0;
wire   [5:0] trunc_ln828_504_fu_820_p1;
wire   [18:0] p_Result_6963_fu_830_p1;
wire   [0:0] p_Result_6941_fu_804_p3;
wire   [0:0] r_519_fu_824_p2;
wire   [0:0] or_ln374_520_fu_838_p2;
wire   [0:0] p_Result_6962_fu_812_p3;
wire   [0:0] and_ln374_525_fu_844_p2;
wire   [11:0] p_Val2_3161_fu_794_p4;
wire   [11:0] zext_ln377_525_fu_850_p1;
wire   [0:0] p_Result_6964_fu_860_p3;
wire   [18:0] Range2_all_ones_939_fu_874_p1;
wire   [0:0] xor_ln888_859_fu_882_p2;
wire   [0:0] or_ln888_436_fu_888_p2;
wire   [18:0] tmp_4786_fu_900_p1;
wire   [0:0] tmp_4786_fu_900_p3;
wire   [0:0] xor_ln890_525_fu_908_p2;
wire   [0:0] or_ln890_436_fu_914_p2;
wire   [0:0] deleted_zeros_489_fu_894_p2;
wire   [0:0] xor_ln895_1611_fu_926_p2;
wire   [0:0] or_ln895_526_fu_932_p2;
wire   [0:0] xor_ln895_1612_fu_938_p2;
wire   [0:0] deleted_ones_1082_fu_920_p2;
wire   [0:0] xor_ln896_1612_fu_950_p2;
wire  signed [11:0] rhs_524_fu_774_p3;
wire  signed [12:0] sext_ln813_1036_fu_965_p1;
wire  signed [12:0] sext_ln813_1035_fu_962_p1;
wire   [12:0] ret_V_555_fu_969_p2;
wire   [11:0] p_Val2_3167_fu_983_p2;
wire   [0:0] p_Result_6967_fu_975_p3;
wire   [0:0] p_Result_6968_fu_988_p3;
wire   [0:0] xor_ln895_1614_fu_996_p2;
wire   [0:0] xor_ln896_1614_fu_1008_p2;
wire   [0:0] xor_ln302_1113_fu_1020_p2;
wire   [0:0] overflow_1085_fu_1002_p2;
wire   [0:0] xor_ln302_1114_fu_1026_p2;
wire   [0:0] underflow_1085_fu_1014_p2;
wire   [0:0] or_ln302_555_fu_1032_p2;
wire   [11:0] select_ln302_1113_fu_1038_p3;
wire   [11:0] select_ln350_555_fu_1046_p3;
wire    ap_CS_fsm_state4;
wire   [11:0] select_ln346_785_fu_1065_p3;
wire  signed [11:0] sext_ln856_fu_1062_p1;
wire   [0:0] carry_1019_fu_1079_p2;
wire   [0:0] and_ln891_555_fu_1083_p2;
wire   [0:0] xor_ln896_1696_fu_1088_p2;
wire   [0:0] underflow_1083_fu_1093_p2;
wire   [0:0] or_ln346_526_fu_1105_p2;
wire   [11:0] select_ln346_787_fu_1098_p3;
wire  signed [11:0] rhs_fu_1072_p3;
wire  signed [12:0] sext_ln813_fu_1117_p1;
wire   [12:0] ret_V_fu_1121_p2;
wire   [11:0] p_Val2_3165_fu_1135_p2;
wire   [0:0] p_Result_6965_fu_1127_p3;
wire   [0:0] p_Result_6966_fu_1141_p3;
wire   [0:0] xor_ln895_1613_fu_1149_p2;
wire   [0:0] xor_ln896_1613_fu_1161_p2;
wire   [0:0] xor_ln302_fu_1173_p2;
wire   [0:0] overflow_1084_fu_1155_p2;
wire   [0:0] xor_ln302_1112_fu_1179_p2;
wire   [0:0] underflow_1084_fu_1167_p2;
wire   [0:0] or_ln302_fu_1185_p2;
wire   [11:0] select_ln302_fu_1191_p3;
wire   [11:0] select_ln350_fu_1199_p3;
wire  signed [11:0] p_Val2_3173_fu_1207_p3;
wire  signed [11:0] rhs_525_fu_1110_p3;
wire  signed [12:0] sext_ln813_1038_fu_1219_p1;
wire  signed [12:0] sext_ln813_1037_fu_1215_p1;
wire   [12:0] ret_V_556_fu_1223_p2;
wire   [11:0] p_Val2_3171_fu_1237_p2;
wire   [0:0] p_Result_6969_fu_1229_p3;
wire   [0:0] p_Result_6970_fu_1243_p3;
wire   [0:0] xor_ln895_1615_fu_1251_p2;
wire   [0:0] xor_ln896_1615_fu_1263_p2;
wire   [0:0] xor_ln302_1115_fu_1275_p2;
wire   [0:0] overflow_1086_fu_1257_p2;
wire   [0:0] xor_ln302_1116_fu_1281_p2;
wire   [0:0] underflow_1086_fu_1269_p2;
wire   [0:0] or_ln302_556_fu_1287_p2;
wire   [11:0] select_ln302_1115_fu_1293_p3;
wire   [11:0] select_ln350_556_fu_1301_p3;
wire   [11:0] p_Val2_3172_fu_1309_p3;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
end

der_dnn2_mul_12s_9s_20_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 12 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 20 ))
mul_12s_9s_20_1_1_U235(
    .din0(grp_fu_96_p0),
    .din1(grp_fu_96_p1),
    .dout(grp_fu_96_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        Range2_all_ones_938_reg_1405 <= grp_fu_96_p2[32'd19];
        or_ln346_524_reg_1380 <= or_ln346_524_fu_561_p2;
        or_ln896_524_reg_1416 <= or_ln896_524_fu_737_p2;
        overflow_1081_reg_1375 <= overflow_1081_fu_531_p2;
        overflow_1082_reg_1410 <= overflow_1082_fu_725_p2;
        p_Result_6957_reg_1385 <= grp_fu_96_p2[32'd19];
        p_Result_6959_reg_1390 <= grp_fu_96_p2[32'd18];
        p_Val2_3156_reg_1370 <= p_Val2_3156_fu_429_p2;
        p_Val2_3159_reg_1395 <= p_Val2_3159_fu_635_p2;
        p_Val2_s_reg_1364 <= p_Val2_s_fu_335_p3;
        xor_ln896_1609_reg_1400 <= xor_ln896_1609_fu_649_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        Range2_all_ones_939_reg_1441 <= Range2_all_ones_939_fu_874_p1[32'd18];
        or_ln896_525_reg_1452 <= or_ln896_525_fu_956_p2;
        overflow_1083_reg_1446 <= overflow_1083_fu_944_p2;
        p_Result_6961_reg_1421 <= p_Result_6961_fu_786_p1[32'd18];
        p_Result_6963_reg_1426 <= p_Result_6963_fu_830_p1[32'd18];
        p_Val2_3162_reg_1431 <= p_Val2_3162_fu_854_p2;
        p_Val2_3169_reg_1457 <= p_Val2_3169_fu_1054_p3;
        xor_ln896_1611_reg_1436 <= xor_ln896_1611_fu_868_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        Range2_all_ones_reg_1348 <= Range2_all_ones_fu_216_p1[32'd17];
        or_ln896_reg_1359 <= or_ln896_fu_298_p2;
        overflow_reg_1353 <= overflow_fu_286_p2;
        p_Result_6949_reg_1328 <= p_Result_6949_fu_124_p1[32'd17];
        p_Result_6951_reg_1333 <= p_Result_6951_fu_172_p1[32'd17];
        p_Val2_3154_reg_1338 <= p_Val2_3154_fu_196_p2;
        xor_ln896_reg_1343 <= xor_ln896_fu_210_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_port_reg_p_read1 <= p_read1;
        ap_port_reg_p_read2 <= p_read2;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) | (1'b0 == ap_ce))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state4) & (1'b1 == ap_ce)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'b1 == ap_ce))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_96_p0 = sext_ln70_66_fu_781_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_96_p0 = sext_ln1273_fu_342_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_96_p0 = sext_ln70_fu_119_p1;
    end else begin
        grp_fu_96_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_96_p1 = 19'd49;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_96_p1 = 20'd70;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_96_p1 = 18'd262123;
    end else begin
        grp_fu_96_p1 = 'bx;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (1'b1 == ap_ce))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (1'b1 == ap_ce))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (1'b1 == ap_ce))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Range2_all_ones_937_fu_455_p3 = r_V_514_fu_351_p2[32'd12];

assign Range2_all_ones_938_fu_655_p3 = grp_fu_96_p2[32'd19];

assign Range2_all_ones_939_fu_874_p1 = grp_fu_96_p2;

assign Range2_all_ones_939_fu_874_p3 = Range2_all_ones_939_fu_874_p1[32'd18];

assign Range2_all_ones_fu_216_p1 = grp_fu_96_p2;

assign Range2_all_ones_fu_216_p3 = Range2_all_ones_fu_216_p1[32'd17];

assign and_ln374_523_fu_419_p2 = (p_Result_6954_fu_387_p3 & or_ln374_518_fu_413_p2);

assign and_ln374_524_fu_625_p2 = (p_Result_6958_fu_593_p3 & or_ln374_519_fu_619_p2);

assign and_ln374_525_fu_844_p2 = (p_Result_6962_fu_812_p3 & or_ln374_520_fu_838_p2);

assign and_ln374_fu_186_p2 = (p_Result_6950_fu_154_p3 & or_ln374_fu_180_p2);

assign and_ln891_553_fu_507_p2 = (carry_1015_fu_449_p2 & Range2_all_ones_937_fu_455_p3);

assign and_ln891_554_fu_747_p2 = (carry_1017_fu_743_p2 & Range2_all_ones_938_reg_1405);

assign and_ln891_555_fu_1083_p2 = (carry_1019_fu_1079_p2 & Range2_all_ones_939_reg_1441);

assign and_ln891_fu_308_p2 = (carry_1013_fu_304_p2 & Range2_all_ones_reg_1348);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_return_0 = p_Val2_3172_fu_1309_p3;

assign ap_return_1 = p_Val2_3169_reg_1457;

assign carry_1013_fu_304_p2 = (xor_ln896_reg_1343 & p_Result_6951_reg_1333);

assign carry_1015_fu_449_p2 = (xor_ln896_1607_fu_443_p2 & p_Result_6955_fu_405_p3);

assign carry_1017_fu_743_p2 = (xor_ln896_1609_reg_1400 & p_Result_6959_reg_1390);

assign carry_1019_fu_1079_p2 = (xor_ln896_1611_reg_1436 & p_Result_6963_reg_1426);

assign deleted_ones_1080_fu_501_p2 = (or_ln890_434_fu_495_p2 & Range2_all_ones_937_fu_455_p3);

assign deleted_ones_1081_fu_701_p2 = (or_ln890_435_fu_695_p2 & Range2_all_ones_938_fu_655_p3);

assign deleted_ones_1082_fu_920_p2 = (or_ln890_436_fu_914_p2 & Range2_all_ones_939_fu_874_p3);

assign deleted_ones_fu_262_p2 = (or_ln890_fu_256_p2 & Range2_all_ones_fu_216_p3);

assign deleted_zeros_487_fu_475_p2 = (or_ln888_434_fu_469_p2 ^ Range2_all_ones_937_fu_455_p3);

assign deleted_zeros_488_fu_675_p2 = (or_ln888_435_fu_669_p2 ^ Range2_all_ones_938_fu_655_p3);

assign deleted_zeros_489_fu_894_p2 = (or_ln888_436_fu_888_p2 ^ Range2_all_ones_939_fu_874_p3);

assign deleted_zeros_fu_236_p2 = (or_ln888_fu_230_p2 ^ Range2_all_ones_fu_216_p3);

assign or_ln302_555_fu_1032_p2 = (xor_ln302_1114_fu_1026_p2 | overflow_1085_fu_1002_p2);

assign or_ln302_556_fu_1287_p2 = (xor_ln302_1116_fu_1281_p2 | overflow_1086_fu_1257_p2);

assign or_ln302_fu_1185_p2 = (xor_ln302_1112_fu_1179_p2 | overflow_1084_fu_1155_p2);

assign or_ln346_524_fu_561_p2 = (underflow_1081_fu_555_p2 | overflow_1081_fu_531_p2);

assign or_ln346_525_fu_769_p2 = (underflow_1082_fu_757_p2 | overflow_1082_reg_1410);

assign or_ln346_526_fu_1105_p2 = (underflow_1083_fu_1093_p2 | overflow_1083_reg_1446);

assign or_ln346_fu_330_p2 = (underflow_fu_318_p2 | overflow_reg_1353);

assign or_ln374_518_fu_413_p2 = (r_517_fu_399_p2 | p_Result_6931_fu_379_p3);

assign or_ln374_519_fu_619_p2 = (r_518_fu_605_p2 | p_Result_6936_fu_585_p3);

assign or_ln374_520_fu_838_p2 = (r_519_fu_824_p2 | p_Result_6941_fu_804_p3);

assign or_ln374_fu_180_p2 = (r_fu_166_p2 | p_Result_s_fu_146_p3);

assign or_ln888_434_fu_469_p2 = (xor_ln888_855_fu_463_p2 | p_Result_6956_fu_435_p3);

assign or_ln888_435_fu_669_p2 = (xor_ln888_857_fu_663_p2 | p_Result_6960_fu_641_p3);

assign or_ln888_436_fu_888_p2 = (xor_ln888_859_fu_882_p2 | p_Result_6964_fu_860_p3);

assign or_ln888_fu_230_p2 = (xor_ln888_fu_224_p2 | p_Result_6952_fu_202_p3);

assign or_ln890_434_fu_495_p2 = (xor_ln890_523_fu_489_p2 | or_ln888_434_fu_469_p2);

assign or_ln890_435_fu_695_p2 = (xor_ln890_524_fu_689_p2 | or_ln888_435_fu_669_p2);

assign or_ln890_436_fu_914_p2 = (xor_ln890_525_fu_908_p2 | or_ln888_436_fu_888_p2);

assign or_ln890_fu_256_p2 = (xor_ln890_fu_250_p2 | or_ln888_fu_230_p2);

assign or_ln895_524_fu_519_p2 = (xor_ln895_1607_fu_513_p2 | p_Result_6956_fu_435_p3);

assign or_ln895_525_fu_713_p2 = (xor_ln895_1609_fu_707_p2 | p_Result_6960_fu_641_p3);

assign or_ln895_526_fu_932_p2 = (xor_ln895_1611_fu_926_p2 | p_Result_6964_fu_860_p3);

assign or_ln895_fu_274_p2 = (xor_ln895_fu_268_p2 | p_Result_6952_fu_202_p3);

assign or_ln896_523_fu_543_p2 = (xor_ln896_1608_fu_537_p2 | xor_ln896_1607_fu_443_p2);

assign or_ln896_524_fu_737_p2 = (xor_ln896_1610_fu_731_p2 | xor_ln896_1609_fu_649_p2);

assign or_ln896_525_fu_956_p2 = (xor_ln896_1612_fu_950_p2 | xor_ln896_1611_fu_868_p2);

assign or_ln896_fu_298_p2 = (xor_ln896_fu_210_p2 | xor_ln896_1606_fu_292_p2);

assign overflow_1081_fu_531_p2 = (xor_ln895_1608_fu_525_p2 & or_ln895_524_fu_519_p2);

assign overflow_1082_fu_725_p2 = (xor_ln895_1610_fu_719_p2 & or_ln895_525_fu_713_p2);

assign overflow_1083_fu_944_p2 = (xor_ln895_1612_fu_938_p2 & or_ln895_526_fu_932_p2);

assign overflow_1084_fu_1155_p2 = (xor_ln895_1613_fu_1149_p2 & p_Result_6966_fu_1141_p3);

assign overflow_1085_fu_1002_p2 = (xor_ln895_1614_fu_996_p2 & p_Result_6968_fu_988_p3);

assign overflow_1086_fu_1257_p2 = (xor_ln895_1615_fu_1251_p2 & p_Result_6970_fu_1243_p3);

assign overflow_fu_286_p2 = (xor_ln895_1606_fu_280_p2 & or_ln895_fu_274_p2);

assign p_Result_6931_fu_379_p3 = r_V_514_fu_351_p2[32'd7];

assign p_Result_6936_fu_585_p3 = grp_fu_96_p2[32'd7];

assign p_Result_6941_fu_804_p1 = grp_fu_96_p2;

assign p_Result_6941_fu_804_p3 = p_Result_6941_fu_804_p1[32'd7];

assign p_Result_6949_fu_124_p1 = grp_fu_96_p2;

assign p_Result_6949_fu_124_p3 = p_Result_6949_fu_124_p1[32'd17];

assign p_Result_6950_fu_154_p1 = grp_fu_96_p2;

assign p_Result_6950_fu_154_p3 = p_Result_6950_fu_154_p1[32'd6];

assign p_Result_6951_fu_172_p1 = grp_fu_96_p2;

assign p_Result_6951_fu_172_p3 = p_Result_6951_fu_172_p1[32'd17];

assign p_Result_6952_fu_202_p3 = p_Val2_3154_fu_196_p2[32'd11];

assign p_Result_6953_fu_357_p3 = r_V_514_fu_351_p2[32'd12];

assign p_Result_6954_fu_387_p3 = r_V_514_fu_351_p2[32'd6];

assign p_Result_6955_fu_405_p3 = r_V_514_fu_351_p2[32'd12];

assign p_Result_6956_fu_435_p3 = p_Val2_3156_fu_429_p2[32'd6];

assign p_Result_6957_fu_567_p3 = grp_fu_96_p2[32'd19];

assign p_Result_6958_fu_593_p3 = grp_fu_96_p2[32'd6];

assign p_Result_6959_fu_611_p3 = grp_fu_96_p2[32'd18];

assign p_Result_6960_fu_641_p3 = p_Val2_3159_fu_635_p2[32'd11];

assign p_Result_6961_fu_786_p1 = grp_fu_96_p2;

assign p_Result_6961_fu_786_p3 = p_Result_6961_fu_786_p1[32'd18];

assign p_Result_6962_fu_812_p1 = grp_fu_96_p2;

assign p_Result_6962_fu_812_p3 = p_Result_6962_fu_812_p1[32'd6];

assign p_Result_6963_fu_830_p1 = grp_fu_96_p2;

assign p_Result_6963_fu_830_p3 = p_Result_6963_fu_830_p1[32'd18];

assign p_Result_6964_fu_860_p3 = p_Val2_3162_fu_854_p2[32'd11];

assign p_Result_6965_fu_1127_p3 = ret_V_fu_1121_p2[32'd12];

assign p_Result_6966_fu_1141_p3 = p_Val2_3165_fu_1135_p2[32'd11];

assign p_Result_6967_fu_975_p3 = ret_V_555_fu_969_p2[32'd12];

assign p_Result_6968_fu_988_p3 = p_Val2_3167_fu_983_p2[32'd11];

assign p_Result_6969_fu_1229_p3 = ret_V_556_fu_1223_p2[32'd12];

assign p_Result_6970_fu_1243_p3 = p_Val2_3171_fu_1237_p2[32'd11];

assign p_Result_s_fu_146_p1 = grp_fu_96_p2;

assign p_Result_s_fu_146_p3 = p_Result_s_fu_146_p1[32'd7];

assign p_Val2_3153_fu_132_p1 = grp_fu_96_p2;

assign p_Val2_3153_fu_132_p4 = {{p_Val2_3153_fu_132_p1[17:7]}};

assign p_Val2_3154_fu_196_p2 = ($signed(sext_ln818_fu_142_p1) + $signed(zext_ln377_fu_192_p1));

assign p_Val2_3155_fu_365_p4 = {{r_V_514_fu_351_p2[12:7]}};

assign p_Val2_3156_fu_429_p2 = ($signed(sext_ln823_fu_375_p1) + $signed(zext_ln377_523_fu_425_p1));

assign p_Val2_3158_fu_575_p4 = {{grp_fu_96_p2[18:7]}};

assign p_Val2_3159_fu_635_p2 = (p_Val2_3158_fu_575_p4 + zext_ln377_524_fu_631_p1);

assign p_Val2_3161_fu_794_p1 = grp_fu_96_p2;

assign p_Val2_3161_fu_794_p4 = {{p_Val2_3161_fu_794_p1[18:7]}};

assign p_Val2_3162_fu_854_p2 = (p_Val2_3161_fu_794_p4 + zext_ln377_525_fu_850_p1);

assign p_Val2_3165_fu_1135_p2 = ($signed(rhs_fu_1072_p3) + $signed(12'd12));

assign p_Val2_3167_fu_983_p2 = ($signed(rhs_524_fu_774_p3) + $signed(p_Val2_s_reg_1364));

assign p_Val2_3169_fu_1054_p3 = ((or_ln302_555_fu_1032_p2[0:0] == 1'b1) ? select_ln302_1113_fu_1038_p3 : select_ln350_555_fu_1046_p3);

assign p_Val2_3171_fu_1237_p2 = ($signed(rhs_525_fu_1110_p3) + $signed(p_Val2_3173_fu_1207_p3));

assign p_Val2_3172_fu_1309_p3 = ((or_ln302_556_fu_1287_p2[0:0] == 1'b1) ? select_ln302_1115_fu_1293_p3 : select_ln350_556_fu_1301_p3);

assign p_Val2_3173_fu_1207_p3 = ((or_ln302_fu_1185_p2[0:0] == 1'b1) ? select_ln302_fu_1191_p3 : select_ln350_fu_1199_p3);

assign p_Val2_s_fu_335_p3 = ((or_ln346_fu_330_p2[0:0] == 1'b1) ? select_ln346_784_fu_323_p3 : p_Val2_3154_reg_1338);

assign r_517_fu_399_p2 = ((trunc_ln828_502_fu_395_p1 != 6'd0) ? 1'b1 : 1'b0);

assign r_518_fu_605_p2 = ((trunc_ln828_503_fu_601_p1 != 6'd0) ? 1'b1 : 1'b0);

assign r_519_fu_824_p2 = ((trunc_ln828_504_fu_820_p1 != 6'd0) ? 1'b1 : 1'b0);

assign r_V_514_fu_351_p2 = ($signed(13'd0) - $signed(sext_ln1273_349_fu_347_p1));

assign r_fu_166_p2 = ((trunc_ln828_fu_162_p1 != 6'd0) ? 1'b1 : 1'b0);

assign ret_V_555_fu_969_p2 = ($signed(sext_ln813_1036_fu_965_p1) + $signed(sext_ln813_1035_fu_962_p1));

assign ret_V_556_fu_1223_p2 = ($signed(sext_ln813_1038_fu_1219_p1) + $signed(sext_ln813_1037_fu_1215_p1));

assign ret_V_fu_1121_p2 = ($signed(sext_ln813_fu_1117_p1) + $signed(13'd12));

assign rhs_524_fu_774_p3 = ((or_ln346_525_fu_769_p2[0:0] == 1'b1) ? select_ln346_786_fu_762_p3 : p_Val2_3159_reg_1395);

assign rhs_525_fu_1110_p3 = ((or_ln346_526_fu_1105_p2[0:0] == 1'b1) ? select_ln346_787_fu_1098_p3 : p_Val2_3162_reg_1431);

assign rhs_fu_1072_p3 = ((or_ln346_524_reg_1380[0:0] == 1'b1) ? select_ln346_785_fu_1065_p3 : sext_ln856_fu_1062_p1);

assign select_ln302_1113_fu_1038_p3 = ((xor_ln302_1113_fu_1020_p2[0:0] == 1'b1) ? 12'd2047 : p_Val2_3167_fu_983_p2);

assign select_ln302_1115_fu_1293_p3 = ((xor_ln302_1115_fu_1275_p2[0:0] == 1'b1) ? 12'd2047 : p_Val2_3171_fu_1237_p2);

assign select_ln302_fu_1191_p3 = ((xor_ln302_fu_1173_p2[0:0] == 1'b1) ? 12'd2047 : p_Val2_3165_fu_1135_p2);

assign select_ln346_784_fu_323_p3 = ((overflow_reg_1353[0:0] == 1'b1) ? 12'd2047 : 12'd2048);

assign select_ln346_785_fu_1065_p3 = ((overflow_1081_reg_1375[0:0] == 1'b1) ? 12'd2047 : 12'd2048);

assign select_ln346_786_fu_762_p3 = ((overflow_1082_reg_1410[0:0] == 1'b1) ? 12'd2047 : 12'd2048);

assign select_ln346_787_fu_1098_p3 = ((overflow_1083_reg_1446[0:0] == 1'b1) ? 12'd2047 : 12'd2048);

assign select_ln350_555_fu_1046_p3 = ((underflow_1085_fu_1014_p2[0:0] == 1'b1) ? 12'd2048 : p_Val2_3167_fu_983_p2);

assign select_ln350_556_fu_1301_p3 = ((underflow_1086_fu_1269_p2[0:0] == 1'b1) ? 12'd2048 : p_Val2_3171_fu_1237_p2);

assign select_ln350_fu_1199_p3 = ((underflow_1084_fu_1167_p2[0:0] == 1'b1) ? 12'd2048 : p_Val2_3165_fu_1135_p2);

assign sext_ln1273_349_fu_347_p0 = ap_port_reg_p_read1;

assign sext_ln1273_349_fu_347_p1 = sext_ln1273_349_fu_347_p0;

assign sext_ln1273_fu_342_p0 = ap_port_reg_p_read1;

assign sext_ln1273_fu_342_p1 = sext_ln1273_fu_342_p0;

assign sext_ln70_66_fu_781_p1 = $signed(ap_port_reg_p_read2);

assign sext_ln70_fu_119_p1 = $signed(p_read);

assign sext_ln813_1035_fu_962_p1 = p_Val2_s_reg_1364;

assign sext_ln813_1036_fu_965_p1 = rhs_524_fu_774_p3;

assign sext_ln813_1037_fu_1215_p1 = p_Val2_3173_fu_1207_p3;

assign sext_ln813_1038_fu_1219_p1 = rhs_525_fu_1110_p3;

assign sext_ln813_fu_1117_p1 = rhs_fu_1072_p3;

assign sext_ln818_fu_142_p1 = $signed(p_Val2_3153_fu_132_p4);

assign sext_ln823_fu_375_p1 = $signed(p_Val2_3155_fu_365_p4);

assign sext_ln856_fu_1062_p1 = p_Val2_3156_reg_1370;

assign tmp_4772_fu_481_p3 = r_V_514_fu_351_p2[32'd12];

assign tmp_4779_fu_681_p3 = grp_fu_96_p2[32'd19];

assign tmp_4786_fu_900_p1 = grp_fu_96_p2;

assign tmp_4786_fu_900_p3 = tmp_4786_fu_900_p1[32'd18];

assign tmp_fu_242_p1 = grp_fu_96_p2;

assign tmp_fu_242_p3 = tmp_fu_242_p1[32'd17];

assign trunc_ln828_502_fu_395_p1 = r_V_514_fu_351_p2[5:0];

assign trunc_ln828_503_fu_601_p1 = grp_fu_96_p2[5:0];

assign trunc_ln828_504_fu_820_p0 = grp_fu_96_p2;

assign trunc_ln828_504_fu_820_p1 = trunc_ln828_504_fu_820_p0[5:0];

assign trunc_ln828_fu_162_p0 = grp_fu_96_p2;

assign trunc_ln828_fu_162_p1 = trunc_ln828_fu_162_p0[5:0];

assign underflow_1081_fu_555_p2 = (xor_ln896_1694_fu_549_p2 & p_Result_6953_fu_357_p3);

assign underflow_1082_fu_757_p2 = (xor_ln896_1695_fu_752_p2 & p_Result_6957_reg_1385);

assign underflow_1083_fu_1093_p2 = (xor_ln896_1696_fu_1088_p2 & p_Result_6961_reg_1421);

assign underflow_1084_fu_1167_p2 = (xor_ln896_1613_fu_1161_p2 & p_Result_6965_fu_1127_p3);

assign underflow_1085_fu_1014_p2 = (xor_ln896_1614_fu_1008_p2 & p_Result_6967_fu_975_p3);

assign underflow_1086_fu_1269_p2 = (xor_ln896_1615_fu_1263_p2 & p_Result_6969_fu_1229_p3);

assign underflow_fu_318_p2 = (xor_ln896_1693_fu_313_p2 & p_Result_6949_reg_1328);

assign xor_ln302_1112_fu_1179_p2 = (xor_ln302_fu_1173_p2 ^ 1'd1);

assign xor_ln302_1113_fu_1020_p2 = (p_Result_6968_fu_988_p3 ^ p_Result_6967_fu_975_p3);

assign xor_ln302_1114_fu_1026_p2 = (xor_ln302_1113_fu_1020_p2 ^ 1'd1);

assign xor_ln302_1115_fu_1275_p2 = (p_Result_6970_fu_1243_p3 ^ p_Result_6969_fu_1229_p3);

assign xor_ln302_1116_fu_1281_p2 = (xor_ln302_1115_fu_1275_p2 ^ 1'd1);

assign xor_ln302_fu_1173_p2 = (p_Result_6966_fu_1141_p3 ^ p_Result_6965_fu_1127_p3);

assign xor_ln888_855_fu_463_p2 = (p_Result_6955_fu_405_p3 ^ 1'd1);

assign xor_ln888_857_fu_663_p2 = (p_Result_6959_fu_611_p3 ^ 1'd1);

assign xor_ln888_859_fu_882_p2 = (p_Result_6963_fu_830_p3 ^ 1'd1);

assign xor_ln888_fu_224_p2 = (p_Result_6951_fu_172_p3 ^ 1'd1);

assign xor_ln890_523_fu_489_p2 = (tmp_4772_fu_481_p3 ^ 1'd1);

assign xor_ln890_524_fu_689_p2 = (tmp_4779_fu_681_p3 ^ 1'd1);

assign xor_ln890_525_fu_908_p2 = (tmp_4786_fu_900_p3 ^ 1'd1);

assign xor_ln890_fu_250_p2 = (tmp_fu_242_p3 ^ 1'd1);

assign xor_ln895_1606_fu_280_p2 = (p_Result_6949_fu_124_p3 ^ 1'd1);

assign xor_ln895_1607_fu_513_p2 = (deleted_zeros_487_fu_475_p2 ^ 1'd1);

assign xor_ln895_1608_fu_525_p2 = (p_Result_6953_fu_357_p3 ^ 1'd1);

assign xor_ln895_1609_fu_707_p2 = (deleted_zeros_488_fu_675_p2 ^ 1'd1);

assign xor_ln895_1610_fu_719_p2 = (p_Result_6957_fu_567_p3 ^ 1'd1);

assign xor_ln895_1611_fu_926_p2 = (deleted_zeros_489_fu_894_p2 ^ 1'd1);

assign xor_ln895_1612_fu_938_p2 = (p_Result_6961_fu_786_p3 ^ 1'd1);

assign xor_ln895_1613_fu_1149_p2 = (p_Result_6965_fu_1127_p3 ^ 1'd1);

assign xor_ln895_1614_fu_996_p2 = (p_Result_6967_fu_975_p3 ^ 1'd1);

assign xor_ln895_1615_fu_1251_p2 = (p_Result_6969_fu_1229_p3 ^ 1'd1);

assign xor_ln895_fu_268_p2 = (deleted_zeros_fu_236_p2 ^ 1'd1);

assign xor_ln896_1606_fu_292_p2 = (deleted_ones_fu_262_p2 ^ 1'd1);

assign xor_ln896_1607_fu_443_p2 = (p_Result_6956_fu_435_p3 ^ 1'd1);

assign xor_ln896_1608_fu_537_p2 = (deleted_ones_1080_fu_501_p2 ^ 1'd1);

assign xor_ln896_1609_fu_649_p2 = (p_Result_6960_fu_641_p3 ^ 1'd1);

assign xor_ln896_1610_fu_731_p2 = (deleted_ones_1081_fu_701_p2 ^ 1'd1);

assign xor_ln896_1611_fu_868_p2 = (p_Result_6964_fu_860_p3 ^ 1'd1);

assign xor_ln896_1612_fu_950_p2 = (deleted_ones_1082_fu_920_p2 ^ 1'd1);

assign xor_ln896_1613_fu_1161_p2 = (p_Result_6966_fu_1141_p3 ^ 1'd1);

assign xor_ln896_1614_fu_1008_p2 = (p_Result_6968_fu_988_p3 ^ 1'd1);

assign xor_ln896_1615_fu_1263_p2 = (p_Result_6970_fu_1243_p3 ^ 1'd1);

assign xor_ln896_1693_fu_313_p2 = (or_ln896_reg_1359 ^ and_ln891_fu_308_p2);

assign xor_ln896_1694_fu_549_p2 = (or_ln896_523_fu_543_p2 ^ and_ln891_553_fu_507_p2);

assign xor_ln896_1695_fu_752_p2 = (or_ln896_524_reg_1416 ^ and_ln891_554_fu_747_p2);

assign xor_ln896_1696_fu_1088_p2 = (or_ln896_525_reg_1452 ^ and_ln891_555_fu_1083_p2);

assign xor_ln896_fu_210_p2 = (p_Result_6952_fu_202_p3 ^ 1'd1);

assign zext_ln377_523_fu_425_p1 = and_ln374_523_fu_419_p2;

assign zext_ln377_524_fu_631_p1 = and_ln374_524_fu_625_p2;

assign zext_ln377_525_fu_850_p1 = and_ln374_525_fu_844_p2;

assign zext_ln377_fu_192_p1 = and_ln374_fu_186_p2;

endmodule //der_dnn2_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s
