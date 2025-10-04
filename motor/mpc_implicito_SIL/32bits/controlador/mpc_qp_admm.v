module mpc_qp_admm (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        p_read,
        p_read1,
        p_read2,
        p_read3,
        h_address0,
        h_ce0,
        h_q0,
        tk_admm_V_0_i,
        tk_admm_V_0_o,
        tk_admm_V_0_o_ap_vld
);

parameter    ap_ST_fsm_state1 = 33'd1;
parameter    ap_ST_fsm_state2 = 33'd2;
parameter    ap_ST_fsm_state3 = 33'd4;
parameter    ap_ST_fsm_state4 = 33'd8;
parameter    ap_ST_fsm_state5 = 33'd16;
parameter    ap_ST_fsm_state6 = 33'd32;
parameter    ap_ST_fsm_state7 = 33'd64;
parameter    ap_ST_fsm_state8 = 33'd128;
parameter    ap_ST_fsm_state9 = 33'd256;
parameter    ap_ST_fsm_state10 = 33'd512;
parameter    ap_ST_fsm_state11 = 33'd1024;
parameter    ap_ST_fsm_state12 = 33'd2048;
parameter    ap_ST_fsm_state13 = 33'd4096;
parameter    ap_ST_fsm_state14 = 33'd8192;
parameter    ap_ST_fsm_state15 = 33'd16384;
parameter    ap_ST_fsm_state16 = 33'd32768;
parameter    ap_ST_fsm_state17 = 33'd65536;
parameter    ap_ST_fsm_state18 = 33'd131072;
parameter    ap_ST_fsm_state19 = 33'd262144;
parameter    ap_ST_fsm_state20 = 33'd524288;
parameter    ap_ST_fsm_state21 = 33'd1048576;
parameter    ap_ST_fsm_state22 = 33'd2097152;
parameter    ap_ST_fsm_state23 = 33'd4194304;
parameter    ap_ST_fsm_state24 = 33'd8388608;
parameter    ap_ST_fsm_state25 = 33'd16777216;
parameter    ap_ST_fsm_state26 = 33'd33554432;
parameter    ap_ST_fsm_state27 = 33'd67108864;
parameter    ap_ST_fsm_state28 = 33'd134217728;
parameter    ap_ST_fsm_state29 = 33'd268435456;
parameter    ap_ST_fsm_state30 = 33'd536870912;
parameter    ap_ST_fsm_state31 = 33'd1073741824;
parameter    ap_ST_fsm_state32 = 33'd2147483648;
parameter    ap_ST_fsm_state33 = 33'd4294967296;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] p_read;
input  [31:0] p_read1;
input  [31:0] p_read2;
input  [31:0] p_read3;
output  [4:0] h_address0;
output   h_ce0;
input  [31:0] h_q0;
input  [31:0] tk_admm_V_0_i;
output  [31:0] tk_admm_V_0_o;
output   tk_admm_V_0_o_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] h_address0;
reg h_ce0;
reg[31:0] tk_admm_V_0_o;
reg tk_admm_V_0_o_ap_vld;

(* fsm_encoding = "none" *) reg   [32:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [4:0] zk_admm_V_address0;
reg    zk_admm_V_ce0;
reg    zk_admm_V_we0;
wire   [31:0] zk_admm_V_q0;
reg   [4:0] uk_admm_V_address0;
reg    uk_admm_V_ce0;
reg    uk_admm_V_we0;
wire   [31:0] uk_admm_V_q0;
reg   [31:0] tk_admm_V_1;
reg   [31:0] tk_admm_V_2;
reg   [31:0] tk_admm_V_3;
wire   [31:0] vx_V_q1;
reg   [31:0] B_V_load_reg_962;
wire    ap_CS_fsm_state7;
wire   [31:0] vx_V_q0;
reg   [31:0] B_V_load_1_reg_967;
reg   [31:0] B_V_load_2_reg_972;
wire    ap_CS_fsm_state8;
reg   [31:0] B_V_load_3_reg_977;
reg   [31:0] B_V_load_4_reg_982;
wire    ap_CS_fsm_state9;
reg   [31:0] B_V_load_5_reg_987;
reg   [31:0] B_V_load_6_reg_992;
wire    ap_CS_fsm_state10;
reg   [31:0] B_V_load_7_reg_997;
reg   [31:0] B_V_load_8_reg_1002;
wire    ap_CS_fsm_state11;
reg   [31:0] B_V_load_9_reg_1007;
reg   [31:0] B_V_load_10_reg_1012;
wire    ap_CS_fsm_state12;
reg   [31:0] B_V_load_11_reg_1017;
reg   [31:0] B_V_load_12_reg_1022;
wire    ap_CS_fsm_state13;
reg   [31:0] B_V_load_13_reg_1027;
reg   [31:0] B_V_load_14_reg_1032;
wire    ap_CS_fsm_state14;
reg   [31:0] B_V_load_15_reg_1037;
reg   [31:0] B_V_load_16_reg_1042;
wire    ap_CS_fsm_state15;
reg   [31:0] B_V_load_17_reg_1047;
reg   [31:0] B_V_load_18_reg_1052;
wire    ap_CS_fsm_state16;
reg   [31:0] B_V_load_19_reg_1057;
reg   [31:0] B_V_load_20_reg_1062;
wire    ap_CS_fsm_state17;
reg   [31:0] B_V_load_21_reg_1067;
reg   [31:0] B_V_load_22_reg_1084;
wire    ap_CS_fsm_state18;
reg   [31:0] B_V_load_23_reg_1089;
reg   [4:0] vx_V_address0;
reg    vx_V_ce0;
reg    vx_V_we0;
reg   [4:0] vx_V_address1;
reg    vx_V_ce1;
reg   [4:0] temp_address0;
reg    temp_ce0;
reg    temp_we0;
wire   [31:0] temp_q0;
reg   [4:0] Htk_V_address0;
reg    Htk_V_ce0;
reg    Htk_V_we0;
wire   [31:0] Htk_V_q0;
reg   [4:0] temp4_V_address0;
reg    temp4_V_ce0;
reg    temp4_V_we0;
wire   [31:0] temp4_V_q0;
reg   [4:0] temp5_address0;
reg    temp5_ce0;
reg    temp5_we0;
wire   [31:0] temp5_q0;
reg   [4:0] temp6_V_address0;
reg    temp6_V_ce0;
reg    temp6_V_we0;
wire   [31:0] temp6_V_q0;
reg   [4:0] temp7_address0;
reg    temp7_ce0;
reg    temp7_we0;
wire   [31:0] temp7_q0;
wire    grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_ap_start;
wire    grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_ap_done;
wire    grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_ap_idle;
wire    grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_ap_ready;
wire   [4:0] grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_A_address0;
wire    grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_A_ce0;
reg   [31:0] grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_A_q0;
wire   [4:0] grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_B_address0;
wire    grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_B_ce0;
reg   [31:0] grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_B_q0;
wire   [4:0] grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_R_address0;
wire    grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_R_ce0;
wire    grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_R_we0;
wire   [31:0] grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_R_d0;
wire    grp_qp_admm_Pipeline_vadd_row_fu_444_ap_start;
wire    grp_qp_admm_Pipeline_vadd_row_fu_444_ap_done;
wire    grp_qp_admm_Pipeline_vadd_row_fu_444_ap_idle;
wire    grp_qp_admm_Pipeline_vadd_row_fu_444_ap_ready;
wire   [4:0] grp_qp_admm_Pipeline_vadd_row_fu_444_temp_address0;
wire    grp_qp_admm_Pipeline_vadd_row_fu_444_temp_ce0;
wire   [4:0] grp_qp_admm_Pipeline_vadd_row_fu_444_vx_V_address0;
wire    grp_qp_admm_Pipeline_vadd_row_fu_444_vx_V_ce0;
wire    grp_qp_admm_Pipeline_vadd_row_fu_444_vx_V_we0;
wire   [31:0] grp_qp_admm_Pipeline_vadd_row_fu_444_vx_V_d0;
wire   [4:0] grp_qp_admm_Pipeline_vadd_row_fu_444_uk_admm_V_address0;
wire    grp_qp_admm_Pipeline_vadd_row_fu_444_uk_admm_V_ce0;
wire    grp_qp_admm_Pipeline_mvmult_row_fu_452_ap_start;
wire    grp_qp_admm_Pipeline_mvmult_row_fu_452_ap_done;
wire    grp_qp_admm_Pipeline_mvmult_row_fu_452_ap_idle;
wire    grp_qp_admm_Pipeline_mvmult_row_fu_452_ap_ready;
wire   [31:0] grp_qp_admm_Pipeline_mvmult_row_fu_452_temp1_V_3_1_out;
wire    grp_qp_admm_Pipeline_mvmult_row_fu_452_temp1_V_3_1_out_ap_vld;
wire   [31:0] grp_qp_admm_Pipeline_mvmult_row_fu_452_temp1_V_2_1_out;
wire    grp_qp_admm_Pipeline_mvmult_row_fu_452_temp1_V_2_1_out_ap_vld;
wire   [31:0] grp_qp_admm_Pipeline_mvmult_row_fu_452_temp1_V_1_1_out;
wire    grp_qp_admm_Pipeline_mvmult_row_fu_452_temp1_V_1_1_out_ap_vld;
wire   [31:0] grp_qp_admm_Pipeline_mvmult_row_fu_452_temp1_V_0_1_out;
wire    grp_qp_admm_Pipeline_mvmult_row_fu_452_temp1_V_0_1_out_ap_vld;
wire    grp_qp_admm_Pipeline_vsub_row_fu_490_ap_start;
wire    grp_qp_admm_Pipeline_vsub_row_fu_490_ap_done;
wire    grp_qp_admm_Pipeline_vsub_row_fu_490_ap_idle;
wire    grp_qp_admm_Pipeline_vsub_row_fu_490_ap_ready;
wire   [31:0] grp_qp_admm_Pipeline_vsub_row_fu_490_temp2_V_3_1_out;
wire    grp_qp_admm_Pipeline_vsub_row_fu_490_temp2_V_3_1_out_ap_vld;
wire   [31:0] grp_qp_admm_Pipeline_vsub_row_fu_490_temp2_V_2_1_out;
wire    grp_qp_admm_Pipeline_vsub_row_fu_490_temp2_V_2_1_out_ap_vld;
wire   [31:0] grp_qp_admm_Pipeline_vsub_row_fu_490_temp2_V_1_1_out;
wire    grp_qp_admm_Pipeline_vsub_row_fu_490_temp2_V_1_1_out_ap_vld;
wire   [31:0] grp_qp_admm_Pipeline_vsub_row_fu_490_temp2_V_0_1_out;
wire    grp_qp_admm_Pipeline_vsub_row_fu_490_temp2_V_0_1_out_ap_vld;
wire    grp_qp_admm_Pipeline_mvmult_row2_fu_510_ap_start;
wire    grp_qp_admm_Pipeline_mvmult_row2_fu_510_ap_done;
wire    grp_qp_admm_Pipeline_mvmult_row2_fu_510_ap_idle;
wire    grp_qp_admm_Pipeline_mvmult_row2_fu_510_ap_ready;
wire   [31:0] grp_qp_admm_Pipeline_mvmult_row2_fu_510_tk_admm_V_0;
wire    grp_qp_admm_Pipeline_mvmult_row2_fu_510_tk_admm_V_0_ap_vld;
wire   [31:0] grp_qp_admm_Pipeline_mvmult_row2_fu_510_tk_admm_V_1;
wire    grp_qp_admm_Pipeline_mvmult_row2_fu_510_tk_admm_V_1_ap_vld;
wire   [31:0] grp_qp_admm_Pipeline_mvmult_row2_fu_510_tk_admm_V_2;
wire    grp_qp_admm_Pipeline_mvmult_row2_fu_510_tk_admm_V_2_ap_vld;
wire   [31:0] grp_qp_admm_Pipeline_mvmult_row2_fu_510_tk_admm_V_3;
wire    grp_qp_admm_Pipeline_mvmult_row2_fu_510_tk_admm_V_3_ap_vld;
wire    grp_qp_admm_Pipeline_mvmult_row3_fu_526_ap_start;
wire    grp_qp_admm_Pipeline_mvmult_row3_fu_526_ap_done;
wire    grp_qp_admm_Pipeline_mvmult_row3_fu_526_ap_idle;
wire    grp_qp_admm_Pipeline_mvmult_row3_fu_526_ap_ready;
wire   [4:0] grp_qp_admm_Pipeline_mvmult_row3_fu_526_Htk_V_address0;
wire    grp_qp_admm_Pipeline_mvmult_row3_fu_526_Htk_V_ce0;
wire    grp_qp_admm_Pipeline_mvmult_row3_fu_526_Htk_V_we0;
wire   [31:0] grp_qp_admm_Pipeline_mvmult_row3_fu_526_Htk_V_d0;
wire    grp_qp_admm_Pipeline_vadd_row4_fu_543_ap_start;
wire    grp_qp_admm_Pipeline_vadd_row4_fu_543_ap_done;
wire    grp_qp_admm_Pipeline_vadd_row4_fu_543_ap_idle;
wire    grp_qp_admm_Pipeline_vadd_row4_fu_543_ap_ready;
wire   [4:0] grp_qp_admm_Pipeline_vadd_row4_fu_543_Htk_V_address0;
wire    grp_qp_admm_Pipeline_vadd_row4_fu_543_Htk_V_ce0;
wire   [4:0] grp_qp_admm_Pipeline_vadd_row4_fu_543_temp6_V_address0;
wire    grp_qp_admm_Pipeline_vadd_row4_fu_543_temp6_V_ce0;
wire    grp_qp_admm_Pipeline_vadd_row4_fu_543_temp6_V_we0;
wire   [31:0] grp_qp_admm_Pipeline_vadd_row4_fu_543_temp6_V_d0;
wire   [4:0] grp_qp_admm_Pipeline_vadd_row4_fu_543_uk_admm_V_address0;
wire    grp_qp_admm_Pipeline_vadd_row4_fu_543_uk_admm_V_ce0;
wire    grp_qp_admm_Pipeline_max0_row_fu_551_ap_start;
wire    grp_qp_admm_Pipeline_max0_row_fu_551_ap_done;
wire    grp_qp_admm_Pipeline_max0_row_fu_551_ap_idle;
wire    grp_qp_admm_Pipeline_max0_row_fu_551_ap_ready;
wire   [4:0] grp_qp_admm_Pipeline_max0_row_fu_551_temp5_address0;
wire    grp_qp_admm_Pipeline_max0_row_fu_551_temp5_ce0;
wire   [4:0] grp_qp_admm_Pipeline_max0_row_fu_551_zk_admm_V_address0;
wire    grp_qp_admm_Pipeline_max0_row_fu_551_zk_admm_V_ce0;
wire    grp_qp_admm_Pipeline_max0_row_fu_551_zk_admm_V_we0;
wire   [31:0] grp_qp_admm_Pipeline_max0_row_fu_551_zk_admm_V_d0;
wire    grp_qp_admm_Pipeline_vadd_row5_fu_558_ap_start;
wire    grp_qp_admm_Pipeline_vadd_row5_fu_558_ap_done;
wire    grp_qp_admm_Pipeline_vadd_row5_fu_558_ap_idle;
wire    grp_qp_admm_Pipeline_vadd_row5_fu_558_ap_ready;
wire   [4:0] grp_qp_admm_Pipeline_vadd_row5_fu_558_temp7_address0;
wire    grp_qp_admm_Pipeline_vadd_row5_fu_558_temp7_ce0;
wire   [4:0] grp_qp_admm_Pipeline_vadd_row5_fu_558_zk_admm_V_address0;
wire    grp_qp_admm_Pipeline_vadd_row5_fu_558_zk_admm_V_ce0;
wire   [4:0] grp_qp_admm_Pipeline_vadd_row5_fu_558_uk_admm_V_address0;
wire    grp_qp_admm_Pipeline_vadd_row5_fu_558_uk_admm_V_ce0;
wire    grp_qp_admm_Pipeline_vadd_row5_fu_558_uk_admm_V_we0;
wire   [31:0] grp_qp_admm_Pipeline_vadd_row5_fu_558_uk_admm_V_d0;
reg    grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_ap_start_reg;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln68_fu_575_p2;
wire    ap_CS_fsm_state26;
wire    ap_CS_fsm_state30;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state27;
wire    ap_CS_fsm_state31;
reg    grp_qp_admm_Pipeline_vadd_row_fu_444_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
reg    grp_qp_admm_Pipeline_mvmult_row_fu_452_ap_start_reg;
reg    grp_qp_admm_Pipeline_vsub_row_fu_490_ap_start_reg;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state21;
reg    grp_qp_admm_Pipeline_mvmult_row2_fu_510_ap_start_reg;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state23;
reg    grp_qp_admm_Pipeline_mvmult_row3_fu_526_ap_start_reg;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state25;
reg    grp_qp_admm_Pipeline_vadd_row4_fu_543_ap_start_reg;
wire    ap_CS_fsm_state28;
wire    ap_CS_fsm_state29;
reg    grp_qp_admm_Pipeline_max0_row_fu_551_ap_start_reg;
reg    grp_qp_admm_Pipeline_vadd_row5_fu_558_ap_start_reg;
wire    ap_CS_fsm_state32;
wire    ap_CS_fsm_state33;
reg   [3:0] i_fu_112;
wire   [3:0] i_8_fu_581_p2;
reg   [31:0] temp2_V_0_09_fu_116;
reg   [31:0] temp2_V_1_010_fu_120;
reg   [31:0] temp2_V_2_011_fu_124;
reg   [31:0] temp2_V_3_012_fu_128;
reg   [31:0] temp1_V_0_01_fu_132;
reg   [31:0] temp1_V_1_02_fu_136;
reg   [31:0] temp1_V_2_03_fu_140;
reg   [31:0] temp1_V_3_04_fu_144;
wire    ap_CS_fsm_state6;
reg   [32:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
reg    ap_block_state19_on_subcall_done;
reg    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
reg    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
reg    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
reg    ap_ST_fsm_state25_blk;
wire    ap_ST_fsm_state26_blk;
reg    ap_ST_fsm_state27_blk;
wire    ap_ST_fsm_state28_blk;
reg    ap_block_state29_on_subcall_done;
reg    ap_ST_fsm_state29_blk;
wire    ap_ST_fsm_state30_blk;
reg    ap_ST_fsm_state31_blk;
wire    ap_ST_fsm_state32_blk;
reg    ap_ST_fsm_state33_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 33'd1;
#0 tk_admm_V_1 = 32'd0;
#0 tk_admm_V_2 = 32'd0;
#0 tk_admm_V_3 = 32'd0;
#0 grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_ap_start_reg = 1'b0;
#0 grp_qp_admm_Pipeline_vadd_row_fu_444_ap_start_reg = 1'b0;
#0 grp_qp_admm_Pipeline_mvmult_row_fu_452_ap_start_reg = 1'b0;
#0 grp_qp_admm_Pipeline_vsub_row_fu_490_ap_start_reg = 1'b0;
#0 grp_qp_admm_Pipeline_mvmult_row2_fu_510_ap_start_reg = 1'b0;
#0 grp_qp_admm_Pipeline_mvmult_row3_fu_526_ap_start_reg = 1'b0;
#0 grp_qp_admm_Pipeline_vadd_row4_fu_543_ap_start_reg = 1'b0;
#0 grp_qp_admm_Pipeline_max0_row_fu_551_ap_start_reg = 1'b0;
#0 grp_qp_admm_Pipeline_vadd_row5_fu_558_ap_start_reg = 1'b0;
end

mpc_qp_admm_zk_admm_V_RAM_AUTO_1R1W #(
    .DataWidth( 32 ),
    .AddressRange( 24 ),
    .AddressWidth( 5 ))
zk_admm_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(zk_admm_V_address0),
    .ce0(zk_admm_V_ce0),
    .we0(zk_admm_V_we0),
    .d0(grp_qp_admm_Pipeline_max0_row_fu_551_zk_admm_V_d0),
    .q0(zk_admm_V_q0)
);

mpc_qp_admm_zk_admm_V_RAM_AUTO_1R1W #(
    .DataWidth( 32 ),
    .AddressRange( 24 ),
    .AddressWidth( 5 ))
uk_admm_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(uk_admm_V_address0),
    .ce0(uk_admm_V_ce0),
    .we0(uk_admm_V_we0),
    .d0(grp_qp_admm_Pipeline_vadd_row5_fu_558_uk_admm_V_d0),
    .q0(uk_admm_V_q0)
);

mpc_qp_admm_vx_V_RAM_AUTO_1R1W #(
    .DataWidth( 32 ),
    .AddressRange( 24 ),
    .AddressWidth( 5 ))
vx_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(vx_V_address0),
    .ce0(vx_V_ce0),
    .we0(vx_V_we0),
    .d0(grp_qp_admm_Pipeline_vadd_row_fu_444_vx_V_d0),
    .q0(vx_V_q0),
    .address1(vx_V_address1),
    .ce1(vx_V_ce1),
    .q1(vx_V_q1)
);

mpc_qp_admm_temp_RAM_AUTO_1R1W #(
    .DataWidth( 32 ),
    .AddressRange( 24 ),
    .AddressWidth( 5 ))
temp_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(temp_address0),
    .ce0(temp_ce0),
    .we0(temp_we0),
    .d0(grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_R_d0),
    .q0(temp_q0)
);

mpc_qp_admm_temp_RAM_AUTO_1R1W #(
    .DataWidth( 32 ),
    .AddressRange( 24 ),
    .AddressWidth( 5 ))
Htk_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(Htk_V_address0),
    .ce0(Htk_V_ce0),
    .we0(Htk_V_we0),
    .d0(grp_qp_admm_Pipeline_mvmult_row3_fu_526_Htk_V_d0),
    .q0(Htk_V_q0)
);

mpc_qp_admm_temp_RAM_AUTO_1R1W #(
    .DataWidth( 32 ),
    .AddressRange( 24 ),
    .AddressWidth( 5 ))
temp4_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(temp4_V_address0),
    .ce0(temp4_V_ce0),
    .we0(temp4_V_we0),
    .d0(grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_R_d0),
    .q0(temp4_V_q0)
);

mpc_qp_admm_temp_RAM_AUTO_1R1W #(
    .DataWidth( 32 ),
    .AddressRange( 24 ),
    .AddressWidth( 5 ))
temp5_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(temp5_address0),
    .ce0(temp5_ce0),
    .we0(temp5_we0),
    .d0(grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_R_d0),
    .q0(temp5_q0)
);

mpc_qp_admm_temp_RAM_AUTO_1R1W #(
    .DataWidth( 32 ),
    .AddressRange( 24 ),
    .AddressWidth( 5 ))
temp6_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(temp6_V_address0),
    .ce0(temp6_V_ce0),
    .we0(temp6_V_we0),
    .d0(grp_qp_admm_Pipeline_vadd_row4_fu_543_temp6_V_d0),
    .q0(temp6_V_q0)
);

mpc_qp_admm_temp_RAM_AUTO_1R1W #(
    .DataWidth( 32 ),
    .AddressRange( 24 ),
    .AddressWidth( 5 ))
temp7_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(temp7_address0),
    .ce0(temp7_ce0),
    .we0(temp7_we0),
    .d0(grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_R_d0),
    .q0(temp7_q0)
);

mpc_vsub_24_ap_fixed_32_16_0_0_0_s grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_ap_start),
    .ap_done(grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_ap_done),
    .ap_idle(grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_ap_idle),
    .ap_ready(grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_ap_ready),
    .A_address0(grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_A_address0),
    .A_ce0(grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_A_ce0),
    .A_q0(grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_A_q0),
    .B_address0(grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_B_address0),
    .B_ce0(grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_B_ce0),
    .B_q0(grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_B_q0),
    .R_address0(grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_R_address0),
    .R_ce0(grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_R_ce0),
    .R_we0(grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_R_we0),
    .R_d0(grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_R_d0)
);

mpc_qp_admm_Pipeline_vadd_row grp_qp_admm_Pipeline_vadd_row_fu_444(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_qp_admm_Pipeline_vadd_row_fu_444_ap_start),
    .ap_done(grp_qp_admm_Pipeline_vadd_row_fu_444_ap_done),
    .ap_idle(grp_qp_admm_Pipeline_vadd_row_fu_444_ap_idle),
    .ap_ready(grp_qp_admm_Pipeline_vadd_row_fu_444_ap_ready),
    .temp_address0(grp_qp_admm_Pipeline_vadd_row_fu_444_temp_address0),
    .temp_ce0(grp_qp_admm_Pipeline_vadd_row_fu_444_temp_ce0),
    .temp_q0(temp_q0),
    .vx_V_address0(grp_qp_admm_Pipeline_vadd_row_fu_444_vx_V_address0),
    .vx_V_ce0(grp_qp_admm_Pipeline_vadd_row_fu_444_vx_V_ce0),
    .vx_V_we0(grp_qp_admm_Pipeline_vadd_row_fu_444_vx_V_we0),
    .vx_V_d0(grp_qp_admm_Pipeline_vadd_row_fu_444_vx_V_d0),
    .uk_admm_V_address0(grp_qp_admm_Pipeline_vadd_row_fu_444_uk_admm_V_address0),
    .uk_admm_V_ce0(grp_qp_admm_Pipeline_vadd_row_fu_444_uk_admm_V_ce0),
    .uk_admm_V_q0(uk_admm_V_q0)
);

mpc_qp_admm_Pipeline_mvmult_row grp_qp_admm_Pipeline_mvmult_row_fu_452(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_qp_admm_Pipeline_mvmult_row_fu_452_ap_start),
    .ap_done(grp_qp_admm_Pipeline_mvmult_row_fu_452_ap_done),
    .ap_idle(grp_qp_admm_Pipeline_mvmult_row_fu_452_ap_idle),
    .ap_ready(grp_qp_admm_Pipeline_mvmult_row_fu_452_ap_ready),
    .temp1_V_3_04(temp1_V_3_04_fu_144),
    .temp1_V_2_03(temp1_V_2_03_fu_140),
    .temp1_V_1_02(temp1_V_1_02_fu_136),
    .temp1_V_0_01(temp1_V_0_01_fu_132),
    .sext_ln1273(B_V_load_reg_962),
    .sext_ln1273_1(B_V_load_1_reg_967),
    .sext_ln1273_24(B_V_load_2_reg_972),
    .sext_ln1273_3(B_V_load_3_reg_977),
    .sext_ln1273_4(B_V_load_4_reg_982),
    .sext_ln1273_5(B_V_load_5_reg_987),
    .sext_ln1273_6(B_V_load_6_reg_992),
    .sext_ln1273_7(B_V_load_7_reg_997),
    .sext_ln1273_8(B_V_load_8_reg_1002),
    .sext_ln1273_9(B_V_load_9_reg_1007),
    .sext_ln1273_10(B_V_load_10_reg_1012),
    .sext_ln1273_11(B_V_load_11_reg_1017),
    .sext_ln1273_12(B_V_load_12_reg_1022),
    .sext_ln1273_13(B_V_load_13_reg_1027),
    .sext_ln1273_14(B_V_load_14_reg_1032),
    .sext_ln1273_15(B_V_load_15_reg_1037),
    .sext_ln1273_16(B_V_load_16_reg_1042),
    .sext_ln1273_17(B_V_load_17_reg_1047),
    .sext_ln1273_18(B_V_load_18_reg_1052),
    .sext_ln1273_19(B_V_load_19_reg_1057),
    .sext_ln1273_20(B_V_load_20_reg_1062),
    .sext_ln1273_21(B_V_load_21_reg_1067),
    .sext_ln1273_22(B_V_load_22_reg_1084),
    .sext_ln1273_23(B_V_load_23_reg_1089),
    .temp1_V_3_1_out(grp_qp_admm_Pipeline_mvmult_row_fu_452_temp1_V_3_1_out),
    .temp1_V_3_1_out_ap_vld(grp_qp_admm_Pipeline_mvmult_row_fu_452_temp1_V_3_1_out_ap_vld),
    .temp1_V_2_1_out(grp_qp_admm_Pipeline_mvmult_row_fu_452_temp1_V_2_1_out),
    .temp1_V_2_1_out_ap_vld(grp_qp_admm_Pipeline_mvmult_row_fu_452_temp1_V_2_1_out_ap_vld),
    .temp1_V_1_1_out(grp_qp_admm_Pipeline_mvmult_row_fu_452_temp1_V_1_1_out),
    .temp1_V_1_1_out_ap_vld(grp_qp_admm_Pipeline_mvmult_row_fu_452_temp1_V_1_1_out_ap_vld),
    .temp1_V_0_1_out(grp_qp_admm_Pipeline_mvmult_row_fu_452_temp1_V_0_1_out),
    .temp1_V_0_1_out_ap_vld(grp_qp_admm_Pipeline_mvmult_row_fu_452_temp1_V_0_1_out_ap_vld)
);

mpc_qp_admm_Pipeline_vsub_row grp_qp_admm_Pipeline_vsub_row_fu_490(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_qp_admm_Pipeline_vsub_row_fu_490_ap_start),
    .ap_done(grp_qp_admm_Pipeline_vsub_row_fu_490_ap_done),
    .ap_idle(grp_qp_admm_Pipeline_vsub_row_fu_490_ap_idle),
    .ap_ready(grp_qp_admm_Pipeline_vsub_row_fu_490_ap_ready),
    .temp2_V_3_012(temp2_V_3_012_fu_128),
    .temp2_V_2_011(temp2_V_2_011_fu_124),
    .temp2_V_1_010(temp2_V_1_010_fu_120),
    .temp2_V_0_09(temp2_V_0_09_fu_116),
    .temp1_V_0_1_reload(grp_qp_admm_Pipeline_mvmult_row_fu_452_temp1_V_0_1_out),
    .temp1_V_1_1_reload(grp_qp_admm_Pipeline_mvmult_row_fu_452_temp1_V_1_1_out),
    .temp1_V_2_1_reload(grp_qp_admm_Pipeline_mvmult_row_fu_452_temp1_V_2_1_out),
    .temp1_V_3_1_reload(grp_qp_admm_Pipeline_mvmult_row_fu_452_temp1_V_3_1_out),
    .p_read(p_read),
    .p_read1(p_read1),
    .p_read2(p_read2),
    .p_read3(p_read3),
    .temp2_V_3_1_out(grp_qp_admm_Pipeline_vsub_row_fu_490_temp2_V_3_1_out),
    .temp2_V_3_1_out_ap_vld(grp_qp_admm_Pipeline_vsub_row_fu_490_temp2_V_3_1_out_ap_vld),
    .temp2_V_2_1_out(grp_qp_admm_Pipeline_vsub_row_fu_490_temp2_V_2_1_out),
    .temp2_V_2_1_out_ap_vld(grp_qp_admm_Pipeline_vsub_row_fu_490_temp2_V_2_1_out_ap_vld),
    .temp2_V_1_1_out(grp_qp_admm_Pipeline_vsub_row_fu_490_temp2_V_1_1_out),
    .temp2_V_1_1_out_ap_vld(grp_qp_admm_Pipeline_vsub_row_fu_490_temp2_V_1_1_out_ap_vld),
    .temp2_V_0_1_out(grp_qp_admm_Pipeline_vsub_row_fu_490_temp2_V_0_1_out),
    .temp2_V_0_1_out_ap_vld(grp_qp_admm_Pipeline_vsub_row_fu_490_temp2_V_0_1_out_ap_vld)
);

mpc_qp_admm_Pipeline_mvmult_row2 grp_qp_admm_Pipeline_mvmult_row2_fu_510(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_qp_admm_Pipeline_mvmult_row2_fu_510_ap_start),
    .ap_done(grp_qp_admm_Pipeline_mvmult_row2_fu_510_ap_done),
    .ap_idle(grp_qp_admm_Pipeline_mvmult_row2_fu_510_ap_idle),
    .ap_ready(grp_qp_admm_Pipeline_mvmult_row2_fu_510_ap_ready),
    .sext_ln1273_2(grp_qp_admm_Pipeline_vsub_row_fu_490_temp2_V_0_1_out),
    .sext_ln1273_25(grp_qp_admm_Pipeline_vsub_row_fu_490_temp2_V_1_1_out),
    .sext_ln1273_26(grp_qp_admm_Pipeline_vsub_row_fu_490_temp2_V_2_1_out),
    .sext_ln1273_27(grp_qp_admm_Pipeline_vsub_row_fu_490_temp2_V_3_1_out),
    .tk_admm_V_0(grp_qp_admm_Pipeline_mvmult_row2_fu_510_tk_admm_V_0),
    .tk_admm_V_0_ap_vld(grp_qp_admm_Pipeline_mvmult_row2_fu_510_tk_admm_V_0_ap_vld),
    .tk_admm_V_1(grp_qp_admm_Pipeline_mvmult_row2_fu_510_tk_admm_V_1),
    .tk_admm_V_1_ap_vld(grp_qp_admm_Pipeline_mvmult_row2_fu_510_tk_admm_V_1_ap_vld),
    .tk_admm_V_2(grp_qp_admm_Pipeline_mvmult_row2_fu_510_tk_admm_V_2),
    .tk_admm_V_2_ap_vld(grp_qp_admm_Pipeline_mvmult_row2_fu_510_tk_admm_V_2_ap_vld),
    .tk_admm_V_3(grp_qp_admm_Pipeline_mvmult_row2_fu_510_tk_admm_V_3),
    .tk_admm_V_3_ap_vld(grp_qp_admm_Pipeline_mvmult_row2_fu_510_tk_admm_V_3_ap_vld)
);

mpc_qp_admm_Pipeline_mvmult_row3 grp_qp_admm_Pipeline_mvmult_row3_fu_526(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_qp_admm_Pipeline_mvmult_row3_fu_526_ap_start),
    .ap_done(grp_qp_admm_Pipeline_mvmult_row3_fu_526_ap_done),
    .ap_idle(grp_qp_admm_Pipeline_mvmult_row3_fu_526_ap_idle),
    .ap_ready(grp_qp_admm_Pipeline_mvmult_row3_fu_526_ap_ready),
    .Htk_V_address0(grp_qp_admm_Pipeline_mvmult_row3_fu_526_Htk_V_address0),
    .Htk_V_ce0(grp_qp_admm_Pipeline_mvmult_row3_fu_526_Htk_V_ce0),
    .Htk_V_we0(grp_qp_admm_Pipeline_mvmult_row3_fu_526_Htk_V_we0),
    .Htk_V_d0(grp_qp_admm_Pipeline_mvmult_row3_fu_526_Htk_V_d0),
    .sext_ln1273_28(tk_admm_V_0_i),
    .sext_ln1273_29(tk_admm_V_1),
    .sext_ln1273_30(tk_admm_V_2),
    .tk_admm_V_3_load_cast(tk_admm_V_3)
);

mpc_qp_admm_Pipeline_vadd_row4 grp_qp_admm_Pipeline_vadd_row4_fu_543(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_qp_admm_Pipeline_vadd_row4_fu_543_ap_start),
    .ap_done(grp_qp_admm_Pipeline_vadd_row4_fu_543_ap_done),
    .ap_idle(grp_qp_admm_Pipeline_vadd_row4_fu_543_ap_idle),
    .ap_ready(grp_qp_admm_Pipeline_vadd_row4_fu_543_ap_ready),
    .Htk_V_address0(grp_qp_admm_Pipeline_vadd_row4_fu_543_Htk_V_address0),
    .Htk_V_ce0(grp_qp_admm_Pipeline_vadd_row4_fu_543_Htk_V_ce0),
    .Htk_V_q0(Htk_V_q0),
    .temp6_V_address0(grp_qp_admm_Pipeline_vadd_row4_fu_543_temp6_V_address0),
    .temp6_V_ce0(grp_qp_admm_Pipeline_vadd_row4_fu_543_temp6_V_ce0),
    .temp6_V_we0(grp_qp_admm_Pipeline_vadd_row4_fu_543_temp6_V_we0),
    .temp6_V_d0(grp_qp_admm_Pipeline_vadd_row4_fu_543_temp6_V_d0),
    .uk_admm_V_address0(grp_qp_admm_Pipeline_vadd_row4_fu_543_uk_admm_V_address0),
    .uk_admm_V_ce0(grp_qp_admm_Pipeline_vadd_row4_fu_543_uk_admm_V_ce0),
    .uk_admm_V_q0(uk_admm_V_q0)
);

mpc_qp_admm_Pipeline_max0_row grp_qp_admm_Pipeline_max0_row_fu_551(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_qp_admm_Pipeline_max0_row_fu_551_ap_start),
    .ap_done(grp_qp_admm_Pipeline_max0_row_fu_551_ap_done),
    .ap_idle(grp_qp_admm_Pipeline_max0_row_fu_551_ap_idle),
    .ap_ready(grp_qp_admm_Pipeline_max0_row_fu_551_ap_ready),
    .temp5_address0(grp_qp_admm_Pipeline_max0_row_fu_551_temp5_address0),
    .temp5_ce0(grp_qp_admm_Pipeline_max0_row_fu_551_temp5_ce0),
    .temp5_q0(temp5_q0),
    .zk_admm_V_address0(grp_qp_admm_Pipeline_max0_row_fu_551_zk_admm_V_address0),
    .zk_admm_V_ce0(grp_qp_admm_Pipeline_max0_row_fu_551_zk_admm_V_ce0),
    .zk_admm_V_we0(grp_qp_admm_Pipeline_max0_row_fu_551_zk_admm_V_we0),
    .zk_admm_V_d0(grp_qp_admm_Pipeline_max0_row_fu_551_zk_admm_V_d0)
);

mpc_qp_admm_Pipeline_vadd_row5 grp_qp_admm_Pipeline_vadd_row5_fu_558(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_qp_admm_Pipeline_vadd_row5_fu_558_ap_start),
    .ap_done(grp_qp_admm_Pipeline_vadd_row5_fu_558_ap_done),
    .ap_idle(grp_qp_admm_Pipeline_vadd_row5_fu_558_ap_idle),
    .ap_ready(grp_qp_admm_Pipeline_vadd_row5_fu_558_ap_ready),
    .temp7_address0(grp_qp_admm_Pipeline_vadd_row5_fu_558_temp7_address0),
    .temp7_ce0(grp_qp_admm_Pipeline_vadd_row5_fu_558_temp7_ce0),
    .temp7_q0(temp7_q0),
    .zk_admm_V_address0(grp_qp_admm_Pipeline_vadd_row5_fu_558_zk_admm_V_address0),
    .zk_admm_V_ce0(grp_qp_admm_Pipeline_vadd_row5_fu_558_zk_admm_V_ce0),
    .zk_admm_V_q0(zk_admm_V_q0),
    .uk_admm_V_address0(grp_qp_admm_Pipeline_vadd_row5_fu_558_uk_admm_V_address0),
    .uk_admm_V_ce0(grp_qp_admm_Pipeline_vadd_row5_fu_558_uk_admm_V_ce0),
    .uk_admm_V_we0(grp_qp_admm_Pipeline_vadd_row5_fu_558_uk_admm_V_we0),
    .uk_admm_V_d0(grp_qp_admm_Pipeline_vadd_row5_fu_558_uk_admm_V_d0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_qp_admm_Pipeline_max0_row_fu_551_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state28)) begin
            grp_qp_admm_Pipeline_max0_row_fu_551_ap_start_reg <= 1'b1;
        end else if ((grp_qp_admm_Pipeline_max0_row_fu_551_ap_ready == 1'b1)) begin
            grp_qp_admm_Pipeline_max0_row_fu_551_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_qp_admm_Pipeline_mvmult_row2_fu_510_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state22)) begin
            grp_qp_admm_Pipeline_mvmult_row2_fu_510_ap_start_reg <= 1'b1;
        end else if ((grp_qp_admm_Pipeline_mvmult_row2_fu_510_ap_ready == 1'b1)) begin
            grp_qp_admm_Pipeline_mvmult_row2_fu_510_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_qp_admm_Pipeline_mvmult_row3_fu_526_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state24)) begin
            grp_qp_admm_Pipeline_mvmult_row3_fu_526_ap_start_reg <= 1'b1;
        end else if ((grp_qp_admm_Pipeline_mvmult_row3_fu_526_ap_ready == 1'b1)) begin
            grp_qp_admm_Pipeline_mvmult_row3_fu_526_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_qp_admm_Pipeline_mvmult_row_fu_452_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state18)) begin
            grp_qp_admm_Pipeline_mvmult_row_fu_452_ap_start_reg <= 1'b1;
        end else if ((grp_qp_admm_Pipeline_mvmult_row_fu_452_ap_ready == 1'b1)) begin
            grp_qp_admm_Pipeline_mvmult_row_fu_452_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_qp_admm_Pipeline_vadd_row4_fu_543_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state28)) begin
            grp_qp_admm_Pipeline_vadd_row4_fu_543_ap_start_reg <= 1'b1;
        end else if ((grp_qp_admm_Pipeline_vadd_row4_fu_543_ap_ready == 1'b1)) begin
            grp_qp_admm_Pipeline_vadd_row4_fu_543_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_qp_admm_Pipeline_vadd_row5_fu_558_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state32)) begin
            grp_qp_admm_Pipeline_vadd_row5_fu_558_ap_start_reg <= 1'b1;
        end else if ((grp_qp_admm_Pipeline_vadd_row5_fu_558_ap_ready == 1'b1)) begin
            grp_qp_admm_Pipeline_vadd_row5_fu_558_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_qp_admm_Pipeline_vadd_row_fu_444_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_qp_admm_Pipeline_vadd_row_fu_444_ap_start_reg <= 1'b1;
        end else if ((grp_qp_admm_Pipeline_vadd_row_fu_444_ap_ready == 1'b1)) begin
            grp_qp_admm_Pipeline_vadd_row_fu_444_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_qp_admm_Pipeline_vsub_row_fu_490_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_qp_admm_Pipeline_vsub_row_fu_490_ap_start_reg <= 1'b1;
        end else if ((grp_qp_admm_Pipeline_vsub_row_fu_490_ap_ready == 1'b1)) begin
            grp_qp_admm_Pipeline_vsub_row_fu_490_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18) | ((icmp_ln68_fu_575_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
            grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_ap_start_reg <= 1'b1;
        end else if ((grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_ap_ready == 1'b1)) begin
            grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_112 <= 4'd0;
    end else if (((icmp_ln68_fu_575_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_fu_112 <= i_8_fu_581_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        B_V_load_10_reg_1012 <= vx_V_q1;
        B_V_load_11_reg_1017 <= vx_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        B_V_load_12_reg_1022 <= vx_V_q1;
        B_V_load_13_reg_1027 <= vx_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        B_V_load_14_reg_1032 <= vx_V_q1;
        B_V_load_15_reg_1037 <= vx_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        B_V_load_16_reg_1042 <= vx_V_q1;
        B_V_load_17_reg_1047 <= vx_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        B_V_load_18_reg_1052 <= vx_V_q1;
        B_V_load_19_reg_1057 <= vx_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        B_V_load_1_reg_967 <= vx_V_q0;
        B_V_load_reg_962 <= vx_V_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        B_V_load_20_reg_1062 <= vx_V_q1;
        B_V_load_21_reg_1067 <= vx_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        B_V_load_22_reg_1084 <= vx_V_q1;
        B_V_load_23_reg_1089 <= vx_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        B_V_load_2_reg_972 <= vx_V_q1;
        B_V_load_3_reg_977 <= vx_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        B_V_load_4_reg_982 <= vx_V_q1;
        B_V_load_5_reg_987 <= vx_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        B_V_load_6_reg_992 <= vx_V_q1;
        B_V_load_7_reg_997 <= vx_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        B_V_load_8_reg_1002 <= vx_V_q1;
        B_V_load_9_reg_1007 <= vx_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        temp1_V_0_01_fu_132 <= grp_qp_admm_Pipeline_mvmult_row_fu_452_temp1_V_0_1_out;
        temp1_V_1_02_fu_136 <= grp_qp_admm_Pipeline_mvmult_row_fu_452_temp1_V_1_1_out;
        temp1_V_2_03_fu_140 <= grp_qp_admm_Pipeline_mvmult_row_fu_452_temp1_V_2_1_out;
        temp1_V_3_04_fu_144 <= grp_qp_admm_Pipeline_mvmult_row_fu_452_temp1_V_3_1_out;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        temp2_V_0_09_fu_116 <= grp_qp_admm_Pipeline_vsub_row_fu_490_temp2_V_0_1_out;
        temp2_V_1_010_fu_120 <= grp_qp_admm_Pipeline_vsub_row_fu_490_temp2_V_1_1_out;
        temp2_V_2_011_fu_124 <= grp_qp_admm_Pipeline_vsub_row_fu_490_temp2_V_2_1_out;
        temp2_V_3_012_fu_128 <= grp_qp_admm_Pipeline_vsub_row_fu_490_temp2_V_3_1_out;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_qp_admm_Pipeline_mvmult_row2_fu_510_tk_admm_V_1_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
        tk_admm_V_1 <= grp_qp_admm_Pipeline_mvmult_row2_fu_510_tk_admm_V_1;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_qp_admm_Pipeline_mvmult_row2_fu_510_tk_admm_V_2_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
        tk_admm_V_2 <= grp_qp_admm_Pipeline_mvmult_row2_fu_510_tk_admm_V_2;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_qp_admm_Pipeline_mvmult_row2_fu_510_tk_admm_V_3_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
        tk_admm_V_3 <= grp_qp_admm_Pipeline_mvmult_row2_fu_510_tk_admm_V_3;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        Htk_V_address0 = grp_qp_admm_Pipeline_vadd_row4_fu_543_Htk_V_address0;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        Htk_V_address0 = grp_qp_admm_Pipeline_mvmult_row3_fu_526_Htk_V_address0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        Htk_V_address0 = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_B_address0;
    end else begin
        Htk_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        Htk_V_ce0 = grp_qp_admm_Pipeline_vadd_row4_fu_543_Htk_V_ce0;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        Htk_V_ce0 = grp_qp_admm_Pipeline_mvmult_row3_fu_526_Htk_V_ce0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        Htk_V_ce0 = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_B_ce0;
    end else begin
        Htk_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        Htk_V_we0 = grp_qp_admm_Pipeline_mvmult_row3_fu_526_Htk_V_we0;
    end else begin
        Htk_V_we0 = 1'b0;
    end
end

assign ap_ST_fsm_state10_blk = 1'b0;

assign ap_ST_fsm_state11_blk = 1'b0;

assign ap_ST_fsm_state12_blk = 1'b0;

assign ap_ST_fsm_state13_blk = 1'b0;

assign ap_ST_fsm_state14_blk = 1'b0;

assign ap_ST_fsm_state15_blk = 1'b0;

assign ap_ST_fsm_state16_blk = 1'b0;

assign ap_ST_fsm_state17_blk = 1'b0;

assign ap_ST_fsm_state18_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_block_state19_on_subcall_done)) begin
        ap_ST_fsm_state19_blk = 1'b1;
    end else begin
        ap_ST_fsm_state19_blk = 1'b0;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state20_blk = 1'b0;

always @ (*) begin
    if ((grp_qp_admm_Pipeline_vsub_row_fu_490_ap_done == 1'b0)) begin
        ap_ST_fsm_state21_blk = 1'b1;
    end else begin
        ap_ST_fsm_state21_blk = 1'b0;
    end
end

assign ap_ST_fsm_state22_blk = 1'b0;

always @ (*) begin
    if ((grp_qp_admm_Pipeline_mvmult_row2_fu_510_ap_done == 1'b0)) begin
        ap_ST_fsm_state23_blk = 1'b1;
    end else begin
        ap_ST_fsm_state23_blk = 1'b0;
    end
end

assign ap_ST_fsm_state24_blk = 1'b0;

always @ (*) begin
    if ((grp_qp_admm_Pipeline_mvmult_row3_fu_526_ap_done == 1'b0)) begin
        ap_ST_fsm_state25_blk = 1'b1;
    end else begin
        ap_ST_fsm_state25_blk = 1'b0;
    end
end

assign ap_ST_fsm_state26_blk = 1'b0;

always @ (*) begin
    if ((grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_ap_done == 1'b0)) begin
        ap_ST_fsm_state27_blk = 1'b1;
    end else begin
        ap_ST_fsm_state27_blk = 1'b0;
    end
end

assign ap_ST_fsm_state28_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_block_state29_on_subcall_done)) begin
        ap_ST_fsm_state29_blk = 1'b1;
    end else begin
        ap_ST_fsm_state29_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state30_blk = 1'b0;

always @ (*) begin
    if ((grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_ap_done == 1'b0)) begin
        ap_ST_fsm_state31_blk = 1'b1;
    end else begin
        ap_ST_fsm_state31_blk = 1'b0;
    end
end

assign ap_ST_fsm_state32_blk = 1'b0;

always @ (*) begin
    if ((grp_qp_admm_Pipeline_vadd_row5_fu_558_ap_done == 1'b0)) begin
        ap_ST_fsm_state33_blk = 1'b1;
    end else begin
        ap_ST_fsm_state33_blk = 1'b0;
    end
end

always @ (*) begin
    if ((grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

assign ap_ST_fsm_state4_blk = 1'b0;

always @ (*) begin
    if ((grp_qp_admm_Pipeline_vadd_row_fu_444_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if ((((icmp_ln68_fu_575_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln68_fu_575_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_A_q0 = temp6_V_q0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_A_q0 = temp4_V_q0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_A_q0 = h_q0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_A_q0 = zk_admm_V_q0;
    end else begin
        grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_A_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_B_q0 = Htk_V_q0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_B_q0 = uk_admm_V_q0;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_B_q0 = h_q0;
    end else begin
        grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_B_q0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state3))) begin
        h_address0 = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_B_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        h_address0 = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_A_address0;
    end else begin
        h_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state3))) begin
        h_ce0 = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_B_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        h_ce0 = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_A_ce0;
    end else begin
        h_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        temp4_V_address0 = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_R_address0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        temp4_V_address0 = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_A_address0;
    end else begin
        temp4_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        temp4_V_ce0 = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_R_ce0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        temp4_V_ce0 = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_A_ce0;
    end else begin
        temp4_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        temp4_V_we0 = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_R_we0;
    end else begin
        temp4_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        temp5_address0 = grp_qp_admm_Pipeline_max0_row_fu_551_temp5_address0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        temp5_address0 = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_R_address0;
    end else begin
        temp5_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        temp5_ce0 = grp_qp_admm_Pipeline_max0_row_fu_551_temp5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        temp5_ce0 = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_R_ce0;
    end else begin
        temp5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        temp5_we0 = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_R_we0;
    end else begin
        temp5_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        temp6_V_address0 = grp_qp_admm_Pipeline_vadd_row4_fu_543_temp6_V_address0;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        temp6_V_address0 = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_A_address0;
    end else begin
        temp6_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        temp6_V_ce0 = grp_qp_admm_Pipeline_vadd_row4_fu_543_temp6_V_ce0;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        temp6_V_ce0 = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_A_ce0;
    end else begin
        temp6_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        temp6_V_we0 = grp_qp_admm_Pipeline_vadd_row4_fu_543_temp6_V_we0;
    end else begin
        temp6_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        temp7_address0 = grp_qp_admm_Pipeline_vadd_row5_fu_558_temp7_address0;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        temp7_address0 = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_R_address0;
    end else begin
        temp7_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        temp7_ce0 = grp_qp_admm_Pipeline_vadd_row5_fu_558_temp7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        temp7_ce0 = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_R_ce0;
    end else begin
        temp7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        temp7_we0 = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_R_we0;
    end else begin
        temp7_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        temp_address0 = grp_qp_admm_Pipeline_vadd_row_fu_444_temp_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        temp_address0 = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_R_address0;
    end else begin
        temp_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        temp_ce0 = grp_qp_admm_Pipeline_vadd_row_fu_444_temp_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        temp_ce0 = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_R_ce0;
    end else begin
        temp_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        temp_we0 = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_R_we0;
    end else begin
        temp_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((grp_qp_admm_Pipeline_mvmult_row2_fu_510_tk_admm_V_0_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
        tk_admm_V_0_o = grp_qp_admm_Pipeline_mvmult_row2_fu_510_tk_admm_V_0;
    end else begin
        tk_admm_V_0_o = tk_admm_V_0_i;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        tk_admm_V_0_o_ap_vld = grp_qp_admm_Pipeline_mvmult_row2_fu_510_tk_admm_V_0_ap_vld;
    end else begin
        tk_admm_V_0_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        uk_admm_V_address0 = grp_qp_admm_Pipeline_vadd_row5_fu_558_uk_admm_V_address0;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        uk_admm_V_address0 = grp_qp_admm_Pipeline_vadd_row4_fu_543_uk_admm_V_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        uk_admm_V_address0 = grp_qp_admm_Pipeline_vadd_row_fu_444_uk_admm_V_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        uk_admm_V_address0 = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_B_address0;
    end else begin
        uk_admm_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        uk_admm_V_ce0 = grp_qp_admm_Pipeline_vadd_row5_fu_558_uk_admm_V_ce0;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        uk_admm_V_ce0 = grp_qp_admm_Pipeline_vadd_row4_fu_543_uk_admm_V_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        uk_admm_V_ce0 = grp_qp_admm_Pipeline_vadd_row_fu_444_uk_admm_V_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        uk_admm_V_ce0 = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_B_ce0;
    end else begin
        uk_admm_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        uk_admm_V_we0 = grp_qp_admm_Pipeline_vadd_row5_fu_558_uk_admm_V_we0;
    end else begin
        uk_admm_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        vx_V_address0 = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        vx_V_address0 = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        vx_V_address0 = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        vx_V_address0 = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        vx_V_address0 = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        vx_V_address0 = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        vx_V_address0 = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        vx_V_address0 = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        vx_V_address0 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        vx_V_address0 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        vx_V_address0 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        vx_V_address0 = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        vx_V_address0 = grp_qp_admm_Pipeline_vadd_row_fu_444_vx_V_address0;
    end else begin
        vx_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        vx_V_address1 = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        vx_V_address1 = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        vx_V_address1 = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        vx_V_address1 = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        vx_V_address1 = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        vx_V_address1 = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        vx_V_address1 = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        vx_V_address1 = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        vx_V_address1 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        vx_V_address1 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        vx_V_address1 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        vx_V_address1 = 64'd0;
    end else begin
        vx_V_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        vx_V_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        vx_V_ce0 = grp_qp_admm_Pipeline_vadd_row_fu_444_vx_V_ce0;
    end else begin
        vx_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        vx_V_ce1 = 1'b1;
    end else begin
        vx_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        vx_V_we0 = grp_qp_admm_Pipeline_vadd_row_fu_444_vx_V_we0;
    end else begin
        vx_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        zk_admm_V_address0 = grp_qp_admm_Pipeline_vadd_row5_fu_558_zk_admm_V_address0;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        zk_admm_V_address0 = grp_qp_admm_Pipeline_max0_row_fu_551_zk_admm_V_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        zk_admm_V_address0 = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_A_address0;
    end else begin
        zk_admm_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        zk_admm_V_ce0 = grp_qp_admm_Pipeline_vadd_row5_fu_558_zk_admm_V_ce0;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        zk_admm_V_ce0 = grp_qp_admm_Pipeline_max0_row_fu_551_zk_admm_V_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        zk_admm_V_ce0 = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_A_ce0;
    end else begin
        zk_admm_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        zk_admm_V_we0 = grp_qp_admm_Pipeline_max0_row_fu_551_zk_admm_V_we0;
    end else begin
        zk_admm_V_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln68_fu_575_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((grp_qp_admm_Pipeline_vadd_row_fu_444_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            if (((1'b0 == ap_block_state19_on_subcall_done) & (1'b1 == ap_CS_fsm_state19))) begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            if (((grp_qp_admm_Pipeline_vsub_row_fu_490_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            if (((grp_qp_admm_Pipeline_mvmult_row2_fu_510_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
                ap_NS_fsm = ap_ST_fsm_state24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            if (((grp_qp_admm_Pipeline_mvmult_row3_fu_526_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state25))) begin
                ap_NS_fsm = ap_ST_fsm_state26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state25;
            end
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            if (((grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state27))) begin
                ap_NS_fsm = ap_ST_fsm_state28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state27;
            end
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            if (((1'b0 == ap_block_state29_on_subcall_done) & (1'b1 == ap_CS_fsm_state29))) begin
                ap_NS_fsm = ap_ST_fsm_state30;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state29;
            end
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            if (((grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state31))) begin
                ap_NS_fsm = ap_ST_fsm_state32;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state31;
            end
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            if (((grp_qp_admm_Pipeline_vadd_row5_fu_558_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state33))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state33;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];

assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];

assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];

assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];

assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];

assign ap_CS_fsm_state28 = ap_CS_fsm[32'd27];

assign ap_CS_fsm_state29 = ap_CS_fsm[32'd28];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state30 = ap_CS_fsm[32'd29];

assign ap_CS_fsm_state31 = ap_CS_fsm[32'd30];

assign ap_CS_fsm_state32 = ap_CS_fsm[32'd31];

assign ap_CS_fsm_state33 = ap_CS_fsm[32'd32];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state19_on_subcall_done = ((grp_qp_admm_Pipeline_mvmult_row_fu_452_ap_done == 1'b0) | (grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_ap_done == 1'b0));
end

always @ (*) begin
    ap_block_state29_on_subcall_done = ((grp_qp_admm_Pipeline_max0_row_fu_551_ap_done == 1'b0) | (grp_qp_admm_Pipeline_vadd_row4_fu_543_ap_done == 1'b0));
end

assign grp_qp_admm_Pipeline_max0_row_fu_551_ap_start = grp_qp_admm_Pipeline_max0_row_fu_551_ap_start_reg;

assign grp_qp_admm_Pipeline_mvmult_row2_fu_510_ap_start = grp_qp_admm_Pipeline_mvmult_row2_fu_510_ap_start_reg;

assign grp_qp_admm_Pipeline_mvmult_row3_fu_526_ap_start = grp_qp_admm_Pipeline_mvmult_row3_fu_526_ap_start_reg;

assign grp_qp_admm_Pipeline_mvmult_row_fu_452_ap_start = grp_qp_admm_Pipeline_mvmult_row_fu_452_ap_start_reg;

assign grp_qp_admm_Pipeline_vadd_row4_fu_543_ap_start = grp_qp_admm_Pipeline_vadd_row4_fu_543_ap_start_reg;

assign grp_qp_admm_Pipeline_vadd_row5_fu_558_ap_start = grp_qp_admm_Pipeline_vadd_row5_fu_558_ap_start_reg;

assign grp_qp_admm_Pipeline_vadd_row_fu_444_ap_start = grp_qp_admm_Pipeline_vadd_row_fu_444_ap_start_reg;

assign grp_qp_admm_Pipeline_vsub_row_fu_490_ap_start = grp_qp_admm_Pipeline_vsub_row_fu_490_ap_start_reg;

assign grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_ap_start = grp_vsub_24_ap_fixed_32_16_0_0_0_s_fu_433_ap_start_reg;

assign i_8_fu_581_p2 = (i_fu_112 + 4'd1);

assign icmp_ln68_fu_575_p2 = ((i_fu_112 == 4'd10) ? 1'b1 : 1'b0);

endmodule //mpc_qp_admm
