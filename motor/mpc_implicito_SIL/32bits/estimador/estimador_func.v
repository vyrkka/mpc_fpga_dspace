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

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;

input   clk_1;
input	ce_1;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] zhat_prev_0;
input  [31:0] zhat_prev_1;
input  [31:0] zhat_prev_2;
output  [31:0] zhat_next_0;
output   zhat_next_0_ap_vld;
output  [31:0] zhat_next_1;
output   zhat_next_1_ap_vld;
output  [31:0] zhat_next_2;
output   zhat_next_2_ap_vld;
input  [31:0] uk;
input  [31:0] yhat;
input  [31:0] y;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] temp1_V_fu_287_p3;
reg   [31:0] temp1_V_reg_446;
wire    grp_estimador_func_Pipeline_mvmult_row_fu_158_ap_start;
wire    grp_estimador_func_Pipeline_mvmult_row_fu_158_ap_done;
wire    grp_estimador_func_Pipeline_mvmult_row_fu_158_ap_idle;
wire    grp_estimador_func_Pipeline_mvmult_row_fu_158_ap_ready;
wire   [31:0] grp_estimador_func_Pipeline_mvmult_row_fu_158_temp2_V_2_03_out;
wire    grp_estimador_func_Pipeline_mvmult_row_fu_158_temp2_V_2_03_out_ap_vld;
wire   [31:0] grp_estimador_func_Pipeline_mvmult_row_fu_158_temp2_V_1_02_out;
wire    grp_estimador_func_Pipeline_mvmult_row_fu_158_temp2_V_1_02_out_ap_vld;
wire   [31:0] grp_estimador_func_Pipeline_mvmult_row_fu_158_temp2_V_0_01_out;
wire    grp_estimador_func_Pipeline_mvmult_row_fu_158_temp2_V_0_01_out_ap_vld;
wire    grp_estimador_func_Pipeline_mvmult_row1_fu_166_ap_start;
wire    grp_estimador_func_Pipeline_mvmult_row1_fu_166_ap_done;
wire    grp_estimador_func_Pipeline_mvmult_row1_fu_166_ap_idle;
wire    grp_estimador_func_Pipeline_mvmult_row1_fu_166_ap_ready;
wire   [31:0] grp_estimador_func_Pipeline_mvmult_row1_fu_166_temp3_V_2_06_out;
wire    grp_estimador_func_Pipeline_mvmult_row1_fu_166_temp3_V_2_06_out_ap_vld;
wire   [31:0] grp_estimador_func_Pipeline_mvmult_row1_fu_166_temp3_V_1_05_out;
wire    grp_estimador_func_Pipeline_mvmult_row1_fu_166_temp3_V_1_05_out_ap_vld;
wire   [31:0] grp_estimador_func_Pipeline_mvmult_row1_fu_166_temp3_V_0_04_out;
wire    grp_estimador_func_Pipeline_mvmult_row1_fu_166_temp3_V_0_04_out_ap_vld;
wire    grp_estimador_func_Pipeline_mvmult_row2_fu_175_ap_start;
wire    grp_estimador_func_Pipeline_mvmult_row2_fu_175_ap_done;
wire    grp_estimador_func_Pipeline_mvmult_row2_fu_175_ap_idle;
wire    grp_estimador_func_Pipeline_mvmult_row2_fu_175_ap_ready;
wire   [31:0] grp_estimador_func_Pipeline_mvmult_row2_fu_175_temp4_V_2_09_out;
wire    grp_estimador_func_Pipeline_mvmult_row2_fu_175_temp4_V_2_09_out_ap_vld;
wire   [31:0] grp_estimador_func_Pipeline_mvmult_row2_fu_175_temp4_V_1_08_out;
wire    grp_estimador_func_Pipeline_mvmult_row2_fu_175_temp4_V_1_08_out_ap_vld;
wire   [31:0] grp_estimador_func_Pipeline_mvmult_row2_fu_175_temp4_V_0_07_out;
wire    grp_estimador_func_Pipeline_mvmult_row2_fu_175_temp4_V_0_07_out_ap_vld;
wire    grp_estimador_func_Pipeline_vadd_row_fu_188_ap_start;
wire    grp_estimador_func_Pipeline_vadd_row_fu_188_ap_done;
wire    grp_estimador_func_Pipeline_vadd_row_fu_188_ap_idle;
wire    grp_estimador_func_Pipeline_vadd_row_fu_188_ap_ready;
wire   [31:0] grp_estimador_func_Pipeline_vadd_row_fu_188_temp5_V_2_012_out;
wire    grp_estimador_func_Pipeline_vadd_row_fu_188_temp5_V_2_012_out_ap_vld;
wire   [31:0] grp_estimador_func_Pipeline_vadd_row_fu_188_temp5_V_1_011_out;
wire    grp_estimador_func_Pipeline_vadd_row_fu_188_temp5_V_1_011_out_ap_vld;
wire   [31:0] grp_estimador_func_Pipeline_vadd_row_fu_188_temp5_V_0_010_out;
wire    grp_estimador_func_Pipeline_vadd_row_fu_188_temp5_V_0_010_out_ap_vld;
wire    grp_estimador_func_Pipeline_vadd_row3_fu_201_ap_start;
wire    grp_estimador_func_Pipeline_vadd_row3_fu_201_ap_done;
wire    grp_estimador_func_Pipeline_vadd_row3_fu_201_ap_idle;
wire    grp_estimador_func_Pipeline_vadd_row3_fu_201_ap_ready;
wire   [31:0] grp_estimador_func_Pipeline_vadd_row3_fu_201_temp6_V_2_015_out;
wire    grp_estimador_func_Pipeline_vadd_row3_fu_201_temp6_V_2_015_out_ap_vld;
wire   [31:0] grp_estimador_func_Pipeline_vadd_row3_fu_201_temp6_V_1_014_out;
wire    grp_estimador_func_Pipeline_vadd_row3_fu_201_temp6_V_1_014_out_ap_vld;
wire   [31:0] grp_estimador_func_Pipeline_vadd_row3_fu_201_temp6_V_0_013_out;
wire    grp_estimador_func_Pipeline_vadd_row3_fu_201_temp6_V_0_013_out_ap_vld;
wire    grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_ap_start;
wire    grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_ap_done;
wire    grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_ap_idle;
wire    grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_ap_ready;
wire   [31:0] grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_zhat_next_0;
wire    grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_zhat_next_0_ap_vld;
wire   [31:0] grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_zhat_next_1;
wire    grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_zhat_next_1_ap_vld;
wire   [31:0] grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_zhat_next_2;
wire    grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_zhat_next_2_ap_vld;
reg    grp_estimador_func_Pipeline_mvmult_row_fu_158_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_estimador_func_Pipeline_mvmult_row1_fu_166_ap_start_reg;
reg    grp_estimador_func_Pipeline_mvmult_row2_fu_175_ap_start_reg;
reg    grp_estimador_func_Pipeline_vadd_row_fu_188_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_estimador_func_Pipeline_vadd_row3_fu_201_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg    grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire  signed [32:0] sext_ln813_1_fu_227_p1;
wire  signed [32:0] sext_ln813_2_fu_231_p1;
wire   [32:0] ret_V_fu_235_p2;
wire   [0:0] p_Result_s_fu_241_p3;
wire   [0:0] p_Result_7_fu_253_p3;
wire   [0:0] xor_ln895_fu_261_p2;
wire   [0:0] overflow_fu_267_p2;
wire   [0:0] xor_ln302_fu_273_p2;
wire   [31:0] select_ln346_fu_279_p3;
wire   [31:0] p_Val2_4_fu_249_p1;
reg   [7:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_block_state2_on_subcall_done;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
#0 grp_estimador_func_Pipeline_mvmult_row_fu_158_ap_start_reg = 1'b0;
#0 grp_estimador_func_Pipeline_mvmult_row1_fu_166_ap_start_reg = 1'b0;
#0 grp_estimador_func_Pipeline_mvmult_row2_fu_175_ap_start_reg = 1'b0;
#0 grp_estimador_func_Pipeline_vadd_row_fu_188_ap_start_reg = 1'b0;
#0 grp_estimador_func_Pipeline_vadd_row3_fu_201_ap_start_reg = 1'b0;
#0 grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_ap_start_reg = 1'b0;
end

estimador_func_estimador_func_Pipeline_mvmult_row grp_estimador_func_Pipeline_mvmult_row_fu_158(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_estimador_func_Pipeline_mvmult_row_fu_158_ap_start),
    .ap_done(grp_estimador_func_Pipeline_mvmult_row_fu_158_ap_done),
    .ap_idle(grp_estimador_func_Pipeline_mvmult_row_fu_158_ap_idle),
    .ap_ready(grp_estimador_func_Pipeline_mvmult_row_fu_158_ap_ready),
    .conv7_i_i(temp1_V_reg_446),
    .temp2_V_2_03_out(grp_estimador_func_Pipeline_mvmult_row_fu_158_temp2_V_2_03_out),
    .temp2_V_2_03_out_ap_vld(grp_estimador_func_Pipeline_mvmult_row_fu_158_temp2_V_2_03_out_ap_vld),
    .temp2_V_1_02_out(grp_estimador_func_Pipeline_mvmult_row_fu_158_temp2_V_1_02_out),
    .temp2_V_1_02_out_ap_vld(grp_estimador_func_Pipeline_mvmult_row_fu_158_temp2_V_1_02_out_ap_vld),
    .temp2_V_0_01_out(grp_estimador_func_Pipeline_mvmult_row_fu_158_temp2_V_0_01_out),
    .temp2_V_0_01_out_ap_vld(grp_estimador_func_Pipeline_mvmult_row_fu_158_temp2_V_0_01_out_ap_vld)
);

estimador_func_estimador_func_Pipeline_mvmult_row1 grp_estimador_func_Pipeline_mvmult_row1_fu_166(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_estimador_func_Pipeline_mvmult_row1_fu_166_ap_start),
    .ap_done(grp_estimador_func_Pipeline_mvmult_row1_fu_166_ap_done),
    .ap_idle(grp_estimador_func_Pipeline_mvmult_row1_fu_166_ap_idle),
    .ap_ready(grp_estimador_func_Pipeline_mvmult_row1_fu_166_ap_ready),
    .conv7_i_i51(uk),
    .temp3_V_2_06_out(grp_estimador_func_Pipeline_mvmult_row1_fu_166_temp3_V_2_06_out),
    .temp3_V_2_06_out_ap_vld(grp_estimador_func_Pipeline_mvmult_row1_fu_166_temp3_V_2_06_out_ap_vld),
    .temp3_V_1_05_out(grp_estimador_func_Pipeline_mvmult_row1_fu_166_temp3_V_1_05_out),
    .temp3_V_1_05_out_ap_vld(grp_estimador_func_Pipeline_mvmult_row1_fu_166_temp3_V_1_05_out_ap_vld),
    .temp3_V_0_04_out(grp_estimador_func_Pipeline_mvmult_row1_fu_166_temp3_V_0_04_out),
    .temp3_V_0_04_out_ap_vld(grp_estimador_func_Pipeline_mvmult_row1_fu_166_temp3_V_0_04_out_ap_vld)
);

estimador_func_estimador_func_Pipeline_mvmult_row2 grp_estimador_func_Pipeline_mvmult_row2_fu_175(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_estimador_func_Pipeline_mvmult_row2_fu_175_ap_start),
    .ap_done(grp_estimador_func_Pipeline_mvmult_row2_fu_175_ap_done),
    .ap_idle(grp_estimador_func_Pipeline_mvmult_row2_fu_175_ap_idle),
    .ap_ready(grp_estimador_func_Pipeline_mvmult_row2_fu_175_ap_ready),
    .sext_ln1273(zhat_prev_0),
    .sext_ln1273_1(zhat_prev_1),
    .sext_ln1273_2(zhat_prev_2),
    .temp4_V_2_09_out(grp_estimador_func_Pipeline_mvmult_row2_fu_175_temp4_V_2_09_out),
    .temp4_V_2_09_out_ap_vld(grp_estimador_func_Pipeline_mvmult_row2_fu_175_temp4_V_2_09_out_ap_vld),
    .temp4_V_1_08_out(grp_estimador_func_Pipeline_mvmult_row2_fu_175_temp4_V_1_08_out),
    .temp4_V_1_08_out_ap_vld(grp_estimador_func_Pipeline_mvmult_row2_fu_175_temp4_V_1_08_out_ap_vld),
    .temp4_V_0_07_out(grp_estimador_func_Pipeline_mvmult_row2_fu_175_temp4_V_0_07_out),
    .temp4_V_0_07_out_ap_vld(grp_estimador_func_Pipeline_mvmult_row2_fu_175_temp4_V_0_07_out_ap_vld)
);

estimador_func_estimador_func_Pipeline_vadd_row grp_estimador_func_Pipeline_vadd_row_fu_188(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_estimador_func_Pipeline_vadd_row_fu_188_ap_start),
    .ap_done(grp_estimador_func_Pipeline_vadd_row_fu_188_ap_done),
    .ap_idle(grp_estimador_func_Pipeline_vadd_row_fu_188_ap_idle),
    .ap_ready(grp_estimador_func_Pipeline_vadd_row_fu_188_ap_ready),
    .temp2_V_0_01_reload(grp_estimador_func_Pipeline_mvmult_row_fu_158_temp2_V_0_01_out),
    .temp2_V_1_02_reload(grp_estimador_func_Pipeline_mvmult_row_fu_158_temp2_V_1_02_out),
    .temp2_V_2_03_reload(grp_estimador_func_Pipeline_mvmult_row_fu_158_temp2_V_2_03_out),
    .temp3_V_0_04_reload(grp_estimador_func_Pipeline_mvmult_row1_fu_166_temp3_V_0_04_out),
    .temp3_V_1_05_reload(grp_estimador_func_Pipeline_mvmult_row1_fu_166_temp3_V_1_05_out),
    .temp3_V_2_06_reload(grp_estimador_func_Pipeline_mvmult_row1_fu_166_temp3_V_2_06_out),
    .temp5_V_2_012_out(grp_estimador_func_Pipeline_vadd_row_fu_188_temp5_V_2_012_out),
    .temp5_V_2_012_out_ap_vld(grp_estimador_func_Pipeline_vadd_row_fu_188_temp5_V_2_012_out_ap_vld),
    .temp5_V_1_011_out(grp_estimador_func_Pipeline_vadd_row_fu_188_temp5_V_1_011_out),
    .temp5_V_1_011_out_ap_vld(grp_estimador_func_Pipeline_vadd_row_fu_188_temp5_V_1_011_out_ap_vld),
    .temp5_V_0_010_out(grp_estimador_func_Pipeline_vadd_row_fu_188_temp5_V_0_010_out),
    .temp5_V_0_010_out_ap_vld(grp_estimador_func_Pipeline_vadd_row_fu_188_temp5_V_0_010_out_ap_vld)
);

estimador_func_estimador_func_Pipeline_vadd_row3 grp_estimador_func_Pipeline_vadd_row3_fu_201(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_estimador_func_Pipeline_vadd_row3_fu_201_ap_start),
    .ap_done(grp_estimador_func_Pipeline_vadd_row3_fu_201_ap_done),
    .ap_idle(grp_estimador_func_Pipeline_vadd_row3_fu_201_ap_idle),
    .ap_ready(grp_estimador_func_Pipeline_vadd_row3_fu_201_ap_ready),
    .temp4_V_0_07_reload(grp_estimador_func_Pipeline_mvmult_row2_fu_175_temp4_V_0_07_out),
    .temp4_V_1_08_reload(grp_estimador_func_Pipeline_mvmult_row2_fu_175_temp4_V_1_08_out),
    .temp4_V_2_09_reload(grp_estimador_func_Pipeline_mvmult_row2_fu_175_temp4_V_2_09_out),
    .temp5_V_0_010_reload(grp_estimador_func_Pipeline_vadd_row_fu_188_temp5_V_0_010_out),
    .temp5_V_1_011_reload(grp_estimador_func_Pipeline_vadd_row_fu_188_temp5_V_1_011_out),
    .temp5_V_2_012_reload(grp_estimador_func_Pipeline_vadd_row_fu_188_temp5_V_2_012_out),
    .temp6_V_2_015_out(grp_estimador_func_Pipeline_vadd_row3_fu_201_temp6_V_2_015_out),
    .temp6_V_2_015_out_ap_vld(grp_estimador_func_Pipeline_vadd_row3_fu_201_temp6_V_2_015_out_ap_vld),
    .temp6_V_1_014_out(grp_estimador_func_Pipeline_vadd_row3_fu_201_temp6_V_1_014_out),
    .temp6_V_1_014_out_ap_vld(grp_estimador_func_Pipeline_vadd_row3_fu_201_temp6_V_1_014_out_ap_vld),
    .temp6_V_0_013_out(grp_estimador_func_Pipeline_vadd_row3_fu_201_temp6_V_0_013_out),
    .temp6_V_0_013_out_ap_vld(grp_estimador_func_Pipeline_vadd_row3_fu_201_temp6_V_0_013_out_ap_vld)
);

estimador_func_estimador_func_Pipeline_VITIS_LOOP_66_1 grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_ap_start),
    .ap_done(grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_ap_done),
    .ap_idle(grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_ap_idle),
    .ap_ready(grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_ap_ready),
    .zhat_next_0(grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_zhat_next_0),
    .zhat_next_0_ap_vld(grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_zhat_next_0_ap_vld),
    .temp6_V_0_013_reload(grp_estimador_func_Pipeline_vadd_row3_fu_201_temp6_V_0_013_out),
    .temp6_V_1_014_reload(grp_estimador_func_Pipeline_vadd_row3_fu_201_temp6_V_1_014_out),
    .temp6_V_2_015_reload(grp_estimador_func_Pipeline_vadd_row3_fu_201_temp6_V_2_015_out),
    .zhat_next_1(grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_zhat_next_1),
    .zhat_next_1_ap_vld(grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_zhat_next_1_ap_vld),
    .zhat_next_2(grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_zhat_next_2),
    .zhat_next_2_ap_vld(grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_zhat_next_2_ap_vld)
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
        grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_ap_start_reg <= 1'b1;
        end else if ((grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_ap_ready == 1'b1)) begin
            grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_estimador_func_Pipeline_mvmult_row1_fu_166_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_estimador_func_Pipeline_mvmult_row1_fu_166_ap_start_reg <= 1'b1;
        end else if ((grp_estimador_func_Pipeline_mvmult_row1_fu_166_ap_ready == 1'b1)) begin
            grp_estimador_func_Pipeline_mvmult_row1_fu_166_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_estimador_func_Pipeline_mvmult_row2_fu_175_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_estimador_func_Pipeline_mvmult_row2_fu_175_ap_start_reg <= 1'b1;
        end else if ((grp_estimador_func_Pipeline_mvmult_row2_fu_175_ap_ready == 1'b1)) begin
            grp_estimador_func_Pipeline_mvmult_row2_fu_175_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_estimador_func_Pipeline_mvmult_row_fu_158_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_estimador_func_Pipeline_mvmult_row_fu_158_ap_start_reg <= 1'b1;
        end else if ((grp_estimador_func_Pipeline_mvmult_row_fu_158_ap_ready == 1'b1)) begin
            grp_estimador_func_Pipeline_mvmult_row_fu_158_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_estimador_func_Pipeline_vadd_row3_fu_201_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_estimador_func_Pipeline_vadd_row3_fu_201_ap_start_reg <= 1'b1;
        end else if ((grp_estimador_func_Pipeline_vadd_row3_fu_201_ap_ready == 1'b1)) begin
            grp_estimador_func_Pipeline_vadd_row3_fu_201_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_estimador_func_Pipeline_vadd_row_fu_188_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_estimador_func_Pipeline_vadd_row_fu_188_ap_start_reg <= 1'b1;
        end else if ((grp_estimador_func_Pipeline_vadd_row_fu_188_ap_ready == 1'b1)) begin
            grp_estimador_func_Pipeline_vadd_row_fu_188_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        temp1_V_reg_446 <= temp1_V_fu_287_p3;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_block_state2_on_subcall_done)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if ((grp_estimador_func_Pipeline_vadd_row_fu_188_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((grp_estimador_func_Pipeline_vadd_row3_fu_201_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

assign ap_ST_fsm_state7_blk = 1'b0;

always @ (*) begin
    if ((grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) & (grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state8) & (grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_ap_done == 1'b1))) begin
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
            if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_estimador_func_Pipeline_vadd_row_fu_188_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_estimador_func_Pipeline_vadd_row3_fu_201_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
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

always @ (*) begin
    ap_block_state2_on_subcall_done = ((grp_estimador_func_Pipeline_mvmult_row2_fu_175_ap_done == 1'b0) | (grp_estimador_func_Pipeline_mvmult_row1_fu_166_ap_done == 1'b0) | (grp_estimador_func_Pipeline_mvmult_row_fu_158_ap_done == 1'b0));
end

assign grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_ap_start = grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_ap_start_reg;

assign grp_estimador_func_Pipeline_mvmult_row1_fu_166_ap_start = grp_estimador_func_Pipeline_mvmult_row1_fu_166_ap_start_reg;

assign grp_estimador_func_Pipeline_mvmult_row2_fu_175_ap_start = grp_estimador_func_Pipeline_mvmult_row2_fu_175_ap_start_reg;

assign grp_estimador_func_Pipeline_mvmult_row_fu_158_ap_start = grp_estimador_func_Pipeline_mvmult_row_fu_158_ap_start_reg;

assign grp_estimador_func_Pipeline_vadd_row3_fu_201_ap_start = grp_estimador_func_Pipeline_vadd_row3_fu_201_ap_start_reg;

assign grp_estimador_func_Pipeline_vadd_row_fu_188_ap_start = grp_estimador_func_Pipeline_vadd_row_fu_188_ap_start_reg;

assign overflow_fu_267_p2 = (xor_ln895_fu_261_p2 & p_Result_7_fu_253_p3);

assign p_Result_7_fu_253_p3 = ret_V_fu_235_p2[32'd31];

assign p_Result_s_fu_241_p3 = ret_V_fu_235_p2[32'd32];

assign p_Val2_4_fu_249_p1 = ret_V_fu_235_p2[31:0];

assign ret_V_fu_235_p2 = ($signed(sext_ln813_1_fu_227_p1) - $signed(sext_ln813_2_fu_231_p1));

assign select_ln346_fu_279_p3 = ((overflow_fu_267_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign sext_ln813_1_fu_227_p1 = $signed(y);

assign sext_ln813_2_fu_231_p1 = $signed(yhat);

assign temp1_V_fu_287_p3 = ((xor_ln302_fu_273_p2[0:0] == 1'b1) ? select_ln346_fu_279_p3 : p_Val2_4_fu_249_p1);

assign xor_ln302_fu_273_p2 = (p_Result_s_fu_241_p3 ^ p_Result_7_fu_253_p3);

assign xor_ln895_fu_261_p2 = (p_Result_s_fu_241_p3 ^ 1'd1);

assign zhat_next_0 = grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_zhat_next_0;

assign zhat_next_0_ap_vld = grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_zhat_next_0_ap_vld;

assign zhat_next_1 = grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_zhat_next_1;

assign zhat_next_1_ap_vld = grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_zhat_next_1_ap_vld;

assign zhat_next_2 = grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_zhat_next_2;

assign zhat_next_2_ap_vld = grp_estimador_func_Pipeline_VITIS_LOOP_66_1_fu_214_zhat_next_2_ap_vld;

endmodule //estimador_func
