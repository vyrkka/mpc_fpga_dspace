module der2_sp (
    clk_1,
        ce_1,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        rk22, rk21, dk22, dk21, x23, x22, x21,
        fc0_input_ap_vld,
        uk21,
        uk21_ap_vld,
        uk22,
        uk22_ap_vld
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
input [18:0] rk22;
input [18:0] rk21;
input [18:0] dk22;
input [18:0] dk21;
input [18:0] x23;
input [18:0] x22;
input [18:0] x21;
output [18:0] uk21;
output uk21_ap_vld;
output [18:0] uk22;
output uk22_ap_vld;

reg [132:0] fc0_input;
always @ (*) begin
    fc0_input = {rk22, rk21, dk22, dk21, x23, x22, x21};
end

reg ap_done;
reg ap_idle;
reg ap_ready;
reg uk21_ap_vld;
reg uk22_ap_vld;

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
wire    ap_block_pp0_stage1_subdone;
reg   [132:0] fc0_input_preg;
reg   [132:0] fc0_input_in_sig;
reg    fc0_input_ap_vld_preg;
reg    fc0_input_ap_vld_in_sig;
reg    fc0_input_blk_n;
wire    ap_block_pp0_stage0;
reg   [18:0] layer2_out_V_reg_347;
wire    ap_block_pp0_stage1_11001;
reg   [18:0] layer2_out_V_1_reg_352;
reg   [18:0] layer2_out_V_2_reg_357;
reg   [18:0] layer2_out_V_3_reg_362;
reg   [18:0] layer2_out_V_4_reg_367;
reg   [18:0] layer2_out_V_5_reg_372;
reg   [18:0] layer2_out_V_6_reg_377;
reg   [18:0] layer2_out_V_7_reg_382;
reg   [18:0] layer4_out_V_reg_387;
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
reg    ap_block_pp0_stage0_11001;
reg   [18:0] layer4_out_V_1_reg_392;
reg   [18:0] layer4_out_V_2_reg_397;
reg   [18:0] layer4_out_V_3_reg_402;
reg   [18:0] layer4_out_V_4_reg_407;
reg   [18:0] layer4_out_V_5_reg_412;
reg   [18:0] layer4_out_V_6_reg_417;
reg   [18:0] layer4_out_V_7_reg_422;
reg   [18:0] layer5_out_V_reg_427;
reg   [18:0] layer5_out_V_1_reg_432;
reg   [18:0] layer5_out_V_2_reg_437;
reg   [18:0] layer5_out_V_3_reg_442;
reg   [18:0] layer5_out_V_4_reg_447;
reg   [18:0] layer5_out_V_5_reg_452;
reg   [18:0] layer5_out_V_6_reg_457;
reg   [18:0] layer5_out_V_7_reg_462;
reg   [18:0] layer7_out_V_reg_467;
reg   [18:0] layer7_out_V_1_reg_472;
reg   [18:0] layer7_out_V_2_reg_477;
reg   [18:0] layer7_out_V_3_reg_482;
reg   [18:0] layer7_out_V_4_reg_487;
reg   [18:0] layer7_out_V_5_reg_492;
reg   [18:0] layer7_out_V_6_reg_497;
reg   [18:0] layer7_out_V_7_reg_502;
reg   [18:0] layer10_out_V_reg_507;
reg   [18:0] layer10_out_V_1_reg_512;
reg   [18:0] layer10_out_V_2_reg_517;
reg   [18:0] layer13_out_V_reg_522;
reg   [18:0] layer13_out_V_1_reg_527;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_block_pp0_stage0_subdone;
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
reg    ap_block_pp0_stage0_11001_ignoreCallOp23;
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
wire    ap_block_pp0_stage1_11001_ignoreCallOp24;
wire    call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_ready;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_0;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_1;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_2;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_3;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_4;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_5;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_6;
wire   [18:0] call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_7;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_start;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_done;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_idle;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_ready;
reg    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_ce;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_return_0;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_return_1;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_return_2;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_return_3;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_return_4;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_return_5;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_return_6;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_return_7;
wire    ap_block_state2_pp0_stage1_iter0_ignore_call27;
wire    ap_block_state4_pp0_stage1_iter1_ignore_call27;
wire    ap_block_state6_pp0_stage1_iter2_ignore_call27;
wire    ap_block_state8_pp0_stage1_iter3_ignore_call27;
wire    ap_block_state10_pp0_stage1_iter4_ignore_call27;
wire    ap_block_state12_pp0_stage1_iter5_ignore_call27;
wire    ap_block_state14_pp0_stage1_iter6_ignore_call27;
wire    ap_block_state16_pp0_stage1_iter7_ignore_call27;
wire    ap_block_state18_pp0_stage1_iter8_ignore_call27;
wire    ap_block_state20_pp0_stage1_iter9_ignore_call27;
wire    ap_block_pp0_stage1_11001_ignoreCallOp44;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call27;
wire    ap_block_state3_pp0_stage0_iter1_ignore_call27;
wire    ap_block_state5_pp0_stage0_iter2_ignore_call27;
wire    ap_block_state7_pp0_stage0_iter3_ignore_call27;
wire    ap_block_state9_pp0_stage0_iter4_ignore_call27;
wire    ap_block_state11_pp0_stage0_iter5_ignore_call27;
wire    ap_block_state13_pp0_stage0_iter6_ignore_call27;
wire    ap_block_state15_pp0_stage0_iter7_ignore_call27;
wire    ap_block_state17_pp0_stage0_iter8_ignore_call27;
wire    ap_block_state19_pp0_stage0_iter9_ignore_call27;
wire    ap_block_state21_pp0_stage0_iter10_ignore_call27;
reg    ap_block_pp0_stage0_11001_ignoreCallOp45;
wire    call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98_ap_ready;
wire   [18:0] call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98_ap_return_0;
wire   [18:0] call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98_ap_return_1;
wire   [18:0] call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98_ap_return_2;
wire   [18:0] call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98_ap_return_3;
wire   [18:0] call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98_ap_return_4;
wire   [18:0] call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98_ap_return_5;
wire   [18:0] call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98_ap_return_6;
wire   [18:0] call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98_ap_return_7;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_start;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_done;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_idle;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_ready;
reg    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_ce;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_return_0;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_return_1;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_return_2;
wire    ap_block_state2_pp0_stage1_iter0_ignore_call45;
wire    ap_block_state4_pp0_stage1_iter1_ignore_call45;
wire    ap_block_state6_pp0_stage1_iter2_ignore_call45;
wire    ap_block_state8_pp0_stage1_iter3_ignore_call45;
wire    ap_block_state10_pp0_stage1_iter4_ignore_call45;
wire    ap_block_state12_pp0_stage1_iter5_ignore_call45;
wire    ap_block_state14_pp0_stage1_iter6_ignore_call45;
wire    ap_block_state16_pp0_stage1_iter7_ignore_call45;
wire    ap_block_state18_pp0_stage1_iter8_ignore_call45;
wire    ap_block_state20_pp0_stage1_iter9_ignore_call45;
wire    ap_block_pp0_stage1_11001_ignoreCallOp66;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call45;
wire    ap_block_state3_pp0_stage0_iter1_ignore_call45;
wire    ap_block_state5_pp0_stage0_iter2_ignore_call45;
wire    ap_block_state7_pp0_stage0_iter3_ignore_call45;
wire    ap_block_state9_pp0_stage0_iter4_ignore_call45;
wire    ap_block_state11_pp0_stage0_iter5_ignore_call45;
wire    ap_block_state13_pp0_stage0_iter6_ignore_call45;
wire    ap_block_state15_pp0_stage0_iter7_ignore_call45;
wire    ap_block_state17_pp0_stage0_iter8_ignore_call45;
wire    ap_block_state19_pp0_stage0_iter9_ignore_call45;
wire    ap_block_state21_pp0_stage0_iter10_ignore_call45;
reg    ap_block_pp0_stage0_11001_ignoreCallOp67;
wire    call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_122_ap_ready;
wire   [18:0] call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_122_ap_return_0;
wire   [18:0] call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_122_ap_return_1;
wire   [18:0] call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_122_ap_return_2;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129_ap_start;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129_ap_done;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129_ap_idle;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129_ap_ready;
reg    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129_ap_ce;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129_ap_return_0;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129_ap_return_1;
wire    ap_block_state2_pp0_stage1_iter0_ignore_call53;
wire    ap_block_state4_pp0_stage1_iter1_ignore_call53;
wire    ap_block_state6_pp0_stage1_iter2_ignore_call53;
wire    ap_block_state8_pp0_stage1_iter3_ignore_call53;
wire    ap_block_state10_pp0_stage1_iter4_ignore_call53;
wire    ap_block_state12_pp0_stage1_iter5_ignore_call53;
wire    ap_block_state14_pp0_stage1_iter6_ignore_call53;
wire    ap_block_state16_pp0_stage1_iter7_ignore_call53;
wire    ap_block_state18_pp0_stage1_iter8_ignore_call53;
wire    ap_block_state20_pp0_stage1_iter9_ignore_call53;
wire    ap_block_pp0_stage1_11001_ignoreCallOp77;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call53;
wire    ap_block_state3_pp0_stage0_iter1_ignore_call53;
wire    ap_block_state5_pp0_stage0_iter2_ignore_call53;
wire    ap_block_state7_pp0_stage0_iter3_ignore_call53;
wire    ap_block_state9_pp0_stage0_iter4_ignore_call53;
wire    ap_block_state11_pp0_stage0_iter5_ignore_call53;
wire    ap_block_state13_pp0_stage0_iter6_ignore_call53;
wire    ap_block_state15_pp0_stage0_iter7_ignore_call53;
wire    ap_block_state17_pp0_stage0_iter8_ignore_call53;
wire    ap_block_state19_pp0_stage0_iter9_ignore_call53;
wire    ap_block_state21_pp0_stage0_iter10_ignore_call53;
reg    ap_block_pp0_stage0_11001_ignoreCallOp78;
wire    call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_136_ap_ready;
wire   [18:0] call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_136_ap_return_0;
wire   [18:0] call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_136_ap_return_1;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142_ap_start;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142_ap_done;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142_ap_idle;
wire    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142_ap_ready;
reg    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142_ap_ce;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142_ap_return_0;
wire   [18:0] grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142_ap_return_1;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call59;
wire    ap_block_state3_pp0_stage0_iter1_ignore_call59;
wire    ap_block_state5_pp0_stage0_iter2_ignore_call59;
wire    ap_block_state7_pp0_stage0_iter3_ignore_call59;
wire    ap_block_state9_pp0_stage0_iter4_ignore_call59;
wire    ap_block_state11_pp0_stage0_iter5_ignore_call59;
wire    ap_block_state13_pp0_stage0_iter6_ignore_call59;
wire    ap_block_state15_pp0_stage0_iter7_ignore_call59;
wire    ap_block_state17_pp0_stage0_iter8_ignore_call59;
wire    ap_block_state19_pp0_stage0_iter9_ignore_call59;
wire    ap_block_state21_pp0_stage0_iter10_ignore_call59;
reg    ap_block_pp0_stage0_11001_ignoreCallOp85;
wire    ap_block_state2_pp0_stage1_iter0_ignore_call59;
wire    ap_block_state4_pp0_stage1_iter1_ignore_call59;
wire    ap_block_state6_pp0_stage1_iter2_ignore_call59;
wire    ap_block_state8_pp0_stage1_iter3_ignore_call59;
wire    ap_block_state10_pp0_stage1_iter4_ignore_call59;
wire    ap_block_state12_pp0_stage1_iter5_ignore_call59;
wire    ap_block_state14_pp0_stage1_iter6_ignore_call59;
wire    ap_block_state16_pp0_stage1_iter7_ignore_call59;
wire    ap_block_state18_pp0_stage1_iter8_ignore_call59;
wire    ap_block_state20_pp0_stage1_iter9_ignore_call59;
wire    ap_block_pp0_stage1_11001_ignoreCallOp86;
wire    call_ret9_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config16_s_fu_148_ap_ready;
wire   [18:0] call_ret9_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config16_s_fu_148_ap_return_0;
wire   [18:0] call_ret9_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config16_s_fu_148_ap_return_1;
reg    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_start_reg;
reg    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_onepulse_ap_start;
reg    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_start_reg;
wire    ap_block_pp0_stage1;
reg    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_start_reg;
reg    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129_ap_start_reg;
reg    grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142_ap_start_reg;
reg    ap_block_pp0_stage0_01001;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_0to9;
reg    ap_reset_idle_pp0;
reg    ap_idle_pp0_1to10;
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
#0 fc0_input_preg = 133'd0;
#0 fc0_input_ap_vld_preg = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_start_reg = 1'b0;
#0 grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_start_reg = 1'b0;
#0 grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_start_reg = 1'b0;
#0 grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129_ap_start_reg = 1'b0;
#0 grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142_ap_start_reg = 1'b0;
end

der2_sp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68(
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
    .ap_return_7(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_7)
);

der2_sp_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74(
    .ap_ready(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_ready),
    .p_read(layer2_out_V_reg_347),
    .p_read20(layer2_out_V_1_reg_352),
    .p_read21(layer2_out_V_2_reg_357),
    .p_read22(layer2_out_V_3_reg_362),
    .p_read23(layer2_out_V_4_reg_367),
    .p_read24(layer2_out_V_5_reg_372),
    .p_read26(layer2_out_V_6_reg_377),
    .p_read29(layer2_out_V_7_reg_382),
    .ap_return_0(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_0),
    .ap_return_1(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_1),
    .ap_return_2(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_2),
    .ap_return_3(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_3),
    .ap_return_4(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_4),
    .ap_return_5(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_5),
    .ap_return_6(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_6),
    .ap_return_7(call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_7)
);

der2_sp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_start),
    .ap_done(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_done),
    .ap_idle(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_idle),
    .ap_ready(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_ready),
    .ap_ce(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_ce),
    .p_read(layer4_out_V_reg_387),
    .p_read1(layer4_out_V_1_reg_392),
    .p_read2(layer4_out_V_2_reg_397),
    .p_read3(layer4_out_V_3_reg_402),
    .p_read4(layer4_out_V_4_reg_407),
    .p_read5(layer4_out_V_5_reg_412),
    .p_read6(layer4_out_V_6_reg_417),
    .p_read7(layer4_out_V_7_reg_422),
    .ap_return_0(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_return_1),
    .ap_return_2(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_return_2),
    .ap_return_3(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_return_3),
    .ap_return_4(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_return_4),
    .ap_return_5(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_return_5),
    .ap_return_6(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_return_6),
    .ap_return_7(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_return_7)
);

der2_sp_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98(
    .ap_ready(call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98_ap_ready),
    .p_read2(layer5_out_V_reg_427),
    .p_read4(layer5_out_V_1_reg_432),
    .p_read5(layer5_out_V_2_reg_437),
    .p_read13(layer5_out_V_3_reg_442),
    .p_read16(layer5_out_V_4_reg_447),
    .p_read18(layer5_out_V_5_reg_452),
    .p_read20(layer5_out_V_6_reg_457),
    .p_read21(layer5_out_V_7_reg_462),
    .ap_return_0(call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98_ap_return_0),
    .ap_return_1(call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98_ap_return_1),
    .ap_return_2(call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98_ap_return_2),
    .ap_return_3(call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98_ap_return_3),
    .ap_return_4(call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98_ap_return_4),
    .ap_return_5(call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98_ap_return_5),
    .ap_return_6(call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98_ap_return_6),
    .ap_return_7(call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98_ap_return_7)
);

der2_sp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_start),
    .ap_done(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_done),
    .ap_idle(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_idle),
    .ap_ready(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_ready),
    .ap_ce(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_ce),
    .p_read(layer7_out_V_reg_467),
    .p_read1(layer7_out_V_1_reg_472),
    .p_read2(layer7_out_V_2_reg_477),
    .p_read3(layer7_out_V_3_reg_482),
    .p_read4(layer7_out_V_4_reg_487),
    .p_read5(layer7_out_V_5_reg_492),
    .p_read6(layer7_out_V_6_reg_497),
    .p_read7(layer7_out_V_7_reg_502),
    .ap_return_0(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_return_1),
    .ap_return_2(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_return_2)
);

der2_sp_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_122(
    .ap_ready(call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_122_ap_ready),
    .p_read15(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_return_0),
    .p_read23(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_return_1),
    .p_read27(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_return_2),
    .ap_return_0(call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_122_ap_return_0),
    .ap_return_1(call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_122_ap_return_1),
    .ap_return_2(call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_122_ap_return_2)
);

der2_sp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129_ap_start),
    .ap_done(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129_ap_done),
    .ap_idle(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129_ap_idle),
    .ap_ready(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129_ap_ready),
    .ap_ce(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129_ap_ce),
    .p_read(layer10_out_V_reg_507),
    .p_read1(layer10_out_V_1_reg_512),
    .p_read2(layer10_out_V_2_reg_517),
    .ap_return_0(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129_ap_return_1)
);

der2_sp_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_136(
    .ap_ready(call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_136_ap_ready),
    .p_read11(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129_ap_return_0),
    .p_read24(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129_ap_return_1),
    .ap_return_0(call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_136_ap_return_0),
    .ap_return_1(call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_136_ap_return_1)
);

der2_sp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142_ap_start),
    .ap_done(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142_ap_done),
    .ap_idle(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142_ap_idle),
    .ap_ready(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142_ap_ready),
    .ap_ce(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142_ap_ce),
    .p_read(layer13_out_V_reg_522),
    .p_read1(layer13_out_V_1_reg_527),
    .ap_return_0(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142_ap_return_1)
);

der2_sp_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config16_s call_ret9_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config16_s_fu_148(
    .ap_ready(call_ret9_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config16_s_fu_148_ap_ready),
    .p_read(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142_ap_return_0),
    .p_read1(grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142_ap_return_1),
    .ap_return_0(call_ret9_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config16_s_fu_148_ap_return_0),
    .ap_return_1(call_ret9_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config16_s_fu_148_ap_return_1)
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter10 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        fc0_input_ap_vld_preg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            fc0_input_ap_vld_preg <= 1'b0;
        end else if ((~((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0)) & (fc0_input_ap_vld == 1'b1))) begin
            fc0_input_ap_vld_preg <= fc0_input_ap_vld;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        fc0_input_preg <= 133'd0;
    end else begin
        if ((~((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0)) & (fc0_input_ap_vld == 1'b1))) begin
            fc0_input_preg <= fc0_input;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129_ap_start_reg <= 1'b1;
        end else if ((grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129_ap_ready == 1'b1)) begin
            grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142_ap_start_reg <= 1'b1;
        end else if ((grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142_ap_ready == 1'b1)) begin
            grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_start_reg <= 1'b1;
        end else if ((grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_ready == 1'b1)) begin
            grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_start_reg <= 1'b1;
        end else if ((grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_ready == 1'b1)) begin
            grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_start_reg <= 1'b1;
        end else if ((grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_ready == 1'b1)) begin
            grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        layer10_out_V_1_reg_512 <= call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_122_ap_return_1;
        layer10_out_V_2_reg_517 <= call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_122_ap_return_2;
        layer10_out_V_reg_507 <= call_ret5_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s_fu_122_ap_return_0;
        layer4_out_V_1_reg_392 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_1;
        layer4_out_V_2_reg_397 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_2;
        layer4_out_V_3_reg_402 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_3;
        layer4_out_V_4_reg_407 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_4;
        layer4_out_V_5_reg_412 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_5;
        layer4_out_V_6_reg_417 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_6;
        layer4_out_V_7_reg_422 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_7;
        layer4_out_V_reg_387 <= call_ret2_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config4_s_fu_74_ap_return_0;
        layer7_out_V_1_reg_472 <= call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98_ap_return_1;
        layer7_out_V_2_reg_477 <= call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98_ap_return_2;
        layer7_out_V_3_reg_482 <= call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98_ap_return_3;
        layer7_out_V_4_reg_487 <= call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98_ap_return_4;
        layer7_out_V_5_reg_492 <= call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98_ap_return_5;
        layer7_out_V_6_reg_497 <= call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98_ap_return_6;
        layer7_out_V_7_reg_502 <= call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98_ap_return_7;
        layer7_out_V_reg_467 <= call_ret_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config7_s_fu_98_ap_return_0;
    end
end

always @ (posedge clk_1) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        layer13_out_V_1_reg_527 <= call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_136_ap_return_1;
        layer13_out_V_reg_522 <= call_ret7_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config13_s_fu_136_ap_return_0;
        layer2_out_V_1_reg_352 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_1;
        layer2_out_V_2_reg_357 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_2;
        layer2_out_V_3_reg_362 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_3;
        layer2_out_V_4_reg_367 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_4;
        layer2_out_V_5_reg_372 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_5;
        layer2_out_V_6_reg_377 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_6;
        layer2_out_V_7_reg_382 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_7;
        layer2_out_V_reg_347 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_return_0;
        layer5_out_V_1_reg_432 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_return_1;
        layer5_out_V_2_reg_437 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_return_2;
        layer5_out_V_3_reg_442 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_return_3;
        layer5_out_V_4_reg_447 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_return_4;
        layer5_out_V_5_reg_452 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_return_5;
        layer5_out_V_6_reg_457 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_return_6;
        layer5_out_V_7_reg_462 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_return_7;
        layer5_out_V_reg_427 <= grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_return_0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to9 = 1'b1;
    end else begin
        ap_idle_pp0_0to9 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to10 = 1'b1;
    end else begin
        ap_idle_pp0_1to10 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_idle_pp0_0to9 == 1'b1) & (ap_start == 1'b0))) begin
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
    if ((((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp78) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp77) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp86) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp85) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp24) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp23) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_onepulse_ap_start = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_onepulse_ap_start = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp45) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp44) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp67) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp66) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        uk21_ap_vld = 1'b1;
    end else begin
        uk21_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        uk22_ap_vld = 1'b1;
    end else begin
        uk22_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_idle_pp0_1to10 == 1'b1) & (ap_start == 1'b0)) & (ap_reset_idle_pp0 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((ap_reset_idle_pp0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
    ap_block_pp0_stage0_01001 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp23 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp45 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp67 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp78 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp85 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001_ignoreCallOp24 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001_ignoreCallOp44 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001_ignoreCallOp66 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001_ignoreCallOp77 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001_ignoreCallOp86 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter4_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter4_ignore_call45 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter4_ignore_call53 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter4_ignore_call59 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter4_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter5_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter5_ignore_call45 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter5_ignore_call53 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter5_ignore_call59 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter5_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage1_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage1_iter5_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage1_iter5_ignore_call45 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage1_iter5_ignore_call53 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage1_iter5_ignore_call59 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage1_iter5_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter6_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter6_ignore_call45 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter6_ignore_call53 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter6_ignore_call59 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter6_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter6_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter6_ignore_call45 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter6_ignore_call53 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter6_ignore_call59 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter6_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter7_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter7_ignore_call45 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter7_ignore_call53 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter7_ignore_call59 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter7_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage1_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage1_iter7_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage1_iter7_ignore_call45 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage1_iter7_ignore_call53 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage1_iter7_ignore_call59 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage1_iter7_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter8_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter8_ignore_call45 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter8_ignore_call53 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter8_ignore_call59 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter8_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage1_iter8 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage1_iter8_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage1_iter8_ignore_call45 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage1_iter8_ignore_call53 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage1_iter8_ignore_call59 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage1_iter8_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter9_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter9_ignore_call45 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter9_ignore_call53 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter9_ignore_call59 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter9_ignore_call9 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call27 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call45 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call53 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call59 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call9 = (fc0_input_ap_vld_in_sig == 1'b0);
end

assign ap_block_state20_pp0_stage1_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage1_iter9_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage1_iter9_ignore_call45 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage1_iter9_ignore_call53 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage1_iter9_ignore_call59 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage1_iter9_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter10_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter10_ignore_call45 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter10_ignore_call53 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter10_ignore_call59 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter10_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0_ignore_call45 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0_ignore_call53 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0_ignore_call59 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1_ignore_call45 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1_ignore_call53 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1_ignore_call59 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1_ignore_call45 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1_ignore_call53 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1_ignore_call59 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2_ignore_call45 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2_ignore_call53 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2_ignore_call59 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter2_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter2_ignore_call45 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter2_ignore_call53 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter2_ignore_call59 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter2_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter3_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter3_ignore_call45 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter3_ignore_call53 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter3_ignore_call59 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter3_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage1_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage1_iter3_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage1_iter3_ignore_call45 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage1_iter3_ignore_call53 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage1_iter3_ignore_call59 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage1_iter3_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter4_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter4_ignore_call45 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter4_ignore_call53 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter4_ignore_call59 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter4_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129_ap_start = grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s_fu_129_ap_start_reg;

assign grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142_ap_start = grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s_fu_142_ap_start_reg;

assign grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_start = (grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_onepulse_ap_start | grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config2_s_fu_68_ap_start_reg);

assign grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_start = grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config5_s_fu_86_ap_start_reg;

assign grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_start = grp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config8_s_fu_110_ap_start_reg;

assign uk21 = call_ret9_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config16_s_fu_148_ap_return_0;

assign uk22 = call_ret9_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config16_s_fu_148_ap_return_1;

endmodule //der2_sp
