module mpc_red1 (
        clk_1,
		ce_1,
        ap_rst,
        ap_start2,
        ap_done,
        ap_idle,
        ap_ready,
        x0_input,
		x1_input,
        fc0_input_ap_vld,
        layer11_out,
        layer11_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;

input   clk_1;
input	ce_1;
input   ap_rst;
input   ap_start2;
output   ap_done;
output   ap_idle;
output   ap_ready;
input	[31:0] x0_input;
input	[31:0] x1_input;
input   fc0_input_ap_vld;
output  [31:0] layer11_out;
output   layer11_out_ap_vld;

reg ap_done;
reg ap_start3;
reg ap_start4;
reg ap_start;
reg clk_2 = 1'd0;
always @(posedge clk_1) begin
	clk_2 <= ~clk_2; // Toggle the output clock
	ap_start3 <= ap_start2;
	ap_start4 <= ap_start3;
	ap_start <= ap_start2 || ap_start3 || ap_start4;
end

reg [63:0] fc0_input;
always @ (*) begin
   fc0_input = {x0_input, x1_input};
end

//reg ap_done;
reg ap_idle;
reg ap_ready;
reg layer11_out_ap_vld;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_state4_pp0_stage3_iter0;
wire    ap_block_state8_pp0_stage3_iter1;
wire    ap_block_state12_pp0_stage3_iter2;
wire    ap_block_state16_pp0_stage3_iter3;
wire    ap_block_pp0_stage3_subdone;
reg   [63:0] fc0_input_preg;
reg   [63:0] fc0_input_in_sig;
reg    fc0_input_ap_vld_preg;
reg    fc0_input_ap_vld_in_sig;
reg    fc0_input_blk_n;
wire    ap_block_pp0_stage0;
reg   [31:0] layer4_out_V_reg_348;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] layer4_out_V_1_reg_353;
reg   [31:0] layer4_out_V_2_reg_358;
reg   [31:0] layer4_out_V_3_reg_363;
reg   [31:0] layer4_out_V_4_reg_368;
reg   [31:0] layer4_out_V_5_reg_373;
reg   [31:0] layer4_out_V_6_reg_378;
reg   [31:0] layer4_out_V_7_reg_383;
reg   [31:0] layer5_out_V_reg_388;
reg   [31:0] layer5_out_V_1_reg_393;
reg   [31:0] layer5_out_V_2_reg_398;
reg   [31:0] layer5_out_V_3_reg_403;
reg   [31:0] layer5_out_V_4_reg_408;
reg   [31:0] layer5_out_V_5_reg_413;
reg   [31:0] layer5_out_V_6_reg_418;
reg   [31:0] layer5_out_V_7_reg_423;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state5_pp0_stage0_iter1;
wire    ap_block_state9_pp0_stage0_iter2;
wire    ap_block_state13_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_11001;
reg   [31:0] layer8_out_V_reg_458;
reg   [31:0] layer8_out_V_1_reg_463;
reg   [31:0] layer8_out_V_2_reg_468;
reg   [31:0] layer8_out_V_3_reg_473;
reg   [31:0] layer8_out_V_4_reg_478;
reg   [31:0] layer8_out_V_5_reg_483;
reg   [31:0] layer8_out_V_6_reg_488;
reg   [31:0] layer8_out_V_7_reg_493;
reg    ap_enable_reg_pp0_iter0_reg;
wire    grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_start;
wire    grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_done;
wire    grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_idle;
wire    grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_ready;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_return_0;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_return_1;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_return_2;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_return_3;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_return_4;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_return_5;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_return_6;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_return_7;
reg    grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_ce;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call7;
wire    ap_block_state5_pp0_stage0_iter1_ignore_call7;
wire    ap_block_state9_pp0_stage0_iter2_ignore_call7;
wire    ap_block_state13_pp0_stage0_iter3_ignore_call7;
reg    ap_block_pp0_stage0_11001_ignoreCallOp18;
wire    ap_block_state2_pp0_stage1_iter0_ignore_call7;
wire    ap_block_state6_pp0_stage1_iter1_ignore_call7;
wire    ap_block_state10_pp0_stage1_iter2_ignore_call7;
wire    ap_block_state14_pp0_stage1_iter3_ignore_call7;
wire    ap_block_pp0_stage1_11001_ignoreCallOp19;
wire    ap_block_state3_pp0_stage2_iter0_ignore_call7;
wire    ap_block_state7_pp0_stage2_iter1_ignore_call7;
wire    ap_block_state11_pp0_stage2_iter2_ignore_call7;
wire    ap_block_state15_pp0_stage2_iter3_ignore_call7;
wire    ap_block_pp0_stage2_11001_ignoreCallOp20;
wire    ap_block_state4_pp0_stage3_iter0_ignore_call7;
wire    ap_block_state8_pp0_stage3_iter1_ignore_call7;
wire    ap_block_state12_pp0_stage3_iter2_ignore_call7;
wire    ap_block_state16_pp0_stage3_iter3_ignore_call7;
wire    ap_block_pp0_stage3_11001_ignoreCallOp21;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_CS_fsm_pp0_stage2;
wire    call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59_ap_ready;
wire   [31:0] call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59_ap_return_0;
wire   [31:0] call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59_ap_return_1;
wire   [31:0] call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59_ap_return_2;
wire   [31:0] call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59_ap_return_3;
wire   [31:0] call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59_ap_return_4;
wire   [31:0] call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59_ap_return_5;
wire   [31:0] call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59_ap_return_6;
wire   [31:0] call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59_ap_return_7;
wire    grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_start;
wire    grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_done;
wire    grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_idle;
wire    grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_ready;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_return_0;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_return_1;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_return_2;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_return_3;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_return_4;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_return_5;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_return_6;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_return_7;
reg    grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_ce;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call25;
wire    ap_block_state5_pp0_stage0_iter1_ignore_call25;
wire    ap_block_state9_pp0_stage0_iter2_ignore_call25;
wire    ap_block_state13_pp0_stage0_iter3_ignore_call25;
reg    ap_block_pp0_stage0_11001_ignoreCallOp39;
wire    ap_block_state2_pp0_stage1_iter0_ignore_call25;
wire    ap_block_state6_pp0_stage1_iter1_ignore_call25;
wire    ap_block_state10_pp0_stage1_iter2_ignore_call25;
wire    ap_block_state14_pp0_stage1_iter3_ignore_call25;
wire    ap_block_pp0_stage1_11001_ignoreCallOp40;
wire    ap_block_state3_pp0_stage2_iter0_ignore_call25;
wire    ap_block_state7_pp0_stage2_iter1_ignore_call25;
wire    ap_block_state11_pp0_stage2_iter2_ignore_call25;
wire    ap_block_state15_pp0_stage2_iter3_ignore_call25;
wire    ap_block_pp0_stage2_11001_ignoreCallOp41;
wire    ap_block_state4_pp0_stage3_iter0_ignore_call25;
wire    ap_block_state8_pp0_stage3_iter1_ignore_call25;
wire    ap_block_state12_pp0_stage3_iter2_ignore_call25;
wire    ap_block_state16_pp0_stage3_iter3_ignore_call25;
wire    ap_block_pp0_stage3_11001_ignoreCallOp42;
wire    call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83_ap_ready;
wire   [31:0] call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83_ap_return_0;
wire   [31:0] call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83_ap_return_1;
wire   [31:0] call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83_ap_return_2;
wire   [31:0] call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83_ap_return_3;
wire   [31:0] call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83_ap_return_4;
wire   [31:0] call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83_ap_return_5;
wire   [31:0] call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83_ap_return_6;
wire   [31:0] call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83_ap_return_7;
wire    grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_start;
wire    grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_done;
wire    grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_idle;
wire    grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_ready;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_return_0;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_return_1;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_return_2;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_return_3;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_return_4;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_return_5;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_return_6;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_return_7;
reg    grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_ce;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call43;
wire    ap_block_state5_pp0_stage0_iter1_ignore_call43;
wire    ap_block_state9_pp0_stage0_iter2_ignore_call43;
wire    ap_block_state13_pp0_stage0_iter3_ignore_call43;
reg    ap_block_pp0_stage0_11001_ignoreCallOp60;
wire    ap_block_state2_pp0_stage1_iter0_ignore_call43;
wire    ap_block_state6_pp0_stage1_iter1_ignore_call43;
wire    ap_block_state10_pp0_stage1_iter2_ignore_call43;
wire    ap_block_state14_pp0_stage1_iter3_ignore_call43;
wire    ap_block_pp0_stage1_11001_ignoreCallOp61;
wire    ap_block_state3_pp0_stage2_iter0_ignore_call43;
wire    ap_block_state7_pp0_stage2_iter1_ignore_call43;
wire    ap_block_state11_pp0_stage2_iter2_ignore_call43;
wire    ap_block_state15_pp0_stage2_iter3_ignore_call43;
wire    ap_block_pp0_stage2_11001_ignoreCallOp62;
wire    ap_block_state4_pp0_stage3_iter0_ignore_call43;
wire    ap_block_state8_pp0_stage3_iter1_ignore_call43;
wire    ap_block_state12_pp0_stage3_iter2_ignore_call43;
wire    ap_block_state16_pp0_stage3_iter3_ignore_call43;
wire    ap_block_pp0_stage3_11001_ignoreCallOp63;
wire    call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107_ap_ready;
wire   [31:0] call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107_ap_return_0;
wire   [31:0] call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107_ap_return_1;
wire   [31:0] call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107_ap_return_2;
wire   [31:0] call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107_ap_return_3;
wire   [31:0] call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107_ap_return_4;
wire   [31:0] call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107_ap_return_5;
wire   [31:0] call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107_ap_return_6;
wire   [31:0] call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107_ap_return_7;
wire    grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config11_s_fu_119_ap_start;
wire    grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config11_s_fu_119_ap_done;
wire    grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config11_s_fu_119_ap_idle;
wire    grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config11_s_fu_119_ap_ready;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config11_s_fu_119_ap_return;
reg    grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config11_s_fu_119_ap_ce;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call61;
wire    ap_block_state5_pp0_stage0_iter1_ignore_call61;
wire    ap_block_state9_pp0_stage0_iter2_ignore_call61;
wire    ap_block_state13_pp0_stage0_iter3_ignore_call61;
reg    ap_block_pp0_stage0_11001_ignoreCallOp81;
wire    ap_block_state2_pp0_stage1_iter0_ignore_call61;
wire    ap_block_state6_pp0_stage1_iter1_ignore_call61;
wire    ap_block_state10_pp0_stage1_iter2_ignore_call61;
wire    ap_block_state14_pp0_stage1_iter3_ignore_call61;
wire    ap_block_pp0_stage1_11001_ignoreCallOp82;
wire    ap_block_state3_pp0_stage2_iter0_ignore_call61;
wire    ap_block_state7_pp0_stage2_iter1_ignore_call61;
wire    ap_block_state11_pp0_stage2_iter2_ignore_call61;
wire    ap_block_state15_pp0_stage2_iter3_ignore_call61;
wire    ap_block_pp0_stage2_11001_ignoreCallOp83;
wire    ap_block_state4_pp0_stage3_iter0_ignore_call61;
wire    ap_block_state8_pp0_stage3_iter1_ignore_call61;
wire    ap_block_state12_pp0_stage3_iter2_ignore_call61;
wire    ap_block_state16_pp0_stage3_iter3_ignore_call61;
wire    ap_block_pp0_stage3_11001_ignoreCallOp90;
reg    grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_start_reg;
reg    grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_onepulse_ap_start;
wire    ap_block_pp0_stage3;
reg    grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_start_reg;
reg    grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_start_reg;
reg    grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config11_s_fu_119_ap_start_reg;
wire    ap_block_pp0_stage3_01001;
reg   [3:0] ap_NS_fsm;
reg    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state6_pp0_stage1_iter1;
wire    ap_block_state10_pp0_stage1_iter2;
wire    ap_block_state14_pp0_stage1_iter3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_state3_pp0_stage2_iter0;
wire    ap_block_state7_pp0_stage2_iter1;
wire    ap_block_state11_pp0_stage2_iter2;
wire    ap_block_state15_pp0_stage2_iter3;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage2_11001;
reg    ap_idle_pp0_0to2;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 fc0_input_preg = 64'd0;
#0 fc0_input_ap_vld_preg = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_start_reg = 1'b0;
#0 grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_start_reg = 1'b0;
#0 grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_start_reg = 1'b0;
#0 grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config11_s_fu_119_ap_start_reg = 1'b0;
end

mpc_red1_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53(
    .ap_clk(clk_2),
    .ap_rst(ap_rst),
    .ap_start(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_start),
    .ap_done(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_done),
    .ap_idle(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_idle),
    .ap_ready(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_ready),
    .p_read(fc0_input_in_sig),
    .ap_return_0(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_return_1),
    .ap_return_2(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_return_2),
    .ap_return_3(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_return_3),
    .ap_return_4(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_return_4),
    .ap_return_5(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_return_5),
    .ap_return_6(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_return_6),
    .ap_return_7(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_return_7),
    .ap_ce(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_ce)
);

mpc_red1_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59(
    .ap_ready(call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59_ap_ready),
    .p_read(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_return_0),
    .p_read1(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_return_1),
    .p_read2(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_return_2),
    .p_read3(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_return_3),
    .p_read4(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_return_4),
    .p_read5(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_return_5),
    .p_read6(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_return_6),
    .p_read7(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_return_7),
    .ap_return_0(call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59_ap_return_0),
    .ap_return_1(call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59_ap_return_1),
    .ap_return_2(call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59_ap_return_2),
    .ap_return_3(call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59_ap_return_3),
    .ap_return_4(call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59_ap_return_4),
    .ap_return_5(call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59_ap_return_5),
    .ap_return_6(call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59_ap_return_6),
    .ap_return_7(call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59_ap_return_7)
);

mpc_red1_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71(
    .ap_clk(clk_2),
    .ap_rst(ap_rst),
    .ap_start(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_start),
    .ap_done(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_done),
    .ap_idle(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_idle),
    .ap_ready(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_ready),
    .p_read(layer4_out_V_reg_348),
    .p_read1(layer4_out_V_1_reg_353),
    .p_read2(layer4_out_V_2_reg_358),
    .p_read3(layer4_out_V_3_reg_363),
    .p_read4(layer4_out_V_4_reg_368),
    .p_read5(layer4_out_V_5_reg_373),
    .p_read6(layer4_out_V_6_reg_378),
    .p_read7(layer4_out_V_7_reg_383),
    .ap_return_0(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_return_1),
    .ap_return_2(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_return_2),
    .ap_return_3(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_return_3),
    .ap_return_4(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_return_4),
    .ap_return_5(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_return_5),
    .ap_return_6(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_return_6),
    .ap_return_7(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_return_7),
    .ap_ce(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_ce)
);

mpc_red1_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83(
    .ap_ready(call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83_ap_ready),
    .p_read(layer5_out_V_reg_388),
    .p_read1(layer5_out_V_1_reg_393),
    .p_read2(layer5_out_V_2_reg_398),
    .p_read3(layer5_out_V_3_reg_403),
    .p_read4(layer5_out_V_4_reg_408),
    .p_read5(layer5_out_V_5_reg_413),
    .p_read6(layer5_out_V_6_reg_418),
    .p_read7(layer5_out_V_7_reg_423),
    .ap_return_0(call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83_ap_return_0),
    .ap_return_1(call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83_ap_return_1),
    .ap_return_2(call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83_ap_return_2),
    .ap_return_3(call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83_ap_return_3),
    .ap_return_4(call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83_ap_return_4),
    .ap_return_5(call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83_ap_return_5),
    .ap_return_6(call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83_ap_return_6),
    .ap_return_7(call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83_ap_return_7)
);

mpc_red1_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95(
    .ap_clk(clk_2),
    .ap_rst(ap_rst),
    .ap_start(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_start),
    .ap_done(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_done),
    .ap_idle(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_idle),
    .ap_ready(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_ready),
    .p_read(call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83_ap_return_0),
    .p_read1(call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83_ap_return_1),
    .p_read2(call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83_ap_return_2),
    .p_read3(call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83_ap_return_3),
    .p_read4(call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83_ap_return_4),
    .p_read5(call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83_ap_return_5),
    .p_read6(call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83_ap_return_6),
    .p_read7(call_ret_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config7_s_fu_83_ap_return_7),
    .ap_return_0(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_return_1),
    .ap_return_2(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_return_2),
    .ap_return_3(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_return_3),
    .ap_return_4(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_return_4),
    .ap_return_5(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_return_5),
    .ap_return_6(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_return_6),
    .ap_return_7(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_return_7),
    .ap_ce(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_ce)
);

mpc_red1_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107(
    .ap_ready(call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107_ap_ready),
    .p_read(layer8_out_V_reg_458),
    .p_read1(layer8_out_V_1_reg_463),
    .p_read2(layer8_out_V_2_reg_468),
    .p_read3(layer8_out_V_3_reg_473),
    .p_read4(layer8_out_V_4_reg_478),
    .p_read5(layer8_out_V_5_reg_483),
    .p_read6(layer8_out_V_6_reg_488),
    .p_read7(layer8_out_V_7_reg_493),
    .ap_return_0(call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107_ap_return_0),
    .ap_return_1(call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107_ap_return_1),
    .ap_return_2(call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107_ap_return_2),
    .ap_return_3(call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107_ap_return_3),
    .ap_return_4(call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107_ap_return_4),
    .ap_return_5(call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107_ap_return_5),
    .ap_return_6(call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107_ap_return_6),
    .ap_return_7(call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107_ap_return_7)
);

mpc_red1_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config11_s grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config11_s_fu_119(
    .ap_clk(clk_2),
    .ap_rst(ap_rst),
    .ap_start(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config11_s_fu_119_ap_start),
    .ap_done(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config11_s_fu_119_ap_done),
    .ap_idle(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config11_s_fu_119_ap_idle),
    .ap_ready(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config11_s_fu_119_ap_ready),
    .p_read(call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107_ap_return_0),
    .p_read1(call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107_ap_return_1),
    .p_read2(call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107_ap_return_2),
    .p_read3(call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107_ap_return_3),
    .p_read4(call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107_ap_return_4),
    .p_read5(call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107_ap_return_5),
    .p_read6(call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107_ap_return_6),
    .p_read7(call_ret5_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config10_s_fu_107_ap_return_7),
    .ap_return(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config11_s_fu_119_ap_return),
    .ap_ce(grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config11_s_fu_119_ap_ce)
);

always @ (posedge clk_2) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge clk_2) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start;
        end
    end
end

always @ (posedge clk_2) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge clk_2) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge clk_2) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge clk_2) begin
    if (ap_rst == 1'b1) begin
        fc0_input_ap_vld_preg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            fc0_input_ap_vld_preg <= 1'b0;
        end else if ((~((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0)) & (fc0_input_ap_vld == 1'b1))) begin
            fc0_input_ap_vld_preg <= fc0_input_ap_vld;
        end
    end
end

always @ (posedge clk_2) begin
    if (ap_rst == 1'b1) begin
        fc0_input_preg <= 64'd0;
    end else begin
        if ((~((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0)) & (fc0_input_ap_vld == 1'b1))) begin
            fc0_input_preg <= fc0_input;
        end
    end
end

always @ (posedge clk_2) begin
    if (ap_rst == 1'b1) begin
        grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config11_s_fu_119_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config11_s_fu_119_ap_start_reg <= 1'b1;
        end else if ((grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config11_s_fu_119_ap_ready == 1'b1)) begin
            grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config11_s_fu_119_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_2) begin
    if (ap_rst == 1'b1) begin
        grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_start_reg <= 1'b1;
        end else if ((grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_ready == 1'b1)) begin
            grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_2) begin
    if (ap_rst == 1'b1) begin
        grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_start_reg <= 1'b1;
        end else if ((grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_ready == 1'b1)) begin
            grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_2) begin
    if (ap_rst == 1'b1) begin
        grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_start_reg <= 1'b1;
        end else if ((grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_ready == 1'b1)) begin
            grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_2) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        layer4_out_V_1_reg_353 <= call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59_ap_return_1;
        layer4_out_V_2_reg_358 <= call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59_ap_return_2;
        layer4_out_V_3_reg_363 <= call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59_ap_return_3;
        layer4_out_V_4_reg_368 <= call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59_ap_return_4;
        layer4_out_V_5_reg_373 <= call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59_ap_return_5;
        layer4_out_V_6_reg_378 <= call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59_ap_return_6;
        layer4_out_V_7_reg_383 <= call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59_ap_return_7;
        layer4_out_V_reg_348 <= call_ret2_relu_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_relu_config4_s_fu_59_ap_return_0;
        layer5_out_V_1_reg_393 <= grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_return_1;
        layer5_out_V_2_reg_398 <= grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_return_2;
        layer5_out_V_3_reg_403 <= grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_return_3;
        layer5_out_V_4_reg_408 <= grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_return_4;
        layer5_out_V_5_reg_413 <= grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_return_5;
        layer5_out_V_6_reg_418 <= grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_return_6;
        layer5_out_V_7_reg_423 <= grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_return_7;
        layer5_out_V_reg_388 <= grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_return_0;
        layer8_out_V_1_reg_463 <= grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_return_1;
        layer8_out_V_2_reg_468 <= grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_return_2;
        layer8_out_V_3_reg_473 <= grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_return_3;
        layer8_out_V_4_reg_478 <= grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_return_4;
        layer8_out_V_5_reg_483 <= grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_return_5;
        layer8_out_V_6_reg_488 <= grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_return_6;
        layer8_out_V_7_reg_493 <= grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_return_7;
        layer8_out_V_reg_458 <= grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_return_0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to2 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((((1'b0 == ap_block_pp0_stage3_11001_ignoreCallOp90) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001_ignoreCallOp83) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp82) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp81) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config11_s_fu_119_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config11_s_fu_119_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001_ignoreCallOp21) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001_ignoreCallOp20) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp19) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp18) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_onepulse_ap_start = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_onepulse_ap_start = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001_ignoreCallOp42) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001_ignoreCallOp41) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp40) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp39) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001_ignoreCallOp63) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001_ignoreCallOp62) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp61) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp60) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        layer11_out_ap_vld = 1'b1;
    end else begin
        layer11_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((((ap_reset_idle_pp0 == 1'b0) & (1'b0 == ap_block_pp0_stage3_subdone)) | ((ap_reset_idle_pp0 == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp18 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp39 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp60 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp81 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001_ignoreCallOp19 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001_ignoreCallOp40 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001_ignoreCallOp61 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001_ignoreCallOp82 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001_ignoreCallOp20 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001_ignoreCallOp41 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001_ignoreCallOp62 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001_ignoreCallOp83 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001_ignoreCallOp21 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001_ignoreCallOp42 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001_ignoreCallOp63 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001_ignoreCallOp90 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter2_ignore_call25 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter2_ignore_call43 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter2_ignore_call61 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter2_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage2_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage2_iter2_ignore_call25 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage2_iter2_ignore_call43 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage2_iter2_ignore_call61 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage2_iter2_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage3_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage3_iter2_ignore_call25 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage3_iter2_ignore_call43 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage3_iter2_ignore_call61 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage3_iter2_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter3_ignore_call25 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter3_ignore_call43 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter3_ignore_call61 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter3_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter3_ignore_call25 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter3_ignore_call43 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter3_ignore_call61 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter3_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage2_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage2_iter3_ignore_call25 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage2_iter3_ignore_call43 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage2_iter3_ignore_call61 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage2_iter3_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage3_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage3_iter3_ignore_call25 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage3_iter3_ignore_call43 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage3_iter3_ignore_call61 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage3_iter3_ignore_call7 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call25 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call43 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call61 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call7 = (fc0_input_ap_vld_in_sig == 1'b0);
end

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0_ignore_call25 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0_ignore_call43 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0_ignore_call61 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0_ignore_call25 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0_ignore_call43 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0_ignore_call61 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0_ignore_call25 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0_ignore_call43 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0_ignore_call61 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter1_ignore_call25 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter1_ignore_call43 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter1_ignore_call61 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter1_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter1_ignore_call25 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter1_ignore_call43 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter1_ignore_call61 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter1_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage2_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage2_iter1_ignore_call25 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage2_iter1_ignore_call43 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage2_iter1_ignore_call61 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage2_iter1_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage3_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage3_iter1_ignore_call25 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage3_iter1_ignore_call43 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage3_iter1_ignore_call61 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage3_iter1_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter2_ignore_call25 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter2_ignore_call43 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter2_ignore_call61 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter2_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config11_s_fu_119_ap_start = grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config11_s_fu_119_ap_start_reg;

assign grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_start = (grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_onepulse_ap_start | grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config2_s_fu_53_ap_start_reg);

assign grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_start = grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config5_s_fu_71_ap_start_reg;

assign grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_start = grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config8_s_fu_95_ap_start_reg;

assign layer11_out = grp_dense_latency_ap_fixed_32_8_5_3_0_ap_fixed_32_8_5_3_0_config11_s_fu_119_ap_return;

endmodule