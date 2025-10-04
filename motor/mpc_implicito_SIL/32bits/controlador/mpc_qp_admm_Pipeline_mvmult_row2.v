module mpc_qp_admm_Pipeline_mvmult_row2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        sext_ln1273_2,
        sext_ln1273_25,
        sext_ln1273_26,
        sext_ln1273_27,
        tk_admm_V_0,
        tk_admm_V_0_ap_vld,
        tk_admm_V_1,
        tk_admm_V_1_ap_vld,
        tk_admm_V_2,
        tk_admm_V_2_ap_vld,
        tk_admm_V_3,
        tk_admm_V_3_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] sext_ln1273_2;
input  [31:0] sext_ln1273_25;
input  [31:0] sext_ln1273_26;
input  [31:0] sext_ln1273_27;
output  [31:0] tk_admm_V_0;
output   tk_admm_V_0_ap_vld;
output  [31:0] tk_admm_V_1;
output   tk_admm_V_1_ap_vld;
output  [31:0] tk_admm_V_2;
output   tk_admm_V_2_ap_vld;
output  [31:0] tk_admm_V_3;
output   tk_admm_V_3_ap_vld;

reg ap_idle;
reg tk_admm_V_0_ap_vld;
reg tk_admm_V_1_ap_vld;
reg tk_admm_V_2_ap_vld;
reg tk_admm_V_3_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln24_fu_160_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire  signed [63:0] sext_ln1273_27_cast_fu_136_p1;
reg  signed [63:0] sext_ln1273_27_cast_reg_1183;
wire    ap_block_pp0_stage0_11001;
wire  signed [63:0] sext_ln1273_26_cast_fu_140_p1;
reg  signed [63:0] sext_ln1273_26_cast_reg_1188;
wire  signed [63:0] sext_ln1273_25_cast_fu_144_p1;
reg  signed [63:0] sext_ln1273_25_cast_reg_1193;
wire  signed [63:0] sext_ln1273_2_cast_fu_148_p1;
reg  signed [63:0] sext_ln1273_2_cast_reg_1198;
wire   [1:0] trunc_ln25_fu_172_p1;
reg   [1:0] trunc_ln25_reg_1207;
reg   [1:0] trunc_ln25_reg_1207_pp0_iter1_reg;
reg   [1:0] trunc_ln25_reg_1207_pp0_iter2_reg;
reg   [1:0] trunc_ln25_reg_1207_pp0_iter3_reg;
reg   [1:0] trunc_ln25_reg_1207_pp0_iter4_reg;
wire   [31:0] tmp_1_fu_176_p6;
reg  signed [31:0] tmp_1_reg_1214;
wire   [63:0] mul_ln1273_2_fu_198_p2;
reg   [63:0] mul_ln1273_2_reg_1219;
reg   [0:0] tmp_reg_1224;
reg   [31:0] trunc_ln818_2_reg_1230;
reg   [0:0] tmp_24_reg_1235;
reg   [0:0] tmp_26_reg_1240;
reg   [14:0] tmp_s_reg_1245;
reg   [15:0] tmp_2_reg_1250;
wire   [31:0] tmp_3_fu_257_p6;
reg  signed [31:0] tmp_3_reg_1256;
wire   [31:0] add_ln377_2_fu_273_p2;
reg   [31:0] add_ln377_2_reg_1261;
wire   [0:0] and_ln895_2_fu_370_p2;
reg   [0:0] and_ln895_2_reg_1266;
wire   [0:0] or_ln346_2_fu_399_p2;
reg   [0:0] or_ln346_2_reg_1271;
wire   [63:0] mul_ln1273_fu_408_p2;
reg   [63:0] mul_ln1273_reg_1276;
reg   [0:0] tmp_31_reg_1281;
wire   [31:0] tmp_6_fu_421_p6;
reg  signed [31:0] tmp_6_reg_1286;
wire   [31:0] add_ln377_fu_493_p2;
reg   [31:0] add_ln377_reg_1291;
wire   [0:0] and_ln895_fu_617_p2;
reg   [0:0] and_ln895_reg_1296;
wire   [0:0] or_ln346_fu_647_p2;
reg   [0:0] or_ln346_reg_1301;
wire   [63:0] mul_ln1273_4_fu_656_p2;
reg   [63:0] mul_ln1273_4_reg_1306;
reg   [0:0] tmp_36_reg_1311;
wire   [31:0] tmp_9_fu_669_p6;
reg  signed [31:0] tmp_9_reg_1316;
wire   [31:0] add_ln377_4_fu_741_p2;
reg   [31:0] add_ln377_4_reg_1321;
wire   [0:0] and_ln895_4_fu_865_p2;
reg   [0:0] and_ln895_4_reg_1326;
wire   [0:0] or_ln346_4_fu_895_p2;
reg   [0:0] or_ln346_4_reg_1331;
wire   [63:0] mul_ln1273_5_fu_904_p2;
reg   [63:0] mul_ln1273_5_reg_1336;
reg   [0:0] tmp_41_reg_1341;
wire   [31:0] select_ln346_14_fu_1144_p3;
wire    ap_block_pp0_stage0;
reg   [2:0] i_4_fu_108;
wire   [2:0] add_ln24_fu_166_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_i;
wire   [1:0] tmp_1_fu_176_p5;
wire  signed [31:0] mul_ln1273_2_fu_198_p0;
wire   [31:0] zext_ln377_fu_270_p1;
wire   [0:0] tmp_27_fu_278_p3;
wire   [0:0] xor_ln896_3_fu_286_p2;
wire   [0:0] and_ln378_2_fu_292_p2;
wire   [0:0] icmp_ln1019_1_fu_302_p2;
wire   [0:0] icmp_ln878_fu_307_p2;
wire   [0:0] tmp_28_fu_320_p3;
wire   [0:0] icmp_ln1019_fu_297_p2;
wire   [0:0] xor_ln890_fu_327_p2;
wire   [0:0] and_ln890_fu_333_p2;
wire   [0:0] select_ln888_fu_312_p3;
wire   [0:0] xor_ln895_7_fu_353_p2;
wire   [0:0] or_ln895_2_fu_359_p2;
wire   [0:0] xor_ln895_fu_365_p2;
wire   [0:0] select_ln890_fu_339_p3;
wire   [0:0] xor_ln896_7_fu_376_p2;
wire   [0:0] and_ln891_2_fu_347_p2;
wire   [0:0] or_ln896_2_fu_382_p2;
wire   [0:0] xor_ln896_fu_388_p2;
wire   [0:0] and_ln896_2_fu_394_p2;
wire  signed [31:0] mul_ln1273_fu_408_p0;
wire   [31:0] select_ln346_fu_434_p3;
wire   [31:0] select_ln346_8_fu_441_p3;
wire   [47:0] shl_ln838_2_fu_447_p3;
wire  signed [63:0] sext_ln813_fu_455_p1;
wire   [63:0] add_ln1347_2_fu_459_p2;
wire   [31:0] zext_ln377_4_fu_490_p1;
wire   [31:0] trunc_ln818_5_fu_472_p4;
wire   [0:0] tmp_32_fu_499_p3;
wire   [0:0] tmp_30_fu_482_p3;
wire   [0:0] xor_ln896_8_fu_507_p2;
wire   [14:0] tmp_4_fu_519_p4;
wire   [15:0] tmp_5_fu_535_p4;
wire   [0:0] and_ln378_fu_513_p2;
wire   [0:0] icmp_ln1019_3_fu_545_p2;
wire   [0:0] icmp_ln878_1_fu_551_p2;
wire   [0:0] tmp_33_fu_565_p3;
wire   [0:0] icmp_ln1019_2_fu_529_p2;
wire   [0:0] xor_ln890_4_fu_573_p2;
wire   [0:0] and_ln890_4_fu_579_p2;
wire   [0:0] select_ln888_1_fu_557_p3;
wire   [0:0] xor_ln895_8_fu_599_p2;
wire   [0:0] tmp_29_fu_464_p3;
wire   [0:0] or_ln895_fu_605_p2;
wire   [0:0] xor_ln895_9_fu_611_p2;
wire   [0:0] select_ln890_1_fu_585_p3;
wire   [0:0] xor_ln896_12_fu_623_p2;
wire   [0:0] and_ln891_fu_593_p2;
wire   [0:0] or_ln896_fu_629_p2;
wire   [0:0] xor_ln896_13_fu_635_p2;
wire   [0:0] and_ln896_fu_641_p2;
wire  signed [31:0] mul_ln1273_4_fu_656_p0;
wire   [31:0] select_ln346_9_fu_682_p3;
wire   [31:0] select_ln346_10_fu_689_p3;
wire   [47:0] shl_ln838_5_fu_695_p3;
wire  signed [63:0] sext_ln813_7_fu_703_p1;
wire   [63:0] add_ln1347_fu_707_p2;
wire   [31:0] zext_ln377_5_fu_738_p1;
wire   [31:0] trunc_ln818_8_fu_720_p4;
wire   [0:0] tmp_37_fu_747_p3;
wire   [0:0] tmp_35_fu_730_p3;
wire   [0:0] xor_ln896_14_fu_755_p2;
wire   [14:0] tmp_7_fu_767_p4;
wire   [15:0] tmp_8_fu_783_p4;
wire   [0:0] and_ln378_4_fu_761_p2;
wire   [0:0] icmp_ln1019_5_fu_793_p2;
wire   [0:0] icmp_ln878_2_fu_799_p2;
wire   [0:0] tmp_38_fu_813_p3;
wire   [0:0] icmp_ln1019_4_fu_777_p2;
wire   [0:0] xor_ln890_5_fu_821_p2;
wire   [0:0] and_ln890_5_fu_827_p2;
wire   [0:0] select_ln888_2_fu_805_p3;
wire   [0:0] xor_ln895_10_fu_847_p2;
wire   [0:0] tmp_34_fu_712_p3;
wire   [0:0] or_ln895_4_fu_853_p2;
wire   [0:0] xor_ln895_11_fu_859_p2;
wire   [0:0] select_ln890_2_fu_833_p3;
wire   [0:0] xor_ln896_15_fu_871_p2;
wire   [0:0] and_ln891_4_fu_841_p2;
wire   [0:0] or_ln896_4_fu_877_p2;
wire   [0:0] xor_ln896_16_fu_883_p2;
wire   [0:0] and_ln896_4_fu_889_p2;
wire  signed [31:0] mul_ln1273_5_fu_904_p0;
wire   [31:0] select_ln346_11_fu_917_p3;
wire   [31:0] select_ln346_12_fu_924_p3;
wire   [47:0] shl_ln838_8_fu_930_p3;
wire  signed [63:0] sext_ln813_8_fu_938_p1;
wire   [63:0] add_ln1347_3_fu_942_p2;
wire   [31:0] zext_ln377_6_fu_973_p1;
wire   [31:0] trunc_ln818_s_fu_955_p4;
wire   [31:0] add_ln377_5_fu_976_p2;
wire   [0:0] tmp_42_fu_982_p3;
wire   [0:0] tmp_40_fu_965_p3;
wire   [0:0] xor_ln896_17_fu_990_p2;
wire   [14:0] tmp_10_fu_1002_p4;
wire   [15:0] tmp_11_fu_1018_p4;
wire   [0:0] and_ln378_5_fu_996_p2;
wire   [0:0] icmp_ln1019_7_fu_1028_p2;
wire   [0:0] icmp_ln878_3_fu_1034_p2;
wire   [0:0] tmp_43_fu_1048_p3;
wire   [0:0] icmp_ln1019_6_fu_1012_p2;
wire   [0:0] xor_ln890_6_fu_1056_p2;
wire   [0:0] and_ln890_6_fu_1062_p2;
wire   [0:0] select_ln888_3_fu_1040_p3;
wire   [0:0] xor_ln895_12_fu_1082_p2;
wire   [0:0] tmp_39_fu_947_p3;
wire   [0:0] or_ln895_5_fu_1088_p2;
wire   [0:0] xor_ln895_13_fu_1094_p2;
wire   [0:0] select_ln890_3_fu_1068_p3;
wire   [0:0] xor_ln896_18_fu_1106_p2;
wire   [0:0] and_ln891_5_fu_1076_p2;
wire   [0:0] or_ln896_5_fu_1112_p2;
wire   [0:0] xor_ln896_19_fu_1118_p2;
wire   [0:0] and_ln895_5_fu_1100_p2;
wire   [0:0] and_ln896_5_fu_1124_p2;
wire   [0:0] or_ln346_5_fu_1138_p2;
wire   [31:0] select_ln346_13_fu_1130_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_done_reg = 1'b0;
end

mpc_mux_42_32_1_1_x0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_42_32_1_1_x0_U152(
    .din0(32'd15922),
    .din1(32'd4294965438),
    .din2(32'd4294966428),
    .din3(32'd4294966894),
    .din4(tmp_1_fu_176_p5),
    .dout(tmp_1_fu_176_p6)
);

mpc_mul_32s_32s_64_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
mul_32s_32s_64_1_1_U153(
    .din0(mul_ln1273_2_fu_198_p0),
    .din1(tmp_1_reg_1214),
    .dout(mul_ln1273_2_fu_198_p2)
);

mpc_mux_42_32_1_1_x0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_42_32_1_1_x0_U154(
    .din0(32'd4294965438),
    .din1(32'd16163),
    .din2(32'd4294965589),
    .din3(32'd4294966585),
    .din4(trunc_ln25_reg_1207),
    .dout(tmp_3_fu_257_p6)
);

mpc_mul_32s_32s_64_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
mul_32s_32s_64_1_1_U155(
    .din0(mul_ln1273_fu_408_p0),
    .din1(tmp_3_reg_1256),
    .dout(mul_ln1273_fu_408_p2)
);

mpc_mux_42_32_1_1_x0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_42_32_1_1_x0_U156(
    .din0(32'd4294966428),
    .din1(32'd4294965589),
    .din2(32'd16321),
    .din3(32'd4294965861),
    .din4(trunc_ln25_reg_1207_pp0_iter1_reg),
    .dout(tmp_6_fu_421_p6)
);

mpc_mul_32s_32s_64_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
mul_32s_32s_64_1_1_U157(
    .din0(mul_ln1273_4_fu_656_p0),
    .din1(tmp_6_reg_1286),
    .dout(mul_ln1273_4_fu_656_p2)
);

mpc_mux_42_32_1_1_x #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_42_32_1_1_x_U158(
    .din0(32'd4294966894),
    .din1(32'd4294966585),
    .din2(32'd4294965861),
    .din3(32'd16895),
    .din4(trunc_ln25_reg_1207_pp0_iter2_reg),
    .dout(tmp_9_fu_669_p6)
);

mpc_mul_32s_32s_64_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
mul_32s_32s_64_1_1_U159(
    .din0(mul_ln1273_5_fu_904_p0),
    .din1(tmp_9_reg_1316),
    .dout(mul_ln1273_5_fu_904_p2)
);

mpc_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
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
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln24_fu_160_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_4_fu_108 <= add_ln24_fu_166_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_4_fu_108 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln377_2_reg_1261 <= add_ln377_2_fu_273_p2;
        add_ln377_4_reg_1321 <= add_ln377_4_fu_741_p2;
        add_ln377_reg_1291 <= add_ln377_fu_493_p2;
        and_ln895_2_reg_1266 <= and_ln895_2_fu_370_p2;
        and_ln895_4_reg_1326 <= and_ln895_4_fu_865_p2;
        and_ln895_reg_1296 <= and_ln895_fu_617_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        mul_ln1273_4_reg_1306 <= mul_ln1273_4_fu_656_p2;
        mul_ln1273_5_reg_1336 <= mul_ln1273_5_fu_904_p2;
        mul_ln1273_reg_1276 <= mul_ln1273_fu_408_p2;
        or_ln346_2_reg_1271 <= or_ln346_2_fu_399_p2;
        or_ln346_4_reg_1331 <= or_ln346_4_fu_895_p2;
        or_ln346_reg_1301 <= or_ln346_fu_647_p2;
        tmp_31_reg_1281 <= mul_ln1273_fu_408_p2[32'd15];
        tmp_36_reg_1311 <= mul_ln1273_4_fu_656_p2[32'd15];
        tmp_41_reg_1341 <= mul_ln1273_5_fu_904_p2[32'd15];
        tmp_6_reg_1286 <= tmp_6_fu_421_p6;
        tmp_9_reg_1316 <= tmp_9_fu_669_p6;
        trunc_ln25_reg_1207_pp0_iter2_reg <= trunc_ln25_reg_1207_pp0_iter1_reg;
        trunc_ln25_reg_1207_pp0_iter3_reg <= trunc_ln25_reg_1207_pp0_iter2_reg;
        trunc_ln25_reg_1207_pp0_iter4_reg <= trunc_ln25_reg_1207_pp0_iter3_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        mul_ln1273_2_reg_1219 <= mul_ln1273_2_fu_198_p2;
        sext_ln1273_25_cast_reg_1193 <= sext_ln1273_25_cast_fu_144_p1;
        sext_ln1273_26_cast_reg_1188 <= sext_ln1273_26_cast_fu_140_p1;
        sext_ln1273_27_cast_reg_1183 <= sext_ln1273_27_cast_fu_136_p1;
        sext_ln1273_2_cast_reg_1198 <= sext_ln1273_2_cast_fu_148_p1;
        tmp_24_reg_1235 <= mul_ln1273_2_fu_198_p2[32'd47];
        tmp_26_reg_1240 <= mul_ln1273_2_fu_198_p2[32'd15];
        tmp_2_reg_1250 <= {{mul_ln1273_2_fu_198_p2[63:48]}};
        tmp_3_reg_1256 <= tmp_3_fu_257_p6;
        tmp_reg_1224 <= mul_ln1273_2_fu_198_p2[32'd63];
        tmp_s_reg_1245 <= {{mul_ln1273_2_fu_198_p2[63:49]}};
        trunc_ln25_reg_1207_pp0_iter1_reg <= trunc_ln25_reg_1207;
        trunc_ln818_2_reg_1230 <= {{mul_ln1273_2_fu_198_p2[47:16]}};
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln24_fu_160_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_1_reg_1214 <= tmp_1_fu_176_p6;
        trunc_ln25_reg_1207 <= trunc_ln25_fu_172_p1;
    end
end

always @ (*) begin
    if (((icmp_ln24_fu_160_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i = 3'd0;
    end else begin
        ap_sig_allocacmp_i = i_4_fu_108;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln25_reg_1207_pp0_iter4_reg == 2'd0))) begin
        tk_admm_V_0_ap_vld = 1'b1;
    end else begin
        tk_admm_V_0_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln25_reg_1207_pp0_iter4_reg == 2'd1))) begin
        tk_admm_V_1_ap_vld = 1'b1;
    end else begin
        tk_admm_V_1_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln25_reg_1207_pp0_iter4_reg == 2'd2))) begin
        tk_admm_V_2_ap_vld = 1'b1;
    end else begin
        tk_admm_V_2_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln25_reg_1207_pp0_iter4_reg == 2'd3))) begin
        tk_admm_V_3_ap_vld = 1'b1;
    end else begin
        tk_admm_V_3_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1347_2_fu_459_p2 = ($signed(sext_ln813_fu_455_p1) + $signed(mul_ln1273_reg_1276));

assign add_ln1347_3_fu_942_p2 = ($signed(sext_ln813_8_fu_938_p1) + $signed(mul_ln1273_5_reg_1336));

assign add_ln1347_fu_707_p2 = ($signed(sext_ln813_7_fu_703_p1) + $signed(mul_ln1273_4_reg_1306));

assign add_ln24_fu_166_p2 = (ap_sig_allocacmp_i + 3'd1);

assign add_ln377_2_fu_273_p2 = (zext_ln377_fu_270_p1 + trunc_ln818_2_reg_1230);

assign add_ln377_4_fu_741_p2 = (zext_ln377_5_fu_738_p1 + trunc_ln818_8_fu_720_p4);

assign add_ln377_5_fu_976_p2 = (zext_ln377_6_fu_973_p1 + trunc_ln818_s_fu_955_p4);

assign add_ln377_fu_493_p2 = (zext_ln377_4_fu_490_p1 + trunc_ln818_5_fu_472_p4);

assign and_ln378_2_fu_292_p2 = (xor_ln896_3_fu_286_p2 & tmp_24_reg_1235);

assign and_ln378_4_fu_761_p2 = (xor_ln896_14_fu_755_p2 & tmp_35_fu_730_p3);

assign and_ln378_5_fu_996_p2 = (xor_ln896_17_fu_990_p2 & tmp_40_fu_965_p3);

assign and_ln378_fu_513_p2 = (xor_ln896_8_fu_507_p2 & tmp_30_fu_482_p3);

assign and_ln890_4_fu_579_p2 = (xor_ln890_4_fu_573_p2 & icmp_ln1019_2_fu_529_p2);

assign and_ln890_5_fu_827_p2 = (xor_ln890_5_fu_821_p2 & icmp_ln1019_4_fu_777_p2);

assign and_ln890_6_fu_1062_p2 = (xor_ln890_6_fu_1056_p2 & icmp_ln1019_6_fu_1012_p2);

assign and_ln890_fu_333_p2 = (xor_ln890_fu_327_p2 & icmp_ln1019_fu_297_p2);

assign and_ln891_2_fu_347_p2 = (icmp_ln1019_1_fu_302_p2 & and_ln378_2_fu_292_p2);

assign and_ln891_4_fu_841_p2 = (icmp_ln1019_5_fu_793_p2 & and_ln378_4_fu_761_p2);

assign and_ln891_5_fu_1076_p2 = (icmp_ln1019_7_fu_1028_p2 & and_ln378_5_fu_996_p2);

assign and_ln891_fu_593_p2 = (icmp_ln1019_3_fu_545_p2 & and_ln378_fu_513_p2);

assign and_ln895_2_fu_370_p2 = (xor_ln895_fu_365_p2 & or_ln895_2_fu_359_p2);

assign and_ln895_4_fu_865_p2 = (xor_ln895_11_fu_859_p2 & or_ln895_4_fu_853_p2);

assign and_ln895_5_fu_1100_p2 = (xor_ln895_13_fu_1094_p2 & or_ln895_5_fu_1088_p2);

assign and_ln895_fu_617_p2 = (xor_ln895_9_fu_611_p2 & or_ln895_fu_605_p2);

assign and_ln896_2_fu_394_p2 = (xor_ln896_fu_388_p2 & tmp_reg_1224);

assign and_ln896_4_fu_889_p2 = (xor_ln896_16_fu_883_p2 & tmp_34_fu_712_p3);

assign and_ln896_5_fu_1124_p2 = (xor_ln896_19_fu_1118_p2 & tmp_39_fu_947_p3);

assign and_ln896_fu_641_p2 = (xor_ln896_13_fu_635_p2 & tmp_29_fu_464_p3);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln1019_1_fu_302_p2 = ((tmp_2_reg_1250 == 16'd65535) ? 1'b1 : 1'b0);

assign icmp_ln1019_2_fu_529_p2 = ((tmp_4_fu_519_p4 == 15'd32767) ? 1'b1 : 1'b0);

assign icmp_ln1019_3_fu_545_p2 = ((tmp_5_fu_535_p4 == 16'd65535) ? 1'b1 : 1'b0);

assign icmp_ln1019_4_fu_777_p2 = ((tmp_7_fu_767_p4 == 15'd32767) ? 1'b1 : 1'b0);

assign icmp_ln1019_5_fu_793_p2 = ((tmp_8_fu_783_p4 == 16'd65535) ? 1'b1 : 1'b0);

assign icmp_ln1019_6_fu_1012_p2 = ((tmp_10_fu_1002_p4 == 15'd32767) ? 1'b1 : 1'b0);

assign icmp_ln1019_7_fu_1028_p2 = ((tmp_11_fu_1018_p4 == 16'd65535) ? 1'b1 : 1'b0);

assign icmp_ln1019_fu_297_p2 = ((tmp_s_reg_1245 == 15'd32767) ? 1'b1 : 1'b0);

assign icmp_ln24_fu_160_p2 = ((ap_sig_allocacmp_i == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln878_1_fu_551_p2 = ((tmp_5_fu_535_p4 == 16'd0) ? 1'b1 : 1'b0);

assign icmp_ln878_2_fu_799_p2 = ((tmp_8_fu_783_p4 == 16'd0) ? 1'b1 : 1'b0);

assign icmp_ln878_3_fu_1034_p2 = ((tmp_11_fu_1018_p4 == 16'd0) ? 1'b1 : 1'b0);

assign icmp_ln878_fu_307_p2 = ((tmp_2_reg_1250 == 16'd0) ? 1'b1 : 1'b0);

assign mul_ln1273_2_fu_198_p0 = sext_ln1273_2_cast_reg_1198;

assign mul_ln1273_4_fu_656_p0 = sext_ln1273_26_cast_reg_1188;

assign mul_ln1273_5_fu_904_p0 = sext_ln1273_27_cast_reg_1183;

assign mul_ln1273_fu_408_p0 = sext_ln1273_25_cast_reg_1193;

assign or_ln346_2_fu_399_p2 = (and_ln896_2_fu_394_p2 | and_ln895_2_fu_370_p2);

assign or_ln346_4_fu_895_p2 = (and_ln896_4_fu_889_p2 | and_ln895_4_fu_865_p2);

assign or_ln346_5_fu_1138_p2 = (and_ln896_5_fu_1124_p2 | and_ln895_5_fu_1100_p2);

assign or_ln346_fu_647_p2 = (and_ln896_fu_641_p2 | and_ln895_fu_617_p2);

assign or_ln895_2_fu_359_p2 = (xor_ln895_7_fu_353_p2 | tmp_27_fu_278_p3);

assign or_ln895_4_fu_853_p2 = (xor_ln895_10_fu_847_p2 | tmp_37_fu_747_p3);

assign or_ln895_5_fu_1088_p2 = (xor_ln895_12_fu_1082_p2 | tmp_42_fu_982_p3);

assign or_ln895_fu_605_p2 = (xor_ln895_8_fu_599_p2 | tmp_32_fu_499_p3);

assign or_ln896_2_fu_382_p2 = (xor_ln896_7_fu_376_p2 | xor_ln896_3_fu_286_p2);

assign or_ln896_4_fu_877_p2 = (xor_ln896_15_fu_871_p2 | xor_ln896_14_fu_755_p2);

assign or_ln896_5_fu_1112_p2 = (xor_ln896_18_fu_1106_p2 | xor_ln896_17_fu_990_p2);

assign or_ln896_fu_629_p2 = (xor_ln896_8_fu_507_p2 | xor_ln896_12_fu_623_p2);

assign select_ln346_10_fu_689_p3 = ((or_ln346_reg_1301[0:0] == 1'b1) ? select_ln346_9_fu_682_p3 : add_ln377_reg_1291);

assign select_ln346_11_fu_917_p3 = ((and_ln895_4_reg_1326[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_12_fu_924_p3 = ((or_ln346_4_reg_1331[0:0] == 1'b1) ? select_ln346_11_fu_917_p3 : add_ln377_4_reg_1321);

assign select_ln346_13_fu_1130_p3 = ((and_ln895_5_fu_1100_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_14_fu_1144_p3 = ((or_ln346_5_fu_1138_p2[0:0] == 1'b1) ? select_ln346_13_fu_1130_p3 : add_ln377_5_fu_976_p2);

assign select_ln346_8_fu_441_p3 = ((or_ln346_2_reg_1271[0:0] == 1'b1) ? select_ln346_fu_434_p3 : add_ln377_2_reg_1261);

assign select_ln346_9_fu_682_p3 = ((and_ln895_reg_1296[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_fu_434_p3 = ((and_ln895_2_reg_1266[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln888_1_fu_557_p3 = ((and_ln378_fu_513_p2[0:0] == 1'b1) ? icmp_ln1019_3_fu_545_p2 : icmp_ln878_1_fu_551_p2);

assign select_ln888_2_fu_805_p3 = ((and_ln378_4_fu_761_p2[0:0] == 1'b1) ? icmp_ln1019_5_fu_793_p2 : icmp_ln878_2_fu_799_p2);

assign select_ln888_3_fu_1040_p3 = ((and_ln378_5_fu_996_p2[0:0] == 1'b1) ? icmp_ln1019_7_fu_1028_p2 : icmp_ln878_3_fu_1034_p2);

assign select_ln888_fu_312_p3 = ((and_ln378_2_fu_292_p2[0:0] == 1'b1) ? icmp_ln1019_1_fu_302_p2 : icmp_ln878_fu_307_p2);

assign select_ln890_1_fu_585_p3 = ((and_ln378_fu_513_p2[0:0] == 1'b1) ? and_ln890_4_fu_579_p2 : icmp_ln1019_3_fu_545_p2);

assign select_ln890_2_fu_833_p3 = ((and_ln378_4_fu_761_p2[0:0] == 1'b1) ? and_ln890_5_fu_827_p2 : icmp_ln1019_5_fu_793_p2);

assign select_ln890_3_fu_1068_p3 = ((and_ln378_5_fu_996_p2[0:0] == 1'b1) ? and_ln890_6_fu_1062_p2 : icmp_ln1019_7_fu_1028_p2);

assign select_ln890_fu_339_p3 = ((and_ln378_2_fu_292_p2[0:0] == 1'b1) ? and_ln890_fu_333_p2 : icmp_ln1019_1_fu_302_p2);

assign sext_ln1273_25_cast_fu_144_p1 = $signed(sext_ln1273_25);

assign sext_ln1273_26_cast_fu_140_p1 = $signed(sext_ln1273_26);

assign sext_ln1273_27_cast_fu_136_p1 = $signed(sext_ln1273_27);

assign sext_ln1273_2_cast_fu_148_p1 = $signed(sext_ln1273_2);

assign sext_ln813_7_fu_703_p1 = $signed(shl_ln838_5_fu_695_p3);

assign sext_ln813_8_fu_938_p1 = $signed(shl_ln838_8_fu_930_p3);

assign sext_ln813_fu_455_p1 = $signed(shl_ln838_2_fu_447_p3);

assign shl_ln838_2_fu_447_p3 = {{select_ln346_8_fu_441_p3}, {16'd0}};

assign shl_ln838_5_fu_695_p3 = {{select_ln346_10_fu_689_p3}, {16'd0}};

assign shl_ln838_8_fu_930_p3 = {{select_ln346_12_fu_924_p3}, {16'd0}};

assign tk_admm_V_0 = select_ln346_14_fu_1144_p3;

assign tk_admm_V_1 = select_ln346_14_fu_1144_p3;

assign tk_admm_V_2 = select_ln346_14_fu_1144_p3;

assign tk_admm_V_3 = select_ln346_14_fu_1144_p3;

assign tmp_10_fu_1002_p4 = {{add_ln1347_3_fu_942_p2[63:49]}};

assign tmp_11_fu_1018_p4 = {{add_ln1347_3_fu_942_p2[63:48]}};

assign tmp_1_fu_176_p5 = ap_sig_allocacmp_i[1:0];

assign tmp_27_fu_278_p3 = add_ln377_2_fu_273_p2[32'd31];

assign tmp_28_fu_320_p3 = mul_ln1273_2_reg_1219[32'd48];

assign tmp_29_fu_464_p3 = add_ln1347_2_fu_459_p2[32'd63];

assign tmp_30_fu_482_p3 = add_ln1347_2_fu_459_p2[32'd47];

assign tmp_32_fu_499_p3 = add_ln377_fu_493_p2[32'd31];

assign tmp_33_fu_565_p3 = add_ln1347_2_fu_459_p2[32'd48];

assign tmp_34_fu_712_p3 = add_ln1347_fu_707_p2[32'd63];

assign tmp_35_fu_730_p3 = add_ln1347_fu_707_p2[32'd47];

assign tmp_37_fu_747_p3 = add_ln377_4_fu_741_p2[32'd31];

assign tmp_38_fu_813_p3 = add_ln1347_fu_707_p2[32'd48];

assign tmp_39_fu_947_p3 = add_ln1347_3_fu_942_p2[32'd63];

assign tmp_40_fu_965_p3 = add_ln1347_3_fu_942_p2[32'd47];

assign tmp_42_fu_982_p3 = add_ln377_5_fu_976_p2[32'd31];

assign tmp_43_fu_1048_p3 = add_ln1347_3_fu_942_p2[32'd48];

assign tmp_4_fu_519_p4 = {{add_ln1347_2_fu_459_p2[63:49]}};

assign tmp_5_fu_535_p4 = {{add_ln1347_2_fu_459_p2[63:48]}};

assign tmp_7_fu_767_p4 = {{add_ln1347_fu_707_p2[63:49]}};

assign tmp_8_fu_783_p4 = {{add_ln1347_fu_707_p2[63:48]}};

assign trunc_ln25_fu_172_p1 = ap_sig_allocacmp_i[1:0];

assign trunc_ln818_5_fu_472_p4 = {{add_ln1347_2_fu_459_p2[47:16]}};

assign trunc_ln818_8_fu_720_p4 = {{add_ln1347_fu_707_p2[47:16]}};

assign trunc_ln818_s_fu_955_p4 = {{add_ln1347_3_fu_942_p2[47:16]}};

assign xor_ln890_4_fu_573_p2 = (tmp_33_fu_565_p3 ^ 1'd1);

assign xor_ln890_5_fu_821_p2 = (tmp_38_fu_813_p3 ^ 1'd1);

assign xor_ln890_6_fu_1056_p2 = (tmp_43_fu_1048_p3 ^ 1'd1);

assign xor_ln890_fu_327_p2 = (tmp_28_fu_320_p3 ^ 1'd1);

assign xor_ln895_10_fu_847_p2 = (select_ln888_2_fu_805_p3 ^ 1'd1);

assign xor_ln895_11_fu_859_p2 = (tmp_34_fu_712_p3 ^ 1'd1);

assign xor_ln895_12_fu_1082_p2 = (select_ln888_3_fu_1040_p3 ^ 1'd1);

assign xor_ln895_13_fu_1094_p2 = (tmp_39_fu_947_p3 ^ 1'd1);

assign xor_ln895_7_fu_353_p2 = (select_ln888_fu_312_p3 ^ 1'd1);

assign xor_ln895_8_fu_599_p2 = (select_ln888_1_fu_557_p3 ^ 1'd1);

assign xor_ln895_9_fu_611_p2 = (tmp_29_fu_464_p3 ^ 1'd1);

assign xor_ln895_fu_365_p2 = (tmp_reg_1224 ^ 1'd1);

assign xor_ln896_12_fu_623_p2 = (select_ln890_1_fu_585_p3 ^ 1'd1);

assign xor_ln896_13_fu_635_p2 = (or_ln896_fu_629_p2 ^ and_ln891_fu_593_p2);

assign xor_ln896_14_fu_755_p2 = (tmp_37_fu_747_p3 ^ 1'd1);

assign xor_ln896_15_fu_871_p2 = (select_ln890_2_fu_833_p3 ^ 1'd1);

assign xor_ln896_16_fu_883_p2 = (or_ln896_4_fu_877_p2 ^ and_ln891_4_fu_841_p2);

assign xor_ln896_17_fu_990_p2 = (tmp_42_fu_982_p3 ^ 1'd1);

assign xor_ln896_18_fu_1106_p2 = (select_ln890_3_fu_1068_p3 ^ 1'd1);

assign xor_ln896_19_fu_1118_p2 = (or_ln896_5_fu_1112_p2 ^ and_ln891_5_fu_1076_p2);

assign xor_ln896_3_fu_286_p2 = (tmp_27_fu_278_p3 ^ 1'd1);

assign xor_ln896_7_fu_376_p2 = (select_ln890_fu_339_p3 ^ 1'd1);

assign xor_ln896_8_fu_507_p2 = (tmp_32_fu_499_p3 ^ 1'd1);

assign xor_ln896_fu_388_p2 = (or_ln896_2_fu_382_p2 ^ and_ln891_2_fu_347_p2);

assign zext_ln377_4_fu_490_p1 = tmp_31_reg_1281;

assign zext_ln377_5_fu_738_p1 = tmp_36_reg_1311;

assign zext_ln377_6_fu_973_p1 = tmp_41_reg_1341;

assign zext_ln377_fu_270_p1 = tmp_26_reg_1240;

endmodule //mpc_qp_admm_Pipeline_mvmult_row2
