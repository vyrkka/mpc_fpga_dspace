module mpc_mpc_dense_constraint (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        p_read,
        x0_address0,
        x0_ce0,
        x0_q0,
        x0_address1,
        x0_ce1,
        x0_q1,
        h_address0,
        h_ce0,
        h_we0,
        h_d0,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3
);

parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_state8 = 13'd128;
parameter    ap_ST_fsm_state9 = 13'd256;
parameter    ap_ST_fsm_state10 = 13'd512;
parameter    ap_ST_fsm_state11 = 13'd1024;
parameter    ap_ST_fsm_state12 = 13'd2048;
parameter    ap_ST_fsm_state13 = 13'd4096;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] p_read;
output  [0:0] x0_address0;
output   x0_ce0;
input  [31:0] x0_q0;
output  [0:0] x0_address1;
output   x0_ce1;
input  [31:0] x0_q1;
output  [4:0] h_address0;
output   h_ce0;
output   h_we0;
output  [31:0] h_d0;
output  [31:0] ap_return_0;
output  [31:0] ap_return_1;
output  [31:0] ap_return_2;
output  [31:0] ap_return_3;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg x0_ce0;
reg x0_ce1;
reg[4:0] h_address0;
reg h_ce0;
reg h_we0;
reg[31:0] h_d0;

(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] xtemp_V_0_reg_326;
wire    ap_CS_fsm_state2;
reg   [31:0] lhs_reg_332;
wire   [31:0] xtemp_V_1_fu_247_p3;
reg   [31:0] xtemp_V_1_reg_337;
reg   [2:0] temp_V_address0;
reg    temp_V_ce0;
reg    temp_V_we0;
wire   [31:0] temp_V_q0;
reg   [2:0] f1_V_address0;
reg    f1_V_ce0;
reg    f1_V_we0;
wire   [31:0] f1_V_q0;
reg   [2:0] f2_V_address0;
reg    f2_V_ce0;
reg    f2_V_we0;
wire   [31:0] f2_V_q0;
wire    grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_ap_start;
wire    grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_ap_done;
wire    grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_ap_idle;
wire    grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_ap_ready;
wire   [31:0] grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_q16_08_out;
wire    grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_q16_08_out_ap_vld;
wire   [31:0] grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_q_07_out;
wire    grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_q_07_out_ap_vld;
wire   [31:0] grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_q2_06_out;
wire    grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_q2_06_out_ap_vld;
wire   [31:0] grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_q3_05_out;
wire    grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_q3_05_out_ap_vld;
wire    grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_ap_start;
wire    grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_ap_done;
wire    grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_ap_idle;
wire    grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_ap_ready;
wire   [2:0] grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_temp_V_address0;
wire    grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_temp_V_ce0;
wire    grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_temp_V_we0;
wire   [31:0] grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_temp_V_d0;
wire    grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_ap_start;
wire    grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_ap_done;
wire    grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_ap_idle;
wire    grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_ap_ready;
wire   [2:0] grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_temp_V_address0;
wire    grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_temp_V_ce0;
wire   [2:0] grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_f1_V_address0;
wire    grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_f1_V_ce0;
wire    grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_f1_V_we0;
wire   [31:0] grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_f1_V_d0;
wire    grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_ap_start;
wire    grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_ap_done;
wire    grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_ap_idle;
wire    grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_ap_ready;
wire   [2:0] grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_temp_V_address0;
wire    grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_temp_V_ce0;
wire   [2:0] grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_f2_V_address0;
wire    grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_f2_V_ce0;
wire    grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_f2_V_we0;
wire   [31:0] grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_f2_V_d0;
wire    grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_ap_start;
wire    grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_ap_done;
wire    grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_ap_idle;
wire    grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_ap_ready;
wire   [2:0] grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_f1_V_address0;
wire    grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_f1_V_ce0;
wire   [4:0] grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_h_address0;
wire    grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_h_ce0;
wire    grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_h_we0;
wire   [31:0] grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_h_d0;
wire    grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_ap_start;
wire    grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_ap_done;
wire    grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_ap_idle;
wire    grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_ap_ready;
wire   [2:0] grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_f2_V_address0;
wire    grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_f2_V_ce0;
wire   [4:0] grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_h_address0;
wire    grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_h_ce0;
wire    grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_h_we0;
wire   [31:0] grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_h_d0;
wire    grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_ap_start;
wire    grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_ap_done;
wire    grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_ap_idle;
wire    grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_ap_ready;
wire   [4:0] grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_h_address0;
wire    grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_h_ce0;
wire    grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_h_we0;
wire   [31:0] grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_h_d0;
wire    grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_ap_start;
wire    grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_ap_done;
wire    grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_ap_idle;
wire    grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_ap_ready;
wire   [4:0] grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_h_address0;
wire    grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_h_ce0;
wire    grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_h_we0;
wire   [31:0] grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_h_d0;
reg    grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_ap_start_reg;
reg    grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
reg    grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_ap_start_reg;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
reg    grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_ap_start_reg;
reg    grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_ap_start_reg;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
reg    grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_ap_start_reg;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
reg    grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_ap_start_reg;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
wire  signed [31:0] sext_ln813_fu_187_p0;
wire  signed [32:0] sext_ln813_fu_187_p1;
wire  signed [32:0] sext_ln813_27_fu_191_p1;
wire   [32:0] ret_V_fu_195_p2;
wire   [0:0] p_Result_s_fu_201_p3;
wire   [0:0] p_Result_8_fu_213_p3;
wire   [0:0] xor_ln895_fu_221_p2;
wire   [0:0] overflow_fu_227_p2;
wire   [0:0] xor_ln302_fu_233_p2;
wire   [31:0] select_ln346_fu_239_p3;
wire   [31:0] p_Val2_8_fu_209_p1;
reg   [12:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_block_state3_on_subcall_done;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
reg    ap_block_state7_on_subcall_done;
reg    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
reg    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
reg    ap_ST_fsm_state13_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 13'd1;
#0 grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_ap_start_reg = 1'b0;
#0 grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_ap_start_reg = 1'b0;
#0 grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_ap_start_reg = 1'b0;
#0 grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_ap_start_reg = 1'b0;
#0 grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_ap_start_reg = 1'b0;
#0 grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_ap_start_reg = 1'b0;
#0 grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_ap_start_reg = 1'b0;
#0 grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_ap_start_reg = 1'b0;
end

mpc_mpc_dense_constraint_temp_V_RAM_AUTO_1R1W #(
    .DataWidth( 32 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
temp_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(temp_V_address0),
    .ce0(temp_V_ce0),
    .we0(temp_V_we0),
    .d0(grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_temp_V_d0),
    .q0(temp_V_q0)
);

mpc_mpc_dense_constraint_temp_V_RAM_AUTO_1R1W #(
    .DataWidth( 32 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
f1_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(f1_V_address0),
    .ce0(f1_V_ce0),
    .we0(f1_V_we0),
    .d0(grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_f1_V_d0),
    .q0(f1_V_q0)
);

mpc_mpc_dense_constraint_temp_V_RAM_AUTO_1R1W #(
    .DataWidth( 32 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
f2_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(f2_V_address0),
    .ce0(f2_V_ce0),
    .we0(f2_V_we0),
    .d0(grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_f2_V_d0),
    .q0(f2_V_q0)
);

mpc_mpc_dense_constraint_Pipeline_vmmult_column grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_ap_start),
    .ap_done(grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_ap_done),
    .ap_idle(grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_ap_idle),
    .ap_ready(grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_ap_ready),
    .sext_ln1271(xtemp_V_0_reg_326),
    .sext_ln1271_29(xtemp_V_1_reg_337),
    .q16_08_out(grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_q16_08_out),
    .q16_08_out_ap_vld(grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_q16_08_out_ap_vld),
    .q_07_out(grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_q_07_out),
    .q_07_out_ap_vld(grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_q_07_out_ap_vld),
    .q2_06_out(grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_q2_06_out),
    .q2_06_out_ap_vld(grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_q2_06_out_ap_vld),
    .q3_05_out(grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_q3_05_out),
    .q3_05_out_ap_vld(grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_q3_05_out_ap_vld)
);

mpc_mpc_dense_constraint_Pipeline_mvmult_row grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_ap_start),
    .ap_done(grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_ap_done),
    .ap_idle(grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_ap_idle),
    .ap_ready(grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_ap_ready),
    .temp_V_address0(grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_temp_V_address0),
    .temp_V_ce0(grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_temp_V_ce0),
    .temp_V_we0(grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_temp_V_we0),
    .temp_V_d0(grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_temp_V_d0),
    .sext_ln1271_28(xtemp_V_0_reg_326),
    .x0_load_cast(lhs_reg_332)
);

mpc_mpc_dense_constraint_Pipeline_vsub_row grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_ap_start),
    .ap_done(grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_ap_done),
    .ap_idle(grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_ap_idle),
    .ap_ready(grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_ap_ready),
    .temp_V_address0(grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_temp_V_address0),
    .temp_V_ce0(grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_temp_V_ce0),
    .temp_V_q0(temp_V_q0),
    .f1_V_address0(grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_f1_V_address0),
    .f1_V_ce0(grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_f1_V_ce0),
    .f1_V_we0(grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_f1_V_we0),
    .f1_V_d0(grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_f1_V_d0)
);

mpc_mpc_dense_constraint_Pipeline_vsub_row6 grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_ap_start),
    .ap_done(grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_ap_done),
    .ap_idle(grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_ap_idle),
    .ap_ready(grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_ap_ready),
    .temp_V_address0(grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_temp_V_address0),
    .temp_V_ce0(grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_temp_V_ce0),
    .temp_V_q0(temp_V_q0),
    .f2_V_address0(grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_f2_V_address0),
    .f2_V_ce0(grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_f2_V_ce0),
    .f2_V_we0(grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_f2_V_we0),
    .f2_V_d0(grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_f2_V_d0)
);

mpc_mpc_dense_constraint_Pipeline_constraint1 grp_mpc_dense_constraint_Pipeline_constraint1_fu_161(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_ap_start),
    .ap_done(grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_ap_done),
    .ap_idle(grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_ap_idle),
    .ap_ready(grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_ap_ready),
    .f1_V_address0(grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_f1_V_address0),
    .f1_V_ce0(grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_f1_V_ce0),
    .f1_V_q0(f1_V_q0),
    .h_address0(grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_h_address0),
    .h_ce0(grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_h_ce0),
    .h_we0(grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_h_we0),
    .h_d0(grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_h_d0)
);

mpc_mpc_dense_constraint_Pipeline_constraint2 grp_mpc_dense_constraint_Pipeline_constraint2_fu_168(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_ap_start),
    .ap_done(grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_ap_done),
    .ap_idle(grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_ap_idle),
    .ap_ready(grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_ap_ready),
    .f2_V_address0(grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_f2_V_address0),
    .f2_V_ce0(grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_f2_V_ce0),
    .f2_V_q0(f2_V_q0),
    .h_address0(grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_h_address0),
    .h_ce0(grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_h_ce0),
    .h_we0(grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_h_we0),
    .h_d0(grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_h_d0)
);

mpc_mpc_dense_constraint_Pipeline_constraint3 grp_mpc_dense_constraint_Pipeline_constraint3_fu_175(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_ap_start),
    .ap_done(grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_ap_done),
    .ap_idle(grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_ap_idle),
    .ap_ready(grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_ap_ready),
    .h_address0(grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_h_address0),
    .h_ce0(grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_h_ce0),
    .h_we0(grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_h_we0),
    .h_d0(grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_h_d0)
);

mpc_mpc_dense_constraint_Pipeline_constraint4 grp_mpc_dense_constraint_Pipeline_constraint4_fu_181(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_ap_start),
    .ap_done(grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_ap_done),
    .ap_idle(grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_ap_idle),
    .ap_ready(grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_ap_ready),
    .h_address0(grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_h_address0),
    .h_ce0(grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_h_ce0),
    .h_we0(grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_h_we0),
    .h_d0(grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_h_d0)
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
        grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_ap_start_reg <= 1'b1;
        end else if ((grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_ap_ready == 1'b1)) begin
            grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_ap_start_reg <= 1'b1;
        end else if ((grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_ap_ready == 1'b1)) begin
            grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_ap_start_reg <= 1'b1;
        end else if ((grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_ap_ready == 1'b1)) begin
            grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_ap_start_reg <= 1'b1;
        end else if ((grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_ap_ready == 1'b1)) begin
            grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_ap_start_reg <= 1'b1;
        end else if ((grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_ap_ready == 1'b1)) begin
            grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_ap_start_reg <= 1'b1;
        end else if ((grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_ap_ready == 1'b1)) begin
            grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_ap_start_reg <= 1'b1;
        end else if ((grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_ap_ready == 1'b1)) begin
            grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_ap_start_reg <= 1'b1;
        end else if ((grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_ap_ready == 1'b1)) begin
            grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        lhs_reg_332 <= x0_q0;
        xtemp_V_0_reg_326 <= x0_q1;
        xtemp_V_1_reg_337 <= xtemp_V_1_fu_247_p3;
    end
end

assign ap_ST_fsm_state10_blk = 1'b0;

always @ (*) begin
    if ((grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
    end
end

assign ap_ST_fsm_state12_blk = 1'b0;

always @ (*) begin
    if ((grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_block_state3_on_subcall_done)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

assign ap_ST_fsm_state4_blk = 1'b0;

always @ (*) begin
    if ((grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end

assign ap_ST_fsm_state6_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_block_state7_on_subcall_done)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end

assign ap_ST_fsm_state8_blk = 1'b0;

always @ (*) begin
    if ((grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state13) & (grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) & (grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        f1_V_address0 = grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_f1_V_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        f1_V_address0 = grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_f1_V_address0;
    end else begin
        f1_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        f1_V_ce0 = grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_f1_V_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        f1_V_ce0 = grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_f1_V_ce0;
    end else begin
        f1_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        f1_V_we0 = grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_f1_V_we0;
    end else begin
        f1_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        f2_V_address0 = grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_f2_V_address0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        f2_V_address0 = grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_f2_V_address0;
    end else begin
        f2_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        f2_V_ce0 = grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_f2_V_ce0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        f2_V_ce0 = grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_f2_V_ce0;
    end else begin
        f2_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        f2_V_we0 = grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_f2_V_we0;
    end else begin
        f2_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        h_address0 = grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_h_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        h_address0 = grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_h_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        h_address0 = grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_h_address0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        h_address0 = grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_h_address0;
    end else begin
        h_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        h_ce0 = grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_h_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        h_ce0 = grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_h_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        h_ce0 = grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_h_ce0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        h_ce0 = grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_h_ce0;
    end else begin
        h_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        h_d0 = grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_h_d0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        h_d0 = grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_h_d0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        h_d0 = grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_h_d0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        h_d0 = grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_h_d0;
    end else begin
        h_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        h_we0 = grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_h_we0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        h_we0 = grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_h_we0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        h_we0 = grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_h_we0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        h_we0 = grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_h_we0;
    end else begin
        h_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        temp_V_address0 = grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_temp_V_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        temp_V_address0 = grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_temp_V_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        temp_V_address0 = grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_temp_V_address0;
    end else begin
        temp_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        temp_V_ce0 = grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_temp_V_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        temp_V_ce0 = grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_temp_V_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        temp_V_ce0 = grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_temp_V_ce0;
    end else begin
        temp_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        temp_V_we0 = grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_temp_V_we0;
    end else begin
        temp_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        x0_ce0 = 1'b1;
    end else begin
        x0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        x0_ce1 = 1'b1;
    end else begin
        x0_ce1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b0 == ap_block_state7_on_subcall_done) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((1'b1 == ap_CS_fsm_state11) & (grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == ap_CS_fsm_state13) & (grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
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

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state3_on_subcall_done = ((grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_ap_done == 1'b0) | (grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_ap_done == 1'b0));
end

always @ (*) begin
    ap_block_state7_on_subcall_done = ((grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_ap_done == 1'b0) | (grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_ap_done == 1'b0));
end

assign ap_return_0 = grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_q_07_out;

assign ap_return_1 = grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_q16_08_out;

assign ap_return_2 = grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_q2_06_out;

assign ap_return_3 = grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_q3_05_out;

assign grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_ap_start = grp_mpc_dense_constraint_Pipeline_constraint1_fu_161_ap_start_reg;

assign grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_ap_start = grp_mpc_dense_constraint_Pipeline_constraint2_fu_168_ap_start_reg;

assign grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_ap_start = grp_mpc_dense_constraint_Pipeline_constraint3_fu_175_ap_start_reg;

assign grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_ap_start = grp_mpc_dense_constraint_Pipeline_constraint4_fu_181_ap_start_reg;

assign grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_ap_start = grp_mpc_dense_constraint_Pipeline_mvmult_row_fu_132_ap_start_reg;

assign grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_ap_start = grp_mpc_dense_constraint_Pipeline_vmmult_column_fu_121_ap_start_reg;

assign grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_ap_start = grp_mpc_dense_constraint_Pipeline_vsub_row6_fu_153_ap_start_reg;

assign grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_ap_start = grp_mpc_dense_constraint_Pipeline_vsub_row_fu_145_ap_start_reg;

assign overflow_fu_227_p2 = (xor_ln895_fu_221_p2 & p_Result_8_fu_213_p3);

assign p_Result_8_fu_213_p3 = ret_V_fu_195_p2[32'd31];

assign p_Result_s_fu_201_p3 = ret_V_fu_195_p2[32'd32];

assign p_Val2_8_fu_209_p1 = ret_V_fu_195_p2[31:0];

assign ret_V_fu_195_p2 = ($signed(sext_ln813_fu_187_p1) - $signed(sext_ln813_27_fu_191_p1));

assign select_ln346_fu_239_p3 = ((overflow_fu_227_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign sext_ln813_27_fu_191_p1 = $signed(p_read);

assign sext_ln813_fu_187_p0 = x0_q0;

assign sext_ln813_fu_187_p1 = sext_ln813_fu_187_p0;

assign x0_address0 = 64'd1;

assign x0_address1 = 64'd0;

assign xor_ln302_fu_233_p2 = (p_Result_s_fu_201_p3 ^ p_Result_8_fu_213_p3);

assign xor_ln895_fu_221_p2 = (p_Result_s_fu_201_p3 ^ 1'd1);

assign xtemp_V_1_fu_247_p3 = ((xor_ln302_fu_233_p2[0:0] == 1'b1) ? select_ln346_fu_239_p3 : p_Val2_8_fu_209_p1);

endmodule //mpc_mpc_dense_constraint
