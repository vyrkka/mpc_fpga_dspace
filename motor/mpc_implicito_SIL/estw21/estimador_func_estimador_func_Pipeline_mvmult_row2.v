module estimador_func_estimador_func_Pipeline_mvmult_row2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        sext_ln1273,
        sext_ln1273_1,
        sext_ln1273_2,
        temp4_V_2_09_out,
        temp4_V_2_09_out_ap_vld,
        temp4_V_1_08_out,
        temp4_V_1_08_out_ap_vld,
        temp4_V_0_07_out,
        temp4_V_0_07_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [20:0] sext_ln1273;
input  [20:0] sext_ln1273_1;
input  [20:0] sext_ln1273_2;
output  [20:0] temp4_V_2_09_out;
output   temp4_V_2_09_out_ap_vld;
output  [20:0] temp4_V_1_08_out;
output   temp4_V_1_08_out_ap_vld;
output  [20:0] temp4_V_0_07_out;
output   temp4_V_0_07_out_ap_vld;

reg ap_idle;
reg temp4_V_2_09_out_ap_vld;
reg temp4_V_1_08_out_ap_vld;
reg temp4_V_0_07_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln24_fu_187_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire  signed [41:0] sext_ln1273_2_cast_fu_167_p1;
reg  signed [41:0] sext_ln1273_2_cast_reg_1072;
wire  signed [41:0] sext_ln1273_1_cast_fu_171_p1;
reg  signed [41:0] sext_ln1273_1_cast_reg_1077;
reg   [1:0] i_reg_1082;
reg   [1:0] i_reg_1082_pp0_iter1_reg;
reg   [1:0] i_reg_1082_pp0_iter2_reg;
reg   [0:0] icmp_ln24_reg_1089;
reg   [0:0] icmp_ln24_reg_1089_pp0_iter1_reg;
wire   [41:0] mul_ln1273_fu_215_p2;
reg   [41:0] mul_ln1273_reg_1093;
reg   [0:0] tmp_1_reg_1098;
reg   [20:0] trunc_ln2_reg_1104;
reg   [0:0] tmp_2_reg_1109;
reg   [0:0] tmp_3_reg_1114;
wire   [0:0] icmp_ln1019_fu_265_p2;
reg   [0:0] icmp_ln1019_reg_1119;
wire   [0:0] icmp_ln1019_1_fu_281_p2;
reg   [0:0] icmp_ln1019_1_reg_1124;
wire   [0:0] icmp_ln878_fu_287_p2;
reg   [0:0] icmp_ln878_reg_1131;
wire   [20:0] tmp_6_fu_293_p5;
reg   [20:0] tmp_6_reg_1136;
wire  signed [34:0] shl_ln_fu_449_p3;
reg  signed [34:0] shl_ln_reg_1141;
wire   [35:0] trunc_ln1347_1_fu_469_p1;
reg   [35:0] trunc_ln1347_1_reg_1146;
reg   [0:0] tmp_10_reg_1151;
reg   [20:0] trunc_ln818_1_reg_1157;
reg   [0:0] tmp_11_reg_1162;
reg   [0:0] tmp_12_reg_1167;
reg   [6:0] tmp_5_s_reg_1172;
reg   [7:0] tmp_6_s_reg_1177;
wire   [20:0] tmp_9_fu_539_p5;
reg   [20:0] tmp_9_reg_1183;
wire  signed [34:0] shl_ln838_1_fu_718_p3;
reg  signed [34:0] shl_ln838_1_reg_1188;
wire   [35:0] trunc_ln1347_3_fu_738_p1;
reg   [35:0] trunc_ln1347_3_reg_1193;
reg   [0:0] tmp_15_reg_1198;
reg   [20:0] trunc_ln818_2_reg_1204;
reg   [0:0] tmp_16_reg_1209;
reg   [0:0] tmp_17_reg_1214;
reg   [6:0] tmp_5_1_reg_1219;
reg   [7:0] tmp_6_1_reg_1224;
reg   [1:0] i_2_fu_112;
wire   [1:0] add_ln24_fu_193_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage0;
reg   [20:0] temp4_V_2_1_fu_116;
wire   [20:0] temp4_V_2_8_fu_1009_p3;
reg   [20:0] temp4_V_2_2_fu_120;
wire   [20:0] temp4_V_2_7_fu_1001_p3;
reg   [20:0] temp4_V_2_3_fu_124;
wire   [20:0] temp4_V_2_fu_993_p3;
wire    ap_block_pp0_stage0_01001;
wire   [20:0] tmp_fu_199_p5;
wire   [20:0] mul_ln1273_fu_215_p1;
wire   [5:0] tmp_7_fu_255_p4;
wire   [6:0] tmp_8_fu_271_p4;
wire   [20:0] zext_ln377_fu_310_p1;
wire   [20:0] add_ln377_fu_313_p2;
wire   [0:0] tmp_4_fu_318_p3;
wire   [0:0] xor_ln896_fu_326_p2;
wire   [0:0] and_ln378_fu_332_p2;
wire   [0:0] tmp_5_fu_343_p3;
wire   [0:0] xor_ln890_fu_350_p2;
wire   [0:0] and_ln890_fu_356_p2;
wire   [0:0] select_ln888_fu_337_p3;
wire   [0:0] xor_ln895_fu_373_p2;
wire   [0:0] or_ln895_fu_379_p2;
wire   [0:0] xor_ln895_1_fu_385_p2;
wire   [0:0] select_ln890_fu_361_p3;
wire   [0:0] xor_ln896_1_fu_396_p2;
wire   [0:0] and_ln891_fu_368_p2;
wire   [0:0] or_ln896_fu_402_p2;
wire   [0:0] xor_ln896_2_fu_408_p2;
wire   [0:0] and_ln895_fu_390_p2;
wire   [0:0] and_ln896_fu_414_p2;
wire  signed [20:0] mul_ln1273_1_fu_428_p0;
wire   [20:0] mul_ln1273_1_fu_428_p1;
wire   [0:0] or_ln346_fu_419_p2;
wire   [20:0] select_ln346_fu_433_p3;
wire   [20:0] select_ln346_1_fu_441_p3;
wire  signed [41:0] mul_ln1273_1_fu_428_p2;
wire  signed [42:0] sext_ln813_4_fu_457_p1;
wire  signed [42:0] sext_ln813_fu_461_p1;
wire   [34:0] trunc_ln1347_fu_465_p1;
wire   [42:0] add_ln1347_fu_473_p2;
wire   [34:0] add_ln810_1_fu_479_p2;
wire  signed [35:0] sext_ln1347_fu_550_p1;
wire   [20:0] zext_ln377_1_fu_558_p1;
wire   [20:0] add_ln377_1_fu_561_p2;
wire   [0:0] tmp_13_fu_566_p3;
wire   [0:0] xor_ln896_3_fu_574_p2;
wire   [0:0] and_ln378_1_fu_580_p2;
wire   [0:0] icmp_ln1019_3_fu_590_p2;
wire   [0:0] icmp_ln878_1_fu_595_p2;
wire   [35:0] add_ln810_fu_553_p2;
wire   [0:0] tmp_14_fu_608_p3;
wire   [0:0] icmp_ln1019_2_fu_585_p2;
wire   [0:0] xor_ln890_1_fu_616_p2;
wire   [0:0] and_ln890_1_fu_622_p2;
wire   [0:0] select_ln888_1_fu_600_p3;
wire   [0:0] xor_ln895_2_fu_642_p2;
wire   [0:0] or_ln895_1_fu_648_p2;
wire   [0:0] xor_ln895_3_fu_654_p2;
wire   [0:0] select_ln890_1_fu_628_p3;
wire   [0:0] xor_ln896_4_fu_665_p2;
wire   [0:0] and_ln891_1_fu_636_p2;
wire   [0:0] or_ln896_1_fu_671_p2;
wire   [0:0] xor_ln896_5_fu_677_p2;
wire   [0:0] and_ln895_1_fu_659_p2;
wire   [0:0] and_ln896_1_fu_683_p2;
wire  signed [20:0] mul_ln1273_2_fu_697_p0;
wire   [20:0] mul_ln1273_2_fu_697_p1;
wire   [0:0] or_ln346_1_fu_688_p2;
wire   [20:0] select_ln346_2_fu_702_p3;
wire   [20:0] select_ln346_3_fu_710_p3;
wire  signed [41:0] mul_ln1273_2_fu_697_p2;
wire  signed [42:0] sext_ln813_5_fu_726_p1;
wire  signed [42:0] sext_ln813_3_fu_730_p1;
wire   [34:0] trunc_ln1347_2_fu_734_p1;
wire   [42:0] add_ln1347_1_fu_742_p2;
wire   [34:0] add_ln810_3_fu_748_p2;
wire  signed [35:0] sext_ln1347_1_fu_817_p1;
wire   [20:0] zext_ln377_2_fu_825_p1;
wire   [20:0] add_ln377_2_fu_828_p2;
wire   [0:0] tmp_18_fu_833_p3;
wire   [0:0] xor_ln896_6_fu_841_p2;
wire   [0:0] and_ln378_2_fu_847_p2;
wire   [0:0] icmp_ln1019_5_fu_857_p2;
wire   [0:0] icmp_ln878_2_fu_862_p2;
wire   [35:0] add_ln810_2_fu_820_p2;
wire   [0:0] tmp_19_fu_875_p3;
wire   [0:0] icmp_ln1019_4_fu_852_p2;
wire   [0:0] xor_ln890_2_fu_883_p2;
wire   [0:0] and_ln890_2_fu_889_p2;
wire   [0:0] select_ln888_2_fu_867_p3;
wire   [0:0] xor_ln895_4_fu_909_p2;
wire   [0:0] or_ln895_2_fu_915_p2;
wire   [0:0] xor_ln895_5_fu_921_p2;
wire   [0:0] select_ln890_2_fu_895_p3;
wire   [0:0] xor_ln896_7_fu_932_p2;
wire   [0:0] and_ln891_2_fu_903_p2;
wire   [0:0] or_ln896_2_fu_938_p2;
wire   [0:0] xor_ln896_8_fu_944_p2;
wire   [0:0] and_ln895_2_fu_926_p2;
wire   [0:0] and_ln896_2_fu_950_p2;
wire   [0:0] or_ln346_2_fu_963_p2;
wire   [20:0] select_ln346_4_fu_955_p3;
wire   [0:0] icmp_ln1420_fu_977_p2;
wire   [0:0] icmp_ln1420_1_fu_982_p2;
wire   [0:0] or_ln1420_fu_987_p2;
wire   [20:0] temp4_V_2_9_fu_969_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire   [41:0] mul_ln1273_1_fu_428_p10;
wire   [41:0] mul_ln1273_2_fu_697_p10;
wire   [41:0] mul_ln1273_fu_215_p10;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
end

estimador_func_mux_32_21_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 21 ),
    .din2_WIDTH( 21 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 21 ))
mux_32_21_1_1_U15(
    .din0(21'd11588),
    .din1(21'd166),
    .din2(21'd0),
    .din3(ap_sig_allocacmp_i),
    .dout(tmp_fu_199_p5)
);

estimador_func_mul_21s_21ns_42_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 21 ),
    .dout_WIDTH( 42 ))
mul_21s_21ns_42_1_1_U16(
    .din0(sext_ln1273),
    .din1(mul_ln1273_fu_215_p1),
    .dout(mul_ln1273_fu_215_p2)
);

estimador_func_mux_32_21_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 21 ),
    .din2_WIDTH( 21 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 21 ))
mux_32_21_1_1_U17(
    .din0(21'd0),
    .din1(21'd16384),
    .din2(21'd0),
    .din3(ap_sig_allocacmp_i),
    .dout(tmp_6_fu_293_p5)
);

estimador_func_mul_21s_21ns_42_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 21 ),
    .dout_WIDTH( 42 ))
mul_21s_21ns_42_1_1_U18(
    .din0(mul_ln1273_1_fu_428_p0),
    .din1(mul_ln1273_1_fu_428_p1),
    .dout(mul_ln1273_1_fu_428_p2)
);

estimador_func_mux_32_21_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 21 ),
    .din2_WIDTH( 21 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 21 ))
mux_32_21_1_1_U19(
    .din0(21'd7479),
    .din1(21'd47),
    .din2(21'd16384),
    .din3(i_reg_1082),
    .dout(tmp_9_fu_539_p5)
);

estimador_func_mul_21s_21ns_42_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 21 ),
    .dout_WIDTH( 42 ))
mul_21s_21ns_42_1_1_U20(
    .din0(mul_ln1273_2_fu_697_p0),
    .din1(mul_ln1273_2_fu_697_p1),
    .dout(mul_ln1273_2_fu_697_p2)
);

estimador_func_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln24_fu_187_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_2_fu_112 <= add_ln24_fu_193_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_2_fu_112 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_reg_1082 <= ap_sig_allocacmp_i;
        i_reg_1082_pp0_iter1_reg <= i_reg_1082;
        icmp_ln24_reg_1089 <= icmp_ln24_fu_187_p2;
        icmp_ln24_reg_1089_pp0_iter1_reg <= icmp_ln24_reg_1089;
        sext_ln1273_1_cast_reg_1077 <= sext_ln1273_1_cast_fu_171_p1;
        sext_ln1273_2_cast_reg_1072 <= sext_ln1273_2_cast_fu_167_p1;
        shl_ln_reg_1141[34 : 14] <= shl_ln_fu_449_p3[34 : 14];
        tmp_10_reg_1151 <= add_ln1347_fu_473_p2[32'd42];
        tmp_11_reg_1162 <= add_ln810_1_fu_479_p2[32'd34];
        tmp_12_reg_1167 <= mul_ln1273_1_fu_428_p2[32'd13];
        tmp_5_s_reg_1172 <= {{add_ln1347_fu_473_p2[42:36]}};
        tmp_6_s_reg_1177 <= {{add_ln1347_fu_473_p2[42:35]}};
        tmp_9_reg_1183 <= tmp_9_fu_539_p5;
        trunc_ln1347_1_reg_1146 <= trunc_ln1347_1_fu_469_p1;
        trunc_ln818_1_reg_1157 <= {{add_ln810_1_fu_479_p2[34:14]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        i_reg_1082_pp0_iter2_reg <= i_reg_1082_pp0_iter1_reg;
        shl_ln838_1_reg_1188[34 : 14] <= shl_ln838_1_fu_718_p3[34 : 14];
        tmp_15_reg_1198 <= add_ln1347_1_fu_742_p2[32'd42];
        tmp_16_reg_1209 <= add_ln810_3_fu_748_p2[32'd34];
        tmp_17_reg_1214 <= mul_ln1273_2_fu_697_p2[32'd13];
        tmp_5_1_reg_1219 <= {{add_ln1347_1_fu_742_p2[42:36]}};
        tmp_6_1_reg_1224 <= {{add_ln1347_1_fu_742_p2[42:35]}};
        trunc_ln1347_3_reg_1193 <= trunc_ln1347_3_fu_738_p1;
        trunc_ln818_2_reg_1204 <= {{add_ln810_3_fu_748_p2[34:14]}};
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln24_fu_187_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln1019_1_reg_1124 <= icmp_ln1019_1_fu_281_p2;
        icmp_ln1019_reg_1119 <= icmp_ln1019_fu_265_p2;
        icmp_ln878_reg_1131 <= icmp_ln878_fu_287_p2;
        mul_ln1273_reg_1093 <= mul_ln1273_fu_215_p2;
        tmp_1_reg_1098 <= mul_ln1273_fu_215_p2[32'd41];
        tmp_2_reg_1109 <= mul_ln1273_fu_215_p2[32'd34];
        tmp_3_reg_1114 <= mul_ln1273_fu_215_p2[32'd13];
        tmp_6_reg_1136 <= tmp_6_fu_293_p5;
        trunc_ln2_reg_1104 <= {{mul_ln1273_fu_215_p2[34:14]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        temp4_V_2_1_fu_116 <= temp4_V_2_8_fu_1009_p3;
        temp4_V_2_2_fu_120 <= temp4_V_2_7_fu_1001_p3;
        temp4_V_2_3_fu_124 <= temp4_V_2_fu_993_p3;
    end
end

always @ (*) begin
    if (((icmp_ln24_fu_187_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_i = 2'd0;
    end else begin
        ap_sig_allocacmp_i = i_2_fu_112;
    end
end

always @ (*) begin
    if (((icmp_ln24_reg_1089_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        temp4_V_0_07_out_ap_vld = 1'b1;
    end else begin
        temp4_V_0_07_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln24_reg_1089_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        temp4_V_1_08_out_ap_vld = 1'b1;
    end else begin
        temp4_V_1_08_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln24_reg_1089_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        temp4_V_2_09_out_ap_vld = 1'b1;
    end else begin
        temp4_V_2_09_out_ap_vld = 1'b0;
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

assign add_ln1347_1_fu_742_p2 = ($signed(sext_ln813_5_fu_726_p1) + $signed(sext_ln813_3_fu_730_p1));

assign add_ln1347_fu_473_p2 = ($signed(sext_ln813_4_fu_457_p1) + $signed(sext_ln813_fu_461_p1));

assign add_ln24_fu_193_p2 = (ap_sig_allocacmp_i + 2'd1);

assign add_ln377_1_fu_561_p2 = (zext_ln377_1_fu_558_p1 + trunc_ln818_1_reg_1157);

assign add_ln377_2_fu_828_p2 = (zext_ln377_2_fu_825_p1 + trunc_ln818_2_reg_1204);

assign add_ln377_fu_313_p2 = (zext_ln377_fu_310_p1 + trunc_ln2_reg_1104);

assign add_ln810_1_fu_479_p2 = ($signed(shl_ln_fu_449_p3) + $signed(trunc_ln1347_fu_465_p1));

assign add_ln810_2_fu_820_p2 = ($signed(sext_ln1347_1_fu_817_p1) + $signed(trunc_ln1347_3_reg_1193));

assign add_ln810_3_fu_748_p2 = ($signed(shl_ln838_1_fu_718_p3) + $signed(trunc_ln1347_2_fu_734_p1));

assign add_ln810_fu_553_p2 = ($signed(sext_ln1347_fu_550_p1) + $signed(trunc_ln1347_1_reg_1146));

assign and_ln378_1_fu_580_p2 = (xor_ln896_3_fu_574_p2 & tmp_11_reg_1162);

assign and_ln378_2_fu_847_p2 = (xor_ln896_6_fu_841_p2 & tmp_16_reg_1209);

assign and_ln378_fu_332_p2 = (xor_ln896_fu_326_p2 & tmp_2_reg_1109);

assign and_ln890_1_fu_622_p2 = (xor_ln890_1_fu_616_p2 & icmp_ln1019_2_fu_585_p2);

assign and_ln890_2_fu_889_p2 = (xor_ln890_2_fu_883_p2 & icmp_ln1019_4_fu_852_p2);

assign and_ln890_fu_356_p2 = (xor_ln890_fu_350_p2 & icmp_ln1019_reg_1119);

assign and_ln891_1_fu_636_p2 = (icmp_ln1019_3_fu_590_p2 & and_ln378_1_fu_580_p2);

assign and_ln891_2_fu_903_p2 = (icmp_ln1019_5_fu_857_p2 & and_ln378_2_fu_847_p2);

assign and_ln891_fu_368_p2 = (icmp_ln1019_1_reg_1124 & and_ln378_fu_332_p2);

assign and_ln895_1_fu_659_p2 = (xor_ln895_3_fu_654_p2 & or_ln895_1_fu_648_p2);

assign and_ln895_2_fu_926_p2 = (xor_ln895_5_fu_921_p2 & or_ln895_2_fu_915_p2);

assign and_ln895_fu_390_p2 = (xor_ln895_1_fu_385_p2 & or_ln895_fu_379_p2);

assign and_ln896_1_fu_683_p2 = (xor_ln896_5_fu_677_p2 & tmp_10_reg_1151);

assign and_ln896_2_fu_950_p2 = (xor_ln896_8_fu_944_p2 & tmp_15_reg_1198);

assign and_ln896_fu_414_p2 = (xor_ln896_2_fu_408_p2 & tmp_1_reg_1098);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln1019_1_fu_281_p2 = ((tmp_8_fu_271_p4 == 7'd127) ? 1'b1 : 1'b0);

assign icmp_ln1019_2_fu_585_p2 = ((tmp_5_s_reg_1172 == 7'd127) ? 1'b1 : 1'b0);

assign icmp_ln1019_3_fu_590_p2 = ((tmp_6_s_reg_1177 == 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln1019_4_fu_852_p2 = ((tmp_5_1_reg_1219 == 7'd127) ? 1'b1 : 1'b0);

assign icmp_ln1019_5_fu_857_p2 = ((tmp_6_1_reg_1224 == 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln1019_fu_265_p2 = ((tmp_7_fu_255_p4 == 6'd63) ? 1'b1 : 1'b0);

assign icmp_ln1420_1_fu_982_p2 = ((i_reg_1082_pp0_iter2_reg == 2'd1) ? 1'b1 : 1'b0);

assign icmp_ln1420_fu_977_p2 = ((i_reg_1082_pp0_iter2_reg == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln24_fu_187_p2 = ((ap_sig_allocacmp_i == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln878_1_fu_595_p2 = ((tmp_6_s_reg_1177 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln878_2_fu_862_p2 = ((tmp_6_1_reg_1224 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln878_fu_287_p2 = ((tmp_8_fu_271_p4 == 7'd0) ? 1'b1 : 1'b0);

assign mul_ln1273_1_fu_428_p0 = sext_ln1273_1_cast_reg_1077;

assign mul_ln1273_1_fu_428_p1 = mul_ln1273_1_fu_428_p10;

assign mul_ln1273_1_fu_428_p10 = tmp_6_reg_1136;

assign mul_ln1273_2_fu_697_p0 = sext_ln1273_2_cast_reg_1072;

assign mul_ln1273_2_fu_697_p1 = mul_ln1273_2_fu_697_p10;

assign mul_ln1273_2_fu_697_p10 = tmp_9_reg_1183;

assign mul_ln1273_fu_215_p1 = mul_ln1273_fu_215_p10;

assign mul_ln1273_fu_215_p10 = tmp_fu_199_p5;

assign or_ln1420_fu_987_p2 = (icmp_ln1420_fu_977_p2 | icmp_ln1420_1_fu_982_p2);

assign or_ln346_1_fu_688_p2 = (and_ln896_1_fu_683_p2 | and_ln895_1_fu_659_p2);

assign or_ln346_2_fu_963_p2 = (and_ln896_2_fu_950_p2 | and_ln895_2_fu_926_p2);

assign or_ln346_fu_419_p2 = (and_ln896_fu_414_p2 | and_ln895_fu_390_p2);

assign or_ln895_1_fu_648_p2 = (xor_ln895_2_fu_642_p2 | tmp_13_fu_566_p3);

assign or_ln895_2_fu_915_p2 = (xor_ln895_4_fu_909_p2 | tmp_18_fu_833_p3);

assign or_ln895_fu_379_p2 = (xor_ln895_fu_373_p2 | tmp_4_fu_318_p3);

assign or_ln896_1_fu_671_p2 = (xor_ln896_4_fu_665_p2 | xor_ln896_3_fu_574_p2);

assign or_ln896_2_fu_938_p2 = (xor_ln896_7_fu_932_p2 | xor_ln896_6_fu_841_p2);

assign or_ln896_fu_402_p2 = (xor_ln896_fu_326_p2 | xor_ln896_1_fu_396_p2);

assign select_ln346_1_fu_441_p3 = ((or_ln346_fu_419_p2[0:0] == 1'b1) ? select_ln346_fu_433_p3 : add_ln377_fu_313_p2);

assign select_ln346_2_fu_702_p3 = ((and_ln895_1_fu_659_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_3_fu_710_p3 = ((or_ln346_1_fu_688_p2[0:0] == 1'b1) ? select_ln346_2_fu_702_p3 : add_ln377_1_fu_561_p2);

assign select_ln346_4_fu_955_p3 = ((and_ln895_2_fu_926_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_fu_433_p3 = ((and_ln895_fu_390_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln888_1_fu_600_p3 = ((and_ln378_1_fu_580_p2[0:0] == 1'b1) ? icmp_ln1019_3_fu_590_p2 : icmp_ln878_1_fu_595_p2);

assign select_ln888_2_fu_867_p3 = ((and_ln378_2_fu_847_p2[0:0] == 1'b1) ? icmp_ln1019_5_fu_857_p2 : icmp_ln878_2_fu_862_p2);

assign select_ln888_fu_337_p3 = ((and_ln378_fu_332_p2[0:0] == 1'b1) ? icmp_ln1019_1_reg_1124 : icmp_ln878_reg_1131);

assign select_ln890_1_fu_628_p3 = ((and_ln378_1_fu_580_p2[0:0] == 1'b1) ? and_ln890_1_fu_622_p2 : icmp_ln1019_3_fu_590_p2);

assign select_ln890_2_fu_895_p3 = ((and_ln378_2_fu_847_p2[0:0] == 1'b1) ? and_ln890_2_fu_889_p2 : icmp_ln1019_5_fu_857_p2);

assign select_ln890_fu_361_p3 = ((and_ln378_fu_332_p2[0:0] == 1'b1) ? and_ln890_fu_356_p2 : icmp_ln1019_1_reg_1124);

assign sext_ln1273_1_cast_fu_171_p1 = $signed(sext_ln1273_1);

assign sext_ln1273_2_cast_fu_167_p1 = $signed(sext_ln1273_2);

assign sext_ln1347_1_fu_817_p1 = shl_ln838_1_reg_1188;

assign sext_ln1347_fu_550_p1 = shl_ln_reg_1141;

assign sext_ln813_3_fu_730_p1 = mul_ln1273_2_fu_697_p2;

assign sext_ln813_4_fu_457_p1 = shl_ln_fu_449_p3;

assign sext_ln813_5_fu_726_p1 = shl_ln838_1_fu_718_p3;

assign sext_ln813_fu_461_p1 = mul_ln1273_1_fu_428_p2;

assign shl_ln838_1_fu_718_p3 = {{select_ln346_3_fu_710_p3}, {14'd0}};

assign shl_ln_fu_449_p3 = {{select_ln346_1_fu_441_p3}, {14'd0}};

assign temp4_V_0_07_out = temp4_V_2_1_fu_116;

assign temp4_V_1_08_out = temp4_V_2_2_fu_120;

assign temp4_V_2_09_out = temp4_V_2_3_fu_124;

assign temp4_V_2_7_fu_1001_p3 = ((icmp_ln1420_1_fu_982_p2[0:0] == 1'b1) ? temp4_V_2_9_fu_969_p3 : temp4_V_2_2_fu_120);

assign temp4_V_2_8_fu_1009_p3 = ((icmp_ln1420_fu_977_p2[0:0] == 1'b1) ? temp4_V_2_9_fu_969_p3 : temp4_V_2_1_fu_116);

assign temp4_V_2_9_fu_969_p3 = ((or_ln346_2_fu_963_p2[0:0] == 1'b1) ? select_ln346_4_fu_955_p3 : add_ln377_2_fu_828_p2);

assign temp4_V_2_fu_993_p3 = ((or_ln1420_fu_987_p2[0:0] == 1'b1) ? temp4_V_2_3_fu_124 : temp4_V_2_9_fu_969_p3);

assign tmp_13_fu_566_p3 = add_ln377_1_fu_561_p2[32'd20];

assign tmp_14_fu_608_p3 = add_ln810_fu_553_p2[32'd35];

assign tmp_18_fu_833_p3 = add_ln377_2_fu_828_p2[32'd20];

assign tmp_19_fu_875_p3 = add_ln810_2_fu_820_p2[32'd35];

assign tmp_4_fu_318_p3 = add_ln377_fu_313_p2[32'd20];

assign tmp_5_fu_343_p3 = mul_ln1273_reg_1093[32'd35];

assign tmp_7_fu_255_p4 = {{mul_ln1273_fu_215_p2[41:36]}};

assign tmp_8_fu_271_p4 = {{mul_ln1273_fu_215_p2[41:35]}};

assign trunc_ln1347_1_fu_469_p1 = mul_ln1273_1_fu_428_p2[35:0];

assign trunc_ln1347_2_fu_734_p1 = mul_ln1273_2_fu_697_p2[34:0];

assign trunc_ln1347_3_fu_738_p1 = mul_ln1273_2_fu_697_p2[35:0];

assign trunc_ln1347_fu_465_p1 = mul_ln1273_1_fu_428_p2[34:0];

assign xor_ln890_1_fu_616_p2 = (tmp_14_fu_608_p3 ^ 1'd1);

assign xor_ln890_2_fu_883_p2 = (tmp_19_fu_875_p3 ^ 1'd1);

assign xor_ln890_fu_350_p2 = (tmp_5_fu_343_p3 ^ 1'd1);

assign xor_ln895_1_fu_385_p2 = (tmp_1_reg_1098 ^ 1'd1);

assign xor_ln895_2_fu_642_p2 = (select_ln888_1_fu_600_p3 ^ 1'd1);

assign xor_ln895_3_fu_654_p2 = (tmp_10_reg_1151 ^ 1'd1);

assign xor_ln895_4_fu_909_p2 = (select_ln888_2_fu_867_p3 ^ 1'd1);

assign xor_ln895_5_fu_921_p2 = (tmp_15_reg_1198 ^ 1'd1);

assign xor_ln895_fu_373_p2 = (select_ln888_fu_337_p3 ^ 1'd1);

assign xor_ln896_1_fu_396_p2 = (select_ln890_fu_361_p3 ^ 1'd1);

assign xor_ln896_2_fu_408_p2 = (or_ln896_fu_402_p2 ^ and_ln891_fu_368_p2);

assign xor_ln896_3_fu_574_p2 = (tmp_13_fu_566_p3 ^ 1'd1);

assign xor_ln896_4_fu_665_p2 = (select_ln890_1_fu_628_p3 ^ 1'd1);

assign xor_ln896_5_fu_677_p2 = (or_ln896_1_fu_671_p2 ^ and_ln891_1_fu_636_p2);

assign xor_ln896_6_fu_841_p2 = (tmp_18_fu_833_p3 ^ 1'd1);

assign xor_ln896_7_fu_932_p2 = (select_ln890_2_fu_895_p3 ^ 1'd1);

assign xor_ln896_8_fu_944_p2 = (or_ln896_2_fu_938_p2 ^ and_ln891_2_fu_903_p2);

assign xor_ln896_fu_326_p2 = (tmp_4_fu_318_p3 ^ 1'd1);

assign zext_ln377_1_fu_558_p1 = tmp_12_reg_1167;

assign zext_ln377_2_fu_825_p1 = tmp_17_reg_1214;

assign zext_ln377_fu_310_p1 = tmp_3_reg_1114;

always @ (posedge ap_clk) begin
    shl_ln_reg_1141[13:0] <= 14'b00000000000000;
    shl_ln838_1_reg_1188[13:0] <= 14'b00000000000000;
end

endmodule //estimador_func_estimador_func_Pipeline_mvmult_row2
