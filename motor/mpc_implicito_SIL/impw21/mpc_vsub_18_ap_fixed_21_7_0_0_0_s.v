module mpc_vsub_18_ap_fixed_21_7_0_0_0_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_ce,
        A_address0,
        A_ce0,
        A_q0,
        A_address1,
        A_ce1,
        A_q1,
        B_address0,
        B_ce0,
        B_q0,
        B_address1,
        B_ce1,
        B_q1,
        R_address0,
        R_ce0,
        R_we0,
        R_d0,
        R_address1,
        R_ce1,
        R_we1,
        R_d1
);

parameter    ap_ST_fsm_pp0_stage0 = 9'd1;
parameter    ap_ST_fsm_pp0_stage1 = 9'd2;
parameter    ap_ST_fsm_pp0_stage2 = 9'd4;
parameter    ap_ST_fsm_pp0_stage3 = 9'd8;
parameter    ap_ST_fsm_pp0_stage4 = 9'd16;
parameter    ap_ST_fsm_pp0_stage5 = 9'd32;
parameter    ap_ST_fsm_pp0_stage6 = 9'd64;
parameter    ap_ST_fsm_pp0_stage7 = 9'd128;
parameter    ap_ST_fsm_pp0_stage8 = 9'd256;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   ap_ce;
output  [4:0] A_address0;
output   A_ce0;
input  [20:0] A_q0;
output  [4:0] A_address1;
output   A_ce1;
input  [20:0] A_q1;
output  [4:0] B_address0;
output   B_ce0;
input  [20:0] B_q0;
output  [4:0] B_address1;
output   B_ce1;
input  [20:0] B_q1;
output  [4:0] R_address0;
output   R_ce0;
output   R_we0;
output  [20:0] R_d0;
output  [4:0] R_address1;
output   R_ce1;
output   R_we1;
output  [20:0] R_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] A_address0;
reg A_ce0;
reg[4:0] A_address1;
reg A_ce1;
reg[4:0] B_address0;
reg B_ce0;
reg[4:0] B_address1;
reg B_ce1;
reg[4:0] R_address0;
reg R_ce0;
reg R_we0;
reg[20:0] R_d0;
reg[4:0] R_address1;
reg R_ce1;
reg R_we1;
reg[20:0] R_d1;

(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_state9_pp0_stage8_iter0;
reg    ap_block_pp0_stage8_subdone;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state10_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_state3_pp0_stage2_iter0;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_state4_pp0_stage3_iter0;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_state5_pp0_stage4_iter0;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_state6_pp0_stage5_iter0;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_state7_pp0_stage6_iter0;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_state8_pp0_stage7_iter0;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage8_11001;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire   [20:0] select_ln302_fu_627_p3;
wire   [20:0] select_ln302_1_fu_696_p3;
wire   [20:0] select_ln302_2_fu_765_p3;
wire   [20:0] select_ln302_3_fu_834_p3;
wire   [20:0] select_ln302_4_fu_903_p3;
wire   [20:0] select_ln302_5_fu_972_p3;
wire   [20:0] select_ln302_6_fu_1041_p3;
wire   [20:0] select_ln302_7_fu_1110_p3;
wire   [20:0] select_ln302_8_fu_1179_p3;
wire   [20:0] select_ln302_9_fu_1248_p3;
wire   [20:0] select_ln302_10_fu_1317_p3;
wire   [20:0] select_ln302_11_fu_1386_p3;
wire   [20:0] select_ln302_12_fu_1455_p3;
wire   [20:0] select_ln302_13_fu_1524_p3;
wire   [20:0] select_ln302_14_fu_1593_p3;
wire   [20:0] select_ln302_15_fu_1662_p3;
wire   [20:0] select_ln302_16_fu_1731_p3;
wire   [20:0] select_ln302_17_fu_1800_p3;
wire  signed [21:0] sext_ln813_fu_567_p1;
wire  signed [21:0] sext_ln813_1_fu_571_p1;
wire   [21:0] sub_ln1348_fu_575_p2;
wire   [0:0] tmp_fu_581_p3;
wire   [0:0] tmp_1_fu_593_p3;
wire   [0:0] xor_ln895_fu_601_p2;
wire   [0:0] and_ln895_fu_607_p2;
wire   [0:0] xor_ln302_fu_613_p2;
wire   [20:0] select_ln346_fu_619_p3;
wire   [20:0] trunc_ln813_fu_589_p1;
wire  signed [21:0] sext_ln813_2_fu_636_p1;
wire  signed [21:0] sext_ln813_3_fu_640_p1;
wire   [21:0] sub_ln1348_1_fu_644_p2;
wire   [0:0] tmp_2_fu_650_p3;
wire   [0:0] tmp_3_fu_662_p3;
wire   [0:0] xor_ln895_1_fu_670_p2;
wire   [0:0] and_ln895_1_fu_676_p2;
wire   [0:0] xor_ln302_1_fu_682_p2;
wire   [20:0] select_ln346_1_fu_688_p3;
wire   [20:0] trunc_ln813_1_fu_658_p1;
wire  signed [21:0] sext_ln813_4_fu_705_p1;
wire  signed [21:0] sext_ln813_5_fu_709_p1;
wire   [21:0] sub_ln1348_2_fu_713_p2;
wire   [0:0] tmp_4_fu_719_p3;
wire   [0:0] tmp_5_fu_731_p3;
wire   [0:0] xor_ln895_2_fu_739_p2;
wire   [0:0] and_ln895_2_fu_745_p2;
wire   [0:0] xor_ln302_2_fu_751_p2;
wire   [20:0] select_ln346_2_fu_757_p3;
wire   [20:0] trunc_ln813_2_fu_727_p1;
wire  signed [21:0] sext_ln813_6_fu_774_p1;
wire  signed [21:0] sext_ln813_7_fu_778_p1;
wire   [21:0] sub_ln1348_3_fu_782_p2;
wire   [0:0] tmp_6_fu_788_p3;
wire   [0:0] tmp_7_fu_800_p3;
wire   [0:0] xor_ln895_3_fu_808_p2;
wire   [0:0] and_ln895_3_fu_814_p2;
wire   [0:0] xor_ln302_3_fu_820_p2;
wire   [20:0] select_ln346_3_fu_826_p3;
wire   [20:0] trunc_ln813_3_fu_796_p1;
wire  signed [21:0] sext_ln813_8_fu_843_p1;
wire  signed [21:0] sext_ln813_9_fu_847_p1;
wire   [21:0] sub_ln1348_4_fu_851_p2;
wire   [0:0] tmp_8_fu_857_p3;
wire   [0:0] tmp_9_fu_869_p3;
wire   [0:0] xor_ln895_4_fu_877_p2;
wire   [0:0] and_ln895_4_fu_883_p2;
wire   [0:0] xor_ln302_4_fu_889_p2;
wire   [20:0] select_ln346_4_fu_895_p3;
wire   [20:0] trunc_ln813_4_fu_865_p1;
wire  signed [21:0] sext_ln813_10_fu_912_p1;
wire  signed [21:0] sext_ln813_11_fu_916_p1;
wire   [21:0] sub_ln1348_5_fu_920_p2;
wire   [0:0] tmp_10_fu_926_p3;
wire   [0:0] tmp_11_fu_938_p3;
wire   [0:0] xor_ln895_5_fu_946_p2;
wire   [0:0] and_ln895_5_fu_952_p2;
wire   [0:0] xor_ln302_5_fu_958_p2;
wire   [20:0] select_ln346_5_fu_964_p3;
wire   [20:0] trunc_ln813_5_fu_934_p1;
wire  signed [21:0] sext_ln813_12_fu_981_p1;
wire  signed [21:0] sext_ln813_13_fu_985_p1;
wire   [21:0] sub_ln1348_6_fu_989_p2;
wire   [0:0] tmp_12_fu_995_p3;
wire   [0:0] tmp_13_fu_1007_p3;
wire   [0:0] xor_ln895_6_fu_1015_p2;
wire   [0:0] and_ln895_6_fu_1021_p2;
wire   [0:0] xor_ln302_6_fu_1027_p2;
wire   [20:0] select_ln346_6_fu_1033_p3;
wire   [20:0] trunc_ln813_6_fu_1003_p1;
wire  signed [21:0] sext_ln813_14_fu_1050_p1;
wire  signed [21:0] sext_ln813_15_fu_1054_p1;
wire   [21:0] sub_ln1348_7_fu_1058_p2;
wire   [0:0] tmp_14_fu_1064_p3;
wire   [0:0] tmp_15_fu_1076_p3;
wire   [0:0] xor_ln895_7_fu_1084_p2;
wire   [0:0] and_ln895_7_fu_1090_p2;
wire   [0:0] xor_ln302_7_fu_1096_p2;
wire   [20:0] select_ln346_7_fu_1102_p3;
wire   [20:0] trunc_ln813_7_fu_1072_p1;
wire  signed [21:0] sext_ln813_16_fu_1119_p1;
wire  signed [21:0] sext_ln813_17_fu_1123_p1;
wire   [21:0] sub_ln1348_8_fu_1127_p2;
wire   [0:0] tmp_16_fu_1133_p3;
wire   [0:0] tmp_17_fu_1145_p3;
wire   [0:0] xor_ln895_8_fu_1153_p2;
wire   [0:0] and_ln895_8_fu_1159_p2;
wire   [0:0] xor_ln302_8_fu_1165_p2;
wire   [20:0] select_ln346_8_fu_1171_p3;
wire   [20:0] trunc_ln813_8_fu_1141_p1;
wire  signed [21:0] sext_ln813_18_fu_1188_p1;
wire  signed [21:0] sext_ln813_19_fu_1192_p1;
wire   [21:0] sub_ln1348_9_fu_1196_p2;
wire   [0:0] tmp_18_fu_1202_p3;
wire   [0:0] tmp_19_fu_1214_p3;
wire   [0:0] xor_ln895_9_fu_1222_p2;
wire   [0:0] and_ln895_9_fu_1228_p2;
wire   [0:0] xor_ln302_9_fu_1234_p2;
wire   [20:0] select_ln346_9_fu_1240_p3;
wire   [20:0] trunc_ln813_9_fu_1210_p1;
wire  signed [21:0] sext_ln813_20_fu_1257_p1;
wire  signed [21:0] sext_ln813_21_fu_1261_p1;
wire   [21:0] sub_ln1348_10_fu_1265_p2;
wire   [0:0] tmp_20_fu_1271_p3;
wire   [0:0] tmp_21_fu_1283_p3;
wire   [0:0] xor_ln895_10_fu_1291_p2;
wire   [0:0] and_ln895_10_fu_1297_p2;
wire   [0:0] xor_ln302_10_fu_1303_p2;
wire   [20:0] select_ln346_10_fu_1309_p3;
wire   [20:0] trunc_ln813_10_fu_1279_p1;
wire  signed [21:0] sext_ln813_22_fu_1326_p1;
wire  signed [21:0] sext_ln813_23_fu_1330_p1;
wire   [21:0] sub_ln1348_11_fu_1334_p2;
wire   [0:0] tmp_22_fu_1340_p3;
wire   [0:0] tmp_23_fu_1352_p3;
wire   [0:0] xor_ln895_11_fu_1360_p2;
wire   [0:0] and_ln895_11_fu_1366_p2;
wire   [0:0] xor_ln302_11_fu_1372_p2;
wire   [20:0] select_ln346_11_fu_1378_p3;
wire   [20:0] trunc_ln813_11_fu_1348_p1;
wire  signed [21:0] sext_ln813_24_fu_1395_p1;
wire  signed [21:0] sext_ln813_25_fu_1399_p1;
wire   [21:0] sub_ln1348_12_fu_1403_p2;
wire   [0:0] tmp_24_fu_1409_p3;
wire   [0:0] tmp_25_fu_1421_p3;
wire   [0:0] xor_ln895_12_fu_1429_p2;
wire   [0:0] and_ln895_12_fu_1435_p2;
wire   [0:0] xor_ln302_12_fu_1441_p2;
wire   [20:0] select_ln346_12_fu_1447_p3;
wire   [20:0] trunc_ln813_12_fu_1417_p1;
wire  signed [21:0] sext_ln813_26_fu_1464_p1;
wire  signed [21:0] sext_ln813_27_fu_1468_p1;
wire   [21:0] sub_ln1348_13_fu_1472_p2;
wire   [0:0] tmp_26_fu_1478_p3;
wire   [0:0] tmp_27_fu_1490_p3;
wire   [0:0] xor_ln895_13_fu_1498_p2;
wire   [0:0] and_ln895_13_fu_1504_p2;
wire   [0:0] xor_ln302_13_fu_1510_p2;
wire   [20:0] select_ln346_13_fu_1516_p3;
wire   [20:0] trunc_ln813_13_fu_1486_p1;
wire  signed [21:0] sext_ln813_28_fu_1533_p1;
wire  signed [21:0] sext_ln813_29_fu_1537_p1;
wire   [21:0] sub_ln1348_14_fu_1541_p2;
wire   [0:0] tmp_28_fu_1547_p3;
wire   [0:0] tmp_29_fu_1559_p3;
wire   [0:0] xor_ln895_14_fu_1567_p2;
wire   [0:0] and_ln895_14_fu_1573_p2;
wire   [0:0] xor_ln302_14_fu_1579_p2;
wire   [20:0] select_ln346_14_fu_1585_p3;
wire   [20:0] trunc_ln813_14_fu_1555_p1;
wire  signed [21:0] sext_ln813_30_fu_1602_p1;
wire  signed [21:0] sext_ln813_31_fu_1606_p1;
wire   [21:0] sub_ln1348_15_fu_1610_p2;
wire   [0:0] tmp_30_fu_1616_p3;
wire   [0:0] tmp_31_fu_1628_p3;
wire   [0:0] xor_ln895_15_fu_1636_p2;
wire   [0:0] and_ln895_15_fu_1642_p2;
wire   [0:0] xor_ln302_15_fu_1648_p2;
wire   [20:0] select_ln346_15_fu_1654_p3;
wire   [20:0] trunc_ln813_15_fu_1624_p1;
wire  signed [21:0] sext_ln813_32_fu_1671_p1;
wire  signed [21:0] sext_ln813_33_fu_1675_p1;
wire   [21:0] sub_ln1348_16_fu_1679_p2;
wire   [0:0] tmp_32_fu_1685_p3;
wire   [0:0] tmp_33_fu_1697_p3;
wire   [0:0] xor_ln895_16_fu_1705_p2;
wire   [0:0] and_ln895_16_fu_1711_p2;
wire   [0:0] xor_ln302_16_fu_1717_p2;
wire   [20:0] select_ln346_16_fu_1723_p3;
wire   [20:0] trunc_ln813_16_fu_1693_p1;
wire  signed [21:0] sext_ln813_34_fu_1740_p1;
wire  signed [21:0] sext_ln813_35_fu_1744_p1;
wire   [21:0] sub_ln1348_17_fu_1748_p2;
wire   [0:0] tmp_34_fu_1754_p3;
wire   [0:0] tmp_35_fu_1766_p3;
wire   [0:0] xor_ln895_17_fu_1774_p2;
wire   [0:0] and_ln895_17_fu_1780_p2;
wire   [0:0] xor_ln302_17_fu_1786_p2;
wire   [20:0] select_ln346_17_fu_1792_p3;
wire   [20:0] trunc_ln813_17_fu_1762_p1;
reg   [8:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
reg    ap_reset_start_pp0;
reg    ap_idle_pp0_1to1;
reg    ap_block_pp0_stage1_subdone;
reg    ap_block_pp0_stage2_subdone;
reg    ap_block_pp0_stage3_subdone;
reg    ap_block_pp0_stage4_subdone;
reg    ap_block_pp0_stage5_subdone;
reg    ap_block_pp0_stage6_subdone;
reg    ap_block_pp0_stage7_subdone;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
end

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
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            A_address0 = 64'd17;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            A_address0 = 64'd15;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            A_address0 = 64'd13;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            A_address0 = 64'd11;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            A_address0 = 64'd9;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            A_address0 = 64'd7;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            A_address0 = 64'd5;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            A_address0 = 64'd3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            A_address0 = 64'd1;
        end else begin
            A_address0 = 'bx;
        end
    end else begin
        A_address0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            A_address1 = 64'd16;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            A_address1 = 64'd14;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            A_address1 = 64'd12;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            A_address1 = 64'd10;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            A_address1 = 64'd8;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            A_address1 = 64'd6;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            A_address1 = 64'd4;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            A_address1 = 64'd2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            A_address1 = 64'd0;
        end else begin
            A_address1 = 'bx;
        end
    end else begin
        A_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        A_ce0 = 1'b1;
    end else begin
        A_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        A_ce1 = 1'b1;
    end else begin
        A_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            B_address0 = 64'd17;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            B_address0 = 64'd15;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            B_address0 = 64'd13;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            B_address0 = 64'd11;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            B_address0 = 64'd9;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            B_address0 = 64'd7;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            B_address0 = 64'd5;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            B_address0 = 64'd3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            B_address0 = 64'd1;
        end else begin
            B_address0 = 'bx;
        end
    end else begin
        B_address0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            B_address1 = 64'd16;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            B_address1 = 64'd14;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            B_address1 = 64'd12;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            B_address1 = 64'd10;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            B_address1 = 64'd8;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            B_address1 = 64'd6;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            B_address1 = 64'd4;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            B_address1 = 64'd2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            B_address1 = 64'd0;
        end else begin
            B_address1 = 'bx;
        end
    end else begin
        B_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        B_ce0 = 1'b1;
    end else begin
        B_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        B_ce1 = 1'b1;
    end else begin
        B_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        R_address0 = 64'd17;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        R_address0 = 64'd15;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        R_address0 = 64'd13;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        R_address0 = 64'd11;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        R_address0 = 64'd9;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        R_address0 = 64'd7;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        R_address0 = 64'd5;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        R_address0 = 64'd3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        R_address0 = 64'd1;
    end else begin
        R_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        R_address1 = 64'd16;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        R_address1 = 64'd14;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        R_address1 = 64'd12;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        R_address1 = 64'd10;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        R_address1 = 64'd8;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        R_address1 = 64'd6;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        R_address1 = 64'd4;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        R_address1 = 64'd2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        R_address1 = 64'd0;
    end else begin
        R_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        R_ce0 = 1'b1;
    end else begin
        R_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        R_ce1 = 1'b1;
    end else begin
        R_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        R_d0 = select_ln302_17_fu_1800_p3;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        R_d0 = select_ln302_15_fu_1662_p3;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        R_d0 = select_ln302_13_fu_1524_p3;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        R_d0 = select_ln302_11_fu_1386_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        R_d0 = select_ln302_9_fu_1248_p3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        R_d0 = select_ln302_7_fu_1110_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        R_d0 = select_ln302_5_fu_972_p3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        R_d0 = select_ln302_3_fu_834_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        R_d0 = select_ln302_1_fu_696_p3;
    end else begin
        R_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        R_d1 = select_ln302_16_fu_1731_p3;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        R_d1 = select_ln302_14_fu_1593_p3;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        R_d1 = select_ln302_12_fu_1455_p3;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        R_d1 = select_ln302_10_fu_1317_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        R_d1 = select_ln302_8_fu_1179_p3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        R_d1 = select_ln302_6_fu_1041_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        R_d1 = select_ln302_4_fu_903_p3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        R_d1 = select_ln302_2_fu_765_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        R_d1 = select_ln302_fu_627_p3;
    end else begin
        R_d1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        R_we0 = 1'b1;
    end else begin
        R_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        R_we1 = 1'b1;
    end else begin
        R_we1 = 1'b0;
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((ap_start == 1'b1) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_start_pp0 = 1'b1;
    end else begin
        ap_reset_start_pp0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_reset_start_pp0 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_reset_idle_pp0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if ((((1'b0 == ap_block_pp0_stage0_subdone) & (ap_reset_start_pp0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_reset_idle_pp0 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign and_ln895_10_fu_1297_p2 = (xor_ln895_10_fu_1291_p2 & tmp_21_fu_1283_p3);

assign and_ln895_11_fu_1366_p2 = (xor_ln895_11_fu_1360_p2 & tmp_23_fu_1352_p3);

assign and_ln895_12_fu_1435_p2 = (xor_ln895_12_fu_1429_p2 & tmp_25_fu_1421_p3);

assign and_ln895_13_fu_1504_p2 = (xor_ln895_13_fu_1498_p2 & tmp_27_fu_1490_p3);

assign and_ln895_14_fu_1573_p2 = (xor_ln895_14_fu_1567_p2 & tmp_29_fu_1559_p3);

assign and_ln895_15_fu_1642_p2 = (xor_ln895_15_fu_1636_p2 & tmp_31_fu_1628_p3);

assign and_ln895_16_fu_1711_p2 = (xor_ln895_16_fu_1705_p2 & tmp_33_fu_1697_p3);

assign and_ln895_17_fu_1780_p2 = (xor_ln895_17_fu_1774_p2 & tmp_35_fu_1766_p3);

assign and_ln895_1_fu_676_p2 = (xor_ln895_1_fu_670_p2 & tmp_3_fu_662_p3);

assign and_ln895_2_fu_745_p2 = (xor_ln895_2_fu_739_p2 & tmp_5_fu_731_p3);

assign and_ln895_3_fu_814_p2 = (xor_ln895_3_fu_808_p2 & tmp_7_fu_800_p3);

assign and_ln895_4_fu_883_p2 = (xor_ln895_4_fu_877_p2 & tmp_9_fu_869_p3);

assign and_ln895_5_fu_952_p2 = (xor_ln895_5_fu_946_p2 & tmp_11_fu_938_p3);

assign and_ln895_6_fu_1021_p2 = (xor_ln895_6_fu_1015_p2 & tmp_13_fu_1007_p3);

assign and_ln895_7_fu_1090_p2 = (xor_ln895_7_fu_1084_p2 & tmp_15_fu_1076_p3);

assign and_ln895_8_fu_1159_p2 = (xor_ln895_8_fu_1153_p2 & tmp_17_fu_1145_p3);

assign and_ln895_9_fu_1228_p2 = (xor_ln895_9_fu_1222_p2 & tmp_19_fu_1214_p3);

assign and_ln895_fu_607_p2 = (xor_ln895_fu_601_p2 & tmp_1_fu_593_p3);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];

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

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage2_subdone = (1'b0 == ap_ce);
end

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage3_subdone = (1'b0 == ap_ce);
end

assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage4_subdone = (1'b0 == ap_ce);
end

assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage5_subdone = (1'b0 == ap_ce);
end

assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage6_subdone = (1'b0 == ap_ce);
end

assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage7_subdone = (1'b0 == ap_ce);
end

assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage8_subdone = (1'b0 == ap_ce);
end

assign ap_block_state10_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage4_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage5_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage6_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage7_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage8_iter0 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign select_ln302_10_fu_1317_p3 = ((xor_ln302_10_fu_1303_p2[0:0] == 1'b1) ? select_ln346_10_fu_1309_p3 : trunc_ln813_10_fu_1279_p1);

assign select_ln302_11_fu_1386_p3 = ((xor_ln302_11_fu_1372_p2[0:0] == 1'b1) ? select_ln346_11_fu_1378_p3 : trunc_ln813_11_fu_1348_p1);

assign select_ln302_12_fu_1455_p3 = ((xor_ln302_12_fu_1441_p2[0:0] == 1'b1) ? select_ln346_12_fu_1447_p3 : trunc_ln813_12_fu_1417_p1);

assign select_ln302_13_fu_1524_p3 = ((xor_ln302_13_fu_1510_p2[0:0] == 1'b1) ? select_ln346_13_fu_1516_p3 : trunc_ln813_13_fu_1486_p1);

assign select_ln302_14_fu_1593_p3 = ((xor_ln302_14_fu_1579_p2[0:0] == 1'b1) ? select_ln346_14_fu_1585_p3 : trunc_ln813_14_fu_1555_p1);

assign select_ln302_15_fu_1662_p3 = ((xor_ln302_15_fu_1648_p2[0:0] == 1'b1) ? select_ln346_15_fu_1654_p3 : trunc_ln813_15_fu_1624_p1);

assign select_ln302_16_fu_1731_p3 = ((xor_ln302_16_fu_1717_p2[0:0] == 1'b1) ? select_ln346_16_fu_1723_p3 : trunc_ln813_16_fu_1693_p1);

assign select_ln302_17_fu_1800_p3 = ((xor_ln302_17_fu_1786_p2[0:0] == 1'b1) ? select_ln346_17_fu_1792_p3 : trunc_ln813_17_fu_1762_p1);

assign select_ln302_1_fu_696_p3 = ((xor_ln302_1_fu_682_p2[0:0] == 1'b1) ? select_ln346_1_fu_688_p3 : trunc_ln813_1_fu_658_p1);

assign select_ln302_2_fu_765_p3 = ((xor_ln302_2_fu_751_p2[0:0] == 1'b1) ? select_ln346_2_fu_757_p3 : trunc_ln813_2_fu_727_p1);

assign select_ln302_3_fu_834_p3 = ((xor_ln302_3_fu_820_p2[0:0] == 1'b1) ? select_ln346_3_fu_826_p3 : trunc_ln813_3_fu_796_p1);

assign select_ln302_4_fu_903_p3 = ((xor_ln302_4_fu_889_p2[0:0] == 1'b1) ? select_ln346_4_fu_895_p3 : trunc_ln813_4_fu_865_p1);

assign select_ln302_5_fu_972_p3 = ((xor_ln302_5_fu_958_p2[0:0] == 1'b1) ? select_ln346_5_fu_964_p3 : trunc_ln813_5_fu_934_p1);

assign select_ln302_6_fu_1041_p3 = ((xor_ln302_6_fu_1027_p2[0:0] == 1'b1) ? select_ln346_6_fu_1033_p3 : trunc_ln813_6_fu_1003_p1);

assign select_ln302_7_fu_1110_p3 = ((xor_ln302_7_fu_1096_p2[0:0] == 1'b1) ? select_ln346_7_fu_1102_p3 : trunc_ln813_7_fu_1072_p1);

assign select_ln302_8_fu_1179_p3 = ((xor_ln302_8_fu_1165_p2[0:0] == 1'b1) ? select_ln346_8_fu_1171_p3 : trunc_ln813_8_fu_1141_p1);

assign select_ln302_9_fu_1248_p3 = ((xor_ln302_9_fu_1234_p2[0:0] == 1'b1) ? select_ln346_9_fu_1240_p3 : trunc_ln813_9_fu_1210_p1);

assign select_ln302_fu_627_p3 = ((xor_ln302_fu_613_p2[0:0] == 1'b1) ? select_ln346_fu_619_p3 : trunc_ln813_fu_589_p1);

assign select_ln346_10_fu_1309_p3 = ((and_ln895_10_fu_1297_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_11_fu_1378_p3 = ((and_ln895_11_fu_1366_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_12_fu_1447_p3 = ((and_ln895_12_fu_1435_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_13_fu_1516_p3 = ((and_ln895_13_fu_1504_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_14_fu_1585_p3 = ((and_ln895_14_fu_1573_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_15_fu_1654_p3 = ((and_ln895_15_fu_1642_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_16_fu_1723_p3 = ((and_ln895_16_fu_1711_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_17_fu_1792_p3 = ((and_ln895_17_fu_1780_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_1_fu_688_p3 = ((and_ln895_1_fu_676_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_2_fu_757_p3 = ((and_ln895_2_fu_745_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_3_fu_826_p3 = ((and_ln895_3_fu_814_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_4_fu_895_p3 = ((and_ln895_4_fu_883_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_5_fu_964_p3 = ((and_ln895_5_fu_952_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_6_fu_1033_p3 = ((and_ln895_6_fu_1021_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_7_fu_1102_p3 = ((and_ln895_7_fu_1090_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_8_fu_1171_p3 = ((and_ln895_8_fu_1159_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_9_fu_1240_p3 = ((and_ln895_9_fu_1228_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_fu_619_p3 = ((and_ln895_fu_607_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign sext_ln813_10_fu_912_p1 = $signed(A_q0);

assign sext_ln813_11_fu_916_p1 = $signed(B_q0);

assign sext_ln813_12_fu_981_p1 = $signed(A_q1);

assign sext_ln813_13_fu_985_p1 = $signed(B_q1);

assign sext_ln813_14_fu_1050_p1 = $signed(A_q0);

assign sext_ln813_15_fu_1054_p1 = $signed(B_q0);

assign sext_ln813_16_fu_1119_p1 = $signed(A_q1);

assign sext_ln813_17_fu_1123_p1 = $signed(B_q1);

assign sext_ln813_18_fu_1188_p1 = $signed(A_q0);

assign sext_ln813_19_fu_1192_p1 = $signed(B_q0);

assign sext_ln813_1_fu_571_p1 = $signed(B_q1);

assign sext_ln813_20_fu_1257_p1 = $signed(A_q1);

assign sext_ln813_21_fu_1261_p1 = $signed(B_q1);

assign sext_ln813_22_fu_1326_p1 = $signed(A_q0);

assign sext_ln813_23_fu_1330_p1 = $signed(B_q0);

assign sext_ln813_24_fu_1395_p1 = $signed(A_q1);

assign sext_ln813_25_fu_1399_p1 = $signed(B_q1);

assign sext_ln813_26_fu_1464_p1 = $signed(A_q0);

assign sext_ln813_27_fu_1468_p1 = $signed(B_q0);

assign sext_ln813_28_fu_1533_p1 = $signed(A_q1);

assign sext_ln813_29_fu_1537_p1 = $signed(B_q1);

assign sext_ln813_2_fu_636_p1 = $signed(A_q0);

assign sext_ln813_30_fu_1602_p1 = $signed(A_q0);

assign sext_ln813_31_fu_1606_p1 = $signed(B_q0);

assign sext_ln813_32_fu_1671_p1 = $signed(A_q1);

assign sext_ln813_33_fu_1675_p1 = $signed(B_q1);

assign sext_ln813_34_fu_1740_p1 = $signed(A_q0);

assign sext_ln813_35_fu_1744_p1 = $signed(B_q0);

assign sext_ln813_3_fu_640_p1 = $signed(B_q0);

assign sext_ln813_4_fu_705_p1 = $signed(A_q1);

assign sext_ln813_5_fu_709_p1 = $signed(B_q1);

assign sext_ln813_6_fu_774_p1 = $signed(A_q0);

assign sext_ln813_7_fu_778_p1 = $signed(B_q0);

assign sext_ln813_8_fu_843_p1 = $signed(A_q1);

assign sext_ln813_9_fu_847_p1 = $signed(B_q1);

assign sext_ln813_fu_567_p1 = $signed(A_q1);

assign sub_ln1348_10_fu_1265_p2 = ($signed(sext_ln813_20_fu_1257_p1) - $signed(sext_ln813_21_fu_1261_p1));

assign sub_ln1348_11_fu_1334_p2 = ($signed(sext_ln813_22_fu_1326_p1) - $signed(sext_ln813_23_fu_1330_p1));

assign sub_ln1348_12_fu_1403_p2 = ($signed(sext_ln813_24_fu_1395_p1) - $signed(sext_ln813_25_fu_1399_p1));

assign sub_ln1348_13_fu_1472_p2 = ($signed(sext_ln813_26_fu_1464_p1) - $signed(sext_ln813_27_fu_1468_p1));

assign sub_ln1348_14_fu_1541_p2 = ($signed(sext_ln813_28_fu_1533_p1) - $signed(sext_ln813_29_fu_1537_p1));

assign sub_ln1348_15_fu_1610_p2 = ($signed(sext_ln813_30_fu_1602_p1) - $signed(sext_ln813_31_fu_1606_p1));

assign sub_ln1348_16_fu_1679_p2 = ($signed(sext_ln813_32_fu_1671_p1) - $signed(sext_ln813_33_fu_1675_p1));

assign sub_ln1348_17_fu_1748_p2 = ($signed(sext_ln813_34_fu_1740_p1) - $signed(sext_ln813_35_fu_1744_p1));

assign sub_ln1348_1_fu_644_p2 = ($signed(sext_ln813_2_fu_636_p1) - $signed(sext_ln813_3_fu_640_p1));

assign sub_ln1348_2_fu_713_p2 = ($signed(sext_ln813_4_fu_705_p1) - $signed(sext_ln813_5_fu_709_p1));

assign sub_ln1348_3_fu_782_p2 = ($signed(sext_ln813_6_fu_774_p1) - $signed(sext_ln813_7_fu_778_p1));

assign sub_ln1348_4_fu_851_p2 = ($signed(sext_ln813_8_fu_843_p1) - $signed(sext_ln813_9_fu_847_p1));

assign sub_ln1348_5_fu_920_p2 = ($signed(sext_ln813_10_fu_912_p1) - $signed(sext_ln813_11_fu_916_p1));

assign sub_ln1348_6_fu_989_p2 = ($signed(sext_ln813_12_fu_981_p1) - $signed(sext_ln813_13_fu_985_p1));

assign sub_ln1348_7_fu_1058_p2 = ($signed(sext_ln813_14_fu_1050_p1) - $signed(sext_ln813_15_fu_1054_p1));

assign sub_ln1348_8_fu_1127_p2 = ($signed(sext_ln813_16_fu_1119_p1) - $signed(sext_ln813_17_fu_1123_p1));

assign sub_ln1348_9_fu_1196_p2 = ($signed(sext_ln813_18_fu_1188_p1) - $signed(sext_ln813_19_fu_1192_p1));

assign sub_ln1348_fu_575_p2 = ($signed(sext_ln813_fu_567_p1) - $signed(sext_ln813_1_fu_571_p1));

assign tmp_10_fu_926_p3 = sub_ln1348_5_fu_920_p2[32'd21];

assign tmp_11_fu_938_p3 = sub_ln1348_5_fu_920_p2[32'd20];

assign tmp_12_fu_995_p3 = sub_ln1348_6_fu_989_p2[32'd21];

assign tmp_13_fu_1007_p3 = sub_ln1348_6_fu_989_p2[32'd20];

assign tmp_14_fu_1064_p3 = sub_ln1348_7_fu_1058_p2[32'd21];

assign tmp_15_fu_1076_p3 = sub_ln1348_7_fu_1058_p2[32'd20];

assign tmp_16_fu_1133_p3 = sub_ln1348_8_fu_1127_p2[32'd21];

assign tmp_17_fu_1145_p3 = sub_ln1348_8_fu_1127_p2[32'd20];

assign tmp_18_fu_1202_p3 = sub_ln1348_9_fu_1196_p2[32'd21];

assign tmp_19_fu_1214_p3 = sub_ln1348_9_fu_1196_p2[32'd20];

assign tmp_1_fu_593_p3 = sub_ln1348_fu_575_p2[32'd20];

assign tmp_20_fu_1271_p3 = sub_ln1348_10_fu_1265_p2[32'd21];

assign tmp_21_fu_1283_p3 = sub_ln1348_10_fu_1265_p2[32'd20];

assign tmp_22_fu_1340_p3 = sub_ln1348_11_fu_1334_p2[32'd21];

assign tmp_23_fu_1352_p3 = sub_ln1348_11_fu_1334_p2[32'd20];

assign tmp_24_fu_1409_p3 = sub_ln1348_12_fu_1403_p2[32'd21];

assign tmp_25_fu_1421_p3 = sub_ln1348_12_fu_1403_p2[32'd20];

assign tmp_26_fu_1478_p3 = sub_ln1348_13_fu_1472_p2[32'd21];

assign tmp_27_fu_1490_p3 = sub_ln1348_13_fu_1472_p2[32'd20];

assign tmp_28_fu_1547_p3 = sub_ln1348_14_fu_1541_p2[32'd21];

assign tmp_29_fu_1559_p3 = sub_ln1348_14_fu_1541_p2[32'd20];

assign tmp_2_fu_650_p3 = sub_ln1348_1_fu_644_p2[32'd21];

assign tmp_30_fu_1616_p3 = sub_ln1348_15_fu_1610_p2[32'd21];

assign tmp_31_fu_1628_p3 = sub_ln1348_15_fu_1610_p2[32'd20];

assign tmp_32_fu_1685_p3 = sub_ln1348_16_fu_1679_p2[32'd21];

assign tmp_33_fu_1697_p3 = sub_ln1348_16_fu_1679_p2[32'd20];

assign tmp_34_fu_1754_p3 = sub_ln1348_17_fu_1748_p2[32'd21];

assign tmp_35_fu_1766_p3 = sub_ln1348_17_fu_1748_p2[32'd20];

assign tmp_3_fu_662_p3 = sub_ln1348_1_fu_644_p2[32'd20];

assign tmp_4_fu_719_p3 = sub_ln1348_2_fu_713_p2[32'd21];

assign tmp_5_fu_731_p3 = sub_ln1348_2_fu_713_p2[32'd20];

assign tmp_6_fu_788_p3 = sub_ln1348_3_fu_782_p2[32'd21];

assign tmp_7_fu_800_p3 = sub_ln1348_3_fu_782_p2[32'd20];

assign tmp_8_fu_857_p3 = sub_ln1348_4_fu_851_p2[32'd21];

assign tmp_9_fu_869_p3 = sub_ln1348_4_fu_851_p2[32'd20];

assign tmp_fu_581_p3 = sub_ln1348_fu_575_p2[32'd21];

assign trunc_ln813_10_fu_1279_p1 = sub_ln1348_10_fu_1265_p2[20:0];

assign trunc_ln813_11_fu_1348_p1 = sub_ln1348_11_fu_1334_p2[20:0];

assign trunc_ln813_12_fu_1417_p1 = sub_ln1348_12_fu_1403_p2[20:0];

assign trunc_ln813_13_fu_1486_p1 = sub_ln1348_13_fu_1472_p2[20:0];

assign trunc_ln813_14_fu_1555_p1 = sub_ln1348_14_fu_1541_p2[20:0];

assign trunc_ln813_15_fu_1624_p1 = sub_ln1348_15_fu_1610_p2[20:0];

assign trunc_ln813_16_fu_1693_p1 = sub_ln1348_16_fu_1679_p2[20:0];

assign trunc_ln813_17_fu_1762_p1 = sub_ln1348_17_fu_1748_p2[20:0];

assign trunc_ln813_1_fu_658_p1 = sub_ln1348_1_fu_644_p2[20:0];

assign trunc_ln813_2_fu_727_p1 = sub_ln1348_2_fu_713_p2[20:0];

assign trunc_ln813_3_fu_796_p1 = sub_ln1348_3_fu_782_p2[20:0];

assign trunc_ln813_4_fu_865_p1 = sub_ln1348_4_fu_851_p2[20:0];

assign trunc_ln813_5_fu_934_p1 = sub_ln1348_5_fu_920_p2[20:0];

assign trunc_ln813_6_fu_1003_p1 = sub_ln1348_6_fu_989_p2[20:0];

assign trunc_ln813_7_fu_1072_p1 = sub_ln1348_7_fu_1058_p2[20:0];

assign trunc_ln813_8_fu_1141_p1 = sub_ln1348_8_fu_1127_p2[20:0];

assign trunc_ln813_9_fu_1210_p1 = sub_ln1348_9_fu_1196_p2[20:0];

assign trunc_ln813_fu_589_p1 = sub_ln1348_fu_575_p2[20:0];

assign xor_ln302_10_fu_1303_p2 = (tmp_21_fu_1283_p3 ^ tmp_20_fu_1271_p3);

assign xor_ln302_11_fu_1372_p2 = (tmp_23_fu_1352_p3 ^ tmp_22_fu_1340_p3);

assign xor_ln302_12_fu_1441_p2 = (tmp_25_fu_1421_p3 ^ tmp_24_fu_1409_p3);

assign xor_ln302_13_fu_1510_p2 = (tmp_27_fu_1490_p3 ^ tmp_26_fu_1478_p3);

assign xor_ln302_14_fu_1579_p2 = (tmp_29_fu_1559_p3 ^ tmp_28_fu_1547_p3);

assign xor_ln302_15_fu_1648_p2 = (tmp_31_fu_1628_p3 ^ tmp_30_fu_1616_p3);

assign xor_ln302_16_fu_1717_p2 = (tmp_33_fu_1697_p3 ^ tmp_32_fu_1685_p3);

assign xor_ln302_17_fu_1786_p2 = (tmp_35_fu_1766_p3 ^ tmp_34_fu_1754_p3);

assign xor_ln302_1_fu_682_p2 = (tmp_3_fu_662_p3 ^ tmp_2_fu_650_p3);

assign xor_ln302_2_fu_751_p2 = (tmp_5_fu_731_p3 ^ tmp_4_fu_719_p3);

assign xor_ln302_3_fu_820_p2 = (tmp_7_fu_800_p3 ^ tmp_6_fu_788_p3);

assign xor_ln302_4_fu_889_p2 = (tmp_9_fu_869_p3 ^ tmp_8_fu_857_p3);

assign xor_ln302_5_fu_958_p2 = (tmp_11_fu_938_p3 ^ tmp_10_fu_926_p3);

assign xor_ln302_6_fu_1027_p2 = (tmp_13_fu_1007_p3 ^ tmp_12_fu_995_p3);

assign xor_ln302_7_fu_1096_p2 = (tmp_15_fu_1076_p3 ^ tmp_14_fu_1064_p3);

assign xor_ln302_8_fu_1165_p2 = (tmp_17_fu_1145_p3 ^ tmp_16_fu_1133_p3);

assign xor_ln302_9_fu_1234_p2 = (tmp_19_fu_1214_p3 ^ tmp_18_fu_1202_p3);

assign xor_ln302_fu_613_p2 = (tmp_fu_581_p3 ^ tmp_1_fu_593_p3);

assign xor_ln895_10_fu_1291_p2 = (tmp_20_fu_1271_p3 ^ 1'd1);

assign xor_ln895_11_fu_1360_p2 = (tmp_22_fu_1340_p3 ^ 1'd1);

assign xor_ln895_12_fu_1429_p2 = (tmp_24_fu_1409_p3 ^ 1'd1);

assign xor_ln895_13_fu_1498_p2 = (tmp_26_fu_1478_p3 ^ 1'd1);

assign xor_ln895_14_fu_1567_p2 = (tmp_28_fu_1547_p3 ^ 1'd1);

assign xor_ln895_15_fu_1636_p2 = (tmp_30_fu_1616_p3 ^ 1'd1);

assign xor_ln895_16_fu_1705_p2 = (tmp_32_fu_1685_p3 ^ 1'd1);

assign xor_ln895_17_fu_1774_p2 = (tmp_34_fu_1754_p3 ^ 1'd1);

assign xor_ln895_1_fu_670_p2 = (tmp_2_fu_650_p3 ^ 1'd1);

assign xor_ln895_2_fu_739_p2 = (tmp_4_fu_719_p3 ^ 1'd1);

assign xor_ln895_3_fu_808_p2 = (tmp_6_fu_788_p3 ^ 1'd1);

assign xor_ln895_4_fu_877_p2 = (tmp_8_fu_857_p3 ^ 1'd1);

assign xor_ln895_5_fu_946_p2 = (tmp_10_fu_926_p3 ^ 1'd1);

assign xor_ln895_6_fu_1015_p2 = (tmp_12_fu_995_p3 ^ 1'd1);

assign xor_ln895_7_fu_1084_p2 = (tmp_14_fu_1064_p3 ^ 1'd1);

assign xor_ln895_8_fu_1153_p2 = (tmp_16_fu_1133_p3 ^ 1'd1);

assign xor_ln895_9_fu_1222_p2 = (tmp_18_fu_1202_p3 ^ 1'd1);

assign xor_ln895_fu_601_p2 = (tmp_fu_581_p3 ^ 1'd1);

endmodule //mpc_vsub_18_ap_fixed_21_7_0_0_0_s
