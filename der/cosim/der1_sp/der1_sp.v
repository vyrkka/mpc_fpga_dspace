module der1_sp (
    clk_1,
        ce_1,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        sin_theta, cos_theta, rk11, dk12, dk11, x14, x13, x12, x11,
        fc0_input_ap_vld,
        uk11,
        uk11_ap_vld,
        uk12,
        uk12_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;

input   clk_1;
input   ce_1;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   fc0_input_ap_vld;
input [18:0] sin_theta;
input [18:0] cos_theta;
input [18:0] rk11;
input [18:0] dk12;
input [18:0] dk11;
input [18:0] x14;
input [18:0] x13;
input [18:0] x12;
input [18:0] x11;
output [18:0] uk11;
output uk11_ap_vld;
output [18:0] uk12;
output uk12_ap_vld;

reg [170:0] fc0_input;
always @ (*) begin
    fc0_input = {sin_theta, cos_theta, rk11, dk12, dk11, x14, x13, x12, x11};
end

reg ap_done;
reg ap_idle;
reg ap_ready;
reg uk11_ap_vld;
reg uk12_ap_vld;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state4_pp0_stage1_iter1;
wire    ap_block_state6_pp0_stage1_iter2;
wire    ap_block_state8_pp0_stage1_iter3;
wire    ap_block_state10_pp0_stage1_iter4;
wire    ap_block_state12_pp0_stage1_iter5;
wire    ap_block_state14_pp0_stage1_iter6;
wire    ap_block_state16_pp0_stage1_iter7;
wire    ap_block_state18_pp0_stage1_iter8;
wire    ap_block_state20_pp0_stage1_iter9;
wire    ap_block_state22_pp0_stage1_iter10;
wire    ap_block_state24_pp0_stage1_iter11;
wire    ap_block_state26_pp0_stage1_iter12;
wire    ap_block_state28_pp0_stage1_iter13;
wire    ap_block_state30_pp0_stage1_iter14;
wire    ap_block_state32_pp0_stage1_iter15;
wire    ap_block_state34_pp0_stage1_iter16;
wire    ap_block_state36_pp0_stage1_iter17;
wire    ap_block_pp0_stage1_subdone;
reg   [170:0] fc0_input_preg;
reg   [170:0] fc0_input_in_sig;
reg    fc0_input_ap_vld_preg;
reg    fc0_input_ap_vld_in_sig;
reg    fc0_input_blk_n;
wire    ap_block_pp0_stage0;
reg   [18:0] layer2_out_V_reg_723;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_state7_pp0_stage0_iter3;
wire    ap_block_state9_pp0_stage0_iter4;
wire    ap_block_state11_pp0_stage0_iter5;
wire    ap_block_state13_pp0_stage0_iter6;
wire    ap_block_state15_pp0_stage0_iter7;
wire    ap_block_state17_pp0_stage0_iter8;
wire    ap_block_state19_pp0_stage0_iter9;
wire    ap_block_state21_pp0_stage0_iter10;
wire    ap_block_state23_pp0_stage0_iter11;
wire    ap_block_state25_pp0_stage0_iter12;
wire    ap_block_state27_pp0_stage0_iter13;
wire    ap_block_state29_pp0_stage0_iter14;
wire    ap_block_state31_pp0_stage0_iter15;
wire    ap_block_state33_pp0_stage0_iter16;
wire    ap_block_state35_pp0_stage0_iter17;
reg    ap_block_pp0_stage0_11001;
reg   [18:0] layer2_out_V_1_reg_728;
reg   [18:0] layer2_out_V_2_reg_733;
reg   [18:0] layer2_out_V_3_reg_738;
reg   [18:0] layer2_out_V_4_reg_743;
reg   [18:0] layer2_out_V_5_reg_748;
reg   [18:0] layer2_out_V_6_reg_753;
reg   [18:0] layer2_out_V_7_reg_758;
reg   [18:0] layer2_out_V_8_reg_763;
reg   [18:0] layer2_out_V_9_reg_768;
reg   [18:0] layer2_out_V_19_reg_773;
reg   [18:0] layer2_out_V_10_reg_778;
reg   [18:0] layer2_out_V_11_reg_783;
reg   [18:0] layer2_out_V_12_reg_788;
reg   [18:0] layer2_out_V_13_reg_793;
reg   [18:0] layer2_out_V_14_reg_798;
reg   [18:0] layer2_out_V_15_reg_803;
reg   [18:0] layer2_out_V_16_reg_808;
reg   [18:0] layer2_out_V_17_reg_813;
reg   [18:0] layer2_out_V_18_reg_818;
reg   [18:0] layer4_out_V_reg_823;
wire    ap_block_pp0_stage1_11001;
reg   [18:0] layer4_out_V_1_reg_828;
reg   [18:0] layer4_out_V_2_reg_833;
reg   [18:0] layer4_out_V_3_reg_838;
reg   [18:0] layer4_out_V_4_reg_843;
reg   [18:0] layer4_out_V_5_reg_848;
reg   [18:0] layer4_out_V_6_reg_853;
reg   [18:0] layer4_out_V_7_reg_858;
reg   [18:0] layer4_out_V_8_reg_863;
reg   [18:0] layer4_out_V_9_reg_868;
reg   [18:0] layer4_out_V_19_reg_873;
reg   [18:0] layer4_out_V_10_reg_878;
reg   [18:0] layer4_out_V_11_reg_883;
reg   [18:0] layer4_out_V_12_reg_888;
reg   [18:0] layer4_out_V_13_reg_893;
reg   [18:0] layer4_out_V_14_reg_898;
reg   [18:0] layer4_out_V_15_reg_903;
reg   [18:0] layer4_out_V_16_reg_908;
reg   [18:0] layer4_out_V_17_reg_913;
reg   [18:0] layer4_out_V_18_reg_918;
reg   [18:0] layer7_out_V_reg_923;
reg   [18:0] layer7_out_V_1_reg_928;
reg   [18:0] layer7_out_V_2_reg_933;
reg   [18:0] layer7_out_V_3_reg_938;
reg   [18:0] layer7_out_V_4_reg_943;
reg   [18:0] layer7_out_V_5_reg_948;
reg   [18:0] layer7_out_V_6_reg_953;
reg   [18:0] layer7_out_V_7_reg_958;
reg   [18:0] layer7_out_V_8_reg_963;
reg   [18:0] layer7_out_V_9_reg_968;
reg   [18:0] layer7_out_V_15_reg_973;
reg   [18:0] layer7_out_V_10_reg_978;
reg   [18:0] layer7_out_V_11_reg_983;
reg   [18:0] layer7_out_V_12_reg_988;
reg   [18:0] layer7_out_V_13_reg_993;
reg   [18:0] layer7_out_V_14_reg_998;
reg   [18:0] layer10_out_V_reg_1003;
reg   [18:0] layer10_out_V_1_reg_1008;
reg   [18:0] layer10_out_V_2_reg_1013;
reg   [18:0] layer10_out_V_3_reg_1018;
reg   [18:0] layer10_out_V_4_reg_1023;
reg   [18:0] layer10_out_V_5_reg_1028;
reg   [18:0] layer10_out_V_6_reg_1033;
reg   [18:0] layer10_out_V_7_reg_1038;
reg   [18:0] layer10_out_V_8_reg_1043;
reg   [18:0] layer10_out_V_9_reg_1048;
reg   [18:0] layer10_out_V_14_reg_1053;
reg   [18:0] layer10_out_V_10_reg_1058;
reg   [18:0] layer10_out_V_11_reg_1063;
reg   [18:0] layer10_out_V_12_reg_1068;
reg   [18:0] layer10_out_V_13_reg_1073;
reg   [18:0] layer11_out_V_reg_1078;
reg   [18:0] layer11_out_V_1_reg_1083;
reg   [18:0] layer11_out_V_2_reg_1088;
reg   [18:0] layer11_out_V_3_reg_1093;
reg   [18:0] layer11_out_V_4_reg_1098;
reg   [18:0] layer13_out_V_reg_1103;
reg   [18:0] layer13_out_V_1_reg_1108;
reg   [18:0] layer13_out_V_2_reg_1113;
reg   [18:0] layer13_out_V_3_reg_1118;
reg   [18:0] layer13_out_V_4_reg_1123;
reg    ap_enable_reg_pp0_iter0_reg;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_start;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_done;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_idle;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_ready;
reg    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_ce;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_0;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_1;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_2;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_3;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_4;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_5;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_6;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_7;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_8;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_9;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_10;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_11;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_12;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_13;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_14;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_15;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_16;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_17;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_18;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_19;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call9;
wire    ap_block_state3_pp0_stage0_iter1_ignore_call9;
wire    ap_block_state5_pp0_stage0_iter2_ignore_call9;
wire    ap_block_state7_pp0_stage0_iter3_ignore_call9;
wire    ap_block_state9_pp0_stage0_iter4_ignore_call9;
wire    ap_block_state11_pp0_stage0_iter5_ignore_call9;
wire    ap_block_state13_pp0_stage0_iter6_ignore_call9;
wire    ap_block_state15_pp0_stage0_iter7_ignore_call9;
wire    ap_block_state17_pp0_stage0_iter8_ignore_call9;
wire    ap_block_state19_pp0_stage0_iter9_ignore_call9;
wire    ap_block_state21_pp0_stage0_iter10_ignore_call9;
wire    ap_block_state23_pp0_stage0_iter11_ignore_call9;
wire    ap_block_state25_pp0_stage0_iter12_ignore_call9;
wire    ap_block_state27_pp0_stage0_iter13_ignore_call9;
wire    ap_block_state29_pp0_stage0_iter14_ignore_call9;
wire    ap_block_state31_pp0_stage0_iter15_ignore_call9;
wire    ap_block_state33_pp0_stage0_iter16_ignore_call9;
wire    ap_block_state35_pp0_stage0_iter17_ignore_call9;
reg    ap_block_pp0_stage0_11001_ignoreCallOp38;
wire    ap_block_state2_pp0_stage1_iter0_ignore_call9;
wire    ap_block_state4_pp0_stage1_iter1_ignore_call9;
wire    ap_block_state6_pp0_stage1_iter2_ignore_call9;
wire    ap_block_state8_pp0_stage1_iter3_ignore_call9;
wire    ap_block_state10_pp0_stage1_iter4_ignore_call9;
wire    ap_block_state12_pp0_stage1_iter5_ignore_call9;
wire    ap_block_state14_pp0_stage1_iter6_ignore_call9;
wire    ap_block_state16_pp0_stage1_iter7_ignore_call9;
wire    ap_block_state18_pp0_stage1_iter8_ignore_call9;
wire    ap_block_state20_pp0_stage1_iter9_ignore_call9;
wire    ap_block_state22_pp0_stage1_iter10_ignore_call9;
wire    ap_block_state24_pp0_stage1_iter11_ignore_call9;
wire    ap_block_state26_pp0_stage1_iter12_ignore_call9;
wire    ap_block_state28_pp0_stage1_iter13_ignore_call9;
wire    ap_block_state30_pp0_stage1_iter14_ignore_call9;
wire    ap_block_state32_pp0_stage1_iter15_ignore_call9;
wire    ap_block_state34_pp0_stage1_iter16_ignore_call9;
wire    ap_block_state36_pp0_stage1_iter17_ignore_call9;
wire    ap_block_pp0_stage1_11001_ignoreCallOp39;
wire    call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_ready;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_0;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_1;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_2;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_3;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_4;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_5;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_6;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_7;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_8;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_9;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_10;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_11;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_12;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_13;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_14;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_15;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_16;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_17;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_18;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_19;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_start;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_done;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_idle;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_ready;
reg    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_ce;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_0;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_1;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_2;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_3;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_4;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_5;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_6;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_7;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_8;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_9;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_10;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_11;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_12;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_13;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_14;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_15;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call51;
wire    ap_block_state3_pp0_stage0_iter1_ignore_call51;
wire    ap_block_state5_pp0_stage0_iter2_ignore_call51;
wire    ap_block_state7_pp0_stage0_iter3_ignore_call51;
wire    ap_block_state9_pp0_stage0_iter4_ignore_call51;
wire    ap_block_state11_pp0_stage0_iter5_ignore_call51;
wire    ap_block_state13_pp0_stage0_iter6_ignore_call51;
wire    ap_block_state15_pp0_stage0_iter7_ignore_call51;
wire    ap_block_state17_pp0_stage0_iter8_ignore_call51;
wire    ap_block_state19_pp0_stage0_iter9_ignore_call51;
wire    ap_block_state21_pp0_stage0_iter10_ignore_call51;
wire    ap_block_state23_pp0_stage0_iter11_ignore_call51;
wire    ap_block_state25_pp0_stage0_iter12_ignore_call51;
wire    ap_block_state27_pp0_stage0_iter13_ignore_call51;
wire    ap_block_state29_pp0_stage0_iter14_ignore_call51;
wire    ap_block_state31_pp0_stage0_iter15_ignore_call51;
wire    ap_block_state33_pp0_stage0_iter16_ignore_call51;
wire    ap_block_state35_pp0_stage0_iter17_ignore_call51;
reg    ap_block_pp0_stage0_11001_ignoreCallOp84;
wire    ap_block_state2_pp0_stage1_iter0_ignore_call51;
wire    ap_block_state4_pp0_stage1_iter1_ignore_call51;
wire    ap_block_state6_pp0_stage1_iter2_ignore_call51;
wire    ap_block_state8_pp0_stage1_iter3_ignore_call51;
wire    ap_block_state10_pp0_stage1_iter4_ignore_call51;
wire    ap_block_state12_pp0_stage1_iter5_ignore_call51;
wire    ap_block_state14_pp0_stage1_iter6_ignore_call51;
wire    ap_block_state16_pp0_stage1_iter7_ignore_call51;
wire    ap_block_state18_pp0_stage1_iter8_ignore_call51;
wire    ap_block_state20_pp0_stage1_iter9_ignore_call51;
wire    ap_block_state22_pp0_stage1_iter10_ignore_call51;
wire    ap_block_state24_pp0_stage1_iter11_ignore_call51;
wire    ap_block_state26_pp0_stage1_iter12_ignore_call51;
wire    ap_block_state28_pp0_stage1_iter13_ignore_call51;
wire    ap_block_state30_pp0_stage1_iter14_ignore_call51;
wire    ap_block_state32_pp0_stage1_iter15_ignore_call51;
wire    ap_block_state34_pp0_stage1_iter16_ignore_call51;
wire    ap_block_state36_pp0_stage1_iter17_ignore_call51;
wire    ap_block_pp0_stage1_11001_ignoreCallOp85;
wire    call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_ready;
wire   [18:0] call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_0;
wire   [18:0] call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_1;
wire   [18:0] call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_2;
wire   [18:0] call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_3;
wire   [18:0] call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_4;
wire   [18:0] call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_5;
wire   [18:0] call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_6;
wire   [18:0] call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_7;
wire   [18:0] call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_8;
wire   [18:0] call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_9;
wire   [18:0] call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_10;
wire   [18:0] call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_11;
wire   [18:0] call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_12;
wire   [18:0] call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_13;
wire   [18:0] call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_14;
wire   [18:0] call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_15;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_start;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_done;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_idle;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_ready;
reg    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_ce;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_0;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_1;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_2;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_3;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_4;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_5;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_6;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_7;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_8;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_9;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_10;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_11;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_12;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_13;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_14;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call85;
wire    ap_block_state3_pp0_stage0_iter1_ignore_call85;
wire    ap_block_state5_pp0_stage0_iter2_ignore_call85;
wire    ap_block_state7_pp0_stage0_iter3_ignore_call85;
wire    ap_block_state9_pp0_stage0_iter4_ignore_call85;
wire    ap_block_state11_pp0_stage0_iter5_ignore_call85;
wire    ap_block_state13_pp0_stage0_iter6_ignore_call85;
wire    ap_block_state15_pp0_stage0_iter7_ignore_call85;
wire    ap_block_state17_pp0_stage0_iter8_ignore_call85;
wire    ap_block_state19_pp0_stage0_iter9_ignore_call85;
wire    ap_block_state21_pp0_stage0_iter10_ignore_call85;
wire    ap_block_state23_pp0_stage0_iter11_ignore_call85;
wire    ap_block_state25_pp0_stage0_iter12_ignore_call85;
wire    ap_block_state27_pp0_stage0_iter13_ignore_call85;
wire    ap_block_state29_pp0_stage0_iter14_ignore_call85;
wire    ap_block_state31_pp0_stage0_iter15_ignore_call85;
wire    ap_block_state33_pp0_stage0_iter16_ignore_call85;
wire    ap_block_state35_pp0_stage0_iter17_ignore_call85;
reg    ap_block_pp0_stage0_11001_ignoreCallOp127;
wire    ap_block_state2_pp0_stage1_iter0_ignore_call85;
wire    ap_block_state4_pp0_stage1_iter1_ignore_call85;
wire    ap_block_state6_pp0_stage1_iter2_ignore_call85;
wire    ap_block_state8_pp0_stage1_iter3_ignore_call85;
wire    ap_block_state10_pp0_stage1_iter4_ignore_call85;
wire    ap_block_state12_pp0_stage1_iter5_ignore_call85;
wire    ap_block_state14_pp0_stage1_iter6_ignore_call85;
wire    ap_block_state16_pp0_stage1_iter7_ignore_call85;
wire    ap_block_state18_pp0_stage1_iter8_ignore_call85;
wire    ap_block_state20_pp0_stage1_iter9_ignore_call85;
wire    ap_block_state22_pp0_stage1_iter10_ignore_call85;
wire    ap_block_state24_pp0_stage1_iter11_ignore_call85;
wire    ap_block_state26_pp0_stage1_iter12_ignore_call85;
wire    ap_block_state28_pp0_stage1_iter13_ignore_call85;
wire    ap_block_state30_pp0_stage1_iter14_ignore_call85;
wire    ap_block_state32_pp0_stage1_iter15_ignore_call85;
wire    ap_block_state34_pp0_stage1_iter16_ignore_call85;
wire    ap_block_state36_pp0_stage1_iter17_ignore_call85;
wire    ap_block_pp0_stage1_11001_ignoreCallOp128;
wire    call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_ready;
wire   [18:0] call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_0;
wire   [18:0] call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_1;
wire   [18:0] call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_2;
wire   [18:0] call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_3;
wire   [18:0] call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_4;
wire   [18:0] call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_5;
wire   [18:0] call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_6;
wire   [18:0] call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_7;
wire   [18:0] call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_8;
wire   [18:0] call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_9;
wire   [18:0] call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_10;
wire   [18:0] call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_11;
wire   [18:0] call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_12;
wire   [18:0] call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_13;
wire   [18:0] call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_14;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_start;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_done;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_idle;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_ready;
reg    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_ce;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_return_0;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_return_1;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_return_2;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_return_3;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_return_4;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call117;
wire    ap_block_state3_pp0_stage0_iter1_ignore_call117;
wire    ap_block_state5_pp0_stage0_iter2_ignore_call117;
wire    ap_block_state7_pp0_stage0_iter3_ignore_call117;
wire    ap_block_state9_pp0_stage0_iter4_ignore_call117;
wire    ap_block_state11_pp0_stage0_iter5_ignore_call117;
wire    ap_block_state13_pp0_stage0_iter6_ignore_call117;
wire    ap_block_state15_pp0_stage0_iter7_ignore_call117;
wire    ap_block_state17_pp0_stage0_iter8_ignore_call117;
wire    ap_block_state19_pp0_stage0_iter9_ignore_call117;
wire    ap_block_state21_pp0_stage0_iter10_ignore_call117;
wire    ap_block_state23_pp0_stage0_iter11_ignore_call117;
wire    ap_block_state25_pp0_stage0_iter12_ignore_call117;
wire    ap_block_state27_pp0_stage0_iter13_ignore_call117;
wire    ap_block_state29_pp0_stage0_iter14_ignore_call117;
wire    ap_block_state31_pp0_stage0_iter15_ignore_call117;
wire    ap_block_state33_pp0_stage0_iter16_ignore_call117;
wire    ap_block_state35_pp0_stage0_iter17_ignore_call117;
reg    ap_block_pp0_stage0_11001_ignoreCallOp166;
wire    ap_block_state2_pp0_stage1_iter0_ignore_call117;
wire    ap_block_state4_pp0_stage1_iter1_ignore_call117;
wire    ap_block_state6_pp0_stage1_iter2_ignore_call117;
wire    ap_block_state8_pp0_stage1_iter3_ignore_call117;
wire    ap_block_state10_pp0_stage1_iter4_ignore_call117;
wire    ap_block_state12_pp0_stage1_iter5_ignore_call117;
wire    ap_block_state14_pp0_stage1_iter6_ignore_call117;
wire    ap_block_state16_pp0_stage1_iter7_ignore_call117;
wire    ap_block_state18_pp0_stage1_iter8_ignore_call117;
wire    ap_block_state20_pp0_stage1_iter9_ignore_call117;
wire    ap_block_state22_pp0_stage1_iter10_ignore_call117;
wire    ap_block_state24_pp0_stage1_iter11_ignore_call117;
wire    ap_block_state26_pp0_stage1_iter12_ignore_call117;
wire    ap_block_state28_pp0_stage1_iter13_ignore_call117;
wire    ap_block_state30_pp0_stage1_iter14_ignore_call117;
wire    ap_block_state32_pp0_stage1_iter15_ignore_call117;
wire    ap_block_state34_pp0_stage1_iter16_ignore_call117;
wire    ap_block_state36_pp0_stage1_iter17_ignore_call117;
wire    ap_block_pp0_stage1_11001_ignoreCallOp167;
wire    call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_200_ap_ready;
wire   [18:0] call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_200_ap_return_0;
wire   [18:0] call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_200_ap_return_1;
wire   [18:0] call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_200_ap_return_2;
wire   [18:0] call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_200_ap_return_3;
wire   [18:0] call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_200_ap_return_4;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209_ap_start;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209_ap_done;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209_ap_idle;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209_ap_ready;
reg    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209_ap_ce;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209_ap_return_0;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209_ap_return_1;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call129;
wire    ap_block_state3_pp0_stage0_iter1_ignore_call129;
wire    ap_block_state5_pp0_stage0_iter2_ignore_call129;
wire    ap_block_state7_pp0_stage0_iter3_ignore_call129;
wire    ap_block_state9_pp0_stage0_iter4_ignore_call129;
wire    ap_block_state11_pp0_stage0_iter5_ignore_call129;
wire    ap_block_state13_pp0_stage0_iter6_ignore_call129;
wire    ap_block_state15_pp0_stage0_iter7_ignore_call129;
wire    ap_block_state17_pp0_stage0_iter8_ignore_call129;
wire    ap_block_state19_pp0_stage0_iter9_ignore_call129;
wire    ap_block_state21_pp0_stage0_iter10_ignore_call129;
wire    ap_block_state23_pp0_stage0_iter11_ignore_call129;
wire    ap_block_state25_pp0_stage0_iter12_ignore_call129;
wire    ap_block_state27_pp0_stage0_iter13_ignore_call129;
wire    ap_block_state29_pp0_stage0_iter14_ignore_call129;
wire    ap_block_state31_pp0_stage0_iter15_ignore_call129;
wire    ap_block_state33_pp0_stage0_iter16_ignore_call129;
wire    ap_block_state35_pp0_stage0_iter17_ignore_call129;
reg    ap_block_pp0_stage0_11001_ignoreCallOp184;
wire    ap_block_state2_pp0_stage1_iter0_ignore_call129;
wire    ap_block_state4_pp0_stage1_iter1_ignore_call129;
wire    ap_block_state6_pp0_stage1_iter2_ignore_call129;
wire    ap_block_state8_pp0_stage1_iter3_ignore_call129;
wire    ap_block_state10_pp0_stage1_iter4_ignore_call129;
wire    ap_block_state12_pp0_stage1_iter5_ignore_call129;
wire    ap_block_state14_pp0_stage1_iter6_ignore_call129;
wire    ap_block_state16_pp0_stage1_iter7_ignore_call129;
wire    ap_block_state18_pp0_stage1_iter8_ignore_call129;
wire    ap_block_state20_pp0_stage1_iter9_ignore_call129;
wire    ap_block_state22_pp0_stage1_iter10_ignore_call129;
wire    ap_block_state24_pp0_stage1_iter11_ignore_call129;
wire    ap_block_state26_pp0_stage1_iter12_ignore_call129;
wire    ap_block_state28_pp0_stage1_iter13_ignore_call129;
wire    ap_block_state30_pp0_stage1_iter14_ignore_call129;
wire    ap_block_state32_pp0_stage1_iter15_ignore_call129;
wire    ap_block_state34_pp0_stage1_iter16_ignore_call129;
wire    ap_block_state36_pp0_stage1_iter17_ignore_call129;
wire    ap_block_pp0_stage1_11001_ignoreCallOp185;
wire    call_ret9_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config16_s_fu_218_ap_ready;
wire   [18:0] call_ret9_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config16_s_fu_218_ap_return_0;
wire   [18:0] call_ret9_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config16_s_fu_218_ap_return_1;
reg    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_start_reg;
reg    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_onepulse_ap_start;
wire    ap_block_pp0_stage1;
reg    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_start_reg;
reg    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_start_reg;
reg    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_start_reg;
reg    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209_ap_start_reg;
wire    ap_block_pp0_stage1_01001;
reg   [1:0] ap_NS_fsm;
reg    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to17;
reg    ap_idle_pp0_0to16;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
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
#0 fc0_input_preg = 171'd0;
#0 fc0_input_ap_vld_preg = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_start_reg = 1'b0;
#0 grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_start_reg = 1'b0;
#0 grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_start_reg = 1'b0;
#0 grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_start_reg = 1'b0;
#0 grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209_ap_start_reg = 1'b0;
end

der1_sp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_start),
    .ap_done(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_done),
    .ap_idle(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_idle),
    .ap_ready(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_ready),
    .ap_ce(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_ce),
    .p_read(fc0_input_in_sig),
    .ap_return_0(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_1),
    .ap_return_2(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_2),
    .ap_return_3(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_3),
    .ap_return_4(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_4),
    .ap_return_5(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_5),
    .ap_return_6(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_6),
    .ap_return_7(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_7),
    .ap_return_8(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_8),
    .ap_return_9(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_9),
    .ap_return_10(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_10),
    .ap_return_11(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_11),
    .ap_return_12(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_12),
    .ap_return_13(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_13),
    .ap_return_14(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_14),
    .ap_return_15(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_15),
    .ap_return_16(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_16),
    .ap_return_17(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_17),
    .ap_return_18(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_18),
    .ap_return_19(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_19)
);

der1_sp_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74(
    .ap_ready(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_ready),
    .p_read(layer2_out_V_reg_723),
    .p_read1(layer2_out_V_1_reg_728),
    .p_read2(layer2_out_V_2_reg_733),
    .p_read3(layer2_out_V_3_reg_738),
    .p_read5(layer2_out_V_4_reg_743),
    .p_read7(layer2_out_V_5_reg_748),
    .p_read8(layer2_out_V_6_reg_753),
    .p_read9(layer2_out_V_7_reg_758),
    .p_read11(layer2_out_V_8_reg_763),
    .p_read12(layer2_out_V_9_reg_768),
    .p_read16(layer2_out_V_19_reg_773),
    .p_read17(layer2_out_V_10_reg_778),
    .p_read20(layer2_out_V_11_reg_783),
    .p_read21(layer2_out_V_12_reg_788),
    .p_read22(layer2_out_V_13_reg_793),
    .p_read23(layer2_out_V_14_reg_798),
    .p_read24(layer2_out_V_15_reg_803),
    .p_read25(layer2_out_V_16_reg_808),
    .p_read27(layer2_out_V_17_reg_813),
    .p_read29(layer2_out_V_18_reg_818),
    .ap_return_0(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_0),
    .ap_return_1(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_1),
    .ap_return_2(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_2),
    .ap_return_3(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_3),
    .ap_return_4(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_4),
    .ap_return_5(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_5),
    .ap_return_6(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_6),
    .ap_return_7(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_7),
    .ap_return_8(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_8),
    .ap_return_9(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_9),
    .ap_return_10(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_10),
    .ap_return_11(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_11),
    .ap_return_12(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_12),
    .ap_return_13(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_13),
    .ap_return_14(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_14),
    .ap_return_15(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_15),
    .ap_return_16(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_16),
    .ap_return_17(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_17),
    .ap_return_18(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_18),
    .ap_return_19(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_19)
);

der1_sp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_start),
    .ap_done(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_done),
    .ap_idle(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_idle),
    .ap_ready(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_ready),
    .ap_ce(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_ce),
    .p_read(layer4_out_V_reg_823),
    .p_read1(layer4_out_V_1_reg_828),
    .p_read2(layer4_out_V_2_reg_833),
    .p_read3(layer4_out_V_3_reg_838),
    .p_read4(layer4_out_V_4_reg_843),
    .p_read5(layer4_out_V_5_reg_848),
    .p_read6(layer4_out_V_6_reg_853),
    .p_read7(layer4_out_V_7_reg_858),
    .p_read8(layer4_out_V_8_reg_863),
    .p_read9(layer4_out_V_9_reg_868),
    .p_read10(layer4_out_V_19_reg_873),
    .p_read11(layer4_out_V_10_reg_878),
    .p_read12(layer4_out_V_11_reg_883),
    .p_read13(layer4_out_V_12_reg_888),
    .p_read14(layer4_out_V_13_reg_893),
    .p_read15(layer4_out_V_14_reg_898),
    .p_read16(layer4_out_V_15_reg_903),
    .p_read17(layer4_out_V_16_reg_908),
    .p_read18(layer4_out_V_17_reg_913),
    .p_read19(layer4_out_V_18_reg_918),
    .ap_return_0(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_1),
    .ap_return_2(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_2),
    .ap_return_3(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_3),
    .ap_return_4(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_4),
    .ap_return_5(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_5),
    .ap_return_6(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_6),
    .ap_return_7(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_7),
    .ap_return_8(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_8),
    .ap_return_9(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_9),
    .ap_return_10(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_10),
    .ap_return_11(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_11),
    .ap_return_12(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_12),
    .ap_return_13(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_13),
    .ap_return_14(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_14),
    .ap_return_15(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_15)
);

der1_sp_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122(
    .ap_ready(call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_ready),
    .p_read(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_0),
    .p_read1(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_1),
    .p_read2(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_2),
    .p_read5(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_3),
    .p_read7(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_4),
    .p_read9(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_5),
    .p_read10(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_6),
    .p_read11(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_7),
    .p_read12(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_8),
    .p_read13(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_9),
    .p_read18(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_10),
    .p_read21(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_11),
    .p_read22(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_12),
    .p_read27(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_13),
    .p_read28(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_14),
    .p_read29(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_return_15),
    .ap_return_0(call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_0),
    .ap_return_1(call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_1),
    .ap_return_2(call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_2),
    .ap_return_3(call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_3),
    .ap_return_4(call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_4),
    .ap_return_5(call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_5),
    .ap_return_6(call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_6),
    .ap_return_7(call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_7),
    .ap_return_8(call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_8),
    .ap_return_9(call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_9),
    .ap_return_10(call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_10),
    .ap_return_11(call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_11),
    .ap_return_12(call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_12),
    .ap_return_13(call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_13),
    .ap_return_14(call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_14),
    .ap_return_15(call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_15)
);

der1_sp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_start),
    .ap_done(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_done),
    .ap_idle(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_idle),
    .ap_ready(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_ready),
    .ap_ce(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_ce),
    .p_read(layer7_out_V_reg_923),
    .p_read1(layer7_out_V_1_reg_928),
    .p_read2(layer7_out_V_2_reg_933),
    .p_read3(layer7_out_V_3_reg_938),
    .p_read4(layer7_out_V_4_reg_943),
    .p_read5(layer7_out_V_5_reg_948),
    .p_read6(layer7_out_V_6_reg_953),
    .p_read7(layer7_out_V_7_reg_958),
    .p_read8(layer7_out_V_8_reg_963),
    .p_read9(layer7_out_V_9_reg_968),
    .p_read10(layer7_out_V_15_reg_973),
    .p_read11(layer7_out_V_10_reg_978),
    .p_read12(layer7_out_V_11_reg_983),
    .p_read13(layer7_out_V_12_reg_988),
    .p_read14(layer7_out_V_13_reg_993),
    .p_read15(layer7_out_V_14_reg_998),
    .ap_return_0(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_1),
    .ap_return_2(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_2),
    .ap_return_3(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_3),
    .ap_return_4(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_4),
    .ap_return_5(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_5),
    .ap_return_6(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_6),
    .ap_return_7(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_7),
    .ap_return_8(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_8),
    .ap_return_9(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_9),
    .ap_return_10(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_10),
    .ap_return_11(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_11),
    .ap_return_12(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_12),
    .ap_return_13(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_13),
    .ap_return_14(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_14)
);

der1_sp_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162(
    .ap_ready(call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_ready),
    .p_read(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_0),
    .p_read1(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_1),
    .p_read7(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_2),
    .p_read8(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_3),
    .p_read9(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_4),
    .p_read10(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_5),
    .p_read12(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_6),
    .p_read16(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_7),
    .p_read17(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_8),
    .p_read18(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_9),
    .p_read22(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_10),
    .p_read24(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_11),
    .p_read26(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_12),
    .p_read27(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_13),
    .p_read29(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_return_14),
    .ap_return_0(call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_0),
    .ap_return_1(call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_1),
    .ap_return_2(call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_2),
    .ap_return_3(call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_3),
    .ap_return_4(call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_4),
    .ap_return_5(call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_5),
    .ap_return_6(call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_6),
    .ap_return_7(call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_7),
    .ap_return_8(call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_8),
    .ap_return_9(call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_9),
    .ap_return_10(call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_10),
    .ap_return_11(call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_11),
    .ap_return_12(call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_12),
    .ap_return_13(call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_13),
    .ap_return_14(call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_14)
);

der1_sp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_start),
    .ap_done(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_done),
    .ap_idle(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_idle),
    .ap_ready(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_ready),
    .ap_ce(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_ce),
    .p_read(layer10_out_V_reg_1003),
    .p_read1(layer10_out_V_1_reg_1008),
    .p_read2(layer10_out_V_2_reg_1013),
    .p_read3(layer10_out_V_3_reg_1018),
    .p_read4(layer10_out_V_4_reg_1023),
    .p_read5(layer10_out_V_5_reg_1028),
    .p_read6(layer10_out_V_6_reg_1033),
    .p_read7(layer10_out_V_7_reg_1038),
    .p_read8(layer10_out_V_8_reg_1043),
    .p_read9(layer10_out_V_9_reg_1048),
    .p_read10(layer10_out_V_14_reg_1053),
    .p_read11(layer10_out_V_10_reg_1058),
    .p_read12(layer10_out_V_11_reg_1063),
    .p_read13(layer10_out_V_12_reg_1068),
    .p_read14(layer10_out_V_13_reg_1073),
    .ap_return_0(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_return_1),
    .ap_return_2(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_return_2),
    .ap_return_3(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_return_3),
    .ap_return_4(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_return_4)
);

der1_sp_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_200(
    .ap_ready(call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_200_ap_ready),
    .p_read7(layer11_out_V_reg_1078),
    .p_read12(layer11_out_V_1_reg_1083),
    .p_read13(layer11_out_V_2_reg_1088),
    .p_read24(layer11_out_V_3_reg_1093),
    .p_read27(layer11_out_V_4_reg_1098),
    .ap_return_0(call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_200_ap_return_0),
    .ap_return_1(call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_200_ap_return_1),
    .ap_return_2(call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_200_ap_return_2),
    .ap_return_3(call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_200_ap_return_3),
    .ap_return_4(call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_200_ap_return_4)
);

der1_sp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209_ap_start),
    .ap_done(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209_ap_done),
    .ap_idle(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209_ap_idle),
    .ap_ready(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209_ap_ready),
    .ap_ce(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209_ap_ce),
    .p_read(layer13_out_V_reg_1103),
    .p_read1(layer13_out_V_1_reg_1108),
    .p_read2(layer13_out_V_2_reg_1113),
    .p_read3(layer13_out_V_3_reg_1118),
    .p_read4(layer13_out_V_4_reg_1123),
    .ap_return_0(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209_ap_return_1)
);

der1_sp_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config16_s call_ret9_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config16_s_fu_218(
    .ap_ready(call_ret9_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config16_s_fu_218_ap_ready),
    .p_read(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209_ap_return_0),
    .p_read1(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209_ap_return_1),
    .ap_return_0(call_ret9_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config16_s_fu_218_ap_return_0),
    .ap_return_1(call_ret9_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config16_s_fu_218_ap_return_1)
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
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        fc0_input_ap_vld_preg <= 1'b0;
    end else begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
            fc0_input_ap_vld_preg <= 1'b0;
        end else if ((~((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0)) & (fc0_input_ap_vld == 1'b1))) begin
            fc0_input_ap_vld_preg <= fc0_input_ap_vld;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        fc0_input_preg <= 171'd0;
    end else begin
        if ((~((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0)) & (fc0_input_ap_vld == 1'b1))) begin
            fc0_input_preg <= fc0_input;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
            grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_start_reg <= 1'b1;
        end else if ((grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_ready == 1'b1)) begin
            grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
            grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209_ap_start_reg <= 1'b1;
        end else if ((grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209_ap_ready == 1'b1)) begin
            grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
            grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_start_reg <= 1'b1;
        end else if ((grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_ready == 1'b1)) begin
            grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
            grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_start_reg <= 1'b1;
        end else if ((grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_ready == 1'b1)) begin
            grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
            grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_start_reg <= 1'b1;
        end else if ((grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_ready == 1'b1)) begin
            grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        layer10_out_V_10_reg_1058 <= call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_11;
        layer10_out_V_11_reg_1063 <= call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_12;
        layer10_out_V_12_reg_1068 <= call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_13;
        layer10_out_V_13_reg_1073 <= call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_14;
        layer10_out_V_14_reg_1053 <= call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_10;
        layer10_out_V_1_reg_1008 <= call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_1;
        layer10_out_V_2_reg_1013 <= call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_2;
        layer10_out_V_3_reg_1018 <= call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_3;
        layer10_out_V_4_reg_1023 <= call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_4;
        layer10_out_V_5_reg_1028 <= call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_5;
        layer10_out_V_6_reg_1033 <= call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_6;
        layer10_out_V_7_reg_1038 <= call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_7;
        layer10_out_V_8_reg_1043 <= call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_8;
        layer10_out_V_9_reg_1048 <= call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_9;
        layer10_out_V_reg_1003 <= call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_162_ap_return_0;
        layer13_out_V_1_reg_1108 <= call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_200_ap_return_1;
        layer13_out_V_2_reg_1113 <= call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_200_ap_return_2;
        layer13_out_V_3_reg_1118 <= call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_200_ap_return_3;
        layer13_out_V_4_reg_1123 <= call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_200_ap_return_4;
        layer13_out_V_reg_1103 <= call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_200_ap_return_0;
        layer4_out_V_10_reg_878 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_11;
        layer4_out_V_11_reg_883 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_12;
        layer4_out_V_12_reg_888 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_13;
        layer4_out_V_13_reg_893 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_14;
        layer4_out_V_14_reg_898 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_15;
        layer4_out_V_15_reg_903 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_16;
        layer4_out_V_16_reg_908 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_17;
        layer4_out_V_17_reg_913 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_18;
        layer4_out_V_18_reg_918 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_19;
        layer4_out_V_19_reg_873 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_10;
        layer4_out_V_1_reg_828 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_1;
        layer4_out_V_2_reg_833 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_2;
        layer4_out_V_3_reg_838 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_3;
        layer4_out_V_4_reg_843 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_4;
        layer4_out_V_5_reg_848 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_5;
        layer4_out_V_6_reg_853 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_6;
        layer4_out_V_7_reg_858 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_7;
        layer4_out_V_8_reg_863 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_8;
        layer4_out_V_9_reg_868 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_9;
        layer4_out_V_reg_823 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_0;
        layer7_out_V_10_reg_978 <= call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_11;
        layer7_out_V_11_reg_983 <= call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_12;
        layer7_out_V_12_reg_988 <= call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_13;
        layer7_out_V_13_reg_993 <= call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_14;
        layer7_out_V_14_reg_998 <= call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_15;
        layer7_out_V_15_reg_973 <= call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_10;
        layer7_out_V_1_reg_928 <= call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_1;
        layer7_out_V_2_reg_933 <= call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_2;
        layer7_out_V_3_reg_938 <= call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_3;
        layer7_out_V_4_reg_943 <= call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_4;
        layer7_out_V_5_reg_948 <= call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_5;
        layer7_out_V_6_reg_953 <= call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_6;
        layer7_out_V_7_reg_958 <= call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_7;
        layer7_out_V_8_reg_963 <= call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_8;
        layer7_out_V_9_reg_968 <= call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_9;
        layer7_out_V_reg_923 <= call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_122_ap_return_0;
    end
end

always @ (posedge clk_1) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        layer11_out_V_1_reg_1083 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_return_1;
        layer11_out_V_2_reg_1088 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_return_2;
        layer11_out_V_3_reg_1093 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_return_3;
        layer11_out_V_4_reg_1098 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_return_4;
        layer11_out_V_reg_1078 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_return_0;
        layer2_out_V_10_reg_778 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_11;
        layer2_out_V_11_reg_783 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_12;
        layer2_out_V_12_reg_788 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_13;
        layer2_out_V_13_reg_793 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_14;
        layer2_out_V_14_reg_798 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_15;
        layer2_out_V_15_reg_803 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_16;
        layer2_out_V_16_reg_808 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_17;
        layer2_out_V_17_reg_813 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_18;
        layer2_out_V_18_reg_818 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_19;
        layer2_out_V_19_reg_773 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_10;
        layer2_out_V_1_reg_728 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_1;
        layer2_out_V_2_reg_733 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_2;
        layer2_out_V_3_reg_738 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_3;
        layer2_out_V_4_reg_743 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_4;
        layer2_out_V_5_reg_748 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_5;
        layer2_out_V_6_reg_753 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_6;
        layer2_out_V_7_reg_758 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_7;
        layer2_out_V_8_reg_763 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_8;
        layer2_out_V_9_reg_768 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_9;
        layer2_out_V_reg_723 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to16 = 1'b1;
    end else begin
        ap_idle_pp0_0to16 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to17 = 1'b1;
    end else begin
        ap_idle_pp0_1to17 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to16 == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
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
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp167)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp166)))) begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp185)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp184)))) begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp39)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp38)))) begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_onepulse_ap_start = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_onepulse_ap_start = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp85)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp84)))) begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp128)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp127)))) begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        uk11_ap_vld = 1'b1;
    end else begin
        uk11_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        uk12_ap_vld = 1'b1;
    end else begin
        uk12_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start == 1'b0) & (ap_idle_pp0_1to17 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((((ap_reset_idle_pp0 == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone)) | ((ap_reset_idle_pp0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (fc0_input_ap_vld_in_sig == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp127 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (fc0_input_ap_vld_in_sig == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp166 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (fc0_input_ap_vld_in_sig == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp184 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (fc0_input_ap_vld_in_sig == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp38 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (fc0_input_ap_vld_in_sig == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp84 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (fc0_input_ap_vld_in_sig == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & (fc0_input_ap_vld_in_sig == 1'b0));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001_ignoreCallOp128 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001_ignoreCallOp167 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001_ignoreCallOp185 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001_ignoreCallOp39 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001_ignoreCallOp85 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter4_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter4_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter4_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter4_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter4_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter5_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter5_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter5_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter5_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter5_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage1_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage1_iter5_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage1_iter5_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage1_iter5_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage1_iter5_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage1_iter5_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter6_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter6_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter6_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter6_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter6_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter6_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter6_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter6_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter6_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter6_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter7_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter7_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter7_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter7_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter7_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage1_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage1_iter7_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage1_iter7_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage1_iter7_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage1_iter7_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage1_iter7_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter8_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter8_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter8_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter8_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter8_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage1_iter8 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage1_iter8_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage1_iter8_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage1_iter8_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage1_iter8_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage1_iter8_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter9_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter9_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter9_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter9_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter9_ignore_call9 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call117 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call129 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call51 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call85 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call9 = (fc0_input_ap_vld_in_sig == 1'b0);
end

assign ap_block_state20_pp0_stage1_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage1_iter9_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage1_iter9_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage1_iter9_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage1_iter9_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage1_iter9_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter10_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter10_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter10_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter10_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter10_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage1_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage1_iter10_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage1_iter10_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage1_iter10_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage1_iter10_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage1_iter10_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage0_iter11_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage0_iter11_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage0_iter11_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage0_iter11_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage0_iter11_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage1_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage1_iter11_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage1_iter11_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage1_iter11_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage1_iter11_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage1_iter11_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage0_iter12 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage0_iter12_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage0_iter12_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage0_iter12_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage0_iter12_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage0_iter12_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage1_iter12 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage1_iter12_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage1_iter12_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage1_iter12_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage1_iter12_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage1_iter12_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state27_pp0_stage0_iter13 = ~(1'b1 == 1'b1);

assign ap_block_state27_pp0_stage0_iter13_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state27_pp0_stage0_iter13_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state27_pp0_stage0_iter13_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state27_pp0_stage0_iter13_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state27_pp0_stage0_iter13_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state28_pp0_stage1_iter13 = ~(1'b1 == 1'b1);

assign ap_block_state28_pp0_stage1_iter13_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state28_pp0_stage1_iter13_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state28_pp0_stage1_iter13_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state28_pp0_stage1_iter13_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state28_pp0_stage1_iter13_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state29_pp0_stage0_iter14 = ~(1'b1 == 1'b1);

assign ap_block_state29_pp0_stage0_iter14_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state29_pp0_stage0_iter14_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state29_pp0_stage0_iter14_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state29_pp0_stage0_iter14_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state29_pp0_stage0_iter14_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state30_pp0_stage1_iter14 = ~(1'b1 == 1'b1);

assign ap_block_state30_pp0_stage1_iter14_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state30_pp0_stage1_iter14_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state30_pp0_stage1_iter14_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state30_pp0_stage1_iter14_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state30_pp0_stage1_iter14_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state31_pp0_stage0_iter15 = ~(1'b1 == 1'b1);

assign ap_block_state31_pp0_stage0_iter15_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state31_pp0_stage0_iter15_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state31_pp0_stage0_iter15_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state31_pp0_stage0_iter15_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state31_pp0_stage0_iter15_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state32_pp0_stage1_iter15 = ~(1'b1 == 1'b1);

assign ap_block_state32_pp0_stage1_iter15_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state32_pp0_stage1_iter15_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state32_pp0_stage1_iter15_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state32_pp0_stage1_iter15_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state32_pp0_stage1_iter15_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state33_pp0_stage0_iter16 = ~(1'b1 == 1'b1);

assign ap_block_state33_pp0_stage0_iter16_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state33_pp0_stage0_iter16_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state33_pp0_stage0_iter16_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state33_pp0_stage0_iter16_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state33_pp0_stage0_iter16_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state34_pp0_stage1_iter16 = ~(1'b1 == 1'b1);

assign ap_block_state34_pp0_stage1_iter16_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state34_pp0_stage1_iter16_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state34_pp0_stage1_iter16_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state34_pp0_stage1_iter16_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state34_pp0_stage1_iter16_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state35_pp0_stage0_iter17 = ~(1'b1 == 1'b1);

assign ap_block_state35_pp0_stage0_iter17_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state35_pp0_stage0_iter17_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state35_pp0_stage0_iter17_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state35_pp0_stage0_iter17_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state35_pp0_stage0_iter17_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state36_pp0_stage1_iter17 = ~(1'b1 == 1'b1);

assign ap_block_state36_pp0_stage1_iter17_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state36_pp0_stage1_iter17_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state36_pp0_stage1_iter17_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state36_pp0_stage1_iter17_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state36_pp0_stage1_iter17_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter2_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter2_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter2_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter2_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter2_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter3_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter3_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter3_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter3_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter3_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage1_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage1_iter3_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage1_iter3_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage1_iter3_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage1_iter3_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage1_iter3_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter4_ignore_call117 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter4_ignore_call129 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter4_ignore_call51 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter4_ignore_call85 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter4_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_start = grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_181_ap_start_reg;

assign grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209_ap_start = grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_209_ap_start_reg;

assign grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_start = (grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_onepulse_ap_start | grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_start_reg);

assign grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_start = grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_98_ap_start_reg;

assign grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_start = grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_142_ap_start_reg;

assign uk11 = call_ret9_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config16_s_fu_218_ap_return_0;

assign uk12 = call_ret9_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config16_s_fu_218_ap_return_1;

endmodule //der1_sp
