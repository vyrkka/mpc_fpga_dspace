module mpc_qp_admm_Pipeline_mvmult_row3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        Htk_V_address0,
        Htk_V_ce0,
        Htk_V_we0,
        Htk_V_d0,
        sext_ln1273_28,
        sext_ln1273_29,
        sext_ln1273_30,
        tk_admm_V_3_load_cast
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] Htk_V_address0;
output   Htk_V_ce0;
output   Htk_V_we0;
output  [31:0] Htk_V_d0;
input  [31:0] sext_ln1273_28;
input  [31:0] sext_ln1273_29;
input  [31:0] sext_ln1273_30;
input  [31:0] tk_admm_V_3_load_cast;

reg ap_idle;
reg Htk_V_ce0;
reg Htk_V_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln24_fu_203_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [4:0] H_V_0_address0;
reg    H_V_0_ce0;
wire   [17:0] H_V_0_q0;
wire   [4:0] H_V_1_address0;
reg    H_V_1_ce0;
wire   [17:0] H_V_1_q0;
wire   [4:0] H_V_2_address0;
reg    H_V_2_ce0;
wire   [17:0] H_V_2_q0;
wire   [4:0] H_V_3_address0;
reg    H_V_3_ce0;
wire   [17:0] H_V_3_q0;
wire  signed [49:0] tk_admm_V_3_load_cast_cast_fu_179_p1;
reg  signed [49:0] tk_admm_V_3_load_cast_cast_reg_1114;
wire    ap_block_pp0_stage0_11001;
wire  signed [49:0] sext_ln1273_30_cast_fu_183_p1;
reg  signed [49:0] sext_ln1273_30_cast_reg_1119;
wire  signed [49:0] sext_ln1273_29_cast_fu_187_p1;
reg  signed [49:0] sext_ln1273_29_cast_reg_1124;
wire  signed [49:0] sext_ln1273_28_cast_fu_191_p1;
reg  signed [49:0] sext_ln1273_28_cast_reg_1129;
wire   [63:0] i_5_cast_fu_215_p1;
reg   [63:0] i_5_cast_reg_1138;
reg   [63:0] i_5_cast_reg_1138_pp0_iter1_reg;
reg   [63:0] i_5_cast_reg_1138_pp0_iter2_reg;
reg   [63:0] i_5_cast_reg_1138_pp0_iter3_reg;
reg   [63:0] i_5_cast_reg_1138_pp0_iter4_reg;
reg   [63:0] i_5_cast_reg_1138_pp0_iter5_reg;
reg  signed [17:0] H_V_0_load_reg_1155;
reg  signed [17:0] H_V_1_load_reg_1160;
wire   [49:0] mul_ln1273_fu_229_p2;
reg   [49:0] mul_ln1273_reg_1170;
reg   [0:0] tmp_reg_1176;
reg   [31:0] trunc_ln818_4_reg_1182;
reg   [0:0] tmp_1_reg_1187;
reg   [0:0] tmp_2_reg_1192;
reg   [1:0] tmp_s_reg_1197;
wire   [48:0] trunc_ln1347_fu_286_p1;
reg   [48:0] trunc_ln1347_reg_1203;
reg   [48:0] trunc_ln1347_reg_1203_pp0_iter3_reg;
wire   [47:0] trunc_ln1347_1_fu_290_p1;
reg   [47:0] trunc_ln1347_1_reg_1208;
reg   [0:0] tmp_8_reg_1213;
reg   [0:0] tmp_8_reg_1213_pp0_iter3_reg;
reg  signed [17:0] H_V_2_load_reg_1218;
wire  signed [47:0] shl_ln838_4_fu_455_p3;
reg  signed [47:0] shl_ln838_4_reg_1228;
reg   [31:0] trunc_ln818_7_reg_1233;
reg   [0:0] tmp_7_reg_1238;
wire   [48:0] trunc_ln1347_2_fu_494_p1;
reg   [48:0] trunc_ln1347_2_reg_1244;
reg   [48:0] trunc_ln1347_2_reg_1244_pp0_iter4_reg;
wire   [47:0] trunc_ln1347_3_fu_498_p1;
reg   [47:0] trunc_ln1347_3_reg_1249;
reg   [0:0] tmp_14_reg_1254;
reg   [0:0] tmp_14_reg_1254_pp0_iter4_reg;
reg  signed [17:0] H_V_3_load_reg_1259;
wire  signed [47:0] shl_ln838_7_fu_680_p3;
reg  signed [47:0] shl_ln838_7_reg_1264;
reg   [31:0] trunc_ln818_s_reg_1269;
reg   [0:0] tmp_13_reg_1274;
wire   [48:0] trunc_ln1347_4_fu_719_p1;
reg   [48:0] trunc_ln1347_4_reg_1280;
reg   [48:0] trunc_ln1347_4_reg_1280_pp0_iter5_reg;
wire   [47:0] trunc_ln1347_5_fu_723_p1;
reg   [47:0] trunc_ln1347_5_reg_1285;
reg   [0:0] tmp_20_reg_1290;
reg   [0:0] tmp_20_reg_1290_pp0_iter5_reg;
wire  signed [47:0] shl_ln838_s_fu_905_p3;
reg  signed [47:0] shl_ln838_s_reg_1295;
reg   [31:0] trunc_ln818_1_reg_1300;
reg   [0:0] tmp_19_reg_1305;
wire    ap_block_pp0_stage0;
reg   [4:0] i_fu_86;
wire   [4:0] add_ln24_fu_209_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_i_5;
wire  signed [31:0] mul_ln1273_fu_229_p0;
wire  signed [31:0] mul_ln1273_1_fu_281_p0;
wire   [49:0] mul_ln1273_1_fu_281_p2;
wire   [31:0] zext_ln377_fu_302_p1;
wire   [31:0] add_ln377_fu_305_p2;
wire   [0:0] tmp_3_fu_310_p3;
wire   [0:0] xor_ln896_fu_318_p2;
wire   [0:0] and_ln378_fu_324_p2;
wire   [0:0] icmp_ln1019_fu_336_p2;
wire   [0:0] icmp_ln878_fu_341_p2;
wire   [0:0] tmp_5_fu_354_p3;
wire   [0:0] tmp_4_fu_329_p3;
wire   [0:0] xor_ln890_fu_361_p2;
wire   [0:0] and_ln890_fu_367_p2;
wire   [0:0] select_ln888_fu_346_p3;
wire   [0:0] xor_ln895_fu_387_p2;
wire   [0:0] or_ln895_fu_393_p2;
wire   [0:0] xor_ln895_1_fu_399_p2;
wire   [0:0] select_ln890_fu_373_p3;
wire   [0:0] xor_ln896_1_fu_410_p2;
wire   [0:0] and_ln891_fu_381_p2;
wire   [0:0] or_ln896_fu_416_p2;
wire   [0:0] xor_ln896_2_fu_422_p2;
wire   [0:0] and_ln895_fu_404_p2;
wire   [0:0] and_ln896_fu_428_p2;
wire   [0:0] or_ln346_fu_433_p2;
wire   [31:0] select_ln346_fu_439_p3;
wire   [31:0] select_ln346_1_fu_447_p3;
wire   [47:0] add_ln810_fu_463_p2;
wire  signed [31:0] mul_ln1273_2_fu_489_p0;
wire   [49:0] mul_ln1273_2_fu_489_p2;
wire  signed [48:0] sext_ln813_fu_510_p1;
wire   [48:0] add_ln1347_fu_513_p2;
wire   [31:0] zext_ln377_1_fu_526_p1;
wire   [31:0] add_ln377_1_fu_529_p2;
wire   [0:0] tmp_9_fu_534_p3;
wire   [0:0] xor_ln896_3_fu_542_p2;
wire   [0:0] xor_ln888_fu_561_p2;
wire   [0:0] tmp_10_fu_553_p3;
wire   [0:0] or_ln888_fu_566_p2;
wire   [0:0] tmp_11_fu_578_p3;
wire   [0:0] xor_ln890_1_fu_586_p2;
wire   [0:0] or_ln890_fu_592_p2;
wire   [0:0] and_ln378_1_fu_548_p2;
wire   [0:0] xor_ln888_1_fu_572_p2;
wire   [0:0] xor_ln895_2_fu_610_p2;
wire   [0:0] tmp_6_fu_518_p3;
wire   [0:0] or_ln895_1_fu_616_p2;
wire   [0:0] xor_ln895_3_fu_622_p2;
wire   [0:0] and_ln890_1_fu_598_p2;
wire   [0:0] xor_ln896_4_fu_634_p2;
wire   [0:0] and_ln891_1_fu_604_p2;
wire   [0:0] or_ln896_1_fu_640_p2;
wire   [0:0] xor_ln896_5_fu_646_p2;
wire   [0:0] and_ln895_1_fu_628_p2;
wire   [0:0] and_ln896_1_fu_652_p2;
wire   [0:0] or_ln346_1_fu_658_p2;
wire   [31:0] select_ln346_2_fu_664_p3;
wire   [31:0] select_ln346_3_fu_672_p3;
wire   [47:0] add_ln810_1_fu_688_p2;
wire  signed [31:0] mul_ln1273_3_fu_714_p0;
wire   [49:0] mul_ln1273_3_fu_714_p2;
wire  signed [48:0] sext_ln813_5_fu_735_p1;
wire   [48:0] add_ln1347_1_fu_738_p2;
wire   [31:0] zext_ln377_2_fu_751_p1;
wire   [31:0] add_ln377_2_fu_754_p2;
wire   [0:0] tmp_15_fu_759_p3;
wire   [0:0] xor_ln896_6_fu_767_p2;
wire   [0:0] xor_ln888_2_fu_786_p2;
wire   [0:0] tmp_16_fu_778_p3;
wire   [0:0] or_ln888_1_fu_791_p2;
wire   [0:0] tmp_17_fu_803_p3;
wire   [0:0] xor_ln890_2_fu_811_p2;
wire   [0:0] or_ln890_1_fu_817_p2;
wire   [0:0] and_ln378_2_fu_773_p2;
wire   [0:0] xor_ln888_3_fu_797_p2;
wire   [0:0] xor_ln895_4_fu_835_p2;
wire   [0:0] tmp_12_fu_743_p3;
wire   [0:0] or_ln895_2_fu_841_p2;
wire   [0:0] xor_ln895_5_fu_847_p2;
wire   [0:0] and_ln890_2_fu_823_p2;
wire   [0:0] xor_ln896_7_fu_859_p2;
wire   [0:0] and_ln891_2_fu_829_p2;
wire   [0:0] or_ln896_2_fu_865_p2;
wire   [0:0] xor_ln896_8_fu_871_p2;
wire   [0:0] and_ln895_2_fu_853_p2;
wire   [0:0] and_ln896_2_fu_877_p2;
wire   [0:0] or_ln346_2_fu_883_p2;
wire   [31:0] select_ln346_4_fu_889_p3;
wire   [31:0] select_ln346_5_fu_897_p3;
wire   [47:0] add_ln810_2_fu_913_p2;
wire  signed [48:0] sext_ln813_6_fu_936_p1;
wire   [48:0] add_ln1347_2_fu_939_p2;
wire   [31:0] zext_ln377_3_fu_952_p1;
wire   [31:0] add_ln377_3_fu_955_p2;
wire   [0:0] tmp_21_fu_960_p3;
wire   [0:0] xor_ln896_9_fu_968_p2;
wire   [0:0] xor_ln888_4_fu_987_p2;
wire   [0:0] tmp_22_fu_979_p3;
wire   [0:0] or_ln888_2_fu_992_p2;
wire   [0:0] tmp_23_fu_1004_p3;
wire   [0:0] xor_ln890_3_fu_1012_p2;
wire   [0:0] or_ln890_2_fu_1018_p2;
wire   [0:0] and_ln378_3_fu_974_p2;
wire   [0:0] xor_ln888_5_fu_998_p2;
wire   [0:0] xor_ln895_6_fu_1036_p2;
wire   [0:0] tmp_18_fu_944_p3;
wire   [0:0] or_ln895_3_fu_1042_p2;
wire   [0:0] xor_ln895_7_fu_1048_p2;
wire   [0:0] and_ln890_3_fu_1024_p2;
wire   [0:0] xor_ln896_10_fu_1060_p2;
wire   [0:0] and_ln891_3_fu_1030_p2;
wire   [0:0] or_ln896_3_fu_1066_p2;
wire   [0:0] xor_ln896_11_fu_1072_p2;
wire   [0:0] and_ln895_3_fu_1054_p2;
wire   [0:0] and_ln896_3_fu_1078_p2;
wire   [0:0] or_ln346_3_fu_1092_p2;
wire   [31:0] select_ln346_6_fu_1084_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
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
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_done_reg = 1'b0;
end

mpc_qp_admm_Pipeline_mvmult_row3_H_V_0_ROM_AUTO_1R #(
    .DataWidth( 18 ),
    .AddressRange( 24 ),
    .AddressWidth( 5 ))
H_V_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(H_V_0_address0),
    .ce0(H_V_0_ce0),
    .q0(H_V_0_q0)
);

mpc_qp_admm_Pipeline_mvmult_row3_H_V_1_ROM_AUTO_1R #(
    .DataWidth( 18 ),
    .AddressRange( 24 ),
    .AddressWidth( 5 ))
H_V_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(H_V_1_address0),
    .ce0(H_V_1_ce0),
    .q0(H_V_1_q0)
);

mpc_qp_admm_Pipeline_mvmult_row3_H_V_2_ROM_AUTO_1R #(
    .DataWidth( 18 ),
    .AddressRange( 24 ),
    .AddressWidth( 5 ))
H_V_2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(H_V_2_address0),
    .ce0(H_V_2_ce0),
    .q0(H_V_2_q0)
);

mpc_qp_admm_Pipeline_mvmult_row3_H_V_3_ROM_AUTO_1R #(
    .DataWidth( 18 ),
    .AddressRange( 24 ),
    .AddressWidth( 5 ))
H_V_3_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(H_V_3_address0),
    .ce0(H_V_3_ce0),
    .q0(H_V_3_q0)
);

mpc_mul_32s_18s_50_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 18 ),
    .dout_WIDTH( 50 ))
mul_32s_18s_50_1_1_U171(
    .din0(mul_ln1273_fu_229_p0),
    .din1(H_V_0_load_reg_1155),
    .dout(mul_ln1273_fu_229_p2)
);

mpc_mul_32s_18s_50_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 18 ),
    .dout_WIDTH( 50 ))
mul_32s_18s_50_1_1_U172(
    .din0(mul_ln1273_1_fu_281_p0),
    .din1(H_V_1_load_reg_1160),
    .dout(mul_ln1273_1_fu_281_p2)
);

mpc_mul_32s_18s_50_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 18 ),
    .dout_WIDTH( 50 ))
mul_32s_18s_50_1_1_U173(
    .din0(mul_ln1273_2_fu_489_p0),
    .din1(H_V_2_load_reg_1218),
    .dout(mul_ln1273_2_fu_489_p2)
);

mpc_mul_32s_18s_50_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 18 ),
    .dout_WIDTH( 50 ))
mul_32s_18s_50_1_1_U174(
    .din0(mul_ln1273_3_fu_714_p0),
    .din1(H_V_3_load_reg_1259),
    .dout(mul_ln1273_3_fu_714_p2)
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
        end else if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln24_fu_203_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_86 <= add_ln24_fu_209_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_86 <= 5'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        H_V_0_load_reg_1155 <= H_V_0_q0;
        H_V_1_load_reg_1160 <= H_V_1_q0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_5_cast_reg_1138_pp0_iter1_reg[4 : 0] <= i_5_cast_reg_1138[4 : 0];
        sext_ln1273_28_cast_reg_1129 <= sext_ln1273_28_cast_fu_191_p1;
        sext_ln1273_29_cast_reg_1124 <= sext_ln1273_29_cast_fu_187_p1;
        sext_ln1273_30_cast_reg_1119 <= sext_ln1273_30_cast_fu_183_p1;
        tk_admm_V_3_load_cast_cast_reg_1114 <= tk_admm_V_3_load_cast_cast_fu_179_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        H_V_2_load_reg_1218 <= H_V_2_q0;
        H_V_3_load_reg_1259 <= H_V_3_q0;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        i_5_cast_reg_1138_pp0_iter2_reg[4 : 0] <= i_5_cast_reg_1138_pp0_iter1_reg[4 : 0];
        i_5_cast_reg_1138_pp0_iter3_reg[4 : 0] <= i_5_cast_reg_1138_pp0_iter2_reg[4 : 0];
        i_5_cast_reg_1138_pp0_iter4_reg[4 : 0] <= i_5_cast_reg_1138_pp0_iter3_reg[4 : 0];
        i_5_cast_reg_1138_pp0_iter5_reg[4 : 0] <= i_5_cast_reg_1138_pp0_iter4_reg[4 : 0];
        mul_ln1273_reg_1170 <= mul_ln1273_fu_229_p2;
        shl_ln838_4_reg_1228[47 : 16] <= shl_ln838_4_fu_455_p3[47 : 16];
        shl_ln838_7_reg_1264[47 : 16] <= shl_ln838_7_fu_680_p3[47 : 16];
        shl_ln838_s_reg_1295[47 : 16] <= shl_ln838_s_fu_905_p3[47 : 16];
        tmp_13_reg_1274 <= add_ln810_1_fu_688_p2[32'd47];
        tmp_14_reg_1254 <= mul_ln1273_2_fu_489_p2[32'd15];
        tmp_14_reg_1254_pp0_iter4_reg <= tmp_14_reg_1254;
        tmp_19_reg_1305 <= add_ln810_2_fu_913_p2[32'd47];
        tmp_1_reg_1187 <= mul_ln1273_fu_229_p2[32'd47];
        tmp_20_reg_1290 <= mul_ln1273_3_fu_714_p2[32'd15];
        tmp_20_reg_1290_pp0_iter5_reg <= tmp_20_reg_1290;
        tmp_2_reg_1192 <= mul_ln1273_fu_229_p2[32'd15];
        tmp_7_reg_1238 <= add_ln810_fu_463_p2[32'd47];
        tmp_8_reg_1213 <= mul_ln1273_1_fu_281_p2[32'd15];
        tmp_8_reg_1213_pp0_iter3_reg <= tmp_8_reg_1213;
        tmp_reg_1176 <= mul_ln1273_fu_229_p2[32'd49];
        tmp_s_reg_1197 <= {{mul_ln1273_fu_229_p2[49:48]}};
        trunc_ln1347_1_reg_1208 <= trunc_ln1347_1_fu_290_p1;
        trunc_ln1347_2_reg_1244 <= trunc_ln1347_2_fu_494_p1;
        trunc_ln1347_2_reg_1244_pp0_iter4_reg <= trunc_ln1347_2_reg_1244;
        trunc_ln1347_3_reg_1249 <= trunc_ln1347_3_fu_498_p1;
        trunc_ln1347_4_reg_1280 <= trunc_ln1347_4_fu_719_p1;
        trunc_ln1347_4_reg_1280_pp0_iter5_reg <= trunc_ln1347_4_reg_1280;
        trunc_ln1347_5_reg_1285 <= trunc_ln1347_5_fu_723_p1;
        trunc_ln1347_reg_1203 <= trunc_ln1347_fu_286_p1;
        trunc_ln1347_reg_1203_pp0_iter3_reg <= trunc_ln1347_reg_1203;
        trunc_ln818_1_reg_1300 <= {{add_ln810_2_fu_913_p2[47:16]}};
        trunc_ln818_4_reg_1182 <= {{mul_ln1273_fu_229_p2[47:16]}};
        trunc_ln818_7_reg_1233 <= {{add_ln810_fu_463_p2[47:16]}};
        trunc_ln818_s_reg_1269 <= {{add_ln810_1_fu_688_p2[47:16]}};
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln24_fu_203_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_5_cast_reg_1138[4 : 0] <= i_5_cast_fu_215_p1[4 : 0];
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        H_V_0_ce0 = 1'b1;
    end else begin
        H_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        H_V_1_ce0 = 1'b1;
    end else begin
        H_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        H_V_2_ce0 = 1'b1;
    end else begin
        H_V_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        H_V_3_ce0 = 1'b1;
    end else begin
        H_V_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        Htk_V_ce0 = 1'b1;
    end else begin
        Htk_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        Htk_V_we0 = 1'b1;
    end else begin
        Htk_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln24_fu_203_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_5 = 5'd0;
    end else begin
        ap_sig_allocacmp_i_5 = i_fu_86;
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

assign H_V_0_address0 = i_5_cast_fu_215_p1;

assign H_V_1_address0 = i_5_cast_fu_215_p1;

assign H_V_2_address0 = i_5_cast_reg_1138;

assign H_V_3_address0 = i_5_cast_reg_1138_pp0_iter1_reg;

assign Htk_V_address0 = i_5_cast_reg_1138_pp0_iter5_reg;

assign Htk_V_d0 = ((or_ln346_3_fu_1092_p2[0:0] == 1'b1) ? select_ln346_6_fu_1084_p3 : add_ln377_3_fu_955_p2);

assign add_ln1347_1_fu_738_p2 = ($signed(sext_ln813_5_fu_735_p1) + $signed(trunc_ln1347_2_reg_1244_pp0_iter4_reg));

assign add_ln1347_2_fu_939_p2 = ($signed(sext_ln813_6_fu_936_p1) + $signed(trunc_ln1347_4_reg_1280_pp0_iter5_reg));

assign add_ln1347_fu_513_p2 = ($signed(sext_ln813_fu_510_p1) + $signed(trunc_ln1347_reg_1203_pp0_iter3_reg));

assign add_ln24_fu_209_p2 = (ap_sig_allocacmp_i_5 + 5'd1);

assign add_ln377_1_fu_529_p2 = (zext_ln377_1_fu_526_p1 + trunc_ln818_7_reg_1233);

assign add_ln377_2_fu_754_p2 = (zext_ln377_2_fu_751_p1 + trunc_ln818_s_reg_1269);

assign add_ln377_3_fu_955_p2 = (zext_ln377_3_fu_952_p1 + trunc_ln818_1_reg_1300);

assign add_ln377_fu_305_p2 = (zext_ln377_fu_302_p1 + trunc_ln818_4_reg_1182);

assign add_ln810_1_fu_688_p2 = ($signed(shl_ln838_7_fu_680_p3) + $signed(trunc_ln1347_3_reg_1249));

assign add_ln810_2_fu_913_p2 = ($signed(shl_ln838_s_fu_905_p3) + $signed(trunc_ln1347_5_reg_1285));

assign add_ln810_fu_463_p2 = ($signed(shl_ln838_4_fu_455_p3) + $signed(trunc_ln1347_1_reg_1208));

assign and_ln378_1_fu_548_p2 = (xor_ln896_3_fu_542_p2 & tmp_7_reg_1238);

assign and_ln378_2_fu_773_p2 = (xor_ln896_6_fu_767_p2 & tmp_13_reg_1274);

assign and_ln378_3_fu_974_p2 = (xor_ln896_9_fu_968_p2 & tmp_19_reg_1305);

assign and_ln378_fu_324_p2 = (xor_ln896_fu_318_p2 & tmp_1_reg_1187);

assign and_ln890_1_fu_598_p2 = (tmp_10_fu_553_p3 & or_ln890_fu_592_p2);

assign and_ln890_2_fu_823_p2 = (tmp_16_fu_778_p3 & or_ln890_1_fu_817_p2);

assign and_ln890_3_fu_1024_p2 = (tmp_22_fu_979_p3 & or_ln890_2_fu_1018_p2);

assign and_ln890_fu_367_p2 = (xor_ln890_fu_361_p2 & tmp_4_fu_329_p3);

assign and_ln891_1_fu_604_p2 = (tmp_10_fu_553_p3 & and_ln378_1_fu_548_p2);

assign and_ln891_2_fu_829_p2 = (tmp_16_fu_778_p3 & and_ln378_2_fu_773_p2);

assign and_ln891_3_fu_1030_p2 = (tmp_22_fu_979_p3 & and_ln378_3_fu_974_p2);

assign and_ln891_fu_381_p2 = (icmp_ln1019_fu_336_p2 & and_ln378_fu_324_p2);

assign and_ln895_1_fu_628_p2 = (xor_ln895_3_fu_622_p2 & or_ln895_1_fu_616_p2);

assign and_ln895_2_fu_853_p2 = (xor_ln895_5_fu_847_p2 & or_ln895_2_fu_841_p2);

assign and_ln895_3_fu_1054_p2 = (xor_ln895_7_fu_1048_p2 & or_ln895_3_fu_1042_p2);

assign and_ln895_fu_404_p2 = (xor_ln895_1_fu_399_p2 & or_ln895_fu_393_p2);

assign and_ln896_1_fu_652_p2 = (xor_ln896_5_fu_646_p2 & tmp_6_fu_518_p3);

assign and_ln896_2_fu_877_p2 = (xor_ln896_8_fu_871_p2 & tmp_12_fu_743_p3);

assign and_ln896_3_fu_1078_p2 = (xor_ln896_11_fu_1072_p2 & tmp_18_fu_944_p3);

assign and_ln896_fu_428_p2 = (xor_ln896_2_fu_422_p2 & tmp_reg_1176);

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

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign i_5_cast_fu_215_p1 = ap_sig_allocacmp_i_5;

assign icmp_ln1019_fu_336_p2 = ((tmp_s_reg_1197 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln24_fu_203_p2 = ((ap_sig_allocacmp_i_5 == 5'd24) ? 1'b1 : 1'b0);

assign icmp_ln878_fu_341_p2 = ((tmp_s_reg_1197 == 2'd0) ? 1'b1 : 1'b0);

assign mul_ln1273_1_fu_281_p0 = sext_ln1273_29_cast_reg_1124;

assign mul_ln1273_2_fu_489_p0 = sext_ln1273_30_cast_reg_1119;

assign mul_ln1273_3_fu_714_p0 = tk_admm_V_3_load_cast_cast_reg_1114;

assign mul_ln1273_fu_229_p0 = sext_ln1273_28_cast_reg_1129;

assign or_ln346_1_fu_658_p2 = (and_ln896_1_fu_652_p2 | and_ln895_1_fu_628_p2);

assign or_ln346_2_fu_883_p2 = (and_ln896_2_fu_877_p2 | and_ln895_2_fu_853_p2);

assign or_ln346_3_fu_1092_p2 = (and_ln896_3_fu_1078_p2 | and_ln895_3_fu_1054_p2);

assign or_ln346_fu_433_p2 = (and_ln896_fu_428_p2 | and_ln895_fu_404_p2);

assign or_ln888_1_fu_791_p2 = (xor_ln888_2_fu_786_p2 | tmp_15_fu_759_p3);

assign or_ln888_2_fu_992_p2 = (xor_ln888_4_fu_987_p2 | tmp_21_fu_960_p3);

assign or_ln888_fu_566_p2 = (xor_ln888_fu_561_p2 | tmp_9_fu_534_p3);

assign or_ln890_1_fu_817_p2 = (xor_ln890_2_fu_811_p2 | or_ln888_1_fu_791_p2);

assign or_ln890_2_fu_1018_p2 = (xor_ln890_3_fu_1012_p2 | or_ln888_2_fu_992_p2);

assign or_ln890_fu_592_p2 = (xor_ln890_1_fu_586_p2 | or_ln888_fu_566_p2);

assign or_ln895_1_fu_616_p2 = (xor_ln895_2_fu_610_p2 | tmp_9_fu_534_p3);

assign or_ln895_2_fu_841_p2 = (xor_ln895_4_fu_835_p2 | tmp_15_fu_759_p3);

assign or_ln895_3_fu_1042_p2 = (xor_ln895_6_fu_1036_p2 | tmp_21_fu_960_p3);

assign or_ln895_fu_393_p2 = (xor_ln895_fu_387_p2 | tmp_3_fu_310_p3);

assign or_ln896_1_fu_640_p2 = (xor_ln896_4_fu_634_p2 | xor_ln896_3_fu_542_p2);

assign or_ln896_2_fu_865_p2 = (xor_ln896_7_fu_859_p2 | xor_ln896_6_fu_767_p2);

assign or_ln896_3_fu_1066_p2 = (xor_ln896_9_fu_968_p2 | xor_ln896_10_fu_1060_p2);

assign or_ln896_fu_416_p2 = (xor_ln896_fu_318_p2 | xor_ln896_1_fu_410_p2);

assign select_ln346_1_fu_447_p3 = ((or_ln346_fu_433_p2[0:0] == 1'b1) ? select_ln346_fu_439_p3 : add_ln377_fu_305_p2);

assign select_ln346_2_fu_664_p3 = ((and_ln895_1_fu_628_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_3_fu_672_p3 = ((or_ln346_1_fu_658_p2[0:0] == 1'b1) ? select_ln346_2_fu_664_p3 : add_ln377_1_fu_529_p2);

assign select_ln346_4_fu_889_p3 = ((and_ln895_2_fu_853_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_5_fu_897_p3 = ((or_ln346_2_fu_883_p2[0:0] == 1'b1) ? select_ln346_4_fu_889_p3 : add_ln377_2_fu_754_p2);

assign select_ln346_6_fu_1084_p3 = ((and_ln895_3_fu_1054_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_fu_439_p3 = ((and_ln895_fu_404_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln888_fu_346_p3 = ((and_ln378_fu_324_p2[0:0] == 1'b1) ? icmp_ln1019_fu_336_p2 : icmp_ln878_fu_341_p2);

assign select_ln890_fu_373_p3 = ((and_ln378_fu_324_p2[0:0] == 1'b1) ? and_ln890_fu_367_p2 : icmp_ln1019_fu_336_p2);

assign sext_ln1273_28_cast_fu_191_p1 = $signed(sext_ln1273_28);

assign sext_ln1273_29_cast_fu_187_p1 = $signed(sext_ln1273_29);

assign sext_ln1273_30_cast_fu_183_p1 = $signed(sext_ln1273_30);

assign sext_ln813_5_fu_735_p1 = shl_ln838_7_reg_1264;

assign sext_ln813_6_fu_936_p1 = shl_ln838_s_reg_1295;

assign sext_ln813_fu_510_p1 = shl_ln838_4_reg_1228;

assign shl_ln838_4_fu_455_p3 = {{select_ln346_1_fu_447_p3}, {16'd0}};

assign shl_ln838_7_fu_680_p3 = {{select_ln346_3_fu_672_p3}, {16'd0}};

assign shl_ln838_s_fu_905_p3 = {{select_ln346_5_fu_897_p3}, {16'd0}};

assign tk_admm_V_3_load_cast_cast_fu_179_p1 = $signed(tk_admm_V_3_load_cast);

assign tmp_10_fu_553_p3 = add_ln1347_fu_513_p2[32'd48];

assign tmp_11_fu_578_p3 = add_ln1347_fu_513_p2[32'd48];

assign tmp_12_fu_743_p3 = add_ln1347_1_fu_738_p2[32'd48];

assign tmp_15_fu_759_p3 = add_ln377_2_fu_754_p2[32'd31];

assign tmp_16_fu_778_p3 = add_ln1347_1_fu_738_p2[32'd48];

assign tmp_17_fu_803_p3 = add_ln1347_1_fu_738_p2[32'd48];

assign tmp_18_fu_944_p3 = add_ln1347_2_fu_939_p2[32'd48];

assign tmp_21_fu_960_p3 = add_ln377_3_fu_955_p2[32'd31];

assign tmp_22_fu_979_p3 = add_ln1347_2_fu_939_p2[32'd48];

assign tmp_23_fu_1004_p3 = add_ln1347_2_fu_939_p2[32'd48];

assign tmp_3_fu_310_p3 = add_ln377_fu_305_p2[32'd31];

assign tmp_4_fu_329_p3 = mul_ln1273_reg_1170[32'd49];

assign tmp_5_fu_354_p3 = mul_ln1273_reg_1170[32'd48];

assign tmp_6_fu_518_p3 = add_ln1347_fu_513_p2[32'd48];

assign tmp_9_fu_534_p3 = add_ln377_1_fu_529_p2[32'd31];

assign trunc_ln1347_1_fu_290_p1 = mul_ln1273_1_fu_281_p2[47:0];

assign trunc_ln1347_2_fu_494_p1 = mul_ln1273_2_fu_489_p2[48:0];

assign trunc_ln1347_3_fu_498_p1 = mul_ln1273_2_fu_489_p2[47:0];

assign trunc_ln1347_4_fu_719_p1 = mul_ln1273_3_fu_714_p2[48:0];

assign trunc_ln1347_5_fu_723_p1 = mul_ln1273_3_fu_714_p2[47:0];

assign trunc_ln1347_fu_286_p1 = mul_ln1273_1_fu_281_p2[48:0];

assign xor_ln888_1_fu_572_p2 = (tmp_10_fu_553_p3 ^ or_ln888_fu_566_p2);

assign xor_ln888_2_fu_786_p2 = (tmp_13_reg_1274 ^ 1'd1);

assign xor_ln888_3_fu_797_p2 = (tmp_16_fu_778_p3 ^ or_ln888_1_fu_791_p2);

assign xor_ln888_4_fu_987_p2 = (tmp_19_reg_1305 ^ 1'd1);

assign xor_ln888_5_fu_998_p2 = (tmp_22_fu_979_p3 ^ or_ln888_2_fu_992_p2);

assign xor_ln888_fu_561_p2 = (tmp_7_reg_1238 ^ 1'd1);

assign xor_ln890_1_fu_586_p2 = (tmp_11_fu_578_p3 ^ 1'd1);

assign xor_ln890_2_fu_811_p2 = (tmp_17_fu_803_p3 ^ 1'd1);

assign xor_ln890_3_fu_1012_p2 = (tmp_23_fu_1004_p3 ^ 1'd1);

assign xor_ln890_fu_361_p2 = (tmp_5_fu_354_p3 ^ 1'd1);

assign xor_ln895_1_fu_399_p2 = (tmp_reg_1176 ^ 1'd1);

assign xor_ln895_2_fu_610_p2 = (xor_ln888_1_fu_572_p2 ^ 1'd1);

assign xor_ln895_3_fu_622_p2 = (tmp_6_fu_518_p3 ^ 1'd1);

assign xor_ln895_4_fu_835_p2 = (xor_ln888_3_fu_797_p2 ^ 1'd1);

assign xor_ln895_5_fu_847_p2 = (tmp_12_fu_743_p3 ^ 1'd1);

assign xor_ln895_6_fu_1036_p2 = (xor_ln888_5_fu_998_p2 ^ 1'd1);

assign xor_ln895_7_fu_1048_p2 = (tmp_18_fu_944_p3 ^ 1'd1);

assign xor_ln895_fu_387_p2 = (select_ln888_fu_346_p3 ^ 1'd1);

assign xor_ln896_10_fu_1060_p2 = (1'd1 ^ and_ln890_3_fu_1024_p2);

assign xor_ln896_11_fu_1072_p2 = (or_ln896_3_fu_1066_p2 ^ and_ln891_3_fu_1030_p2);

assign xor_ln896_1_fu_410_p2 = (select_ln890_fu_373_p3 ^ 1'd1);

assign xor_ln896_2_fu_422_p2 = (or_ln896_fu_416_p2 ^ and_ln891_fu_381_p2);

assign xor_ln896_3_fu_542_p2 = (tmp_9_fu_534_p3 ^ 1'd1);

assign xor_ln896_4_fu_634_p2 = (1'd1 ^ and_ln890_1_fu_598_p2);

assign xor_ln896_5_fu_646_p2 = (or_ln896_1_fu_640_p2 ^ and_ln891_1_fu_604_p2);

assign xor_ln896_6_fu_767_p2 = (tmp_15_fu_759_p3 ^ 1'd1);

assign xor_ln896_7_fu_859_p2 = (1'd1 ^ and_ln890_2_fu_823_p2);

assign xor_ln896_8_fu_871_p2 = (or_ln896_2_fu_865_p2 ^ and_ln891_2_fu_829_p2);

assign xor_ln896_9_fu_968_p2 = (tmp_21_fu_960_p3 ^ 1'd1);

assign xor_ln896_fu_318_p2 = (tmp_3_fu_310_p3 ^ 1'd1);

assign zext_ln377_1_fu_526_p1 = tmp_8_reg_1213_pp0_iter3_reg;

assign zext_ln377_2_fu_751_p1 = tmp_14_reg_1254_pp0_iter4_reg;

assign zext_ln377_3_fu_952_p1 = tmp_20_reg_1290_pp0_iter5_reg;

assign zext_ln377_fu_302_p1 = tmp_2_reg_1192;

always @ (posedge ap_clk) begin
    i_5_cast_reg_1138[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    i_5_cast_reg_1138_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    i_5_cast_reg_1138_pp0_iter2_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    i_5_cast_reg_1138_pp0_iter3_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    i_5_cast_reg_1138_pp0_iter4_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    i_5_cast_reg_1138_pp0_iter5_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    shl_ln838_4_reg_1228[15:0] <= 16'b0000000000000000;
    shl_ln838_7_reg_1264[15:0] <= 16'b0000000000000000;
    shl_ln838_s_reg_1295[15:0] <= 16'b0000000000000000;
end

endmodule //mpc_qp_admm_Pipeline_mvmult_row3
