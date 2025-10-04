module mpc_mpc_dense_constraint_Pipeline_vmmult_column (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        sext_ln1271,
        sext_ln1271_29,
        q16_08_out,
        q16_08_out_ap_vld,
        q_07_out,
        q_07_out_ap_vld,
        q2_06_out,
        q2_06_out_ap_vld,
        q3_05_out,
        q3_05_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] sext_ln1271;
input  [31:0] sext_ln1271_29;
output  [31:0] q16_08_out;
output   q16_08_out_ap_vld;
output  [31:0] q_07_out;
output   q_07_out_ap_vld;
output  [31:0] q2_06_out;
output   q2_06_out_ap_vld;
output  [31:0] q3_05_out;
output   q3_05_out_ap_vld;

reg ap_idle;
reg q16_08_out_ap_vld;
reg q_07_out_ap_vld;
reg q2_06_out_ap_vld;
reg q3_05_out_ap_vld;

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
wire   [0:0] icmp_ln54_fu_196_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire  signed [63:0] sext_ln1271_29_cast_fu_180_p1;
reg  signed [63:0] sext_ln1271_29_cast_reg_862;
wire  signed [63:0] sext_ln1271_cast_fu_184_p1;
reg  signed [63:0] sext_ln1271_cast_reg_867;
reg   [0:0] icmp_ln54_reg_872;
reg   [0:0] icmp_ln54_reg_872_pp0_iter1_reg;
wire   [1:0] trunc_ln55_fu_208_p1;
reg   [1:0] trunc_ln55_reg_876;
reg   [1:0] trunc_ln55_reg_876_pp0_iter1_reg;
reg   [1:0] trunc_ln55_reg_876_pp0_iter2_reg;
wire   [31:0] tmp_71_fu_212_p6;
reg   [31:0] tmp_71_reg_884;
wire   [63:0] mul_ln1273_fu_234_p2;
reg   [63:0] mul_ln1273_reg_889;
reg   [0:0] tmp_193_reg_894;
reg   [31:0] trunc_ln6_reg_900;
reg   [0:0] tmp_194_reg_905;
reg   [0:0] tmp_195_reg_910;
reg   [14:0] tmp_s_reg_915;
reg   [15:0] tmp_26_reg_920;
wire   [31:0] tmp_fu_293_p6;
reg   [31:0] tmp_reg_926;
wire  signed [63:0] mul_ln1273_27_fu_444_p2;
reg  signed [63:0] mul_ln1273_27_reg_931;
wire   [31:0] select_ln346_49_fu_457_p3;
reg   [31:0] select_ln346_49_reg_936;
wire   [47:0] trunc_ln1347_fu_465_p1;
reg   [47:0] trunc_ln1347_reg_941;
wire   [48:0] trunc_ln1347_6_fu_469_p1;
reg   [48:0] trunc_ln1347_6_reg_946;
reg   [0:0] tmp_200_reg_951;
reg   [2:0] j_fu_120;
wire   [2:0] add_ln54_fu_202_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_j_1;
wire    ap_block_pp0_stage0;
reg   [31:0] q3_05_fu_124;
wire   [31:0] select_ln1420_3_fu_783_p3;
reg   [31:0] q2_06_fu_128;
wire   [31:0] select_ln1420_2_fu_763_p3;
reg   [31:0] q_07_fu_132;
wire   [31:0] select_ln1420_1_fu_755_p3;
reg   [31:0] q16_08_fu_136;
wire   [31:0] select_ln1420_fu_737_p3;
wire    ap_block_pp0_stage0_01001;
wire   [1:0] tmp_71_fu_212_p5;
wire   [31:0] mul_ln1273_fu_234_p0;
wire  signed [31:0] mul_ln1273_fu_234_p1;
wire   [31:0] zext_ln377_fu_306_p1;
wire   [31:0] add_ln377_fu_309_p2;
wire   [0:0] tmp_196_fu_314_p3;
wire   [0:0] xor_ln896_fu_322_p2;
wire   [0:0] and_ln378_fu_328_p2;
wire   [0:0] icmp_ln1019_50_fu_338_p2;
wire   [0:0] icmp_ln878_fu_343_p2;
wire   [0:0] tmp_197_fu_356_p3;
wire   [0:0] icmp_ln1019_fu_333_p2;
wire   [0:0] xor_ln890_fu_363_p2;
wire   [0:0] and_ln890_fu_369_p2;
wire   [0:0] select_ln888_fu_348_p3;
wire   [0:0] xor_ln895_fu_389_p2;
wire   [0:0] or_ln895_fu_395_p2;
wire   [0:0] xor_ln895_55_fu_401_p2;
wire   [0:0] select_ln890_fu_375_p3;
wire   [0:0] xor_ln896_65_fu_412_p2;
wire   [0:0] and_ln891_fu_383_p2;
wire   [0:0] or_ln896_fu_418_p2;
wire   [0:0] xor_ln896_83_fu_424_p2;
wire   [0:0] and_ln895_fu_406_p2;
wire   [0:0] and_ln896_fu_430_p2;
wire   [31:0] mul_ln1273_27_fu_444_p0;
wire  signed [31:0] mul_ln1273_27_fu_444_p1;
wire   [0:0] or_ln346_fu_435_p2;
wire   [31:0] select_ln346_fu_449_p3;
wire  signed [47:0] shl_ln_fu_493_p3;
wire  signed [64:0] sext_ln813_26_fu_500_p1;
wire  signed [64:0] sext_ln813_fu_504_p1;
wire  signed [48:0] sext_ln1347_fu_507_p1;
wire   [64:0] add_ln1347_fu_511_p2;
wire   [47:0] add_ln810_3_fu_522_p2;
wire   [31:0] zext_ln377_24_fu_553_p1;
wire   [31:0] trunc_ln818_s_fu_535_p4;
wire   [31:0] add_ln377_27_fu_556_p2;
wire   [0:0] tmp_201_fu_562_p3;
wire   [0:0] tmp_199_fu_545_p3;
wire   [0:0] xor_ln896_66_fu_570_p2;
wire   [15:0] tmp_72_fu_582_p4;
wire   [16:0] tmp_6_s_fu_598_p4;
wire   [0:0] and_ln378_27_fu_576_p2;
wire   [0:0] icmp_ln1019_52_fu_608_p2;
wire   [0:0] icmp_ln878_25_fu_614_p2;
wire   [48:0] add_ln810_fu_517_p2;
wire   [0:0] tmp_202_fu_628_p3;
wire   [0:0] icmp_ln1019_51_fu_592_p2;
wire   [0:0] xor_ln890_30_fu_636_p2;
wire   [0:0] and_ln890_1_fu_642_p2;
wire   [0:0] select_ln888_25_fu_620_p3;
wire   [0:0] xor_ln895_56_fu_662_p2;
wire   [0:0] tmp_198_fu_527_p3;
wire   [0:0] or_ln895_1_fu_668_p2;
wire   [0:0] xor_ln895_57_fu_674_p2;
wire   [0:0] select_ln890_25_fu_648_p3;
wire   [0:0] xor_ln896_69_fu_686_p2;
wire   [0:0] and_ln891_1_fu_656_p2;
wire   [0:0] or_ln896_1_fu_692_p2;
wire   [0:0] xor_ln896_84_fu_698_p2;
wire   [0:0] and_ln895_27_fu_680_p2;
wire   [0:0] and_ln896_27_fu_704_p2;
wire   [0:0] or_ln346_27_fu_718_p2;
wire   [31:0] select_ln346_50_fu_710_p3;
wire   [0:0] icmp_ln1420_fu_732_p2;
wire   [31:0] select_ln346_51_fu_724_p3;
wire   [0:0] icmp_ln1420_4_fu_750_p2;
wire   [0:0] icmp_ln1420_3_fu_745_p2;
wire   [0:0] or_ln1420_fu_771_p2;
wire   [0:0] or_ln1420_2_fu_777_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire   [63:0] mul_ln1273_27_fu_444_p00;
wire   [63:0] mul_ln1273_fu_234_p00;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
end

mpc_mux_42_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_42_32_1_1_U1(
    .din0(32'd3032),
    .din1(32'd2992),
    .din2(32'd2945),
    .din3(32'd2894),
    .din4(tmp_71_fu_212_p5),
    .dout(tmp_71_fu_212_p6)
);

mpc_mul_32ns_32s_64_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
mul_32ns_32s_64_1_1_U2(
    .din0(mul_ln1273_fu_234_p0),
    .din1(mul_ln1273_fu_234_p1),
    .dout(mul_ln1273_fu_234_p2)
);

mpc_mux_42_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_42_32_1_1_U3(
    .din0(32'd88582),
    .din1(32'd86951),
    .din2(32'd85325),
    .din3(32'd83705),
    .din4(trunc_ln55_reg_876),
    .dout(tmp_fu_293_p6)
);

mpc_mul_32ns_32s_64_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
mul_32ns_32s_64_1_1_U4(
    .din0(mul_ln1273_27_fu_444_p0),
    .din1(mul_ln1273_27_fu_444_p1),
    .dout(mul_ln1273_27_fu_444_p2)
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
        if (((icmp_ln54_fu_196_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_120 <= add_ln54_fu_202_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_120 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln54_reg_872 <= icmp_ln54_fu_196_p2;
        icmp_ln54_reg_872_pp0_iter1_reg <= icmp_ln54_reg_872;
        mul_ln1273_reg_889 <= mul_ln1273_fu_234_p2;
        sext_ln1271_29_cast_reg_862 <= sext_ln1271_29_cast_fu_180_p1;
        sext_ln1271_cast_reg_867 <= sext_ln1271_cast_fu_184_p1;
        tmp_193_reg_894 <= mul_ln1273_fu_234_p2[32'd63];
        tmp_194_reg_905 <= mul_ln1273_fu_234_p2[32'd47];
        tmp_195_reg_910 <= mul_ln1273_fu_234_p2[32'd15];
        tmp_26_reg_920 <= {{mul_ln1273_fu_234_p2[63:48]}};
        tmp_reg_926 <= tmp_fu_293_p6;
        tmp_s_reg_915 <= {{mul_ln1273_fu_234_p2[63:49]}};
        trunc_ln55_reg_876_pp0_iter1_reg <= trunc_ln55_reg_876;
        trunc_ln6_reg_900 <= {{mul_ln1273_fu_234_p2[47:16]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        mul_ln1273_27_reg_931 <= mul_ln1273_27_fu_444_p2;
        select_ln346_49_reg_936 <= select_ln346_49_fu_457_p3;
        tmp_200_reg_951 <= mul_ln1273_27_fu_444_p2[32'd15];
        trunc_ln1347_6_reg_946 <= trunc_ln1347_6_fu_469_p1;
        trunc_ln1347_reg_941 <= trunc_ln1347_fu_465_p1;
        trunc_ln55_reg_876_pp0_iter2_reg <= trunc_ln55_reg_876_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        q16_08_fu_136 <= select_ln1420_fu_737_p3;
        q2_06_fu_128 <= select_ln1420_2_fu_763_p3;
        q3_05_fu_124 <= select_ln1420_3_fu_783_p3;
        q_07_fu_132 <= select_ln1420_1_fu_755_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln54_fu_196_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_71_reg_884 <= tmp_71_fu_212_p6;
        trunc_ln55_reg_876 <= trunc_ln55_fu_208_p1;
    end
end

always @ (*) begin
    if (((icmp_ln54_fu_196_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_j_1 = 3'd0;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_120;
    end
end

always @ (*) begin
    if (((icmp_ln54_reg_872_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        q16_08_out_ap_vld = 1'b1;
    end else begin
        q16_08_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln54_reg_872_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        q2_06_out_ap_vld = 1'b1;
    end else begin
        q2_06_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln54_reg_872_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        q3_05_out_ap_vld = 1'b1;
    end else begin
        q3_05_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln54_reg_872_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        q_07_out_ap_vld = 1'b1;
    end else begin
        q_07_out_ap_vld = 1'b0;
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

assign add_ln1347_fu_511_p2 = ($signed(sext_ln813_26_fu_500_p1) + $signed(sext_ln813_fu_504_p1));

assign add_ln377_27_fu_556_p2 = (zext_ln377_24_fu_553_p1 + trunc_ln818_s_fu_535_p4);

assign add_ln377_fu_309_p2 = (zext_ln377_fu_306_p1 + trunc_ln6_reg_900);

assign add_ln54_fu_202_p2 = (ap_sig_allocacmp_j_1 + 3'd1);

assign add_ln810_3_fu_522_p2 = ($signed(shl_ln_fu_493_p3) + $signed(trunc_ln1347_reg_941));

assign add_ln810_fu_517_p2 = ($signed(sext_ln1347_fu_507_p1) + $signed(trunc_ln1347_6_reg_946));

assign and_ln378_27_fu_576_p2 = (xor_ln896_66_fu_570_p2 & tmp_199_fu_545_p3);

assign and_ln378_fu_328_p2 = (xor_ln896_fu_322_p2 & tmp_194_reg_905);

assign and_ln890_1_fu_642_p2 = (xor_ln890_30_fu_636_p2 & icmp_ln1019_51_fu_592_p2);

assign and_ln890_fu_369_p2 = (xor_ln890_fu_363_p2 & icmp_ln1019_fu_333_p2);

assign and_ln891_1_fu_656_p2 = (icmp_ln1019_52_fu_608_p2 & and_ln378_27_fu_576_p2);

assign and_ln891_fu_383_p2 = (icmp_ln1019_50_fu_338_p2 & and_ln378_fu_328_p2);

assign and_ln895_27_fu_680_p2 = (xor_ln895_57_fu_674_p2 & or_ln895_1_fu_668_p2);

assign and_ln895_fu_406_p2 = (xor_ln895_55_fu_401_p2 & or_ln895_fu_395_p2);

assign and_ln896_27_fu_704_p2 = (xor_ln896_84_fu_698_p2 & tmp_198_fu_527_p3);

assign and_ln896_fu_430_p2 = (xor_ln896_83_fu_424_p2 & tmp_193_reg_894);

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

assign icmp_ln1019_50_fu_338_p2 = ((tmp_26_reg_920 == 16'd65535) ? 1'b1 : 1'b0);

assign icmp_ln1019_51_fu_592_p2 = ((tmp_72_fu_582_p4 == 16'd65535) ? 1'b1 : 1'b0);

assign icmp_ln1019_52_fu_608_p2 = ((tmp_6_s_fu_598_p4 == 17'd131071) ? 1'b1 : 1'b0);

assign icmp_ln1019_fu_333_p2 = ((tmp_s_reg_915 == 15'd32767) ? 1'b1 : 1'b0);

assign icmp_ln1420_3_fu_745_p2 = ((trunc_ln55_reg_876_pp0_iter2_reg == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln1420_4_fu_750_p2 = ((trunc_ln55_reg_876_pp0_iter2_reg == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln1420_fu_732_p2 = ((trunc_ln55_reg_876_pp0_iter2_reg == 2'd1) ? 1'b1 : 1'b0);

assign icmp_ln54_fu_196_p2 = ((ap_sig_allocacmp_j_1 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln878_25_fu_614_p2 = ((tmp_6_s_fu_598_p4 == 17'd0) ? 1'b1 : 1'b0);

assign icmp_ln878_fu_343_p2 = ((tmp_26_reg_920 == 16'd0) ? 1'b1 : 1'b0);

assign mul_ln1273_27_fu_444_p0 = mul_ln1273_27_fu_444_p00;

assign mul_ln1273_27_fu_444_p00 = tmp_reg_926;

assign mul_ln1273_27_fu_444_p1 = sext_ln1271_29_cast_reg_862;

assign mul_ln1273_fu_234_p0 = mul_ln1273_fu_234_p00;

assign mul_ln1273_fu_234_p00 = tmp_71_reg_884;

assign mul_ln1273_fu_234_p1 = sext_ln1271_cast_reg_867;

assign or_ln1420_2_fu_777_p2 = (or_ln1420_fu_771_p2 | icmp_ln1420_4_fu_750_p2);

assign or_ln1420_fu_771_p2 = (icmp_ln1420_fu_732_p2 | icmp_ln1420_3_fu_745_p2);

assign or_ln346_27_fu_718_p2 = (and_ln896_27_fu_704_p2 | and_ln895_27_fu_680_p2);

assign or_ln346_fu_435_p2 = (and_ln896_fu_430_p2 | and_ln895_fu_406_p2);

assign or_ln895_1_fu_668_p2 = (xor_ln895_56_fu_662_p2 | tmp_201_fu_562_p3);

assign or_ln895_fu_395_p2 = (xor_ln895_fu_389_p2 | tmp_196_fu_314_p3);

assign or_ln896_1_fu_692_p2 = (xor_ln896_69_fu_686_p2 | xor_ln896_66_fu_570_p2);

assign or_ln896_fu_418_p2 = (xor_ln896_fu_322_p2 | xor_ln896_65_fu_412_p2);

assign q16_08_out = q16_08_fu_136;

assign q2_06_out = q2_06_fu_128;

assign q3_05_out = q3_05_fu_124;

assign q_07_out = q_07_fu_132;

assign select_ln1420_1_fu_755_p3 = ((icmp_ln1420_4_fu_750_p2[0:0] == 1'b1) ? select_ln346_51_fu_724_p3 : q_07_fu_132);

assign select_ln1420_2_fu_763_p3 = ((icmp_ln1420_3_fu_745_p2[0:0] == 1'b1) ? select_ln346_51_fu_724_p3 : q2_06_fu_128);

assign select_ln1420_3_fu_783_p3 = ((or_ln1420_2_fu_777_p2[0:0] == 1'b1) ? q3_05_fu_124 : select_ln346_51_fu_724_p3);

assign select_ln1420_fu_737_p3 = ((icmp_ln1420_fu_732_p2[0:0] == 1'b1) ? select_ln346_51_fu_724_p3 : q16_08_fu_136);

assign select_ln346_49_fu_457_p3 = ((or_ln346_fu_435_p2[0:0] == 1'b1) ? select_ln346_fu_449_p3 : add_ln377_fu_309_p2);

assign select_ln346_50_fu_710_p3 = ((and_ln895_27_fu_680_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_51_fu_724_p3 = ((or_ln346_27_fu_718_p2[0:0] == 1'b1) ? select_ln346_50_fu_710_p3 : add_ln377_27_fu_556_p2);

assign select_ln346_fu_449_p3 = ((and_ln895_fu_406_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln888_25_fu_620_p3 = ((and_ln378_27_fu_576_p2[0:0] == 1'b1) ? icmp_ln1019_52_fu_608_p2 : icmp_ln878_25_fu_614_p2);

assign select_ln888_fu_348_p3 = ((and_ln378_fu_328_p2[0:0] == 1'b1) ? icmp_ln1019_50_fu_338_p2 : icmp_ln878_fu_343_p2);

assign select_ln890_25_fu_648_p3 = ((and_ln378_27_fu_576_p2[0:0] == 1'b1) ? and_ln890_1_fu_642_p2 : icmp_ln1019_52_fu_608_p2);

assign select_ln890_fu_375_p3 = ((and_ln378_fu_328_p2[0:0] == 1'b1) ? and_ln890_fu_369_p2 : icmp_ln1019_50_fu_338_p2);

assign sext_ln1271_29_cast_fu_180_p1 = $signed(sext_ln1271_29);

assign sext_ln1271_cast_fu_184_p1 = $signed(sext_ln1271);

assign sext_ln1347_fu_507_p1 = shl_ln_fu_493_p3;

assign sext_ln813_26_fu_500_p1 = shl_ln_fu_493_p3;

assign sext_ln813_fu_504_p1 = mul_ln1273_27_reg_931;

assign shl_ln_fu_493_p3 = {{select_ln346_49_reg_936}, {16'd0}};

assign tmp_196_fu_314_p3 = add_ln377_fu_309_p2[32'd31];

assign tmp_197_fu_356_p3 = mul_ln1273_reg_889[32'd48];

assign tmp_198_fu_527_p3 = add_ln1347_fu_511_p2[32'd64];

assign tmp_199_fu_545_p3 = add_ln810_3_fu_522_p2[32'd47];

assign tmp_201_fu_562_p3 = add_ln377_27_fu_556_p2[32'd31];

assign tmp_202_fu_628_p3 = add_ln810_fu_517_p2[32'd48];

assign tmp_6_s_fu_598_p4 = {{add_ln1347_fu_511_p2[64:48]}};

assign tmp_71_fu_212_p5 = ap_sig_allocacmp_j_1[1:0];

assign tmp_72_fu_582_p4 = {{add_ln1347_fu_511_p2[64:49]}};

assign trunc_ln1347_6_fu_469_p1 = mul_ln1273_27_fu_444_p2[48:0];

assign trunc_ln1347_fu_465_p1 = mul_ln1273_27_fu_444_p2[47:0];

assign trunc_ln55_fu_208_p1 = ap_sig_allocacmp_j_1[1:0];

assign trunc_ln818_s_fu_535_p4 = {{add_ln810_3_fu_522_p2[47:16]}};

assign xor_ln890_30_fu_636_p2 = (tmp_202_fu_628_p3 ^ 1'd1);

assign xor_ln890_fu_363_p2 = (tmp_197_fu_356_p3 ^ 1'd1);

assign xor_ln895_55_fu_401_p2 = (tmp_193_reg_894 ^ 1'd1);

assign xor_ln895_56_fu_662_p2 = (select_ln888_25_fu_620_p3 ^ 1'd1);

assign xor_ln895_57_fu_674_p2 = (tmp_198_fu_527_p3 ^ 1'd1);

assign xor_ln895_fu_389_p2 = (select_ln888_fu_348_p3 ^ 1'd1);

assign xor_ln896_65_fu_412_p2 = (select_ln890_fu_375_p3 ^ 1'd1);

assign xor_ln896_66_fu_570_p2 = (tmp_201_fu_562_p3 ^ 1'd1);

assign xor_ln896_69_fu_686_p2 = (select_ln890_25_fu_648_p3 ^ 1'd1);

assign xor_ln896_83_fu_424_p2 = (or_ln896_fu_418_p2 ^ and_ln891_fu_383_p2);

assign xor_ln896_84_fu_698_p2 = (or_ln896_1_fu_692_p2 ^ and_ln891_1_fu_656_p2);

assign xor_ln896_fu_322_p2 = (tmp_196_fu_314_p3 ^ 1'd1);

assign zext_ln377_24_fu_553_p1 = tmp_200_reg_951;

assign zext_ln377_fu_306_p1 = tmp_195_reg_910;

endmodule //mpc_mpc_dense_constraint_Pipeline_vmmult_column
