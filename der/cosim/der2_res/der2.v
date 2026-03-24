module der2 (
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
input [14:0] rk22;
input [14:0] rk21;
input [14:0] dk22;
input [14:0] dk21;
input [14:0] x23;
input [14:0] x22;
input [14:0] x21;
output [14:0] uk21;
output uk21_ap_vld;
output [14:0] uk22;
output uk22_ap_vld;

reg [104:0] fc0_input;
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
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
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
wire    ap_block_pp0_stage1_subdone;
reg   [104:0] fc0_input_preg;
reg   [104:0] fc0_input_in_sig;
reg    fc0_input_ap_vld_preg;
reg    fc0_input_ap_vld_in_sig;
reg    fc0_input_blk_n;
wire    ap_block_pp0_stage0;
reg   [14:0] layer4_out_V_reg_755;
wire    ap_block_pp0_stage1_11001;
reg   [14:0] layer4_out_V_1_reg_760;
reg   [14:0] layer4_out_V_2_reg_765;
reg   [14:0] layer4_out_V_3_reg_770;
reg   [14:0] layer4_out_V_4_reg_775;
reg   [14:0] layer4_out_V_5_reg_780;
reg   [14:0] layer4_out_V_6_reg_785;
reg   [14:0] layer4_out_V_7_reg_790;
reg   [14:0] layer4_out_V_8_reg_795;
reg   [14:0] layer4_out_V_9_reg_800;
reg   [14:0] layer4_out_V_17_reg_805;
reg   [14:0] layer4_out_V_10_reg_810;
reg   [14:0] layer4_out_V_11_reg_815;
reg   [14:0] layer4_out_V_12_reg_820;
reg   [14:0] layer4_out_V_13_reg_825;
reg   [14:0] layer4_out_V_14_reg_830;
reg   [14:0] layer4_out_V_15_reg_835;
reg   [14:0] layer4_out_V_16_reg_840;
reg   [14:0] layer7_out_V_reg_845;
reg   [14:0] layer7_out_V_1_reg_850;
reg   [14:0] layer7_out_V_2_reg_855;
reg   [14:0] layer7_out_V_3_reg_860;
reg   [14:0] layer7_out_V_4_reg_865;
reg   [14:0] layer7_out_V_5_reg_870;
reg   [14:0] layer7_out_V_6_reg_875;
reg   [14:0] layer7_out_V_7_reg_880;
reg   [14:0] layer7_out_V_8_reg_885;
reg   [14:0] layer7_out_V_9_reg_890;
reg   [14:0] layer7_out_V_19_reg_895;
reg   [14:0] layer7_out_V_10_reg_900;
reg   [14:0] layer7_out_V_11_reg_905;
reg   [14:0] layer7_out_V_12_reg_910;
reg   [14:0] layer7_out_V_13_reg_915;
reg   [14:0] layer7_out_V_14_reg_920;
reg   [14:0] layer7_out_V_15_reg_925;
reg   [14:0] layer7_out_V_16_reg_930;
reg   [14:0] layer7_out_V_17_reg_935;
reg   [14:0] layer7_out_V_18_reg_940;
reg   [14:0] layer10_out_V_reg_945;
reg   [14:0] layer10_out_V_1_reg_950;
reg   [14:0] layer10_out_V_2_reg_955;
reg   [14:0] layer10_out_V_3_reg_960;
reg   [14:0] layer10_out_V_4_reg_965;
reg   [14:0] layer10_out_V_5_reg_970;
reg   [14:0] layer10_out_V_6_reg_975;
reg   [14:0] layer10_out_V_7_reg_980;
reg   [14:0] layer10_out_V_8_reg_985;
reg   [14:0] layer10_out_V_9_reg_990;
reg   [14:0] layer10_out_V_14_reg_995;
reg   [14:0] layer10_out_V_10_reg_1000;
reg   [14:0] layer10_out_V_11_reg_1005;
reg   [14:0] layer10_out_V_12_reg_1010;
reg   [14:0] layer10_out_V_13_reg_1015;
reg   [14:0] layer11_out_V_reg_1020;
reg   [14:0] layer11_out_V_1_reg_1025;
reg   [14:0] layer11_out_V_2_reg_1030;
reg   [14:0] layer11_out_V_3_reg_1035;
reg   [14:0] layer13_out_V_reg_1040;
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
reg    ap_block_pp0_stage0_11001;
reg   [14:0] layer13_out_V_1_reg_1045;
reg   [14:0] layer13_out_V_2_reg_1050;
reg   [14:0] layer13_out_V_3_reg_1055;
reg    ap_enable_reg_pp0_iter0_reg;
wire    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_start;
wire    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_done;
wire    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_idle;
wire    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_ready;
reg    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_ce;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_0;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_1;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_2;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_3;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_4;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_5;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_6;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_7;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_8;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_9;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_10;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_11;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_12;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_13;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_14;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_15;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_16;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_17;
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
reg    ap_block_pp0_stage0_11001_ignoreCallOp32;
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
wire    ap_block_pp0_stage1_11001_ignoreCallOp33;
wire    call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_ready;
wire   [14:0] call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_0;
wire   [14:0] call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_1;
wire   [14:0] call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_2;
wire   [14:0] call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_3;
wire   [14:0] call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_4;
wire   [14:0] call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_5;
wire   [14:0] call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_6;
wire   [14:0] call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_7;
wire   [14:0] call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_8;
wire   [14:0] call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_9;
wire   [14:0] call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_10;
wire   [14:0] call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_11;
wire   [14:0] call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_12;
wire   [14:0] call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_13;
wire   [14:0] call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_14;
wire   [14:0] call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_15;
wire   [14:0] call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_16;
wire   [14:0] call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_17;
wire    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_start;
wire    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_done;
wire    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_idle;
wire    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_ready;
reg    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_ce;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_0;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_1;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_2;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_3;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_4;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_5;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_6;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_7;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_8;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_9;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_10;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_11;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_12;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_13;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_14;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_15;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_16;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_17;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_18;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_19;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call47;
wire    ap_block_state3_pp0_stage0_iter1_ignore_call47;
wire    ap_block_state5_pp0_stage0_iter2_ignore_call47;
wire    ap_block_state7_pp0_stage0_iter3_ignore_call47;
wire    ap_block_state9_pp0_stage0_iter4_ignore_call47;
wire    ap_block_state11_pp0_stage0_iter5_ignore_call47;
wire    ap_block_state13_pp0_stage0_iter6_ignore_call47;
wire    ap_block_state15_pp0_stage0_iter7_ignore_call47;
wire    ap_block_state17_pp0_stage0_iter8_ignore_call47;
wire    ap_block_state19_pp0_stage0_iter9_ignore_call47;
wire    ap_block_state21_pp0_stage0_iter10_ignore_call47;
wire    ap_block_state23_pp0_stage0_iter11_ignore_call47;
wire    ap_block_state25_pp0_stage0_iter12_ignore_call47;
wire    ap_block_state27_pp0_stage0_iter13_ignore_call47;
wire    ap_block_state29_pp0_stage0_iter14_ignore_call47;
reg    ap_block_pp0_stage0_11001_ignoreCallOp73;
wire    ap_block_state2_pp0_stage1_iter0_ignore_call47;
wire    ap_block_state4_pp0_stage1_iter1_ignore_call47;
wire    ap_block_state6_pp0_stage1_iter2_ignore_call47;
wire    ap_block_state8_pp0_stage1_iter3_ignore_call47;
wire    ap_block_state10_pp0_stage1_iter4_ignore_call47;
wire    ap_block_state12_pp0_stage1_iter5_ignore_call47;
wire    ap_block_state14_pp0_stage1_iter6_ignore_call47;
wire    ap_block_state16_pp0_stage1_iter7_ignore_call47;
wire    ap_block_state18_pp0_stage1_iter8_ignore_call47;
wire    ap_block_state20_pp0_stage1_iter9_ignore_call47;
wire    ap_block_state22_pp0_stage1_iter10_ignore_call47;
wire    ap_block_state24_pp0_stage1_iter11_ignore_call47;
wire    ap_block_state26_pp0_stage1_iter12_ignore_call47;
wire    ap_block_state28_pp0_stage1_iter13_ignore_call47;
wire    ap_block_state30_pp0_stage1_iter14_ignore_call47;
wire    ap_block_pp0_stage1_11001_ignoreCallOp74;
wire    call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_ready;
wire   [14:0] call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_0;
wire   [14:0] call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_1;
wire   [14:0] call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_2;
wire   [14:0] call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_3;
wire   [14:0] call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_4;
wire   [14:0] call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_5;
wire   [14:0] call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_6;
wire   [14:0] call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_7;
wire   [14:0] call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_8;
wire   [14:0] call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_9;
wire   [14:0] call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_10;
wire   [14:0] call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_11;
wire   [14:0] call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_12;
wire   [14:0] call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_13;
wire   [14:0] call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_14;
wire   [14:0] call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_15;
wire   [14:0] call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_16;
wire   [14:0] call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_17;
wire   [14:0] call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_18;
wire   [14:0] call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_19;
wire    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_start;
wire    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_done;
wire    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_idle;
wire    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_ready;
reg    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_ce;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_0;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_1;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_2;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_3;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_4;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_5;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_6;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_7;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_8;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_9;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_10;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_11;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_12;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_13;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_14;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call89;
wire    ap_block_state3_pp0_stage0_iter1_ignore_call89;
wire    ap_block_state5_pp0_stage0_iter2_ignore_call89;
wire    ap_block_state7_pp0_stage0_iter3_ignore_call89;
wire    ap_block_state9_pp0_stage0_iter4_ignore_call89;
wire    ap_block_state11_pp0_stage0_iter5_ignore_call89;
wire    ap_block_state13_pp0_stage0_iter6_ignore_call89;
wire    ap_block_state15_pp0_stage0_iter7_ignore_call89;
wire    ap_block_state17_pp0_stage0_iter8_ignore_call89;
wire    ap_block_state19_pp0_stage0_iter9_ignore_call89;
wire    ap_block_state21_pp0_stage0_iter10_ignore_call89;
wire    ap_block_state23_pp0_stage0_iter11_ignore_call89;
wire    ap_block_state25_pp0_stage0_iter12_ignore_call89;
wire    ap_block_state27_pp0_stage0_iter13_ignore_call89;
wire    ap_block_state29_pp0_stage0_iter14_ignore_call89;
reg    ap_block_pp0_stage0_11001_ignoreCallOp122;
wire    ap_block_state2_pp0_stage1_iter0_ignore_call89;
wire    ap_block_state4_pp0_stage1_iter1_ignore_call89;
wire    ap_block_state6_pp0_stage1_iter2_ignore_call89;
wire    ap_block_state8_pp0_stage1_iter3_ignore_call89;
wire    ap_block_state10_pp0_stage1_iter4_ignore_call89;
wire    ap_block_state12_pp0_stage1_iter5_ignore_call89;
wire    ap_block_state14_pp0_stage1_iter6_ignore_call89;
wire    ap_block_state16_pp0_stage1_iter7_ignore_call89;
wire    ap_block_state18_pp0_stage1_iter8_ignore_call89;
wire    ap_block_state20_pp0_stage1_iter9_ignore_call89;
wire    ap_block_state22_pp0_stage1_iter10_ignore_call89;
wire    ap_block_state24_pp0_stage1_iter11_ignore_call89;
wire    ap_block_state26_pp0_stage1_iter12_ignore_call89;
wire    ap_block_state28_pp0_stage1_iter13_ignore_call89;
wire    ap_block_state30_pp0_stage1_iter14_ignore_call89;
wire    ap_block_pp0_stage1_11001_ignoreCallOp123;
wire    call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_ready;
wire   [14:0] call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_0;
wire   [14:0] call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_1;
wire   [14:0] call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_2;
wire   [14:0] call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_3;
wire   [14:0] call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_4;
wire   [14:0] call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_5;
wire   [14:0] call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_6;
wire   [14:0] call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_7;
wire   [14:0] call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_8;
wire   [14:0] call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_9;
wire   [14:0] call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_10;
wire   [14:0] call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_11;
wire   [14:0] call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_12;
wire   [14:0] call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_13;
wire   [14:0] call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_14;
wire    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_start;
wire    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_done;
wire    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_idle;
wire    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_ready;
reg    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_ce;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_return_0;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_return_1;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_return_2;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_return_3;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call121;
wire    ap_block_state3_pp0_stage0_iter1_ignore_call121;
wire    ap_block_state5_pp0_stage0_iter2_ignore_call121;
wire    ap_block_state7_pp0_stage0_iter3_ignore_call121;
wire    ap_block_state9_pp0_stage0_iter4_ignore_call121;
wire    ap_block_state11_pp0_stage0_iter5_ignore_call121;
wire    ap_block_state13_pp0_stage0_iter6_ignore_call121;
wire    ap_block_state15_pp0_stage0_iter7_ignore_call121;
wire    ap_block_state17_pp0_stage0_iter8_ignore_call121;
wire    ap_block_state19_pp0_stage0_iter9_ignore_call121;
wire    ap_block_state21_pp0_stage0_iter10_ignore_call121;
wire    ap_block_state23_pp0_stage0_iter11_ignore_call121;
wire    ap_block_state25_pp0_stage0_iter12_ignore_call121;
wire    ap_block_state27_pp0_stage0_iter13_ignore_call121;
wire    ap_block_state29_pp0_stage0_iter14_ignore_call121;
reg    ap_block_pp0_stage0_11001_ignoreCallOp161;
wire    ap_block_state2_pp0_stage1_iter0_ignore_call121;
wire    ap_block_state4_pp0_stage1_iter1_ignore_call121;
wire    ap_block_state6_pp0_stage1_iter2_ignore_call121;
wire    ap_block_state8_pp0_stage1_iter3_ignore_call121;
wire    ap_block_state10_pp0_stage1_iter4_ignore_call121;
wire    ap_block_state12_pp0_stage1_iter5_ignore_call121;
wire    ap_block_state14_pp0_stage1_iter6_ignore_call121;
wire    ap_block_state16_pp0_stage1_iter7_ignore_call121;
wire    ap_block_state18_pp0_stage1_iter8_ignore_call121;
wire    ap_block_state20_pp0_stage1_iter9_ignore_call121;
wire    ap_block_state22_pp0_stage1_iter10_ignore_call121;
wire    ap_block_state24_pp0_stage1_iter11_ignore_call121;
wire    ap_block_state26_pp0_stage1_iter12_ignore_call121;
wire    ap_block_state28_pp0_stage1_iter13_ignore_call121;
wire    ap_block_state30_pp0_stage1_iter14_ignore_call121;
wire    ap_block_pp0_stage1_11001_ignoreCallOp162;
wire    call_ret7_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config13_s_fu_204_ap_ready;
wire   [14:0] call_ret7_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config13_s_fu_204_ap_return_0;
wire   [14:0] call_ret7_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config13_s_fu_204_ap_return_1;
wire   [14:0] call_ret7_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config13_s_fu_204_ap_return_2;
wire   [14:0] call_ret7_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config13_s_fu_204_ap_return_3;
wire    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212_ap_start;
wire    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212_ap_done;
wire    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212_ap_idle;
wire    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212_ap_ready;
reg    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212_ap_ce;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212_ap_return_0;
wire   [14:0] grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212_ap_return_1;
wire    ap_block_state2_pp0_stage1_iter0_ignore_call131;
wire    ap_block_state4_pp0_stage1_iter1_ignore_call131;
wire    ap_block_state6_pp0_stage1_iter2_ignore_call131;
wire    ap_block_state8_pp0_stage1_iter3_ignore_call131;
wire    ap_block_state10_pp0_stage1_iter4_ignore_call131;
wire    ap_block_state12_pp0_stage1_iter5_ignore_call131;
wire    ap_block_state14_pp0_stage1_iter6_ignore_call131;
wire    ap_block_state16_pp0_stage1_iter7_ignore_call131;
wire    ap_block_state18_pp0_stage1_iter8_ignore_call131;
wire    ap_block_state20_pp0_stage1_iter9_ignore_call131;
wire    ap_block_state22_pp0_stage1_iter10_ignore_call131;
wire    ap_block_state24_pp0_stage1_iter11_ignore_call131;
wire    ap_block_state26_pp0_stage1_iter12_ignore_call131;
wire    ap_block_state28_pp0_stage1_iter13_ignore_call131;
wire    ap_block_state30_pp0_stage1_iter14_ignore_call131;
wire    ap_block_pp0_stage1_11001_ignoreCallOp176;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call131;
wire    ap_block_state3_pp0_stage0_iter1_ignore_call131;
wire    ap_block_state5_pp0_stage0_iter2_ignore_call131;
wire    ap_block_state7_pp0_stage0_iter3_ignore_call131;
wire    ap_block_state9_pp0_stage0_iter4_ignore_call131;
wire    ap_block_state11_pp0_stage0_iter5_ignore_call131;
wire    ap_block_state13_pp0_stage0_iter6_ignore_call131;
wire    ap_block_state15_pp0_stage0_iter7_ignore_call131;
wire    ap_block_state17_pp0_stage0_iter8_ignore_call131;
wire    ap_block_state19_pp0_stage0_iter9_ignore_call131;
wire    ap_block_state21_pp0_stage0_iter10_ignore_call131;
wire    ap_block_state23_pp0_stage0_iter11_ignore_call131;
wire    ap_block_state25_pp0_stage0_iter12_ignore_call131;
wire    ap_block_state27_pp0_stage0_iter13_ignore_call131;
wire    ap_block_state29_pp0_stage0_iter14_ignore_call131;
reg    ap_block_pp0_stage0_11001_ignoreCallOp177;
wire    call_ret9_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config16_s_fu_220_ap_ready;
wire   [14:0] call_ret9_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config16_s_fu_220_ap_return_0;
wire   [14:0] call_ret9_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config16_s_fu_220_ap_return_1;
reg    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_start_reg;
reg    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_onepulse_ap_start;
wire    ap_block_pp0_stage1;
reg    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_start_reg;
reg    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_start_reg;
reg    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_start_reg;
reg    grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212_ap_start_reg;
wire    ap_block_pp0_stage1_01001;
reg   [1:0] ap_NS_fsm;
reg    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to14;
reg    ap_idle_pp0_0to13;
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
#0 fc0_input_preg = 105'd0;
#0 fc0_input_ap_vld_preg = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_start_reg = 1'b0;
#0 grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_start_reg = 1'b0;
#0 grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_start_reg = 1'b0;
#0 grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_start_reg = 1'b0;
#0 grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212_ap_start_reg = 1'b0;
end

der_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_start),
    .ap_done(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_done),
    .ap_idle(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_idle),
    .ap_ready(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_ready),
    .ap_ce(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_ce),
    .p_read(fc0_input_in_sig),
    .ap_return_0(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_1),
    .ap_return_2(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_2),
    .ap_return_3(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_3),
    .ap_return_4(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_4),
    .ap_return_5(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_5),
    .ap_return_6(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_6),
    .ap_return_7(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_7),
    .ap_return_8(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_8),
    .ap_return_9(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_9),
    .ap_return_10(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_10),
    .ap_return_11(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_11),
    .ap_return_12(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_12),
    .ap_return_13(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_13),
    .ap_return_14(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_14),
    .ap_return_15(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_15),
    .ap_return_16(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_16),
    .ap_return_17(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_17)
);

der_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74(
    .ap_ready(call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_ready),
    .p_read(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_0),
    .p_read1(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_1),
    .p_read2(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_2),
    .p_read3(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_3),
    .p_read8(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_4),
    .p_read9(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_5),
    .p_read11(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_6),
    .p_read13(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_7),
    .p_read15(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_8),
    .p_read17(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_9),
    .p_read18(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_10),
    .p_read20(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_11),
    .p_read21(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_12),
    .p_read22(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_13),
    .p_read24(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_14),
    .p_read26(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_15),
    .p_read28(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_16),
    .p_read29(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_return_17),
    .ap_return_0(call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_0),
    .ap_return_1(call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_1),
    .ap_return_2(call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_2),
    .ap_return_3(call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_3),
    .ap_return_4(call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_4),
    .ap_return_5(call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_5),
    .ap_return_6(call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_6),
    .ap_return_7(call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_7),
    .ap_return_8(call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_8),
    .ap_return_9(call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_9),
    .ap_return_10(call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_10),
    .ap_return_11(call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_11),
    .ap_return_12(call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_12),
    .ap_return_13(call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_13),
    .ap_return_14(call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_14),
    .ap_return_15(call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_15),
    .ap_return_16(call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_16),
    .ap_return_17(call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_17)
);

der_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_start),
    .ap_done(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_done),
    .ap_idle(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_idle),
    .ap_ready(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_ready),
    .ap_ce(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_ce),
    .p_read(layer4_out_V_reg_755),
    .p_read1(layer4_out_V_1_reg_760),
    .p_read2(layer4_out_V_2_reg_765),
    .p_read3(layer4_out_V_3_reg_770),
    .p_read4(layer4_out_V_4_reg_775),
    .p_read5(layer4_out_V_5_reg_780),
    .p_read6(layer4_out_V_6_reg_785),
    .p_read7(layer4_out_V_7_reg_790),
    .p_read8(layer4_out_V_8_reg_795),
    .p_read9(layer4_out_V_9_reg_800),
    .p_read10(layer4_out_V_17_reg_805),
    .p_read11(layer4_out_V_10_reg_810),
    .p_read12(layer4_out_V_11_reg_815),
    .p_read13(layer4_out_V_12_reg_820),
    .p_read14(layer4_out_V_13_reg_825),
    .p_read15(layer4_out_V_14_reg_830),
    .p_read16(layer4_out_V_15_reg_835),
    .p_read17(layer4_out_V_16_reg_840),
    .ap_return_0(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_1),
    .ap_return_2(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_2),
    .ap_return_3(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_3),
    .ap_return_4(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_4),
    .ap_return_5(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_5),
    .ap_return_6(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_6),
    .ap_return_7(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_7),
    .ap_return_8(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_8),
    .ap_return_9(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_9),
    .ap_return_10(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_10),
    .ap_return_11(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_11),
    .ap_return_12(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_12),
    .ap_return_13(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_13),
    .ap_return_14(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_14),
    .ap_return_15(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_15),
    .ap_return_16(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_16),
    .ap_return_17(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_17),
    .ap_return_18(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_18),
    .ap_return_19(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_19)
);

der_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118(
    .ap_ready(call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_ready),
    .p_read1(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_0),
    .p_read2(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_1),
    .p_read6(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_2),
    .p_read7(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_3),
    .p_read8(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_4),
    .p_read9(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_5),
    .p_read11(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_6),
    .p_read12(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_7),
    .p_read13(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_8),
    .p_read15(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_9),
    .p_read16(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_10),
    .p_read17(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_11),
    .p_read18(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_12),
    .p_read19(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_13),
    .p_read20(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_14),
    .p_read22(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_15),
    .p_read24(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_16),
    .p_read25(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_17),
    .p_read26(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_18),
    .p_read28(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_return_19),
    .ap_return_0(call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_0),
    .ap_return_1(call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_1),
    .ap_return_2(call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_2),
    .ap_return_3(call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_3),
    .ap_return_4(call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_4),
    .ap_return_5(call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_5),
    .ap_return_6(call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_6),
    .ap_return_7(call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_7),
    .ap_return_8(call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_8),
    .ap_return_9(call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_9),
    .ap_return_10(call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_10),
    .ap_return_11(call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_11),
    .ap_return_12(call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_12),
    .ap_return_13(call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_13),
    .ap_return_14(call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_14),
    .ap_return_15(call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_15),
    .ap_return_16(call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_16),
    .ap_return_17(call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_17),
    .ap_return_18(call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_18),
    .ap_return_19(call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_19)
);

der_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_start),
    .ap_done(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_done),
    .ap_idle(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_idle),
    .ap_ready(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_ready),
    .ap_ce(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_ce),
    .p_read(layer7_out_V_reg_845),
    .p_read1(layer7_out_V_1_reg_850),
    .p_read2(layer7_out_V_2_reg_855),
    .p_read3(layer7_out_V_3_reg_860),
    .p_read4(layer7_out_V_4_reg_865),
    .p_read5(layer7_out_V_5_reg_870),
    .p_read6(layer7_out_V_6_reg_875),
    .p_read7(layer7_out_V_7_reg_880),
    .p_read8(layer7_out_V_8_reg_885),
    .p_read9(layer7_out_V_9_reg_890),
    .p_read10(layer7_out_V_19_reg_895),
    .p_read11(layer7_out_V_10_reg_900),
    .p_read12(layer7_out_V_11_reg_905),
    .p_read13(layer7_out_V_12_reg_910),
    .p_read14(layer7_out_V_13_reg_915),
    .p_read15(layer7_out_V_14_reg_920),
    .p_read16(layer7_out_V_15_reg_925),
    .p_read17(layer7_out_V_16_reg_930),
    .p_read18(layer7_out_V_17_reg_935),
    .p_read19(layer7_out_V_18_reg_940),
    .ap_return_0(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_1),
    .ap_return_2(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_2),
    .ap_return_3(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_3),
    .ap_return_4(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_4),
    .ap_return_5(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_5),
    .ap_return_6(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_6),
    .ap_return_7(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_7),
    .ap_return_8(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_8),
    .ap_return_9(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_9),
    .ap_return_10(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_10),
    .ap_return_11(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_11),
    .ap_return_12(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_12),
    .ap_return_13(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_13),
    .ap_return_14(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_14)
);

der_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166(
    .ap_ready(call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_ready),
    .p_read5(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_0),
    .p_read6(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_1),
    .p_read7(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_2),
    .p_read9(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_3),
    .p_read10(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_4),
    .p_read12(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_5),
    .p_read14(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_6),
    .p_read15(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_7),
    .p_read17(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_8),
    .p_read18(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_9),
    .p_read20(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_10),
    .p_read23(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_11),
    .p_read27(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_12),
    .p_read28(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_13),
    .p_read29(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_return_14),
    .ap_return_0(call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_0),
    .ap_return_1(call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_1),
    .ap_return_2(call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_2),
    .ap_return_3(call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_3),
    .ap_return_4(call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_4),
    .ap_return_5(call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_5),
    .ap_return_6(call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_6),
    .ap_return_7(call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_7),
    .ap_return_8(call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_8),
    .ap_return_9(call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_9),
    .ap_return_10(call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_10),
    .ap_return_11(call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_11),
    .ap_return_12(call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_12),
    .ap_return_13(call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_13),
    .ap_return_14(call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_14)
);

der_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_start),
    .ap_done(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_done),
    .ap_idle(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_idle),
    .ap_ready(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_ready),
    .ap_ce(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_ce),
    .p_read(layer10_out_V_reg_945),
    .p_read1(layer10_out_V_1_reg_950),
    .p_read2(layer10_out_V_2_reg_955),
    .p_read3(layer10_out_V_3_reg_960),
    .p_read4(layer10_out_V_4_reg_965),
    .p_read5(layer10_out_V_5_reg_970),
    .p_read6(layer10_out_V_6_reg_975),
    .p_read7(layer10_out_V_7_reg_980),
    .p_read8(layer10_out_V_8_reg_985),
    .p_read9(layer10_out_V_9_reg_990),
    .p_read10(layer10_out_V_14_reg_995),
    .p_read11(layer10_out_V_10_reg_1000),
    .p_read12(layer10_out_V_11_reg_1005),
    .p_read13(layer10_out_V_12_reg_1010),
    .p_read14(layer10_out_V_13_reg_1015),
    .ap_return_0(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_return_1),
    .ap_return_2(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_return_2),
    .ap_return_3(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_return_3)
);

der_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config13_s call_ret7_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config13_s_fu_204(
    .ap_ready(call_ret7_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config13_s_fu_204_ap_ready),
    .p_read11(layer11_out_V_reg_1020),
    .p_read12(layer11_out_V_1_reg_1025),
    .p_read15(layer11_out_V_2_reg_1030),
    .p_read29(layer11_out_V_3_reg_1035),
    .ap_return_0(call_ret7_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config13_s_fu_204_ap_return_0),
    .ap_return_1(call_ret7_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config13_s_fu_204_ap_return_1),
    .ap_return_2(call_ret7_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config13_s_fu_204_ap_return_2),
    .ap_return_3(call_ret7_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config13_s_fu_204_ap_return_3)
);

der_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212_ap_start),
    .ap_done(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212_ap_done),
    .ap_idle(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212_ap_idle),
    .ap_ready(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212_ap_ready),
    .ap_ce(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212_ap_ce),
    .p_read(layer13_out_V_reg_1040),
    .p_read1(layer13_out_V_1_reg_1045),
    .p_read2(layer13_out_V_2_reg_1050),
    .p_read3(layer13_out_V_3_reg_1055),
    .ap_return_0(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212_ap_return_1)
);

der_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config16_s call_ret9_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config16_s_fu_220(
    .ap_ready(call_ret9_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config16_s_fu_220_ap_ready),
    .p_read(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212_ap_return_0),
    .p_read1(grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212_ap_return_1),
    .ap_return_0(call_ret9_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config16_s_fu_220_ap_return_0),
    .ap_return_1(call_ret9_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config16_s_fu_220_ap_return_1)
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
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
        fc0_input_preg <= 105'd0;
    end else begin
        if ((~((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0)) & (fc0_input_ap_vld == 1'b1))) begin
            fc0_input_preg <= fc0_input;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_start_reg <= 1'b1;
        end else if ((grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_ready == 1'b1)) begin
            grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212_ap_start_reg <= 1'b1;
        end else if ((grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212_ap_ready == 1'b1)) begin
            grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_start_reg <= 1'b1;
        end else if ((grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_ready == 1'b1)) begin
            grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_start_reg <= 1'b1;
        end else if ((grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_ready == 1'b1)) begin
            grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_start_reg <= 1'b1;
        end else if ((grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_ready == 1'b1)) begin
            grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        layer10_out_V_10_reg_1000 <= call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_11;
        layer10_out_V_11_reg_1005 <= call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_12;
        layer10_out_V_12_reg_1010 <= call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_13;
        layer10_out_V_13_reg_1015 <= call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_14;
        layer10_out_V_14_reg_995 <= call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_10;
        layer10_out_V_1_reg_950 <= call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_1;
        layer10_out_V_2_reg_955 <= call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_2;
        layer10_out_V_3_reg_960 <= call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_3;
        layer10_out_V_4_reg_965 <= call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_4;
        layer10_out_V_5_reg_970 <= call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_5;
        layer10_out_V_6_reg_975 <= call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_6;
        layer10_out_V_7_reg_980 <= call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_7;
        layer10_out_V_8_reg_985 <= call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_8;
        layer10_out_V_9_reg_990 <= call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_9;
        layer10_out_V_reg_945 <= call_ret5_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config10_s_fu_166_ap_return_0;
        layer11_out_V_1_reg_1025 <= grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_return_1;
        layer11_out_V_2_reg_1030 <= grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_return_2;
        layer11_out_V_3_reg_1035 <= grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_return_3;
        layer11_out_V_reg_1020 <= grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_return_0;
        layer4_out_V_10_reg_810 <= call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_11;
        layer4_out_V_11_reg_815 <= call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_12;
        layer4_out_V_12_reg_820 <= call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_13;
        layer4_out_V_13_reg_825 <= call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_14;
        layer4_out_V_14_reg_830 <= call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_15;
        layer4_out_V_15_reg_835 <= call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_16;
        layer4_out_V_16_reg_840 <= call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_17;
        layer4_out_V_17_reg_805 <= call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_10;
        layer4_out_V_1_reg_760 <= call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_1;
        layer4_out_V_2_reg_765 <= call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_2;
        layer4_out_V_3_reg_770 <= call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_3;
        layer4_out_V_4_reg_775 <= call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_4;
        layer4_out_V_5_reg_780 <= call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_5;
        layer4_out_V_6_reg_785 <= call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_6;
        layer4_out_V_7_reg_790 <= call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_7;
        layer4_out_V_8_reg_795 <= call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_8;
        layer4_out_V_9_reg_800 <= call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_9;
        layer4_out_V_reg_755 <= call_ret2_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config4_s_fu_74_ap_return_0;
        layer7_out_V_10_reg_900 <= call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_11;
        layer7_out_V_11_reg_905 <= call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_12;
        layer7_out_V_12_reg_910 <= call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_13;
        layer7_out_V_13_reg_915 <= call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_14;
        layer7_out_V_14_reg_920 <= call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_15;
        layer7_out_V_15_reg_925 <= call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_16;
        layer7_out_V_16_reg_930 <= call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_17;
        layer7_out_V_17_reg_935 <= call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_18;
        layer7_out_V_18_reg_940 <= call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_19;
        layer7_out_V_19_reg_895 <= call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_10;
        layer7_out_V_1_reg_850 <= call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_1;
        layer7_out_V_2_reg_855 <= call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_2;
        layer7_out_V_3_reg_860 <= call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_3;
        layer7_out_V_4_reg_865 <= call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_4;
        layer7_out_V_5_reg_870 <= call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_5;
        layer7_out_V_6_reg_875 <= call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_6;
        layer7_out_V_7_reg_880 <= call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_7;
        layer7_out_V_8_reg_885 <= call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_8;
        layer7_out_V_9_reg_890 <= call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_9;
        layer7_out_V_reg_845 <= call_ret_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config7_s_fu_118_ap_return_0;
    end
end

always @ (posedge clk_1) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        layer13_out_V_1_reg_1045 <= call_ret7_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config13_s_fu_204_ap_return_1;
        layer13_out_V_2_reg_1050 <= call_ret7_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config13_s_fu_204_ap_return_2;
        layer13_out_V_3_reg_1055 <= call_ret7_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config13_s_fu_204_ap_return_3;
        layer13_out_V_reg_1040 <= call_ret7_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config13_s_fu_204_ap_return_0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to13 = 1'b1;
    end else begin
        ap_idle_pp0_0to13 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to14 = 1'b1;
    end else begin
        ap_idle_pp0_1to14 = 1'b0;
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
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to13 == 1'b1))) begin
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
    if ((((1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp162) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp161) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp177) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp176) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp33) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp32) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_onepulse_ap_start = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_onepulse_ap_start = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp74) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp73) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp123) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp122) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        uk21_ap_vld = 1'b1;
    end else begin
        uk21_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        uk22_ap_vld = 1'b1;
    end else begin
        uk22_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start == 1'b0) & (ap_idle_pp0_1to14 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((((1'b0 == ap_block_pp0_stage1_subdone) & (ap_reset_idle_pp0 == 1'b0)) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_reset_idle_pp0 == 1'b1)))) begin
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
    ap_block_pp0_stage0_11001_ignoreCallOp122 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (fc0_input_ap_vld_in_sig == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp161 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (fc0_input_ap_vld_in_sig == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp177 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (fc0_input_ap_vld_in_sig == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp32 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (fc0_input_ap_vld_in_sig == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp73 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (fc0_input_ap_vld_in_sig == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & (fc0_input_ap_vld_in_sig == 1'b0));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001_ignoreCallOp123 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001_ignoreCallOp162 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001_ignoreCallOp176 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001_ignoreCallOp33 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001_ignoreCallOp74 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter4_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter4_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter4_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter4_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter4_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter5_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter5_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter5_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter5_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter5_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage1_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage1_iter5_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage1_iter5_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage1_iter5_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage1_iter5_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage1_iter5_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter6_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter6_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter6_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter6_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter6_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter6_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter6_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter6_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter6_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter6_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter7_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter7_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter7_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter7_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter7_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage1_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage1_iter7_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage1_iter7_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage1_iter7_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage1_iter7_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage1_iter7_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter8_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter8_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter8_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter8_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter8_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage1_iter8 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage1_iter8_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage1_iter8_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage1_iter8_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage1_iter8_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage1_iter8_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter9_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter9_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter9_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter9_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter9_ignore_call9 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call121 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call131 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call47 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call89 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call9 = (fc0_input_ap_vld_in_sig == 1'b0);
end

assign ap_block_state20_pp0_stage1_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage1_iter9_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage1_iter9_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage1_iter9_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage1_iter9_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage1_iter9_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter10_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter10_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter10_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter10_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter10_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage1_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage1_iter10_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage1_iter10_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage1_iter10_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage1_iter10_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage1_iter10_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage0_iter11_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage0_iter11_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage0_iter11_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage0_iter11_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage0_iter11_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage1_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage1_iter11_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage1_iter11_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage1_iter11_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage1_iter11_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage1_iter11_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage0_iter12 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage0_iter12_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage0_iter12_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage0_iter12_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage0_iter12_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage0_iter12_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage1_iter12 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage1_iter12_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage1_iter12_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage1_iter12_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage1_iter12_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage1_iter12_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state27_pp0_stage0_iter13 = ~(1'b1 == 1'b1);

assign ap_block_state27_pp0_stage0_iter13_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state27_pp0_stage0_iter13_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state27_pp0_stage0_iter13_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state27_pp0_stage0_iter13_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state27_pp0_stage0_iter13_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state28_pp0_stage1_iter13 = ~(1'b1 == 1'b1);

assign ap_block_state28_pp0_stage1_iter13_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state28_pp0_stage1_iter13_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state28_pp0_stage1_iter13_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state28_pp0_stage1_iter13_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state28_pp0_stage1_iter13_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state29_pp0_stage0_iter14 = ~(1'b1 == 1'b1);

assign ap_block_state29_pp0_stage0_iter14_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state29_pp0_stage0_iter14_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state29_pp0_stage0_iter14_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state29_pp0_stage0_iter14_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state29_pp0_stage0_iter14_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state30_pp0_stage1_iter14 = ~(1'b1 == 1'b1);

assign ap_block_state30_pp0_stage1_iter14_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state30_pp0_stage1_iter14_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state30_pp0_stage1_iter14_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state30_pp0_stage1_iter14_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state30_pp0_stage1_iter14_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter2_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter2_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter2_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter2_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter2_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter3_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter3_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter3_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter3_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter3_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage1_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage1_iter3_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage1_iter3_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage1_iter3_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage1_iter3_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage1_iter3_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter4_ignore_call121 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter4_ignore_call131 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter4_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter4_ignore_call89 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter4_ignore_call9 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_start = grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config11_s_fu_185_ap_start_reg;

assign grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212_ap_start = grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config14_s_fu_212_ap_start_reg;

assign grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_start = (grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_onepulse_ap_start | grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config2_s_fu_68_ap_start_reg);

assign grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_start = grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config5_s_fu_96_ap_start_reg;

assign grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_start = grp_dense_latency_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_config8_s_fu_142_ap_start_reg;

assign uk21 = call_ret9_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config16_s_fu_220_ap_return_0;

assign uk22 = call_ret9_relu_ap_fixed_15_4_0_0_0_ap_fixed_15_4_0_0_0_relu_config16_s_fu_220_ap_return_1;

endmodule //der
