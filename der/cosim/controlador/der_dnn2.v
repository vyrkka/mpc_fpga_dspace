module der_dnn2 (
        clk_1,
        ce_1,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
		rk22,
		rk21,
		dk22,
		dk21,
		x23,
		x22,
		x21,
        fc0_input_ap_vld,
        uk11,
        uk11_ap_vld,
        uk12,
        uk12_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 5'd1;
parameter    ap_ST_fsm_pp0_stage1 = 5'd2;
parameter    ap_ST_fsm_pp0_stage2 = 5'd4;
parameter    ap_ST_fsm_pp0_stage3 = 5'd8;
parameter    ap_ST_fsm_pp0_stage4 = 5'd16;

input   clk_1;
input   ce_1;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input	[11:0] rk22;
input	[11:0] rk21;
input	[11:0] dk22;
input	[11:0] dk21;
input	[11:0] x23;
input	[11:0] x22;
input	[11:0] x21;
input   fc0_input_ap_vld;
output  [11:0] uk11;
output   uk11_ap_vld;
output  [11:0] uk12;
output   uk12_ap_vld;

reg [83:0] fc0_input;
always @ (*) begin
   fc0_input = {rk22, rk21, dk22, dk21, x23, x22, x21};
end

reg ap_done;
reg ap_idle;
reg ap_ready;
reg uk11_ap_vld;
reg uk12_ap_vld;
 
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_state5_pp0_stage4_iter0;
wire    ap_block_state10_pp0_stage4_iter1;
wire    ap_block_state15_pp0_stage4_iter2;
wire    ap_block_state20_pp0_stage4_iter3;
wire    ap_block_state25_pp0_stage4_iter4;
wire    ap_block_state30_pp0_stage4_iter5;
wire    ap_block_pp0_stage4_subdone;
reg   [83:0] fc0_input_preg;
reg   [83:0] fc0_input_in_sig;
reg    fc0_input_ap_vld_preg;
reg    fc0_input_ap_vld_in_sig;
reg    fc0_input_blk_n;
wire    ap_block_pp0_stage0;
reg   [11:0] layer2_out_V_reg_636;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_state4_pp0_stage3_iter0;
wire    ap_block_state9_pp0_stage3_iter1;
wire    ap_block_state14_pp0_stage3_iter2;
wire    ap_block_state19_pp0_stage3_iter3;
wire    ap_block_state24_pp0_stage3_iter4;
wire    ap_block_state29_pp0_stage3_iter5;
wire    ap_block_pp0_stage3_11001;
reg   [11:0] layer2_out_V_1_reg_641;
reg   [11:0] layer2_out_V_2_reg_646;
reg   [11:0] layer2_out_V_3_reg_651;
reg   [11:0] layer2_out_V_4_reg_656;
reg   [11:0] layer2_out_V_5_reg_661;
reg   [11:0] layer2_out_V_6_reg_666;
reg   [11:0] layer2_out_V_7_reg_671;
reg   [11:0] layer2_out_V_8_reg_676;
reg   [11:0] layer2_out_V_9_reg_681;
reg   [11:0] layer2_out_V_14_reg_686;
reg   [11:0] layer2_out_V_10_reg_691;
reg   [11:0] layer2_out_V_11_reg_696;
reg   [11:0] layer2_out_V_12_reg_701;
reg   [11:0] layer2_out_V_13_reg_706;
reg   [11:0] layer4_out_V_reg_711;
wire    ap_block_pp0_stage4_11001;
reg   [11:0] layer4_out_V_1_reg_716;
reg   [11:0] layer4_out_V_2_reg_721;
reg   [11:0] layer4_out_V_3_reg_726;
reg   [11:0] layer4_out_V_4_reg_731;
reg   [11:0] layer4_out_V_5_reg_736;
reg   [11:0] layer4_out_V_6_reg_741;
reg   [11:0] layer4_out_V_7_reg_746;
reg   [11:0] layer4_out_V_8_reg_751;
reg   [11:0] layer4_out_V_9_reg_756;
reg   [11:0] layer4_out_V_14_reg_761;
reg   [11:0] layer4_out_V_10_reg_766;
reg   [11:0] layer4_out_V_11_reg_771;
reg   [11:0] layer4_out_V_12_reg_776;
reg   [11:0] layer4_out_V_13_reg_781;
reg   [11:0] layer5_out_V_reg_786;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state7_pp0_stage1_iter1;
wire    ap_block_state12_pp0_stage1_iter2;
wire    ap_block_state17_pp0_stage1_iter3;
wire    ap_block_state22_pp0_stage1_iter4;
wire    ap_block_state27_pp0_stage1_iter5;
wire    ap_block_state32_pp0_stage1_iter6;
wire    ap_block_pp0_stage1_11001;
reg   [11:0] layer5_out_V_1_reg_791;
reg   [11:0] layer5_out_V_2_reg_796;
reg   [11:0] layer5_out_V_3_reg_801;
reg   [11:0] layer5_out_V_4_reg_806;
reg   [11:0] layer5_out_V_5_reg_811;
reg   [11:0] layer5_out_V_6_reg_816;
reg   [11:0] layer5_out_V_7_reg_821;
reg   [11:0] layer5_out_V_8_reg_826;
reg   [11:0] layer5_out_V_9_reg_831;
reg   [11:0] layer5_out_V_17_reg_836;
reg   [11:0] layer5_out_V_10_reg_841;
reg   [11:0] layer5_out_V_11_reg_846;
reg   [11:0] layer5_out_V_12_reg_851;
reg   [11:0] layer5_out_V_13_reg_856;
reg   [11:0] layer5_out_V_14_reg_861;
reg   [11:0] layer5_out_V_15_reg_866;
reg   [11:0] layer5_out_V_16_reg_871;
reg   [11:0] layer7_out_V_reg_876;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_state3_pp0_stage2_iter0;
wire    ap_block_state8_pp0_stage2_iter1;
wire    ap_block_state13_pp0_stage2_iter2;
wire    ap_block_state18_pp0_stage2_iter3;
wire    ap_block_state23_pp0_stage2_iter4;
wire    ap_block_state28_pp0_stage2_iter5;
wire    ap_block_pp0_stage2_11001;
reg   [11:0] layer7_out_V_1_reg_881;
reg   [11:0] layer7_out_V_2_reg_886;
reg   [11:0] layer7_out_V_3_reg_891;
reg   [11:0] layer7_out_V_4_reg_896;
reg   [11:0] layer7_out_V_5_reg_901;
reg   [11:0] layer7_out_V_6_reg_906;
reg   [11:0] layer7_out_V_7_reg_911;
reg   [11:0] layer7_out_V_8_reg_916;
reg   [11:0] layer7_out_V_9_reg_921;
reg   [11:0] layer7_out_V_17_reg_926;
reg   [11:0] layer7_out_V_10_reg_931;
reg   [11:0] layer7_out_V_11_reg_936;
reg   [11:0] layer7_out_V_12_reg_941;
reg   [11:0] layer7_out_V_13_reg_946;
reg   [11:0] layer7_out_V_14_reg_951;
reg   [11:0] layer7_out_V_15_reg_956;
reg   [11:0] layer7_out_V_16_reg_961;
reg   [11:0] layer10_out_V_reg_966;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state6_pp0_stage0_iter1;
wire    ap_block_state11_pp0_stage0_iter2;
wire    ap_block_state16_pp0_stage0_iter3;
wire    ap_block_state21_pp0_stage0_iter4;
wire    ap_block_state26_pp0_stage0_iter5;
wire    ap_block_state31_pp0_stage0_iter6;
reg    ap_block_pp0_stage0_11001;
reg   [11:0] layer10_out_V_1_reg_971;
reg   [11:0] layer10_out_V_2_reg_976;
reg   [11:0] layer10_out_V_3_reg_981;
reg   [11:0] layer10_out_V_4_reg_986;
reg   [11:0] layer10_out_V_5_reg_991;
reg   [11:0] layer10_out_V_6_reg_996;
reg   [11:0] layer10_out_V_7_reg_1001;
reg   [11:0] layer10_out_V_8_reg_1006;
reg   [11:0] layer10_out_V_9_reg_1011;
reg   [11:0] layer10_out_V_12_reg_1016;
reg   [11:0] layer10_out_V_10_reg_1021;
reg   [11:0] layer10_out_V_11_reg_1026;
reg   [11:0] layer13_out_V_reg_1031;
reg   [11:0] layer13_out_V_1_reg_1036;
reg   [11:0] layer13_out_V_2_reg_1041;
reg   [11:0] layer14_out_V_reg_1046;
reg   [11:0] layer14_out_V_1_reg_1051;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_start;
wire    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_done;
wire    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_idle;
wire    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_ready;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_0;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_1;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_2;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_3;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_4;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_5;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_6;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_7;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_8;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_9;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_10;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_11;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_12;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_13;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_14;
reg    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_ce;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call9;
wire    ap_block_state6_pp0_stage0_iter1_ignore_call9;
wire    ap_block_state11_pp0_stage0_iter2_ignore_call9;
wire    ap_block_state16_pp0_stage0_iter3_ignore_call9;
wire    ap_block_state21_pp0_stage0_iter4_ignore_call9;
wire    ap_block_state26_pp0_stage0_iter5_ignore_call9;
wire    ap_block_state31_pp0_stage0_iter6_ignore_call9;
reg    ap_block_pp0_stage0_11001_ignoreCallOp34;
wire    ap_block_state2_pp0_stage1_iter0_ignore_call9;
wire    ap_block_state7_pp0_stage1_iter1_ignore_call9;
wire    ap_block_state12_pp0_stage1_iter2_ignore_call9;
wire    ap_block_state17_pp0_stage1_iter3_ignore_call9;
wire    ap_block_state22_pp0_stage1_iter4_ignore_call9;
wire    ap_block_state27_pp0_stage1_iter5_ignore_call9;
wire    ap_block_state32_pp0_stage1_iter6_ignore_call9;
wire    ap_block_pp0_stage1_11001_ignoreCallOp35;
wire    ap_block_state3_pp0_stage2_iter0_ignore_call9;
wire    ap_block_state8_pp0_stage2_iter1_ignore_call9;
wire    ap_block_state13_pp0_stage2_iter2_ignore_call9;
wire    ap_block_state18_pp0_stage2_iter3_ignore_call9;
wire    ap_block_state23_pp0_stage2_iter4_ignore_call9;
wire    ap_block_state28_pp0_stage2_iter5_ignore_call9;
wire    ap_block_pp0_stage2_11001_ignoreCallOp36;
wire    ap_block_state4_pp0_stage3_iter0_ignore_call9;
wire    ap_block_state9_pp0_stage3_iter1_ignore_call9;
wire    ap_block_state14_pp0_stage3_iter2_ignore_call9;
wire    ap_block_state19_pp0_stage3_iter3_ignore_call9;
wire    ap_block_state24_pp0_stage3_iter4_ignore_call9;
wire    ap_block_state29_pp0_stage3_iter5_ignore_call9;
wire    ap_block_pp0_stage3_11001_ignoreCallOp37;
wire    call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_ready;
wire   [11:0] call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_0;
wire   [11:0] call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_1;
wire   [11:0] call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_2;
wire   [11:0] call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_3;
wire   [11:0] call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_4;
wire   [11:0] call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_5;
wire   [11:0] call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_6;
wire   [11:0] call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_7;
wire   [11:0] call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_8;
wire   [11:0] call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_9;
wire   [11:0] call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_10;
wire   [11:0] call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_11;
wire   [11:0] call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_12;
wire   [11:0] call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_13;
wire   [11:0] call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_14;
wire    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_start;
wire    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_done;
wire    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_idle;
wire    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_ready;
reg    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_ce;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_0;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_1;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_2;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_3;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_4;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_5;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_6;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_7;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_8;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_9;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_10;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_11;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_12;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_13;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_14;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_15;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_16;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_17;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call41;
wire    ap_block_state6_pp0_stage0_iter1_ignore_call41;
wire    ap_block_state11_pp0_stage0_iter2_ignore_call41;
wire    ap_block_state16_pp0_stage0_iter3_ignore_call41;
wire    ap_block_state21_pp0_stage0_iter4_ignore_call41;
wire    ap_block_state26_pp0_stage0_iter5_ignore_call41;
wire    ap_block_state31_pp0_stage0_iter6_ignore_call41;
reg    ap_block_pp0_stage0_11001_ignoreCallOp69;
wire    ap_block_state2_pp0_stage1_iter0_ignore_call41;
wire    ap_block_state7_pp0_stage1_iter1_ignore_call41;
wire    ap_block_state12_pp0_stage1_iter2_ignore_call41;
wire    ap_block_state17_pp0_stage1_iter3_ignore_call41;
wire    ap_block_state22_pp0_stage1_iter4_ignore_call41;
wire    ap_block_state27_pp0_stage1_iter5_ignore_call41;
wire    ap_block_state32_pp0_stage1_iter6_ignore_call41;
wire    ap_block_pp0_stage1_11001_ignoreCallOp70;
wire    ap_block_state3_pp0_stage2_iter0_ignore_call41;
wire    ap_block_state8_pp0_stage2_iter1_ignore_call41;
wire    ap_block_state13_pp0_stage2_iter2_ignore_call41;
wire    ap_block_state18_pp0_stage2_iter3_ignore_call41;
wire    ap_block_state23_pp0_stage2_iter4_ignore_call41;
wire    ap_block_state28_pp0_stage2_iter5_ignore_call41;
wire    ap_block_pp0_stage2_11001_ignoreCallOp71;
wire    ap_block_state4_pp0_stage3_iter0_ignore_call41;
wire    ap_block_state9_pp0_stage3_iter1_ignore_call41;
wire    ap_block_state14_pp0_stage3_iter2_ignore_call41;
wire    ap_block_state19_pp0_stage3_iter3_ignore_call41;
wire    ap_block_state24_pp0_stage3_iter4_ignore_call41;
wire    ap_block_state29_pp0_stage3_iter5_ignore_call41;
wire    ap_block_pp0_stage3_11001_ignoreCallOp72;
wire    ap_block_state5_pp0_stage4_iter0_ignore_call41;
wire    ap_block_state10_pp0_stage4_iter1_ignore_call41;
wire    ap_block_state15_pp0_stage4_iter2_ignore_call41;
wire    ap_block_state20_pp0_stage4_iter3_ignore_call41;
wire    ap_block_state25_pp0_stage4_iter4_ignore_call41;
wire    ap_block_state30_pp0_stage4_iter5_ignore_call41;
wire    ap_block_pp0_stage4_11001_ignoreCallOp73;
wire    call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_ready;
wire   [11:0] call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_0;
wire   [11:0] call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_1;
wire   [11:0] call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_2;
wire   [11:0] call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_3;
wire   [11:0] call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_4;
wire   [11:0] call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_5;
wire   [11:0] call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_6;
wire   [11:0] call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_7;
wire   [11:0] call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_8;
wire   [11:0] call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_9;
wire   [11:0] call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_10;
wire   [11:0] call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_11;
wire   [11:0] call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_12;
wire   [11:0] call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_13;
wire   [11:0] call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_14;
wire   [11:0] call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_15;
wire   [11:0] call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_16;
wire   [11:0] call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_17;
wire    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_start;
wire    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_done;
wire    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_idle;
wire    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_ready;
reg    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_ce;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_0;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_1;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_2;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_3;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_4;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_5;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_6;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_7;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_8;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_9;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_10;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_11;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_12;
wire    ap_block_state4_pp0_stage3_iter0_ignore_call79;
wire    ap_block_state9_pp0_stage3_iter1_ignore_call79;
wire    ap_block_state14_pp0_stage3_iter2_ignore_call79;
wire    ap_block_state19_pp0_stage3_iter3_ignore_call79;
wire    ap_block_state24_pp0_stage3_iter4_ignore_call79;
wire    ap_block_state29_pp0_stage3_iter5_ignore_call79;
wire    ap_block_pp0_stage3_11001_ignoreCallOp113;
wire    ap_block_state5_pp0_stage4_iter0_ignore_call79;
wire    ap_block_state10_pp0_stage4_iter1_ignore_call79;
wire    ap_block_state15_pp0_stage4_iter2_ignore_call79;
wire    ap_block_state20_pp0_stage4_iter3_ignore_call79;
wire    ap_block_state25_pp0_stage4_iter4_ignore_call79;
wire    ap_block_state30_pp0_stage4_iter5_ignore_call79;
wire    ap_block_pp0_stage4_11001_ignoreCallOp114;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call79;
wire    ap_block_state6_pp0_stage0_iter1_ignore_call79;
wire    ap_block_state11_pp0_stage0_iter2_ignore_call79;
wire    ap_block_state16_pp0_stage0_iter3_ignore_call79;
wire    ap_block_state21_pp0_stage0_iter4_ignore_call79;
wire    ap_block_state26_pp0_stage0_iter5_ignore_call79;
wire    ap_block_state31_pp0_stage0_iter6_ignore_call79;
reg    ap_block_pp0_stage0_11001_ignoreCallOp115;
wire    ap_block_state2_pp0_stage1_iter0_ignore_call79;
wire    ap_block_state7_pp0_stage1_iter1_ignore_call79;
wire    ap_block_state12_pp0_stage1_iter2_ignore_call79;
wire    ap_block_state17_pp0_stage1_iter3_ignore_call79;
wire    ap_block_state22_pp0_stage1_iter4_ignore_call79;
wire    ap_block_state27_pp0_stage1_iter5_ignore_call79;
wire    ap_block_state32_pp0_stage1_iter6_ignore_call79;
wire    ap_block_pp0_stage1_11001_ignoreCallOp116;
wire    ap_block_state3_pp0_stage2_iter0_ignore_call79;
wire    ap_block_state8_pp0_stage2_iter1_ignore_call79;
wire    ap_block_state13_pp0_stage2_iter2_ignore_call79;
wire    ap_block_state18_pp0_stage2_iter3_ignore_call79;
wire    ap_block_state23_pp0_stage2_iter4_ignore_call79;
wire    ap_block_state28_pp0_stage2_iter5_ignore_call79;
wire    ap_block_pp0_stage2_11001_ignoreCallOp117;
wire    call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_ready;
wire   [11:0] call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_0;
wire   [11:0] call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_1;
wire   [11:0] call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_2;
wire   [11:0] call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_3;
wire   [11:0] call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_4;
wire   [11:0] call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_5;
wire   [11:0] call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_6;
wire   [11:0] call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_7;
wire   [11:0] call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_8;
wire   [11:0] call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_9;
wire   [11:0] call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_10;
wire   [11:0] call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_11;
wire   [11:0] call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_12;
wire    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_start;
wire    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_done;
wire    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_idle;
wire    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_ready;
reg    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_ce;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_return_0;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_return_1;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_return_2;
wire    ap_block_state2_pp0_stage1_iter0_ignore_call107;
wire    ap_block_state7_pp0_stage1_iter1_ignore_call107;
wire    ap_block_state12_pp0_stage1_iter2_ignore_call107;
wire    ap_block_state17_pp0_stage1_iter3_ignore_call107;
wire    ap_block_state22_pp0_stage1_iter4_ignore_call107;
wire    ap_block_state27_pp0_stage1_iter5_ignore_call107;
wire    ap_block_state32_pp0_stage1_iter6_ignore_call107;
wire    ap_block_pp0_stage1_11001_ignoreCallOp148;
wire    ap_block_state3_pp0_stage2_iter0_ignore_call107;
wire    ap_block_state8_pp0_stage2_iter1_ignore_call107;
wire    ap_block_state13_pp0_stage2_iter2_ignore_call107;
wire    ap_block_state18_pp0_stage2_iter3_ignore_call107;
wire    ap_block_state23_pp0_stage2_iter4_ignore_call107;
wire    ap_block_state28_pp0_stage2_iter5_ignore_call107;
wire    ap_block_pp0_stage2_11001_ignoreCallOp149;
wire    ap_block_state4_pp0_stage3_iter0_ignore_call107;
wire    ap_block_state9_pp0_stage3_iter1_ignore_call107;
wire    ap_block_state14_pp0_stage3_iter2_ignore_call107;
wire    ap_block_state19_pp0_stage3_iter3_ignore_call107;
wire    ap_block_state24_pp0_stage3_iter4_ignore_call107;
wire    ap_block_state29_pp0_stage3_iter5_ignore_call107;
wire    ap_block_pp0_stage3_11001_ignoreCallOp150;
wire    ap_block_state5_pp0_stage4_iter0_ignore_call107;
wire    ap_block_state10_pp0_stage4_iter1_ignore_call107;
wire    ap_block_state15_pp0_stage4_iter2_ignore_call107;
wire    ap_block_state20_pp0_stage4_iter3_ignore_call107;
wire    ap_block_state25_pp0_stage4_iter4_ignore_call107;
wire    ap_block_state30_pp0_stage4_iter5_ignore_call107;
wire    ap_block_pp0_stage4_11001_ignoreCallOp151;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call107;
wire    ap_block_state6_pp0_stage0_iter1_ignore_call107;
wire    ap_block_state11_pp0_stage0_iter2_ignore_call107;
wire    ap_block_state16_pp0_stage0_iter3_ignore_call107;
wire    ap_block_state21_pp0_stage0_iter4_ignore_call107;
wire    ap_block_state26_pp0_stage0_iter5_ignore_call107;
wire    ap_block_state31_pp0_stage0_iter6_ignore_call107;
reg    ap_block_pp0_stage0_11001_ignoreCallOp152;
wire    call_ret7_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config13_s_fu_190_ap_ready;
wire   [11:0] call_ret7_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config13_s_fu_190_ap_return_0;
wire   [11:0] call_ret7_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config13_s_fu_190_ap_return_1;
wire   [11:0] call_ret7_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config13_s_fu_190_ap_return_2;
wire    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197_ap_start;
wire    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197_ap_done;
wire    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197_ap_idle;
wire    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197_ap_ready;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197_ap_return_0;
wire   [11:0] grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197_ap_return_1;
reg    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197_ap_ce;
wire    ap_block_state3_pp0_stage2_iter0_ignore_call115;
wire    ap_block_state8_pp0_stage2_iter1_ignore_call115;
wire    ap_block_state13_pp0_stage2_iter2_ignore_call115;
wire    ap_block_state18_pp0_stage2_iter3_ignore_call115;
wire    ap_block_state23_pp0_stage2_iter4_ignore_call115;
wire    ap_block_state28_pp0_stage2_iter5_ignore_call115;
wire    ap_block_pp0_stage2_11001_ignoreCallOp161;
wire    ap_block_state4_pp0_stage3_iter0_ignore_call115;
wire    ap_block_state9_pp0_stage3_iter1_ignore_call115;
wire    ap_block_state14_pp0_stage3_iter2_ignore_call115;
wire    ap_block_state19_pp0_stage3_iter3_ignore_call115;
wire    ap_block_state24_pp0_stage3_iter4_ignore_call115;
wire    ap_block_state29_pp0_stage3_iter5_ignore_call115;
wire    ap_block_pp0_stage3_11001_ignoreCallOp162;
wire    ap_block_state5_pp0_stage4_iter0_ignore_call115;
wire    ap_block_state10_pp0_stage4_iter1_ignore_call115;
wire    ap_block_state15_pp0_stage4_iter2_ignore_call115;
wire    ap_block_state20_pp0_stage4_iter3_ignore_call115;
wire    ap_block_state25_pp0_stage4_iter4_ignore_call115;
wire    ap_block_state30_pp0_stage4_iter5_ignore_call115;
wire    ap_block_pp0_stage4_11001_ignoreCallOp163;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call115;
wire    ap_block_state6_pp0_stage0_iter1_ignore_call115;
wire    ap_block_state11_pp0_stage0_iter2_ignore_call115;
wire    ap_block_state16_pp0_stage0_iter3_ignore_call115;
wire    ap_block_state21_pp0_stage0_iter4_ignore_call115;
wire    ap_block_state26_pp0_stage0_iter5_ignore_call115;
wire    ap_block_state31_pp0_stage0_iter6_ignore_call115;
reg    ap_block_pp0_stage0_11001_ignoreCallOp164;
wire    call_ret9_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config16_s_fu_204_ap_ready;
wire   [11:0] call_ret9_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config16_s_fu_204_ap_return_0;
wire   [11:0] call_ret9_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config16_s_fu_204_ap_return_1;
reg    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_start_reg;
reg    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_onepulse_ap_start;
wire    ap_block_pp0_stage4;
reg    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_start_reg;
wire    ap_block_pp0_stage2;
reg    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_start_reg;
wire    ap_block_pp0_stage3;
reg    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_start_reg;
wire    ap_block_pp0_stage1;
reg    grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197_ap_start_reg;
wire    ap_block_pp0_stage1_01001;
reg   [4:0] ap_NS_fsm;
reg    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to6;
reg    ap_idle_pp0_0to5;
reg    ap_reset_idle_pp0;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 fc0_input_preg = 84'd0;
#0 fc0_input_ap_vld_preg = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_start_reg = 1'b0;
#0 grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_start_reg = 1'b0;
#0 grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_start_reg = 1'b0;
#0 grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_start_reg = 1'b0;
#0 grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197_ap_start_reg = 1'b0;
end

der_dnn2_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_start),
    .ap_done(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_done),
    .ap_idle(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_idle),
    .ap_ready(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_ready),
    .p_read(fc0_input_in_sig),
    .ap_return_0(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_1),
    .ap_return_2(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_2),
    .ap_return_3(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_3),
    .ap_return_4(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_4),
    .ap_return_5(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_5),
    .ap_return_6(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_6),
    .ap_return_7(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_7),
    .ap_return_8(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_8),
    .ap_return_9(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_9),
    .ap_return_10(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_10),
    .ap_return_11(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_11),
    .ap_return_12(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_12),
    .ap_return_13(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_13),
    .ap_return_14(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_14),
    .ap_ce(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_ce)
);

der_dnn2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74(
    .ap_ready(call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_ready),
    .p_read1(layer2_out_V_reg_636),
    .p_read2(layer2_out_V_1_reg_641),
    .p_read4(layer2_out_V_2_reg_646),
    .p_read6(layer2_out_V_3_reg_651),
    .p_read9(layer2_out_V_4_reg_656),
    .p_read12(layer2_out_V_5_reg_661),
    .p_read14(layer2_out_V_6_reg_666),
    .p_read15(layer2_out_V_7_reg_671),
    .p_read17(layer2_out_V_8_reg_676),
    .p_read18(layer2_out_V_9_reg_681),
    .p_read19(layer2_out_V_14_reg_686),
    .p_read20(layer2_out_V_10_reg_691),
    .p_read21(layer2_out_V_11_reg_696),
    .p_read24(layer2_out_V_12_reg_701),
    .p_read25(layer2_out_V_13_reg_706),
    .ap_return_0(call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_0),
    .ap_return_1(call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_1),
    .ap_return_2(call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_2),
    .ap_return_3(call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_3),
    .ap_return_4(call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_4),
    .ap_return_5(call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_5),
    .ap_return_6(call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_6),
    .ap_return_7(call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_7),
    .ap_return_8(call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_8),
    .ap_return_9(call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_9),
    .ap_return_10(call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_10),
    .ap_return_11(call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_11),
    .ap_return_12(call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_12),
    .ap_return_13(call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_13),
    .ap_return_14(call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_14)
);

der_dnn2_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_start),
    .ap_done(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_done),
    .ap_idle(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_idle),
    .ap_ready(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_ready),
    .ap_ce(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_ce),
    .p_read(layer4_out_V_reg_711),
    .p_read1(layer4_out_V_1_reg_716),
    .p_read2(layer4_out_V_2_reg_721),
    .p_read3(layer4_out_V_3_reg_726),
    .p_read4(layer4_out_V_4_reg_731),
    .p_read5(layer4_out_V_5_reg_736),
    .p_read6(layer4_out_V_6_reg_741),
    .p_read7(layer4_out_V_7_reg_746),
    .p_read8(layer4_out_V_8_reg_751),
    .p_read9(layer4_out_V_9_reg_756),
    .p_read10(layer4_out_V_14_reg_761),
    .p_read11(layer4_out_V_10_reg_766),
    .p_read12(layer4_out_V_11_reg_771),
    .p_read13(layer4_out_V_12_reg_776),
    .p_read14(layer4_out_V_13_reg_781),
    .ap_return_0(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_1),
    .ap_return_2(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_2),
    .ap_return_3(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_3),
    .ap_return_4(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_4),
    .ap_return_5(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_5),
    .ap_return_6(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_6),
    .ap_return_7(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_7),
    .ap_return_8(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_8),
    .ap_return_9(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_9),
    .ap_return_10(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_10),
    .ap_return_11(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_11),
    .ap_return_12(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_12),
    .ap_return_13(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_13),
    .ap_return_14(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_14),
    .ap_return_15(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_15),
    .ap_return_16(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_16),
    .ap_return_17(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_17)
);

der_dnn2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112(
    .ap_ready(call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_ready),
    .p_read(layer5_out_V_reg_786),
    .p_read1(layer5_out_V_1_reg_791),
    .p_read5(layer5_out_V_2_reg_796),
    .p_read6(layer5_out_V_3_reg_801),
    .p_read7(layer5_out_V_4_reg_806),
    .p_read10(layer5_out_V_5_reg_811),
    .p_read12(layer5_out_V_6_reg_816),
    .p_read14(layer5_out_V_7_reg_821),
    .p_read15(layer5_out_V_8_reg_826),
    .p_read17(layer5_out_V_9_reg_831),
    .p_read20(layer5_out_V_17_reg_836),
    .p_read21(layer5_out_V_10_reg_841),
    .p_read22(layer5_out_V_11_reg_846),
    .p_read24(layer5_out_V_12_reg_851),
    .p_read25(layer5_out_V_13_reg_856),
    .p_read27(layer5_out_V_14_reg_861),
    .p_read28(layer5_out_V_15_reg_866),
    .p_read29(layer5_out_V_16_reg_871),
    .ap_return_0(call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_0),
    .ap_return_1(call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_1),
    .ap_return_2(call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_2),
    .ap_return_3(call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_3),
    .ap_return_4(call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_4),
    .ap_return_5(call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_5),
    .ap_return_6(call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_6),
    .ap_return_7(call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_7),
    .ap_return_8(call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_8),
    .ap_return_9(call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_9),
    .ap_return_10(call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_10),
    .ap_return_11(call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_11),
    .ap_return_12(call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_12),
    .ap_return_13(call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_13),
    .ap_return_14(call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_14),
    .ap_return_15(call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_15),
    .ap_return_16(call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_16),
    .ap_return_17(call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_17)
);

der_dnn2_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_start),
    .ap_done(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_done),
    .ap_idle(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_idle),
    .ap_ready(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_ready),
    .ap_ce(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_ce),
    .p_read(layer7_out_V_reg_876),
    .p_read1(layer7_out_V_1_reg_881),
    .p_read2(layer7_out_V_2_reg_886),
    .p_read3(layer7_out_V_3_reg_891),
    .p_read4(layer7_out_V_4_reg_896),
    .p_read5(layer7_out_V_5_reg_901),
    .p_read6(layer7_out_V_6_reg_906),
    .p_read7(layer7_out_V_7_reg_911),
    .p_read8(layer7_out_V_8_reg_916),
    .p_read9(layer7_out_V_9_reg_921),
    .p_read10(layer7_out_V_17_reg_926),
    .p_read11(layer7_out_V_10_reg_931),
    .p_read12(layer7_out_V_11_reg_936),
    .p_read13(layer7_out_V_12_reg_941),
    .p_read14(layer7_out_V_13_reg_946),
    .p_read15(layer7_out_V_14_reg_951),
    .p_read16(layer7_out_V_15_reg_956),
    .p_read17(layer7_out_V_16_reg_961),
    .ap_return_0(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_1),
    .ap_return_2(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_2),
    .ap_return_3(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_3),
    .ap_return_4(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_4),
    .ap_return_5(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_5),
    .ap_return_6(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_6),
    .ap_return_7(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_7),
    .ap_return_8(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_8),
    .ap_return_9(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_9),
    .ap_return_10(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_10),
    .ap_return_11(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_11),
    .ap_return_12(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_12)
);

der_dnn2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156(
    .ap_ready(call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_ready),
    .p_read(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_0),
    .p_read2(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_1),
    .p_read4(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_2),
    .p_read7(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_3),
    .p_read10(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_4),
    .p_read15(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_5),
    .p_read17(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_6),
    .p_read21(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_7),
    .p_read22(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_8),
    .p_read24(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_9),
    .p_read27(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_10),
    .p_read28(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_11),
    .p_read29(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_return_12),
    .ap_return_0(call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_0),
    .ap_return_1(call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_1),
    .ap_return_2(call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_2),
    .ap_return_3(call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_3),
    .ap_return_4(call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_4),
    .ap_return_5(call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_5),
    .ap_return_6(call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_6),
    .ap_return_7(call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_7),
    .ap_return_8(call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_8),
    .ap_return_9(call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_9),
    .ap_return_10(call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_10),
    .ap_return_11(call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_11),
    .ap_return_12(call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_12)
);

der_dnn2_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_start),
    .ap_done(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_done),
    .ap_idle(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_idle),
    .ap_ready(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_ready),
    .ap_ce(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_ce),
    .p_read(layer10_out_V_reg_966),
    .p_read1(layer10_out_V_1_reg_971),
    .p_read2(layer10_out_V_2_reg_976),
    .p_read3(layer10_out_V_3_reg_981),
    .p_read4(layer10_out_V_4_reg_986),
    .p_read5(layer10_out_V_5_reg_991),
    .p_read6(layer10_out_V_6_reg_996),
    .p_read7(layer10_out_V_7_reg_1001),
    .p_read8(layer10_out_V_8_reg_1006),
    .p_read9(layer10_out_V_9_reg_1011),
    .p_read10(layer10_out_V_12_reg_1016),
    .p_read11(layer10_out_V_10_reg_1021),
    .p_read12(layer10_out_V_11_reg_1026),
    .ap_return_0(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_return_1),
    .ap_return_2(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_return_2)
);

der_dnn2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config13_s call_ret7_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config13_s_fu_190(
    .ap_ready(call_ret7_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config13_s_fu_190_ap_ready),
    .p_read6(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_return_0),
    .p_read15(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_return_1),
    .p_read20(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_return_2),
    .ap_return_0(call_ret7_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config13_s_fu_190_ap_return_0),
    .ap_return_1(call_ret7_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config13_s_fu_190_ap_return_1),
    .ap_return_2(call_ret7_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config13_s_fu_190_ap_return_2)
);

der_dnn2_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197_ap_start),
    .ap_done(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197_ap_done),
    .ap_idle(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197_ap_idle),
    .ap_ready(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197_ap_ready),
    .p_read(layer13_out_V_reg_1031),
    .p_read1(layer13_out_V_1_reg_1036),
    .p_read2(layer13_out_V_2_reg_1041),
    .ap_return_0(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197_ap_return_1),
    .ap_ce(grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197_ap_ce)
);

der_dnn2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config16_s call_ret9_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config16_s_fu_204(
    .ap_ready(call_ret9_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config16_s_fu_204_ap_ready),
    .p_read(layer14_out_V_reg_1046),
    .p_read1(layer14_out_V_1_reg_1051),
    .ap_return_0(call_ret9_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config16_s_fu_204_ap_return_0),
    .ap_return_1(call_ret9_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config16_s_fu_204_ap_return_1)
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
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        fc0_input_ap_vld_preg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            fc0_input_ap_vld_preg <= 1'b0;
        end else if ((~((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start == 1'b0)) & (fc0_input_ap_vld == 1'b1))) begin
            fc0_input_ap_vld_preg <= fc0_input_ap_vld;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        fc0_input_preg <= 84'd0;
    end else begin
        if ((~((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start == 1'b0)) & (fc0_input_ap_vld == 1'b1))) begin
            fc0_input_preg <= fc0_input;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_start_reg <= 1'b1;
        end else if ((grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_ready == 1'b1)) begin
            grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197_ap_start_reg <= 1'b1;
        end else if ((grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197_ap_ready == 1'b1)) begin
            grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_start_reg <= 1'b1;
        end else if ((grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_ready == 1'b1)) begin
            grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_start_reg <= 1'b1;
        end else if ((grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_ready == 1'b1)) begin
            grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_start_reg <= 1'b1;
        end else if ((grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_ready == 1'b1)) begin
            grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        layer10_out_V_10_reg_1021 <= call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_11;
        layer10_out_V_11_reg_1026 <= call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_12;
        layer10_out_V_12_reg_1016 <= call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_10;
        layer10_out_V_1_reg_971 <= call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_1;
        layer10_out_V_2_reg_976 <= call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_2;
        layer10_out_V_3_reg_981 <= call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_3;
        layer10_out_V_4_reg_986 <= call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_4;
        layer10_out_V_5_reg_991 <= call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_5;
        layer10_out_V_6_reg_996 <= call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_6;
        layer10_out_V_7_reg_1001 <= call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_7;
        layer10_out_V_8_reg_1006 <= call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_8;
        layer10_out_V_9_reg_1011 <= call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_9;
        layer10_out_V_reg_966 <= call_ret5_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config10_s_fu_156_ap_return_0;
        layer14_out_V_1_reg_1051 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197_ap_return_1;
        layer14_out_V_reg_1046 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197_ap_return_0;
    end
end

always @ (posedge clk_1) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        layer13_out_V_1_reg_1036 <= call_ret7_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config13_s_fu_190_ap_return_1;
        layer13_out_V_2_reg_1041 <= call_ret7_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config13_s_fu_190_ap_return_2;
        layer13_out_V_reg_1031 <= call_ret7_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config13_s_fu_190_ap_return_0;
        layer5_out_V_10_reg_841 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_11;
        layer5_out_V_11_reg_846 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_12;
        layer5_out_V_12_reg_851 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_13;
        layer5_out_V_13_reg_856 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_14;
        layer5_out_V_14_reg_861 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_15;
        layer5_out_V_15_reg_866 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_16;
        layer5_out_V_16_reg_871 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_17;
        layer5_out_V_17_reg_836 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_10;
        layer5_out_V_1_reg_791 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_1;
        layer5_out_V_2_reg_796 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_2;
        layer5_out_V_3_reg_801 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_3;
        layer5_out_V_4_reg_806 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_4;
        layer5_out_V_5_reg_811 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_5;
        layer5_out_V_6_reg_816 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_6;
        layer5_out_V_7_reg_821 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_7;
        layer5_out_V_8_reg_826 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_8;
        layer5_out_V_9_reg_831 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_9;
        layer5_out_V_reg_786 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_return_0;
    end
end

always @ (posedge clk_1) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        layer2_out_V_10_reg_691 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_11;
        layer2_out_V_11_reg_696 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_12;
        layer2_out_V_12_reg_701 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_13;
        layer2_out_V_13_reg_706 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_14;
        layer2_out_V_14_reg_686 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_10;
        layer2_out_V_1_reg_641 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_1;
        layer2_out_V_2_reg_646 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_2;
        layer2_out_V_3_reg_651 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_3;
        layer2_out_V_4_reg_656 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_4;
        layer2_out_V_5_reg_661 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_5;
        layer2_out_V_6_reg_666 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_6;
        layer2_out_V_7_reg_671 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_7;
        layer2_out_V_8_reg_676 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_8;
        layer2_out_V_9_reg_681 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_9;
        layer2_out_V_reg_636 <= grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_return_0;
    end
end

always @ (posedge clk_1) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        layer4_out_V_10_reg_766 <= call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_11;
        layer4_out_V_11_reg_771 <= call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_12;
        layer4_out_V_12_reg_776 <= call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_13;
        layer4_out_V_13_reg_781 <= call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_14;
        layer4_out_V_14_reg_761 <= call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_10;
        layer4_out_V_1_reg_716 <= call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_1;
        layer4_out_V_2_reg_721 <= call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_2;
        layer4_out_V_3_reg_726 <= call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_3;
        layer4_out_V_4_reg_731 <= call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_4;
        layer4_out_V_5_reg_736 <= call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_5;
        layer4_out_V_6_reg_741 <= call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_6;
        layer4_out_V_7_reg_746 <= call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_7;
        layer4_out_V_8_reg_751 <= call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_8;
        layer4_out_V_9_reg_756 <= call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_9;
        layer4_out_V_reg_711 <= call_ret2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config4_s_fu_74_ap_return_0;
    end
end

always @ (posedge clk_1) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        layer7_out_V_10_reg_931 <= call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_11;
        layer7_out_V_11_reg_936 <= call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_12;
        layer7_out_V_12_reg_941 <= call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_13;
        layer7_out_V_13_reg_946 <= call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_14;
        layer7_out_V_14_reg_951 <= call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_15;
        layer7_out_V_15_reg_956 <= call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_16;
        layer7_out_V_16_reg_961 <= call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_17;
        layer7_out_V_17_reg_926 <= call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_10;
        layer7_out_V_1_reg_881 <= call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_1;
        layer7_out_V_2_reg_886 <= call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_2;
        layer7_out_V_3_reg_891 <= call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_3;
        layer7_out_V_4_reg_896 <= call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_4;
        layer7_out_V_5_reg_901 <= call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_5;
        layer7_out_V_6_reg_906 <= call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_6;
        layer7_out_V_7_reg_911 <= call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_7;
        layer7_out_V_8_reg_916 <= call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_8;
        layer7_out_V_9_reg_921 <= call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_9;
        layer7_out_V_reg_876 <= call_ret_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config7_s_fu_112_ap_return_0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to5 = 1'b1;
    end else begin
        ap_idle_pp0_0to5 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to6 = 1'b1;
    end else begin
        ap_idle_pp0_1to6 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (ap_start == 1'b0))) begin
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
    if ((((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp152) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001_ignoreCallOp151) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001_ignoreCallOp150) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001_ignoreCallOp149) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp148) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp164) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001_ignoreCallOp163) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001_ignoreCallOp162) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001_ignoreCallOp161) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001_ignoreCallOp37) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001_ignoreCallOp36) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp35) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp34) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_onepulse_ap_start = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_onepulse_ap_start = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001_ignoreCallOp73) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001_ignoreCallOp72) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001_ignoreCallOp71) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp70) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp69) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001_ignoreCallOp117) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp116) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp115) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001_ignoreCallOp114) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001_ignoreCallOp113) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        uk11_ap_vld = 1'b1;
    end else begin
        uk11_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        uk12_ap_vld = 1'b1;
    end else begin
        uk12_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_idle_pp0_1to6 == 1'b1) & (ap_start == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_reset_idle_pp0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_reset_idle_pp0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
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
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
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

assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp115 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp152 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp164 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp34 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp69 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001_ignoreCallOp116 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001_ignoreCallOp148 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001_ignoreCallOp35 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001_ignoreCallOp70 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001_ignoreCallOp117 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001_ignoreCallOp149 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001_ignoreCallOp161 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001_ignoreCallOp36 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001_ignoreCallOp71 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001_ignoreCallOp113 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001_ignoreCallOp150 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001_ignoreCallOp162 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001_ignoreCallOp37 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001_ignoreCallOp72 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_11001_ignoreCallOp114 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_11001_ignoreCallOp151 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_11001_ignoreCallOp163 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_11001_ignoreCallOp73 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage4_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage4_iter1_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage4_iter1_ignore_call115 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage4_iter1_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage4_iter1_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter2_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter2_ignore_call115 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter2_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter2_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter2_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage1_iter2_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage1_iter2_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage1_iter2_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage1_iter2_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage2_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage2_iter2_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage2_iter2_ignore_call115 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage2_iter2_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage2_iter2_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage2_iter2_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage3_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage3_iter2_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage3_iter2_ignore_call115 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage3_iter2_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage3_iter2_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage3_iter2_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage4_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage4_iter2_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage4_iter2_ignore_call115 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage4_iter2_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage4_iter2_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter3_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter3_ignore_call115 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter3_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter3_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter3_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage1_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage1_iter3_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage1_iter3_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage1_iter3_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage1_iter3_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage2_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage2_iter3_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage2_iter3_ignore_call115 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage2_iter3_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage2_iter3_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage2_iter3_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage3_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage3_iter3_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage3_iter3_ignore_call115 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage3_iter3_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage3_iter3_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage3_iter3_ignore_call9 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call107 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call115 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call41 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call79 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call9 = (fc0_input_ap_vld_in_sig == 1'b0);
end

assign ap_block_state20_pp0_stage4_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage4_iter3_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage4_iter3_ignore_call115 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage4_iter3_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage4_iter3_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter4_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter4_ignore_call115 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter4_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter4_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter4_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage1_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage1_iter4_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage1_iter4_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage1_iter4_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage1_iter4_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage2_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage2_iter4_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage2_iter4_ignore_call115 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage2_iter4_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage2_iter4_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage2_iter4_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage3_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage3_iter4_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage3_iter4_ignore_call115 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage3_iter4_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage3_iter4_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage3_iter4_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage4_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage4_iter4_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage4_iter4_ignore_call115 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage4_iter4_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage4_iter4_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage0_iter5_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage0_iter5_ignore_call115 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage0_iter5_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage0_iter5_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage0_iter5_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state27_pp0_stage1_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state27_pp0_stage1_iter5_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state27_pp0_stage1_iter5_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state27_pp0_stage1_iter5_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state27_pp0_stage1_iter5_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state28_pp0_stage2_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state28_pp0_stage2_iter5_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state28_pp0_stage2_iter5_ignore_call115 = ~(1'b1 == 1'b1);

assign ap_block_state28_pp0_stage2_iter5_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state28_pp0_stage2_iter5_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state28_pp0_stage2_iter5_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state29_pp0_stage3_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state29_pp0_stage3_iter5_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state29_pp0_stage3_iter5_ignore_call115 = ~(1'b1 == 1'b1);

assign ap_block_state29_pp0_stage3_iter5_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state29_pp0_stage3_iter5_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state29_pp0_stage3_iter5_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state30_pp0_stage4_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state30_pp0_stage4_iter5_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state30_pp0_stage4_iter5_ignore_call115 = ~(1'b1 == 1'b1);

assign ap_block_state30_pp0_stage4_iter5_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state30_pp0_stage4_iter5_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state31_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state31_pp0_stage0_iter6_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state31_pp0_stage0_iter6_ignore_call115 = ~(1'b1 == 1'b1);

assign ap_block_state31_pp0_stage0_iter6_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state31_pp0_stage0_iter6_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state31_pp0_stage0_iter6_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state32_pp0_stage1_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state32_pp0_stage1_iter6_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state32_pp0_stage1_iter6_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state32_pp0_stage1_iter6_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state32_pp0_stage1_iter6_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0_ignore_call115 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0_ignore_call115 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage4_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage4_iter0_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage4_iter0_ignore_call115 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage4_iter0_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage4_iter0_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter1_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter1_ignore_call115 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter1_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter1_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter1_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage1_iter1_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage1_iter1_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage1_iter1_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage1_iter1_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage2_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage2_iter1_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage2_iter1_ignore_call115 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage2_iter1_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage2_iter1_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage2_iter1_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage3_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage3_iter1_ignore_call107 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage3_iter1_ignore_call115 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage3_iter1_ignore_call41 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage3_iter1_ignore_call79 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage3_iter1_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_start = grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config11_s_fu_173_ap_start_reg;

assign grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197_ap_start = grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config14_s_fu_197_ap_start_reg;

assign grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_start = (grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_onepulse_ap_start | grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config2_s_fu_68_ap_start_reg);

assign grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_start = grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config5_s_fu_93_ap_start_reg;

assign grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_start = grp_dense_latency_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_config8_s_fu_134_ap_start_reg;

assign uk11 = call_ret9_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config16_s_fu_204_ap_return_0;

assign uk12 = call_ret9_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config16_s_fu_204_ap_return_1;

endmodule //der_dnn2
