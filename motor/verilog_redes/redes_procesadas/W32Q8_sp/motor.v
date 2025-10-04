module motor (
    clk_1,
        ce_1,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        fc0_input_ap_vld,
        r, pos, vel,
        layer13_out,
        layer13_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   clk_1;
input   ce_1;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   fc0_input_ap_vld;
input [31:0] r;
input [31:0] pos;
input [31:0] vel;
output  [31:0] layer13_out;
output   layer13_out_ap_vld;

reg [95:0] fc0_input;
always @ (*) begin
    fc0_input = {r, pos, vel};
end

reg ap_done;
reg ap_idle;
reg ap_ready;
reg layer13_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_idle_pp0;
reg    fc0_input_ap_vld_in_sig;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_state9_pp0_stage0_iter8;
wire    ap_block_state10_pp0_stage0_iter9;
wire    ap_block_state11_pp0_stage0_iter10;
wire    ap_block_state12_pp0_stage0_iter11;
wire    ap_block_state13_pp0_stage0_iter12;
wire    ap_block_state14_pp0_stage0_iter13;
wire    ap_block_state15_pp0_stage0_iter14;
wire    ap_block_state16_pp0_stage0_iter15;
wire    ap_block_state17_pp0_stage0_iter16;
wire    ap_block_state18_pp0_stage0_iter17;
wire    ap_block_state19_pp0_stage0_iter18;
wire    ap_block_state20_pp0_stage0_iter19;
reg    ap_block_pp0_stage0_subdone;
reg   [95:0] fc0_input_preg;
reg   [95:0] fc0_input_in_sig;
reg    fc0_input_ap_vld_preg;
reg    fc0_input_blk_n;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
reg   [31:0] layer2_out_V_reg_210;
reg   [31:0] layer2_out_V_1_reg_215;
reg   [31:0] layer2_out_V_2_reg_220;
reg   [31:0] layer2_out_V_3_reg_225;
reg   [31:0] layer4_out_V_reg_230;
reg   [31:0] layer4_out_V_1_reg_235;
reg   [31:0] layer4_out_V_2_reg_240;
reg   [31:0] layer4_out_V_3_reg_245;
reg   [31:0] layer5_out_V_reg_250;
reg   [31:0] layer5_out_V_1_reg_255;
reg   [31:0] layer5_out_V_2_reg_260;
reg   [31:0] layer5_out_V_3_reg_265;
reg   [31:0] layer7_out_V_reg_270;
reg   [31:0] layer7_out_V_1_reg_275;
reg   [31:0] layer7_out_V_2_reg_280;
reg   [31:0] layer7_out_V_3_reg_285;
reg   [31:0] layer8_out_V_reg_290;
reg   [31:0] layer8_out_V_1_reg_295;
reg   [31:0] layer8_out_V_2_reg_300;
reg   [31:0] layer10_out_V_reg_305;
reg   [31:0] layer10_out_V_1_reg_310;
reg   [31:0] layer10_out_V_2_reg_315;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config11_s_fu_100_ap_return;
reg   [31:0] layer11_out_V_reg_320;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_0;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_1;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_2;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_3;
reg    grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_ce;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call7;
wire    ap_block_state2_pp0_stage0_iter1_ignore_call7;
wire    ap_block_state3_pp0_stage0_iter2_ignore_call7;
wire    ap_block_state4_pp0_stage0_iter3_ignore_call7;
wire    ap_block_state5_pp0_stage0_iter4_ignore_call7;
wire    ap_block_state6_pp0_stage0_iter5_ignore_call7;
wire    ap_block_state7_pp0_stage0_iter6_ignore_call7;
wire    ap_block_state8_pp0_stage0_iter7_ignore_call7;
wire    ap_block_state9_pp0_stage0_iter8_ignore_call7;
wire    ap_block_state10_pp0_stage0_iter9_ignore_call7;
wire    ap_block_state11_pp0_stage0_iter10_ignore_call7;
wire    ap_block_state12_pp0_stage0_iter11_ignore_call7;
wire    ap_block_state13_pp0_stage0_iter12_ignore_call7;
wire    ap_block_state14_pp0_stage0_iter13_ignore_call7;
wire    ap_block_state15_pp0_stage0_iter14_ignore_call7;
wire    ap_block_state16_pp0_stage0_iter15_ignore_call7;
wire    ap_block_state17_pp0_stage0_iter16_ignore_call7;
wire    ap_block_state18_pp0_stage0_iter17_ignore_call7;
wire    ap_block_state19_pp0_stage0_iter18_ignore_call7;
wire    ap_block_state20_pp0_stage0_iter19_ignore_call7;
reg    ap_block_pp0_stage0_11001_ignoreCallOp22;
wire    call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_ready;
wire   [31:0] call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_0;
wire   [31:0] call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_1;
wire   [31:0] call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_2;
wire   [31:0] call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_3;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_69_ap_return_0;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_69_ap_return_1;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_69_ap_return_2;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_69_ap_return_3;
reg    grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_69_ap_ce;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call17;
wire    ap_block_state2_pp0_stage0_iter1_ignore_call17;
wire    ap_block_state3_pp0_stage0_iter2_ignore_call17;
wire    ap_block_state4_pp0_stage0_iter3_ignore_call17;
wire    ap_block_state5_pp0_stage0_iter4_ignore_call17;
wire    ap_block_state6_pp0_stage0_iter5_ignore_call17;
wire    ap_block_state7_pp0_stage0_iter6_ignore_call17;
wire    ap_block_state8_pp0_stage0_iter7_ignore_call17;
wire    ap_block_state9_pp0_stage0_iter8_ignore_call17;
wire    ap_block_state10_pp0_stage0_iter9_ignore_call17;
wire    ap_block_state11_pp0_stage0_iter10_ignore_call17;
wire    ap_block_state12_pp0_stage0_iter11_ignore_call17;
wire    ap_block_state13_pp0_stage0_iter12_ignore_call17;
wire    ap_block_state14_pp0_stage0_iter13_ignore_call17;
wire    ap_block_state15_pp0_stage0_iter14_ignore_call17;
wire    ap_block_state16_pp0_stage0_iter15_ignore_call17;
wire    ap_block_state17_pp0_stage0_iter16_ignore_call17;
wire    ap_block_state18_pp0_stage0_iter17_ignore_call17;
wire    ap_block_state19_pp0_stage0_iter18_ignore_call17;
wire    ap_block_state20_pp0_stage0_iter19_ignore_call17;
reg    ap_block_pp0_stage0_11001_ignoreCallOp35;
wire    call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_77_ap_ready;
wire   [31:0] call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_77_ap_return_0;
wire   [31:0] call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_77_ap_return_1;
wire   [31:0] call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_77_ap_return_2;
wire   [31:0] call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_77_ap_return_3;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_85_ap_return_0;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_85_ap_return_1;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_85_ap_return_2;
reg    grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_85_ap_ce;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call27;
wire    ap_block_state2_pp0_stage0_iter1_ignore_call27;
wire    ap_block_state3_pp0_stage0_iter2_ignore_call27;
wire    ap_block_state4_pp0_stage0_iter3_ignore_call27;
wire    ap_block_state5_pp0_stage0_iter4_ignore_call27;
wire    ap_block_state6_pp0_stage0_iter5_ignore_call27;
wire    ap_block_state7_pp0_stage0_iter6_ignore_call27;
wire    ap_block_state8_pp0_stage0_iter7_ignore_call27;
wire    ap_block_state9_pp0_stage0_iter8_ignore_call27;
wire    ap_block_state10_pp0_stage0_iter9_ignore_call27;
wire    ap_block_state11_pp0_stage0_iter10_ignore_call27;
wire    ap_block_state12_pp0_stage0_iter11_ignore_call27;
wire    ap_block_state13_pp0_stage0_iter12_ignore_call27;
wire    ap_block_state14_pp0_stage0_iter13_ignore_call27;
wire    ap_block_state15_pp0_stage0_iter14_ignore_call27;
wire    ap_block_state16_pp0_stage0_iter15_ignore_call27;
wire    ap_block_state17_pp0_stage0_iter16_ignore_call27;
wire    ap_block_state18_pp0_stage0_iter17_ignore_call27;
wire    ap_block_state19_pp0_stage0_iter18_ignore_call27;
wire    ap_block_state20_pp0_stage0_iter19_ignore_call27;
reg    ap_block_pp0_stage0_11001_ignoreCallOp48;
wire    call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_93_ap_ready;
wire   [31:0] call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_93_ap_return_0;
wire   [31:0] call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_93_ap_return_1;
wire   [31:0] call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_93_ap_return_2;
reg    grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config11_s_fu_100_ap_ce;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call35;
wire    ap_block_state2_pp0_stage0_iter1_ignore_call35;
wire    ap_block_state3_pp0_stage0_iter2_ignore_call35;
wire    ap_block_state4_pp0_stage0_iter3_ignore_call35;
wire    ap_block_state5_pp0_stage0_iter4_ignore_call35;
wire    ap_block_state6_pp0_stage0_iter5_ignore_call35;
wire    ap_block_state7_pp0_stage0_iter6_ignore_call35;
wire    ap_block_state8_pp0_stage0_iter7_ignore_call35;
wire    ap_block_state9_pp0_stage0_iter8_ignore_call35;
wire    ap_block_state10_pp0_stage0_iter9_ignore_call35;
wire    ap_block_state11_pp0_stage0_iter10_ignore_call35;
wire    ap_block_state12_pp0_stage0_iter11_ignore_call35;
wire    ap_block_state13_pp0_stage0_iter12_ignore_call35;
wire    ap_block_state14_pp0_stage0_iter13_ignore_call35;
wire    ap_block_state15_pp0_stage0_iter14_ignore_call35;
wire    ap_block_state16_pp0_stage0_iter15_ignore_call35;
wire    ap_block_state17_pp0_stage0_iter16_ignore_call35;
wire    ap_block_state18_pp0_stage0_iter17_ignore_call35;
wire    ap_block_state19_pp0_stage0_iter18_ignore_call35;
wire    ap_block_state20_pp0_stage0_iter19_ignore_call35;
reg    ap_block_pp0_stage0_11001_ignoreCallOp59;
wire    call_ret6_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config13_s_fu_107_ap_ready;
wire   [30:0] call_ret6_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config13_s_fu_107_ap_return;
reg    ap_block_pp0_stage0_01001;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to18;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
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
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 fc0_input_preg = 96'd0;
#0 fc0_input_ap_vld_preg = 1'b0;
end

motor_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .p_read(fc0_input_in_sig),
    .ap_return_0(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_1),
    .ap_return_2(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_2),
    .ap_return_3(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_3),
    .ap_ce(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_ce)
);

motor_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61(
    .ap_ready(call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_ready),
    .p_read2(layer2_out_V_reg_210),
    .p_read4(layer2_out_V_1_reg_215),
    .p_read7(layer2_out_V_2_reg_220),
    .p_read8(layer2_out_V_3_reg_225),
    .ap_return_0(call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_0),
    .ap_return_1(call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_1),
    .ap_return_2(call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_2),
    .ap_return_3(call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_3)
);

motor_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_69(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .p_read(layer4_out_V_reg_230),
    .p_read1(layer4_out_V_1_reg_235),
    .p_read2(layer4_out_V_2_reg_240),
    .p_read3(layer4_out_V_3_reg_245),
    .ap_return_0(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_69_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_69_ap_return_1),
    .ap_return_2(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_69_ap_return_2),
    .ap_return_3(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_69_ap_return_3),
    .ap_ce(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_69_ap_ce)
);

motor_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_77(
    .ap_ready(call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_77_ap_ready),
    .p_read(layer5_out_V_reg_250),
    .p_read3(layer5_out_V_1_reg_255),
    .p_read4(layer5_out_V_2_reg_260),
    .p_read8(layer5_out_V_3_reg_265),
    .ap_return_0(call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_77_ap_return_0),
    .ap_return_1(call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_77_ap_return_1),
    .ap_return_2(call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_77_ap_return_2),
    .ap_return_3(call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_77_ap_return_3)
);

motor_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_85(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .p_read(layer7_out_V_reg_270),
    .p_read1(layer7_out_V_1_reg_275),
    .p_read2(layer7_out_V_2_reg_280),
    .p_read3(layer7_out_V_3_reg_285),
    .ap_return_0(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_85_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_85_ap_return_1),
    .ap_return_2(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_85_ap_return_2),
    .ap_ce(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_85_ap_ce)
);

motor_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_93(
    .ap_ready(call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_93_ap_ready),
    .p_read(layer8_out_V_reg_290),
    .p_read7(layer8_out_V_1_reg_295),
    .p_read8(layer8_out_V_2_reg_300),
    .ap_return_0(call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_93_ap_return_0),
    .ap_return_1(call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_93_ap_return_1),
    .ap_return_2(call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_93_ap_return_2)
);

motor_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config11_s grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config11_s_fu_100(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .p_read(layer10_out_V_reg_305),
    .p_read1(layer10_out_V_1_reg_310),
    .p_read2(layer10_out_V_2_reg_315),
    .ap_return(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config11_s_fu_100_ap_return),
    .ap_ce(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config11_s_fu_100_ap_ce)
);

motor_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config13_s call_ret6_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config13_s_fu_107(
    .ap_ready(call_ret6_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config13_s_fu_107_ap_ready),
    .p_read(layer11_out_V_reg_320),
    .ap_return(call_ret6_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config13_s_fu_107_ap_return)
);

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        fc0_input_ap_vld_preg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
            fc0_input_ap_vld_preg <= 1'b0;
        end else if ((~((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0)) & (fc0_input_ap_vld == 1'b1))) begin
            fc0_input_ap_vld_preg <= fc0_input_ap_vld;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        fc0_input_preg <= 96'd0;
    end else begin
        if ((~((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0)) & (fc0_input_ap_vld == 1'b1))) begin
            fc0_input_preg <= fc0_input;
        end
    end
end

always @ (posedge clk_1) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        layer10_out_V_1_reg_310 <= call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_93_ap_return_1;
        layer10_out_V_2_reg_315 <= call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_93_ap_return_2;
        layer10_out_V_reg_305 <= call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_93_ap_return_0;
        layer11_out_V_reg_320 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config11_s_fu_100_ap_return;
        layer2_out_V_1_reg_215 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_1;
        layer2_out_V_2_reg_220 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_2;
        layer2_out_V_3_reg_225 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_3;
        layer2_out_V_reg_210 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_0;
        layer4_out_V_1_reg_235 <= call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_1;
        layer4_out_V_2_reg_240 <= call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_2;
        layer4_out_V_3_reg_245 <= call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_3;
        layer4_out_V_reg_230 <= call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_0;
        layer5_out_V_1_reg_255 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_69_ap_return_1;
        layer5_out_V_2_reg_260 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_69_ap_return_2;
        layer5_out_V_3_reg_265 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_69_ap_return_3;
        layer5_out_V_reg_250 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_69_ap_return_0;
        layer7_out_V_1_reg_275 <= call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_77_ap_return_1;
        layer7_out_V_2_reg_280 <= call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_77_ap_return_2;
        layer7_out_V_3_reg_285 <= call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_77_ap_return_3;
        layer7_out_V_reg_270 <= call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_77_ap_return_0;
        layer8_out_V_1_reg_295 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_85_ap_return_1;
        layer8_out_V_2_reg_300 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_85_ap_return_2;
        layer8_out_V_reg_290 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_85_ap_return_0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter19 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to18 = 1'b1;
    end else begin
        ap_idle_pp0_0to18 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to18 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((fc0_input_ap_vld == 1'b1)) begin
        fc0_input_ap_vld_in_sig = fc0_input_ap_vld;
    end else begin
        fc0_input_ap_vld_in_sig = fc0_input_ap_vld_preg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        fc0_input_blk_n = fc0_input_ap_vld;
    end else begin
        fc0_input_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((fc0_input_ap_vld == 1'b1)) begin
        fc0_input_in_sig = fc0_input;
    end else begin
        fc0_input_in_sig = fc0_input_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp59))) begin
        grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config11_s_fu_100_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config11_s_fu_100_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp22))) begin
        grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp35))) begin
        grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_69_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_69_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp48))) begin
        grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_85_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_85_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter19 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        layer13_out_ap_vld = 1'b1;
    end else begin
        layer13_out_ap_vld = 1'b0;
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

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_start == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_start == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp22 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_start == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp35 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_start == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp48 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_start == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp59 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_start == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_start == 1'b1));
end

assign ap_block_state10_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter9_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter9_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter9_ignore_call35 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter9_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10_ignore_call35 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11_ignore_call35 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12_ignore_call35 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13_ignore_call35 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter14 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter14_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter14_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter14_ignore_call35 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter14_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter15 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter15_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter15_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter15_ignore_call35 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter15_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter16 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter16_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter16_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter16_ignore_call35 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter16_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage0_iter17 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage0_iter17_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage0_iter17_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage0_iter17_ignore_call35 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage0_iter17_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter18 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter18_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter18_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter18_ignore_call35 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter18_ignore_call7 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call17 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call27 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call35 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call7 = (fc0_input_ap_vld_in_sig == 1'b0);
end

assign ap_block_state20_pp0_stage0_iter19 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage0_iter19_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage0_iter19_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage0_iter19_ignore_call35 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage0_iter19_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1_ignore_call35 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2_ignore_call35 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3_ignore_call35 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4_ignore_call35 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5_ignore_call35 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6_ignore_call35 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7_ignore_call35 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8_ignore_call35 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign layer13_out = call_ret6_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config13_s_fu_107_ap_return;

endmodule //motor
