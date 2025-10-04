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
input  [31:0] sext_ln1273;
input  [31:0] sext_ln1273_1;
input  [31:0] sext_ln1273_2;
output  [31:0] temp4_V_2_09_out;
output   temp4_V_2_09_out_ap_vld;
output  [31:0] temp4_V_1_08_out;
output   temp4_V_1_08_out_ap_vld;
output  [31:0] temp4_V_0_07_out;
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
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln24_fu_183_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire  signed [63:0] sext_ln1273_2_cast_fu_163_p1;
reg  signed [63:0] sext_ln1273_2_cast_reg_1077;
wire  signed [63:0] sext_ln1273_1_cast_fu_167_p1;
reg  signed [63:0] sext_ln1273_1_cast_reg_1082;
wire  signed [63:0] sext_ln1273_cast_fu_171_p1;
reg  signed [63:0] sext_ln1273_cast_reg_1087;
reg   [1:0] i_reg_1092;
reg   [1:0] i_reg_1092_pp0_iter1_reg;
reg   [1:0] i_reg_1092_pp0_iter2_reg;
reg   [1:0] i_reg_1092_pp0_iter3_reg;
reg   [0:0] icmp_ln24_reg_1100;
reg   [0:0] icmp_ln24_reg_1100_pp0_iter1_reg;
reg   [0:0] icmp_ln24_reg_1100_pp0_iter2_reg;
wire   [31:0] tmp_fu_195_p5;
reg   [31:0] tmp_reg_1104;
wire   [63:0] mul_ln1273_fu_215_p2;
reg   [63:0] mul_ln1273_reg_1109;
reg   [0:0] tmp_1_reg_1114;
reg   [31:0] trunc_ln2_reg_1120;
reg   [0:0] tmp_2_reg_1125;
reg   [0:0] tmp_3_reg_1130;
reg   [14:0] tmp_7_reg_1135;
reg   [15:0] tmp_8_reg_1140;
wire   [31:0] tmp_6_fu_274_p5;
reg   [31:0] tmp_6_reg_1146;
wire  signed [63:0] mul_ln1273_1_fu_423_p2;
reg  signed [63:0] mul_ln1273_1_reg_1151;
wire   [31:0] select_ln346_1_fu_436_p3;
reg   [31:0] select_ln346_1_reg_1156;
wire   [47:0] trunc_ln1347_fu_444_p1;
reg   [47:0] trunc_ln1347_reg_1161;
wire   [48:0] trunc_ln1347_1_fu_448_p1;
reg   [48:0] trunc_ln1347_1_reg_1166;
reg   [0:0] tmp_12_reg_1171;
wire   [31:0] tmp_9_fu_460_p5;
reg   [31:0] tmp_9_reg_1176;
wire  signed [63:0] mul_ln1273_2_fu_697_p2;
reg  signed [63:0] mul_ln1273_2_reg_1181;
wire   [31:0] select_ln346_3_fu_710_p3;
reg   [31:0] select_ln346_3_reg_1186;
wire   [47:0] trunc_ln1347_2_fu_718_p1;
reg   [47:0] trunc_ln1347_2_reg_1191;
wire   [48:0] trunc_ln1347_3_fu_722_p1;
reg   [48:0] trunc_ln1347_3_reg_1196;
reg   [0:0] tmp_17_reg_1201;
reg   [1:0] i_2_fu_108;
wire   [1:0] add_ln24_fu_189_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage0;
reg   [31:0] temp4_V_2_1_fu_112;
wire   [31:0] temp4_V_2_8_fu_1014_p3;
reg   [31:0] temp4_V_2_2_fu_116;
wire   [31:0] temp4_V_2_7_fu_1006_p3;
reg   [31:0] temp4_V_2_3_fu_120;
wire   [31:0] temp4_V_2_fu_998_p3;
wire    ap_block_pp0_stage0_01001;
wire  signed [31:0] mul_ln1273_fu_215_p0;
wire   [31:0] mul_ln1273_fu_215_p1;
wire   [31:0] zext_ln377_fu_285_p1;
wire   [31:0] add_ln377_fu_288_p2;
wire   [0:0] tmp_4_fu_293_p3;
wire   [0:0] xor_ln896_fu_301_p2;
wire   [0:0] and_ln378_fu_307_p2;
wire   [0:0] icmp_ln1019_1_fu_317_p2;
wire   [0:0] icmp_ln878_fu_322_p2;
wire   [0:0] tmp_5_fu_335_p3;
wire   [0:0] icmp_ln1019_fu_312_p2;
wire   [0:0] xor_ln890_fu_342_p2;
wire   [0:0] and_ln890_fu_348_p2;
wire   [0:0] select_ln888_fu_327_p3;
wire   [0:0] xor_ln895_fu_368_p2;
wire   [0:0] or_ln895_fu_374_p2;
wire   [0:0] xor_ln895_1_fu_380_p2;
wire   [0:0] select_ln890_fu_354_p3;
wire   [0:0] xor_ln896_1_fu_391_p2;
wire   [0:0] and_ln891_fu_362_p2;
wire   [0:0] or_ln896_fu_397_p2;
wire   [0:0] xor_ln896_2_fu_403_p2;
wire   [0:0] and_ln895_fu_385_p2;
wire   [0:0] and_ln896_fu_409_p2;
wire  signed [31:0] mul_ln1273_1_fu_423_p0;
wire   [31:0] mul_ln1273_1_fu_423_p1;
wire   [0:0] or_ln346_fu_414_p2;
wire   [31:0] select_ln346_fu_428_p3;
wire  signed [47:0] shl_ln_fu_471_p3;
wire  signed [64:0] sext_ln813_4_fu_478_p1;
wire  signed [64:0] sext_ln813_fu_482_p1;
wire  signed [48:0] sext_ln1347_fu_485_p1;
wire   [64:0] add_ln1347_fu_489_p2;
wire   [47:0] add_ln810_1_fu_500_p2;
wire   [31:0] zext_ln377_1_fu_531_p1;
wire   [31:0] trunc_ln818_1_fu_513_p4;
wire   [31:0] add_ln377_1_fu_534_p2;
wire   [0:0] tmp_13_fu_540_p3;
wire   [0:0] tmp_11_fu_523_p3;
wire   [0:0] xor_ln896_3_fu_548_p2;
wire   [15:0] tmp_5_s_fu_560_p4;
wire   [16:0] tmp_6_s_fu_576_p4;
wire   [0:0] and_ln378_1_fu_554_p2;
wire   [0:0] icmp_ln1019_3_fu_586_p2;
wire   [0:0] icmp_ln878_1_fu_592_p2;
wire   [48:0] add_ln810_fu_495_p2;
wire   [0:0] tmp_14_fu_606_p3;
wire   [0:0] icmp_ln1019_2_fu_570_p2;
wire   [0:0] xor_ln890_1_fu_614_p2;
wire   [0:0] and_ln890_1_fu_620_p2;
wire   [0:0] select_ln888_1_fu_598_p3;
wire   [0:0] xor_ln895_2_fu_640_p2;
wire   [0:0] tmp_10_fu_505_p3;
wire   [0:0] or_ln895_1_fu_646_p2;
wire   [0:0] xor_ln895_3_fu_652_p2;
wire   [0:0] select_ln890_1_fu_626_p3;
wire   [0:0] xor_ln896_4_fu_664_p2;
wire   [0:0] and_ln891_1_fu_634_p2;
wire   [0:0] or_ln896_1_fu_670_p2;
wire   [0:0] xor_ln896_5_fu_676_p2;
wire   [0:0] and_ln895_1_fu_658_p2;
wire   [0:0] and_ln896_1_fu_682_p2;
wire  signed [31:0] mul_ln1273_2_fu_697_p0;
wire   [31:0] mul_ln1273_2_fu_697_p1;
wire   [0:0] or_ln346_1_fu_688_p2;
wire   [31:0] select_ln346_2_fu_702_p3;
wire  signed [47:0] shl_ln838_1_fu_743_p3;
wire  signed [64:0] sext_ln813_5_fu_750_p1;
wire  signed [64:0] sext_ln813_3_fu_754_p1;
wire  signed [48:0] sext_ln1347_1_fu_757_p1;
wire   [64:0] add_ln1347_1_fu_761_p2;
wire   [47:0] add_ln810_3_fu_772_p2;
wire   [31:0] zext_ln377_2_fu_803_p1;
wire   [31:0] trunc_ln818_2_fu_785_p4;
wire   [31:0] add_ln377_2_fu_806_p2;
wire   [0:0] tmp_18_fu_812_p3;
wire   [0:0] tmp_16_fu_795_p3;
wire   [0:0] xor_ln896_6_fu_820_p2;
wire   [15:0] tmp_5_1_fu_832_p4;
wire   [16:0] tmp_6_1_fu_848_p4;
wire   [0:0] and_ln378_2_fu_826_p2;
wire   [0:0] icmp_ln1019_5_fu_858_p2;
wire   [0:0] icmp_ln878_2_fu_864_p2;
wire   [48:0] add_ln810_2_fu_767_p2;
wire   [0:0] tmp_19_fu_878_p3;
wire   [0:0] icmp_ln1019_4_fu_842_p2;
wire   [0:0] xor_ln890_2_fu_886_p2;
wire   [0:0] and_ln890_2_fu_892_p2;
wire   [0:0] select_ln888_2_fu_870_p3;
wire   [0:0] xor_ln895_4_fu_912_p2;
wire   [0:0] tmp_15_fu_777_p3;
wire   [0:0] or_ln895_2_fu_918_p2;
wire   [0:0] xor_ln895_5_fu_924_p2;
wire   [0:0] select_ln890_2_fu_898_p3;
wire   [0:0] xor_ln896_7_fu_936_p2;
wire   [0:0] and_ln891_2_fu_906_p2;
wire   [0:0] or_ln896_2_fu_942_p2;
wire   [0:0] xor_ln896_8_fu_948_p2;
wire   [0:0] and_ln895_2_fu_930_p2;
wire   [0:0] and_ln896_2_fu_954_p2;
wire   [0:0] or_ln346_2_fu_968_p2;
wire   [31:0] select_ln346_4_fu_960_p3;
wire   [0:0] icmp_ln1420_fu_982_p2;
wire   [0:0] icmp_ln1420_1_fu_987_p2;
wire   [0:0] or_ln1420_fu_992_p2;
wire   [31:0] temp4_V_2_9_fu_974_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire   [63:0] mul_ln1273_1_fu_423_p10;
wire   [63:0] mul_ln1273_2_fu_697_p10;
wire   [63:0] mul_ln1273_fu_215_p10;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_done_reg = 1'b0;
end

estimador_func_mux_32_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_32_32_1_1_U15(
    .din0(32'd36798),
    .din1(32'd996),
    .din2(32'd0),
    .din3(ap_sig_allocacmp_i),
    .dout(tmp_fu_195_p5)
);

estimador_func_mul_32s_32ns_64_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
mul_32s_32ns_64_1_1_U16(
    .din0(mul_ln1273_fu_215_p0),
    .din1(mul_ln1273_fu_215_p1),
    .dout(mul_ln1273_fu_215_p2)
);

estimador_func_mux_32_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_32_32_1_1_U17(
    .din0(32'd0),
    .din1(32'd65536),
    .din2(32'd0),
    .din3(i_reg_1092),
    .dout(tmp_6_fu_274_p5)
);

estimador_func_mul_32s_32ns_64_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
mul_32s_32ns_64_1_1_U18(
    .din0(mul_ln1273_1_fu_423_p0),
    .din1(mul_ln1273_1_fu_423_p1),
    .dout(mul_ln1273_1_fu_423_p2)
);

estimador_func_mux_32_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_32_32_1_1_U19(
    .din0(32'd44818),
    .din1(32'd491),
    .din2(32'd65536),
    .din3(i_reg_1092_pp0_iter1_reg),
    .dout(tmp_9_fu_460_p5)
);

estimador_func_mul_32s_32ns_64_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
mul_32s_32ns_64_1_1_U20(
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln24_fu_183_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_2_fu_108 <= add_ln24_fu_189_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_2_fu_108 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_reg_1092 <= ap_sig_allocacmp_i;
        i_reg_1092_pp0_iter1_reg <= i_reg_1092;
        icmp_ln24_reg_1100 <= icmp_ln24_fu_183_p2;
        icmp_ln24_reg_1100_pp0_iter1_reg <= icmp_ln24_reg_1100;
        mul_ln1273_reg_1109 <= mul_ln1273_fu_215_p2;
        sext_ln1273_1_cast_reg_1082 <= sext_ln1273_1_cast_fu_167_p1;
        sext_ln1273_2_cast_reg_1077 <= sext_ln1273_2_cast_fu_163_p1;
        sext_ln1273_cast_reg_1087 <= sext_ln1273_cast_fu_171_p1;
        tmp_1_reg_1114 <= mul_ln1273_fu_215_p2[32'd63];
        tmp_2_reg_1125 <= mul_ln1273_fu_215_p2[32'd47];
        tmp_3_reg_1130 <= mul_ln1273_fu_215_p2[32'd15];
        tmp_6_reg_1146 <= tmp_6_fu_274_p5;
        tmp_7_reg_1135 <= {{mul_ln1273_fu_215_p2[63:49]}};
        tmp_8_reg_1140 <= {{mul_ln1273_fu_215_p2[63:48]}};
        trunc_ln2_reg_1120 <= {{mul_ln1273_fu_215_p2[47:16]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        i_reg_1092_pp0_iter2_reg <= i_reg_1092_pp0_iter1_reg;
        i_reg_1092_pp0_iter3_reg <= i_reg_1092_pp0_iter2_reg;
        icmp_ln24_reg_1100_pp0_iter2_reg <= icmp_ln24_reg_1100_pp0_iter1_reg;
        mul_ln1273_1_reg_1151 <= mul_ln1273_1_fu_423_p2;
        mul_ln1273_2_reg_1181 <= mul_ln1273_2_fu_697_p2;
        select_ln346_1_reg_1156 <= select_ln346_1_fu_436_p3;
        select_ln346_3_reg_1186 <= select_ln346_3_fu_710_p3;
        tmp_12_reg_1171 <= mul_ln1273_1_fu_423_p2[32'd15];
        tmp_17_reg_1201 <= mul_ln1273_2_fu_697_p2[32'd15];
        tmp_9_reg_1176 <= tmp_9_fu_460_p5;
        trunc_ln1347_1_reg_1166 <= trunc_ln1347_1_fu_448_p1;
        trunc_ln1347_2_reg_1191 <= trunc_ln1347_2_fu_718_p1;
        trunc_ln1347_3_reg_1196 <= trunc_ln1347_3_fu_722_p1;
        trunc_ln1347_reg_1161 <= trunc_ln1347_fu_444_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        temp4_V_2_1_fu_112 <= temp4_V_2_8_fu_1014_p3;
        temp4_V_2_2_fu_116 <= temp4_V_2_7_fu_1006_p3;
        temp4_V_2_3_fu_120 <= temp4_V_2_fu_998_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln24_fu_183_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_1104 <= tmp_fu_195_p5;
    end
end

always @ (*) begin
    if (((icmp_ln24_fu_183_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_i = i_2_fu_108;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln24_reg_1100_pp0_iter2_reg == 1'd1))) begin
        temp4_V_0_07_out_ap_vld = 1'b1;
    end else begin
        temp4_V_0_07_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln24_reg_1100_pp0_iter2_reg == 1'd1))) begin
        temp4_V_1_08_out_ap_vld = 1'b1;
    end else begin
        temp4_V_1_08_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln24_reg_1100_pp0_iter2_reg == 1'd1))) begin
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

assign add_ln1347_1_fu_761_p2 = ($signed(sext_ln813_5_fu_750_p1) + $signed(sext_ln813_3_fu_754_p1));

assign add_ln1347_fu_489_p2 = ($signed(sext_ln813_4_fu_478_p1) + $signed(sext_ln813_fu_482_p1));

assign add_ln24_fu_189_p2 = (ap_sig_allocacmp_i + 2'd1);

assign add_ln377_1_fu_534_p2 = (zext_ln377_1_fu_531_p1 + trunc_ln818_1_fu_513_p4);

assign add_ln377_2_fu_806_p2 = (zext_ln377_2_fu_803_p1 + trunc_ln818_2_fu_785_p4);

assign add_ln377_fu_288_p2 = (zext_ln377_fu_285_p1 + trunc_ln2_reg_1120);

assign add_ln810_1_fu_500_p2 = ($signed(shl_ln_fu_471_p3) + $signed(trunc_ln1347_reg_1161));

assign add_ln810_2_fu_767_p2 = ($signed(sext_ln1347_1_fu_757_p1) + $signed(trunc_ln1347_3_reg_1196));

assign add_ln810_3_fu_772_p2 = ($signed(shl_ln838_1_fu_743_p3) + $signed(trunc_ln1347_2_reg_1191));

assign add_ln810_fu_495_p2 = ($signed(sext_ln1347_fu_485_p1) + $signed(trunc_ln1347_1_reg_1166));

assign and_ln378_1_fu_554_p2 = (xor_ln896_3_fu_548_p2 & tmp_11_fu_523_p3);

assign and_ln378_2_fu_826_p2 = (xor_ln896_6_fu_820_p2 & tmp_16_fu_795_p3);

assign and_ln378_fu_307_p2 = (xor_ln896_fu_301_p2 & tmp_2_reg_1125);

assign and_ln890_1_fu_620_p2 = (xor_ln890_1_fu_614_p2 & icmp_ln1019_2_fu_570_p2);

assign and_ln890_2_fu_892_p2 = (xor_ln890_2_fu_886_p2 & icmp_ln1019_4_fu_842_p2);

assign and_ln890_fu_348_p2 = (xor_ln890_fu_342_p2 & icmp_ln1019_fu_312_p2);

assign and_ln891_1_fu_634_p2 = (icmp_ln1019_3_fu_586_p2 & and_ln378_1_fu_554_p2);

assign and_ln891_2_fu_906_p2 = (icmp_ln1019_5_fu_858_p2 & and_ln378_2_fu_826_p2);

assign and_ln891_fu_362_p2 = (icmp_ln1019_1_fu_317_p2 & and_ln378_fu_307_p2);

assign and_ln895_1_fu_658_p2 = (xor_ln895_3_fu_652_p2 & or_ln895_1_fu_646_p2);

assign and_ln895_2_fu_930_p2 = (xor_ln895_5_fu_924_p2 & or_ln895_2_fu_918_p2);

assign and_ln895_fu_385_p2 = (xor_ln895_1_fu_380_p2 & or_ln895_fu_374_p2);

assign and_ln896_1_fu_682_p2 = (xor_ln896_5_fu_676_p2 & tmp_10_fu_505_p3);

assign and_ln896_2_fu_954_p2 = (xor_ln896_8_fu_948_p2 & tmp_15_fu_777_p3);

assign and_ln896_fu_409_p2 = (xor_ln896_2_fu_403_p2 & tmp_1_reg_1114);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln1019_1_fu_317_p2 = ((tmp_8_reg_1140 == 16'd65535) ? 1'b1 : 1'b0);

assign icmp_ln1019_2_fu_570_p2 = ((tmp_5_s_fu_560_p4 == 16'd65535) ? 1'b1 : 1'b0);

assign icmp_ln1019_3_fu_586_p2 = ((tmp_6_s_fu_576_p4 == 17'd131071) ? 1'b1 : 1'b0);

assign icmp_ln1019_4_fu_842_p2 = ((tmp_5_1_fu_832_p4 == 16'd65535) ? 1'b1 : 1'b0);

assign icmp_ln1019_5_fu_858_p2 = ((tmp_6_1_fu_848_p4 == 17'd131071) ? 1'b1 : 1'b0);

assign icmp_ln1019_fu_312_p2 = ((tmp_7_reg_1135 == 15'd32767) ? 1'b1 : 1'b0);

assign icmp_ln1420_1_fu_987_p2 = ((i_reg_1092_pp0_iter3_reg == 2'd1) ? 1'b1 : 1'b0);

assign icmp_ln1420_fu_982_p2 = ((i_reg_1092_pp0_iter3_reg == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln24_fu_183_p2 = ((ap_sig_allocacmp_i == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln878_1_fu_592_p2 = ((tmp_6_s_fu_576_p4 == 17'd0) ? 1'b1 : 1'b0);

assign icmp_ln878_2_fu_864_p2 = ((tmp_6_1_fu_848_p4 == 17'd0) ? 1'b1 : 1'b0);

assign icmp_ln878_fu_322_p2 = ((tmp_8_reg_1140 == 16'd0) ? 1'b1 : 1'b0);

assign mul_ln1273_1_fu_423_p0 = sext_ln1273_1_cast_reg_1082;

assign mul_ln1273_1_fu_423_p1 = mul_ln1273_1_fu_423_p10;

assign mul_ln1273_1_fu_423_p10 = tmp_6_reg_1146;

assign mul_ln1273_2_fu_697_p0 = sext_ln1273_2_cast_reg_1077;

assign mul_ln1273_2_fu_697_p1 = mul_ln1273_2_fu_697_p10;

assign mul_ln1273_2_fu_697_p10 = tmp_9_reg_1176;

assign mul_ln1273_fu_215_p0 = sext_ln1273_cast_reg_1087;

assign mul_ln1273_fu_215_p1 = mul_ln1273_fu_215_p10;

assign mul_ln1273_fu_215_p10 = tmp_reg_1104;

assign or_ln1420_fu_992_p2 = (icmp_ln1420_fu_982_p2 | icmp_ln1420_1_fu_987_p2);

assign or_ln346_1_fu_688_p2 = (and_ln896_1_fu_682_p2 | and_ln895_1_fu_658_p2);

assign or_ln346_2_fu_968_p2 = (and_ln896_2_fu_954_p2 | and_ln895_2_fu_930_p2);

assign or_ln346_fu_414_p2 = (and_ln896_fu_409_p2 | and_ln895_fu_385_p2);

assign or_ln895_1_fu_646_p2 = (xor_ln895_2_fu_640_p2 | tmp_13_fu_540_p3);

assign or_ln895_2_fu_918_p2 = (xor_ln895_4_fu_912_p2 | tmp_18_fu_812_p3);

assign or_ln895_fu_374_p2 = (xor_ln895_fu_368_p2 | tmp_4_fu_293_p3);

assign or_ln896_1_fu_670_p2 = (xor_ln896_4_fu_664_p2 | xor_ln896_3_fu_548_p2);

assign or_ln896_2_fu_942_p2 = (xor_ln896_7_fu_936_p2 | xor_ln896_6_fu_820_p2);

assign or_ln896_fu_397_p2 = (xor_ln896_fu_301_p2 | xor_ln896_1_fu_391_p2);

assign select_ln346_1_fu_436_p3 = ((or_ln346_fu_414_p2[0:0] == 1'b1) ? select_ln346_fu_428_p3 : add_ln377_fu_288_p2);

assign select_ln346_2_fu_702_p3 = ((and_ln895_1_fu_658_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_3_fu_710_p3 = ((or_ln346_1_fu_688_p2[0:0] == 1'b1) ? select_ln346_2_fu_702_p3 : add_ln377_1_fu_534_p2);

assign select_ln346_4_fu_960_p3 = ((and_ln895_2_fu_930_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_fu_428_p3 = ((and_ln895_fu_385_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln888_1_fu_598_p3 = ((and_ln378_1_fu_554_p2[0:0] == 1'b1) ? icmp_ln1019_3_fu_586_p2 : icmp_ln878_1_fu_592_p2);

assign select_ln888_2_fu_870_p3 = ((and_ln378_2_fu_826_p2[0:0] == 1'b1) ? icmp_ln1019_5_fu_858_p2 : icmp_ln878_2_fu_864_p2);

assign select_ln888_fu_327_p3 = ((and_ln378_fu_307_p2[0:0] == 1'b1) ? icmp_ln1019_1_fu_317_p2 : icmp_ln878_fu_322_p2);

assign select_ln890_1_fu_626_p3 = ((and_ln378_1_fu_554_p2[0:0] == 1'b1) ? and_ln890_1_fu_620_p2 : icmp_ln1019_3_fu_586_p2);

assign select_ln890_2_fu_898_p3 = ((and_ln378_2_fu_826_p2[0:0] == 1'b1) ? and_ln890_2_fu_892_p2 : icmp_ln1019_5_fu_858_p2);

assign select_ln890_fu_354_p3 = ((and_ln378_fu_307_p2[0:0] == 1'b1) ? and_ln890_fu_348_p2 : icmp_ln1019_1_fu_317_p2);

assign sext_ln1273_1_cast_fu_167_p1 = $signed(sext_ln1273_1);

assign sext_ln1273_2_cast_fu_163_p1 = $signed(sext_ln1273_2);

assign sext_ln1273_cast_fu_171_p1 = $signed(sext_ln1273);

assign sext_ln1347_1_fu_757_p1 = shl_ln838_1_fu_743_p3;

assign sext_ln1347_fu_485_p1 = shl_ln_fu_471_p3;

assign sext_ln813_3_fu_754_p1 = mul_ln1273_2_reg_1181;

assign sext_ln813_4_fu_478_p1 = shl_ln_fu_471_p3;

assign sext_ln813_5_fu_750_p1 = shl_ln838_1_fu_743_p3;

assign sext_ln813_fu_482_p1 = mul_ln1273_1_reg_1151;

assign shl_ln838_1_fu_743_p3 = {{select_ln346_3_reg_1186}, {16'd0}};

assign shl_ln_fu_471_p3 = {{select_ln346_1_reg_1156}, {16'd0}};

assign temp4_V_0_07_out = temp4_V_2_1_fu_112;

assign temp4_V_1_08_out = temp4_V_2_2_fu_116;

assign temp4_V_2_09_out = temp4_V_2_3_fu_120;

assign temp4_V_2_7_fu_1006_p3 = ((icmp_ln1420_1_fu_987_p2[0:0] == 1'b1) ? temp4_V_2_9_fu_974_p3 : temp4_V_2_2_fu_116);

assign temp4_V_2_8_fu_1014_p3 = ((icmp_ln1420_fu_982_p2[0:0] == 1'b1) ? temp4_V_2_9_fu_974_p3 : temp4_V_2_1_fu_112);

assign temp4_V_2_9_fu_974_p3 = ((or_ln346_2_fu_968_p2[0:0] == 1'b1) ? select_ln346_4_fu_960_p3 : add_ln377_2_fu_806_p2);

assign temp4_V_2_fu_998_p3 = ((or_ln1420_fu_992_p2[0:0] == 1'b1) ? temp4_V_2_3_fu_120 : temp4_V_2_9_fu_974_p3);

assign tmp_10_fu_505_p3 = add_ln1347_fu_489_p2[32'd64];

assign tmp_11_fu_523_p3 = add_ln810_1_fu_500_p2[32'd47];

assign tmp_13_fu_540_p3 = add_ln377_1_fu_534_p2[32'd31];

assign tmp_14_fu_606_p3 = add_ln810_fu_495_p2[32'd48];

assign tmp_15_fu_777_p3 = add_ln1347_1_fu_761_p2[32'd64];

assign tmp_16_fu_795_p3 = add_ln810_3_fu_772_p2[32'd47];

assign tmp_18_fu_812_p3 = add_ln377_2_fu_806_p2[32'd31];

assign tmp_19_fu_878_p3 = add_ln810_2_fu_767_p2[32'd48];

assign tmp_4_fu_293_p3 = add_ln377_fu_288_p2[32'd31];

assign tmp_5_1_fu_832_p4 = {{add_ln1347_1_fu_761_p2[64:49]}};

assign tmp_5_fu_335_p3 = mul_ln1273_reg_1109[32'd48];

assign tmp_5_s_fu_560_p4 = {{add_ln1347_fu_489_p2[64:49]}};

assign tmp_6_1_fu_848_p4 = {{add_ln1347_1_fu_761_p2[64:48]}};

assign tmp_6_s_fu_576_p4 = {{add_ln1347_fu_489_p2[64:48]}};

assign trunc_ln1347_1_fu_448_p1 = mul_ln1273_1_fu_423_p2[48:0];

assign trunc_ln1347_2_fu_718_p1 = mul_ln1273_2_fu_697_p2[47:0];

assign trunc_ln1347_3_fu_722_p1 = mul_ln1273_2_fu_697_p2[48:0];

assign trunc_ln1347_fu_444_p1 = mul_ln1273_1_fu_423_p2[47:0];

assign trunc_ln818_1_fu_513_p4 = {{add_ln810_1_fu_500_p2[47:16]}};

assign trunc_ln818_2_fu_785_p4 = {{add_ln810_3_fu_772_p2[47:16]}};

assign xor_ln890_1_fu_614_p2 = (tmp_14_fu_606_p3 ^ 1'd1);

assign xor_ln890_2_fu_886_p2 = (tmp_19_fu_878_p3 ^ 1'd1);

assign xor_ln890_fu_342_p2 = (tmp_5_fu_335_p3 ^ 1'd1);

assign xor_ln895_1_fu_380_p2 = (tmp_1_reg_1114 ^ 1'd1);

assign xor_ln895_2_fu_640_p2 = (select_ln888_1_fu_598_p3 ^ 1'd1);

assign xor_ln895_3_fu_652_p2 = (tmp_10_fu_505_p3 ^ 1'd1);

assign xor_ln895_4_fu_912_p2 = (select_ln888_2_fu_870_p3 ^ 1'd1);

assign xor_ln895_5_fu_924_p2 = (tmp_15_fu_777_p3 ^ 1'd1);

assign xor_ln895_fu_368_p2 = (select_ln888_fu_327_p3 ^ 1'd1);

assign xor_ln896_1_fu_391_p2 = (select_ln890_fu_354_p3 ^ 1'd1);

assign xor_ln896_2_fu_403_p2 = (or_ln896_fu_397_p2 ^ and_ln891_fu_362_p2);

assign xor_ln896_3_fu_548_p2 = (tmp_13_fu_540_p3 ^ 1'd1);

assign xor_ln896_4_fu_664_p2 = (select_ln890_1_fu_626_p3 ^ 1'd1);

assign xor_ln896_5_fu_676_p2 = (or_ln896_1_fu_670_p2 ^ and_ln891_1_fu_634_p2);

assign xor_ln896_6_fu_820_p2 = (tmp_18_fu_812_p3 ^ 1'd1);

assign xor_ln896_7_fu_936_p2 = (select_ln890_2_fu_898_p3 ^ 1'd1);

assign xor_ln896_8_fu_948_p2 = (or_ln896_2_fu_942_p2 ^ and_ln891_2_fu_906_p2);

assign xor_ln896_fu_301_p2 = (tmp_4_fu_293_p3 ^ 1'd1);

assign zext_ln377_1_fu_531_p1 = tmp_12_reg_1171;

assign zext_ln377_2_fu_803_p1 = tmp_17_reg_1201;

assign zext_ln377_fu_285_p1 = tmp_3_reg_1130;

endmodule //estimador_func_estimador_func_Pipeline_mvmult_row2
