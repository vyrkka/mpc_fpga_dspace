module estimador_func (
        clk_1,
        ce_1,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        zhat_prev_0,
        zhat_prev_1,
        zhat_prev_2,
        zhat_next_0,
        zhat_next_0_ap_vld,
        zhat_next_1,
        zhat_next_1_ap_vld,
        zhat_next_2,
        zhat_next_2_ap_vld,
        uk,
        yhat,
        y
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;

input   clk_1;
input   ce_1;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [20:0] zhat_prev_0;
input  [20:0] zhat_prev_1;
input  [20:0] zhat_prev_2;
output  [20:0] zhat_next_0;
output   zhat_next_0_ap_vld;
output  [20:0] zhat_next_1;
output   zhat_next_1_ap_vld;
output  [20:0] zhat_next_2;
output   zhat_next_2_ap_vld;
input  [31:0] uk;
input  [31:0] yhat;
input  [31:0] y;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [20:0] select_ln302_fu_296_p3;
reg   [20:0] select_ln302_reg_459;
wire   [20:0] empty_fu_304_p1;
reg   [20:0] empty_reg_464;
wire    ap_CS_fsm_state2;
wire    grp_estimador_func_Pipeline_mvmult_row_fu_160_ap_start;
wire    grp_estimador_func_Pipeline_mvmult_row_fu_160_ap_done;
wire    grp_estimador_func_Pipeline_mvmult_row_fu_160_ap_idle;
wire    grp_estimador_func_Pipeline_mvmult_row_fu_160_ap_ready;
wire   [20:0] grp_estimador_func_Pipeline_mvmult_row_fu_160_temp2_V_2_03_out;
wire    grp_estimador_func_Pipeline_mvmult_row_fu_160_temp2_V_2_03_out_ap_vld;
wire   [20:0] grp_estimador_func_Pipeline_mvmult_row_fu_160_temp2_V_1_02_out;
wire    grp_estimador_func_Pipeline_mvmult_row_fu_160_temp2_V_1_02_out_ap_vld;
wire   [20:0] grp_estimador_func_Pipeline_mvmult_row_fu_160_temp2_V_0_01_out;
wire    grp_estimador_func_Pipeline_mvmult_row_fu_160_temp2_V_0_01_out_ap_vld;
wire    grp_estimador_func_Pipeline_mvmult_row1_fu_168_ap_start;
wire    grp_estimador_func_Pipeline_mvmult_row1_fu_168_ap_done;
wire    grp_estimador_func_Pipeline_mvmult_row1_fu_168_ap_idle;
wire    grp_estimador_func_Pipeline_mvmult_row1_fu_168_ap_ready;
wire   [20:0] grp_estimador_func_Pipeline_mvmult_row1_fu_168_temp3_V_2_06_out;
wire    grp_estimador_func_Pipeline_mvmult_row1_fu_168_temp3_V_2_06_out_ap_vld;
wire   [20:0] grp_estimador_func_Pipeline_mvmult_row1_fu_168_temp3_V_1_05_out;
wire    grp_estimador_func_Pipeline_mvmult_row1_fu_168_temp3_V_1_05_out_ap_vld;
wire   [20:0] grp_estimador_func_Pipeline_mvmult_row1_fu_168_temp3_V_0_04_out;
wire    grp_estimador_func_Pipeline_mvmult_row1_fu_168_temp3_V_0_04_out_ap_vld;
wire    grp_estimador_func_Pipeline_mvmult_row2_fu_176_ap_start;
wire    grp_estimador_func_Pipeline_mvmult_row2_fu_176_ap_done;
wire    grp_estimador_func_Pipeline_mvmult_row2_fu_176_ap_idle;
wire    grp_estimador_func_Pipeline_mvmult_row2_fu_176_ap_ready;
wire   [20:0] grp_estimador_func_Pipeline_mvmult_row2_fu_176_temp4_V_2_09_out;
wire    grp_estimador_func_Pipeline_mvmult_row2_fu_176_temp4_V_2_09_out_ap_vld;
wire   [20:0] grp_estimador_func_Pipeline_mvmult_row2_fu_176_temp4_V_1_08_out;
wire    grp_estimador_func_Pipeline_mvmult_row2_fu_176_temp4_V_1_08_out_ap_vld;
wire   [20:0] grp_estimador_func_Pipeline_mvmult_row2_fu_176_temp4_V_0_07_out;
wire    grp_estimador_func_Pipeline_mvmult_row2_fu_176_temp4_V_0_07_out_ap_vld;
wire    grp_estimador_func_Pipeline_vadd_row_fu_189_ap_start;
wire    grp_estimador_func_Pipeline_vadd_row_fu_189_ap_done;
wire    grp_estimador_func_Pipeline_vadd_row_fu_189_ap_idle;
wire    grp_estimador_func_Pipeline_vadd_row_fu_189_ap_ready;
wire   [20:0] grp_estimador_func_Pipeline_vadd_row_fu_189_temp5_V_2_012_out;
wire    grp_estimador_func_Pipeline_vadd_row_fu_189_temp5_V_2_012_out_ap_vld;
wire   [20:0] grp_estimador_func_Pipeline_vadd_row_fu_189_temp5_V_1_011_out;
wire    grp_estimador_func_Pipeline_vadd_row_fu_189_temp5_V_1_011_out_ap_vld;
wire   [20:0] grp_estimador_func_Pipeline_vadd_row_fu_189_temp5_V_0_010_out;
wire    grp_estimador_func_Pipeline_vadd_row_fu_189_temp5_V_0_010_out_ap_vld;
wire    grp_estimador_func_Pipeline_vadd_row3_fu_202_ap_start;
wire    grp_estimador_func_Pipeline_vadd_row3_fu_202_ap_done;
wire    grp_estimador_func_Pipeline_vadd_row3_fu_202_ap_idle;
wire    grp_estimador_func_Pipeline_vadd_row3_fu_202_ap_ready;
wire   [20:0] grp_estimador_func_Pipeline_vadd_row3_fu_202_temp6_V_2_015_out;
wire    grp_estimador_func_Pipeline_vadd_row3_fu_202_temp6_V_2_015_out_ap_vld;
wire   [20:0] grp_estimador_func_Pipeline_vadd_row3_fu_202_temp6_V_1_014_out;
wire    grp_estimador_func_Pipeline_vadd_row3_fu_202_temp6_V_1_014_out_ap_vld;
wire   [20:0] grp_estimador_func_Pipeline_vadd_row3_fu_202_temp6_V_0_013_out;
wire    grp_estimador_func_Pipeline_vadd_row3_fu_202_temp6_V_0_013_out_ap_vld;
wire    grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_ap_start;
wire    grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_ap_done;
wire    grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_ap_idle;
wire    grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_ap_ready;
wire   [20:0] grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_zhat_next_0;
wire    grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_zhat_next_0_ap_vld;
wire   [20:0] grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_zhat_next_1;
wire    grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_zhat_next_1_ap_vld;
wire   [20:0] grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_zhat_next_2;
wire    grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_zhat_next_2_ap_vld;
reg    grp_estimador_func_Pipeline_mvmult_row_fu_160_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_estimador_func_Pipeline_mvmult_row1_fu_168_ap_start_reg;
reg    grp_estimador_func_Pipeline_mvmult_row2_fu_176_ap_start_reg;
reg    grp_estimador_func_Pipeline_vadd_row_fu_189_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
reg    grp_estimador_func_Pipeline_vadd_row3_fu_202_ap_start_reg;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
reg    grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_ap_start_reg;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
wire   [20:0] lhs_fu_228_p1;
wire   [20:0] rhs_fu_236_p1;
wire  signed [21:0] sext_ln813_1_fu_232_p1;
wire  signed [21:0] sext_ln813_2_fu_240_p1;
wire   [21:0] ret_V_fu_244_p2;
wire   [0:0] p_Result_s_fu_250_p3;
wire   [0:0] p_Result_7_fu_262_p3;
wire   [0:0] xor_ln895_fu_270_p2;
wire   [0:0] overflow_fu_276_p2;
wire   [0:0] xor_ln302_fu_282_p2;
wire   [20:0] select_ln346_fu_288_p3;
wire   [20:0] p_Val2_4_fu_258_p1;
reg   [8:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_block_state3_on_subcall_done;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
#0 grp_estimador_func_Pipeline_mvmult_row_fu_160_ap_start_reg = 1'b0;
#0 grp_estimador_func_Pipeline_mvmult_row1_fu_168_ap_start_reg = 1'b0;
#0 grp_estimador_func_Pipeline_mvmult_row2_fu_176_ap_start_reg = 1'b0;
#0 grp_estimador_func_Pipeline_vadd_row_fu_189_ap_start_reg = 1'b0;
#0 grp_estimador_func_Pipeline_vadd_row3_fu_202_ap_start_reg = 1'b0;
#0 grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_ap_start_reg = 1'b0;
end

estimador_func_estimador_func_Pipeline_mvmult_row grp_estimador_func_Pipeline_mvmult_row_fu_160(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_estimador_func_Pipeline_mvmult_row_fu_160_ap_start),
    .ap_done(grp_estimador_func_Pipeline_mvmult_row_fu_160_ap_done),
    .ap_idle(grp_estimador_func_Pipeline_mvmult_row_fu_160_ap_idle),
    .ap_ready(grp_estimador_func_Pipeline_mvmult_row_fu_160_ap_ready),
    .conv7_i_i(select_ln302_reg_459),
    .temp2_V_2_03_out(grp_estimador_func_Pipeline_mvmult_row_fu_160_temp2_V_2_03_out),
    .temp2_V_2_03_out_ap_vld(grp_estimador_func_Pipeline_mvmult_row_fu_160_temp2_V_2_03_out_ap_vld),
    .temp2_V_1_02_out(grp_estimador_func_Pipeline_mvmult_row_fu_160_temp2_V_1_02_out),
    .temp2_V_1_02_out_ap_vld(grp_estimador_func_Pipeline_mvmult_row_fu_160_temp2_V_1_02_out_ap_vld),
    .temp2_V_0_01_out(grp_estimador_func_Pipeline_mvmult_row_fu_160_temp2_V_0_01_out),
    .temp2_V_0_01_out_ap_vld(grp_estimador_func_Pipeline_mvmult_row_fu_160_temp2_V_0_01_out_ap_vld)
);

estimador_func_estimador_func_Pipeline_mvmult_row1 grp_estimador_func_Pipeline_mvmult_row1_fu_168(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_estimador_func_Pipeline_mvmult_row1_fu_168_ap_start),
    .ap_done(grp_estimador_func_Pipeline_mvmult_row1_fu_168_ap_done),
    .ap_idle(grp_estimador_func_Pipeline_mvmult_row1_fu_168_ap_idle),
    .ap_ready(grp_estimador_func_Pipeline_mvmult_row1_fu_168_ap_ready),
    .conv7_i_i53(empty_reg_464),
    .temp3_V_2_06_out(grp_estimador_func_Pipeline_mvmult_row1_fu_168_temp3_V_2_06_out),
    .temp3_V_2_06_out_ap_vld(grp_estimador_func_Pipeline_mvmult_row1_fu_168_temp3_V_2_06_out_ap_vld),
    .temp3_V_1_05_out(grp_estimador_func_Pipeline_mvmult_row1_fu_168_temp3_V_1_05_out),
    .temp3_V_1_05_out_ap_vld(grp_estimador_func_Pipeline_mvmult_row1_fu_168_temp3_V_1_05_out_ap_vld),
    .temp3_V_0_04_out(grp_estimador_func_Pipeline_mvmult_row1_fu_168_temp3_V_0_04_out),
    .temp3_V_0_04_out_ap_vld(grp_estimador_func_Pipeline_mvmult_row1_fu_168_temp3_V_0_04_out_ap_vld)
);

estimador_func_estimador_func_Pipeline_mvmult_row2 grp_estimador_func_Pipeline_mvmult_row2_fu_176(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_estimador_func_Pipeline_mvmult_row2_fu_176_ap_start),
    .ap_done(grp_estimador_func_Pipeline_mvmult_row2_fu_176_ap_done),
    .ap_idle(grp_estimador_func_Pipeline_mvmult_row2_fu_176_ap_idle),
    .ap_ready(grp_estimador_func_Pipeline_mvmult_row2_fu_176_ap_ready),
    .sext_ln1273(zhat_prev_0),
    .sext_ln1273_1(zhat_prev_1),
    .sext_ln1273_2(zhat_prev_2),
    .temp4_V_2_09_out(grp_estimador_func_Pipeline_mvmult_row2_fu_176_temp4_V_2_09_out),
    .temp4_V_2_09_out_ap_vld(grp_estimador_func_Pipeline_mvmult_row2_fu_176_temp4_V_2_09_out_ap_vld),
    .temp4_V_1_08_out(grp_estimador_func_Pipeline_mvmult_row2_fu_176_temp4_V_1_08_out),
    .temp4_V_1_08_out_ap_vld(grp_estimador_func_Pipeline_mvmult_row2_fu_176_temp4_V_1_08_out_ap_vld),
    .temp4_V_0_07_out(grp_estimador_func_Pipeline_mvmult_row2_fu_176_temp4_V_0_07_out),
    .temp4_V_0_07_out_ap_vld(grp_estimador_func_Pipeline_mvmult_row2_fu_176_temp4_V_0_07_out_ap_vld)
);

estimador_func_estimador_func_Pipeline_vadd_row grp_estimador_func_Pipeline_vadd_row_fu_189(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_estimador_func_Pipeline_vadd_row_fu_189_ap_start),
    .ap_done(grp_estimador_func_Pipeline_vadd_row_fu_189_ap_done),
    .ap_idle(grp_estimador_func_Pipeline_vadd_row_fu_189_ap_idle),
    .ap_ready(grp_estimador_func_Pipeline_vadd_row_fu_189_ap_ready),
    .temp2_V_0_01_reload(grp_estimador_func_Pipeline_mvmult_row_fu_160_temp2_V_0_01_out),
    .temp2_V_1_02_reload(grp_estimador_func_Pipeline_mvmult_row_fu_160_temp2_V_1_02_out),
    .temp2_V_2_03_reload(grp_estimador_func_Pipeline_mvmult_row_fu_160_temp2_V_2_03_out),
    .temp3_V_0_04_reload(grp_estimador_func_Pipeline_mvmult_row1_fu_168_temp3_V_0_04_out),
    .temp3_V_1_05_reload(grp_estimador_func_Pipeline_mvmult_row1_fu_168_temp3_V_1_05_out),
    .temp3_V_2_06_reload(grp_estimador_func_Pipeline_mvmult_row1_fu_168_temp3_V_2_06_out),
    .temp5_V_2_012_out(grp_estimador_func_Pipeline_vadd_row_fu_189_temp5_V_2_012_out),
    .temp5_V_2_012_out_ap_vld(grp_estimador_func_Pipeline_vadd_row_fu_189_temp5_V_2_012_out_ap_vld),
    .temp5_V_1_011_out(grp_estimador_func_Pipeline_vadd_row_fu_189_temp5_V_1_011_out),
    .temp5_V_1_011_out_ap_vld(grp_estimador_func_Pipeline_vadd_row_fu_189_temp5_V_1_011_out_ap_vld),
    .temp5_V_0_010_out(grp_estimador_func_Pipeline_vadd_row_fu_189_temp5_V_0_010_out),
    .temp5_V_0_010_out_ap_vld(grp_estimador_func_Pipeline_vadd_row_fu_189_temp5_V_0_010_out_ap_vld)
);

estimador_func_estimador_func_Pipeline_vadd_row3 grp_estimador_func_Pipeline_vadd_row3_fu_202(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_estimador_func_Pipeline_vadd_row3_fu_202_ap_start),
    .ap_done(grp_estimador_func_Pipeline_vadd_row3_fu_202_ap_done),
    .ap_idle(grp_estimador_func_Pipeline_vadd_row3_fu_202_ap_idle),
    .ap_ready(grp_estimador_func_Pipeline_vadd_row3_fu_202_ap_ready),
    .temp4_V_0_07_reload(grp_estimador_func_Pipeline_mvmult_row2_fu_176_temp4_V_0_07_out),
    .temp4_V_1_08_reload(grp_estimador_func_Pipeline_mvmult_row2_fu_176_temp4_V_1_08_out),
    .temp4_V_2_09_reload(grp_estimador_func_Pipeline_mvmult_row2_fu_176_temp4_V_2_09_out),
    .temp5_V_0_010_reload(grp_estimador_func_Pipeline_vadd_row_fu_189_temp5_V_0_010_out),
    .temp5_V_1_011_reload(grp_estimador_func_Pipeline_vadd_row_fu_189_temp5_V_1_011_out),
    .temp5_V_2_012_reload(grp_estimador_func_Pipeline_vadd_row_fu_189_temp5_V_2_012_out),
    .temp6_V_2_015_out(grp_estimador_func_Pipeline_vadd_row3_fu_202_temp6_V_2_015_out),
    .temp6_V_2_015_out_ap_vld(grp_estimador_func_Pipeline_vadd_row3_fu_202_temp6_V_2_015_out_ap_vld),
    .temp6_V_1_014_out(grp_estimador_func_Pipeline_vadd_row3_fu_202_temp6_V_1_014_out),
    .temp6_V_1_014_out_ap_vld(grp_estimador_func_Pipeline_vadd_row3_fu_202_temp6_V_1_014_out_ap_vld),
    .temp6_V_0_013_out(grp_estimador_func_Pipeline_vadd_row3_fu_202_temp6_V_0_013_out),
    .temp6_V_0_013_out_ap_vld(grp_estimador_func_Pipeline_vadd_row3_fu_202_temp6_V_0_013_out_ap_vld)
);

estimador_func_estimador_func_Pipeline_VITIS_LOOP_66_1 grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_ap_start),
    .ap_done(grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_ap_done),
    .ap_idle(grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_ap_idle),
    .ap_ready(grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_ap_ready),
    .zhat_next_0(grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_zhat_next_0),
    .zhat_next_0_ap_vld(grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_zhat_next_0_ap_vld),
    .temp6_V_0_013_reload(grp_estimador_func_Pipeline_vadd_row3_fu_202_temp6_V_0_013_out),
    .temp6_V_1_014_reload(grp_estimador_func_Pipeline_vadd_row3_fu_202_temp6_V_1_014_out),
    .temp6_V_2_015_reload(grp_estimador_func_Pipeline_vadd_row3_fu_202_temp6_V_2_015_out),
    .zhat_next_1(grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_zhat_next_1),
    .zhat_next_1_ap_vld(grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_zhat_next_1_ap_vld),
    .zhat_next_2(grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_zhat_next_2),
    .zhat_next_2_ap_vld(grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_zhat_next_2_ap_vld)
);

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_ap_start_reg <= 1'b1;
        end else if ((grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_ap_ready == 1'b1)) begin
            grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_estimador_func_Pipeline_mvmult_row1_fu_168_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_estimador_func_Pipeline_mvmult_row1_fu_168_ap_start_reg <= 1'b1;
        end else if ((grp_estimador_func_Pipeline_mvmult_row1_fu_168_ap_ready == 1'b1)) begin
            grp_estimador_func_Pipeline_mvmult_row1_fu_168_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_estimador_func_Pipeline_mvmult_row2_fu_176_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_estimador_func_Pipeline_mvmult_row2_fu_176_ap_start_reg <= 1'b1;
        end else if ((grp_estimador_func_Pipeline_mvmult_row2_fu_176_ap_ready == 1'b1)) begin
            grp_estimador_func_Pipeline_mvmult_row2_fu_176_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_estimador_func_Pipeline_mvmult_row_fu_160_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_estimador_func_Pipeline_mvmult_row_fu_160_ap_start_reg <= 1'b1;
        end else if ((grp_estimador_func_Pipeline_mvmult_row_fu_160_ap_ready == 1'b1)) begin
            grp_estimador_func_Pipeline_mvmult_row_fu_160_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_estimador_func_Pipeline_vadd_row3_fu_202_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            grp_estimador_func_Pipeline_vadd_row3_fu_202_ap_start_reg <= 1'b1;
        end else if ((grp_estimador_func_Pipeline_vadd_row3_fu_202_ap_ready == 1'b1)) begin
            grp_estimador_func_Pipeline_vadd_row3_fu_202_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_estimador_func_Pipeline_vadd_row_fu_189_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_estimador_func_Pipeline_vadd_row_fu_189_ap_start_reg <= 1'b1;
        end else if ((grp_estimador_func_Pipeline_vadd_row_fu_189_ap_ready == 1'b1)) begin
            grp_estimador_func_Pipeline_vadd_row_fu_189_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        empty_reg_464 <= empty_fu_304_p1;
    end
end

always @ (posedge clk_1) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        select_ln302_reg_459 <= select_ln302_fu_296_p3;
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
    if ((grp_estimador_func_Pipeline_vadd_row_fu_189_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end

assign ap_ST_fsm_state6_blk = 1'b0;

always @ (*) begin
    if ((grp_estimador_func_Pipeline_vadd_row3_fu_202_ap_done == 1'b0)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end

assign ap_ST_fsm_state8_blk = 1'b0;

always @ (*) begin
    if ((grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state9) & (grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state5) & (grp_estimador_func_Pipeline_vadd_row_fu_189_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (grp_estimador_func_Pipeline_vadd_row3_fu_202_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state3_on_subcall_done = ((grp_estimador_func_Pipeline_mvmult_row2_fu_176_ap_done == 1'b0) | (grp_estimador_func_Pipeline_mvmult_row1_fu_168_ap_done == 1'b0) | (grp_estimador_func_Pipeline_mvmult_row_fu_160_ap_done == 1'b0));
end

assign empty_fu_304_p1 = uk[20:0];

assign grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_ap_start = grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_ap_start_reg;

assign grp_estimador_func_Pipeline_mvmult_row1_fu_168_ap_start = grp_estimador_func_Pipeline_mvmult_row1_fu_168_ap_start_reg;

assign grp_estimador_func_Pipeline_mvmult_row2_fu_176_ap_start = grp_estimador_func_Pipeline_mvmult_row2_fu_176_ap_start_reg;

assign grp_estimador_func_Pipeline_mvmult_row_fu_160_ap_start = grp_estimador_func_Pipeline_mvmult_row_fu_160_ap_start_reg;

assign grp_estimador_func_Pipeline_vadd_row3_fu_202_ap_start = grp_estimador_func_Pipeline_vadd_row3_fu_202_ap_start_reg;

assign grp_estimador_func_Pipeline_vadd_row_fu_189_ap_start = grp_estimador_func_Pipeline_vadd_row_fu_189_ap_start_reg;

assign lhs_fu_228_p1 = y[20:0];

assign overflow_fu_276_p2 = (xor_ln895_fu_270_p2 & p_Result_7_fu_262_p3);

assign p_Result_7_fu_262_p3 = ret_V_fu_244_p2[32'd20];

assign p_Result_s_fu_250_p3 = ret_V_fu_244_p2[32'd21];

assign p_Val2_4_fu_258_p1 = ret_V_fu_244_p2[20:0];

assign ret_V_fu_244_p2 = ($signed(sext_ln813_1_fu_232_p1) - $signed(sext_ln813_2_fu_240_p1));

assign rhs_fu_236_p1 = yhat[20:0];

assign select_ln302_fu_296_p3 = ((xor_ln302_fu_282_p2[0:0] == 1'b1) ? select_ln346_fu_288_p3 : p_Val2_4_fu_258_p1);

assign select_ln346_fu_288_p3 = ((overflow_fu_276_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign sext_ln813_1_fu_232_p1 = $signed(lhs_fu_228_p1);

assign sext_ln813_2_fu_240_p1 = $signed(rhs_fu_236_p1);

assign xor_ln302_fu_282_p2 = (p_Result_s_fu_250_p3 ^ p_Result_7_fu_262_p3);

assign xor_ln895_fu_270_p2 = (p_Result_s_fu_250_p3 ^ 1'd1);

assign zhat_next_0 = grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_zhat_next_0;

assign zhat_next_0_ap_vld = grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_zhat_next_0_ap_vld;

assign zhat_next_1 = grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_zhat_next_1;

assign zhat_next_1_ap_vld = grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_zhat_next_1_ap_vld;

assign zhat_next_2 = grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_zhat_next_2;

assign zhat_next_2_ap_vld = grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_215_zhat_next_2_ap_vld;

endmodule //estimador_func
