module motorB (
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
reg    ap_enable_reg_pp0_iter20;
reg    ap_enable_reg_pp0_iter21;
reg    ap_enable_reg_pp0_iter22;
reg    ap_enable_reg_pp0_iter23;
reg    ap_enable_reg_pp0_iter24;
reg    ap_enable_reg_pp0_iter25;
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
wire    ap_block_state21_pp0_stage0_iter20;
wire    ap_block_state22_pp0_stage0_iter21;
wire    ap_block_state23_pp0_stage0_iter22;
wire    ap_block_state24_pp0_stage0_iter23;
wire    ap_block_state25_pp0_stage0_iter24;
wire    ap_block_state26_pp0_stage0_iter25;
reg    ap_block_pp0_stage0_subdone;
reg   [95:0] fc0_input_preg;
reg   [95:0] fc0_input_in_sig;
reg    fc0_input_ap_vld_preg;
reg    fc0_input_blk_n;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
reg   [31:0] layer2_out_V_reg_370;
reg   [31:0] layer2_out_V_1_reg_375;
reg   [31:0] layer2_out_V_2_reg_380;
reg   [31:0] layer2_out_V_3_reg_385;
reg   [31:0] layer2_out_V_4_reg_390;
reg   [31:0] layer2_out_V_5_reg_395;
reg   [31:0] layer2_out_V_6_reg_400;
reg   [31:0] layer2_out_V_7_reg_405;
reg   [31:0] layer2_out_V_8_reg_410;
reg   [31:0] layer4_out_V_reg_415;
reg   [31:0] layer4_out_V_1_reg_420;
reg   [31:0] layer4_out_V_2_reg_425;
reg   [31:0] layer4_out_V_3_reg_430;
reg   [31:0] layer4_out_V_4_reg_435;
reg   [31:0] layer4_out_V_5_reg_440;
reg   [31:0] layer4_out_V_6_reg_445;
reg   [31:0] layer4_out_V_7_reg_450;
reg   [31:0] layer4_out_V_8_reg_455;
reg   [31:0] layer5_out_V_reg_460;
reg   [31:0] layer5_out_V_1_reg_465;
reg   [31:0] layer5_out_V_2_reg_470;
reg   [31:0] layer5_out_V_3_reg_475;
reg   [31:0] layer5_out_V_4_reg_480;
reg   [31:0] layer5_out_V_5_reg_485;
reg   [31:0] layer5_out_V_6_reg_490;
reg   [31:0] layer5_out_V_7_reg_495;
reg   [31:0] layer5_out_V_8_reg_500;
reg   [31:0] layer7_out_V_reg_505;
reg   [31:0] layer7_out_V_1_reg_510;
reg   [31:0] layer7_out_V_2_reg_515;
reg   [31:0] layer7_out_V_3_reg_520;
reg   [31:0] layer7_out_V_4_reg_525;
reg   [31:0] layer7_out_V_5_reg_530;
reg   [31:0] layer7_out_V_6_reg_535;
reg   [31:0] layer7_out_V_7_reg_540;
reg   [31:0] layer7_out_V_8_reg_545;
reg   [31:0] layer8_out_V_reg_550;
reg   [31:0] layer8_out_V_1_reg_555;
reg   [31:0] layer8_out_V_2_reg_560;
reg   [31:0] layer8_out_V_3_reg_565;
reg   [31:0] layer8_out_V_4_reg_570;
reg   [31:0] layer8_out_V_5_reg_575;
reg   [31:0] layer8_out_V_6_reg_580;
reg   [31:0] layer8_out_V_7_reg_585;
reg   [31:0] layer8_out_V_8_reg_590;
reg   [31:0] layer10_out_V_reg_595;
reg   [31:0] layer10_out_V_1_reg_600;
reg   [31:0] layer10_out_V_2_reg_605;
reg   [31:0] layer10_out_V_3_reg_610;
reg   [31:0] layer10_out_V_4_reg_615;
reg   [31:0] layer10_out_V_5_reg_620;
reg   [31:0] layer10_out_V_6_reg_625;
reg   [31:0] layer10_out_V_7_reg_630;
reg   [31:0] layer10_out_V_8_reg_635;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config11_s_fu_126_ap_return;
reg   [31:0] layer11_out_V_reg_640;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_0;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_1;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_2;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_3;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_4;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_5;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_6;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_7;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_8;
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
wire    ap_block_state21_pp0_stage0_iter20_ignore_call7;
wire    ap_block_state22_pp0_stage0_iter21_ignore_call7;
wire    ap_block_state23_pp0_stage0_iter22_ignore_call7;
wire    ap_block_state24_pp0_stage0_iter23_ignore_call7;
wire    ap_block_state25_pp0_stage0_iter24_ignore_call7;
wire    ap_block_state26_pp0_stage0_iter25_ignore_call7;
reg    ap_block_pp0_stage0_11001_ignoreCallOp28;
wire    call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_ready;
wire   [31:0] call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_0;
wire   [31:0] call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_1;
wire   [31:0] call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_2;
wire   [31:0] call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_3;
wire   [31:0] call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_4;
wire   [31:0] call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_5;
wire   [31:0] call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_6;
wire   [31:0] call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_7;
wire   [31:0] call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_8;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_0;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_1;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_2;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_3;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_4;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_5;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_6;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_7;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_8;
reg    grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_ce;
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
wire    ap_block_state21_pp0_stage0_iter20_ignore_call27;
wire    ap_block_state22_pp0_stage0_iter21_ignore_call27;
wire    ap_block_state23_pp0_stage0_iter22_ignore_call27;
wire    ap_block_state24_pp0_stage0_iter23_ignore_call27;
wire    ap_block_state25_pp0_stage0_iter24_ignore_call27;
wire    ap_block_state26_pp0_stage0_iter25_ignore_call27;
reg    ap_block_pp0_stage0_11001_ignoreCallOp51;
wire    call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_ready;
wire   [31:0] call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_0;
wire   [31:0] call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_1;
wire   [31:0] call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_2;
wire   [31:0] call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_3;
wire   [31:0] call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_4;
wire   [31:0] call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_5;
wire   [31:0] call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_6;
wire   [31:0] call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_7;
wire   [31:0] call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_8;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_0;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_1;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_2;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_3;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_4;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_5;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_6;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_7;
wire   [31:0] grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_8;
reg    grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_ce;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call47;
wire    ap_block_state2_pp0_stage0_iter1_ignore_call47;
wire    ap_block_state3_pp0_stage0_iter2_ignore_call47;
wire    ap_block_state4_pp0_stage0_iter3_ignore_call47;
wire    ap_block_state5_pp0_stage0_iter4_ignore_call47;
wire    ap_block_state6_pp0_stage0_iter5_ignore_call47;
wire    ap_block_state7_pp0_stage0_iter6_ignore_call47;
wire    ap_block_state8_pp0_stage0_iter7_ignore_call47;
wire    ap_block_state9_pp0_stage0_iter8_ignore_call47;
wire    ap_block_state10_pp0_stage0_iter9_ignore_call47;
wire    ap_block_state11_pp0_stage0_iter10_ignore_call47;
wire    ap_block_state12_pp0_stage0_iter11_ignore_call47;
wire    ap_block_state13_pp0_stage0_iter12_ignore_call47;
wire    ap_block_state14_pp0_stage0_iter13_ignore_call47;
wire    ap_block_state15_pp0_stage0_iter14_ignore_call47;
wire    ap_block_state16_pp0_stage0_iter15_ignore_call47;
wire    ap_block_state17_pp0_stage0_iter16_ignore_call47;
wire    ap_block_state18_pp0_stage0_iter17_ignore_call47;
wire    ap_block_state19_pp0_stage0_iter18_ignore_call47;
wire    ap_block_state20_pp0_stage0_iter19_ignore_call47;
wire    ap_block_state21_pp0_stage0_iter20_ignore_call47;
wire    ap_block_state22_pp0_stage0_iter21_ignore_call47;
wire    ap_block_state23_pp0_stage0_iter22_ignore_call47;
wire    ap_block_state24_pp0_stage0_iter23_ignore_call47;
wire    ap_block_state25_pp0_stage0_iter24_ignore_call47;
wire    ap_block_state26_pp0_stage0_iter25_ignore_call47;
reg    ap_block_pp0_stage0_11001_ignoreCallOp76;
wire    call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_ready;
wire   [31:0] call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_0;
wire   [31:0] call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_1;
wire   [31:0] call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_2;
wire   [31:0] call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_3;
wire   [31:0] call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_4;
wire   [31:0] call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_5;
wire   [31:0] call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_6;
wire   [31:0] call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_7;
wire   [31:0] call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_8;
reg    grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config11_s_fu_126_ap_ce;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call67;
wire    ap_block_state2_pp0_stage0_iter1_ignore_call67;
wire    ap_block_state3_pp0_stage0_iter2_ignore_call67;
wire    ap_block_state4_pp0_stage0_iter3_ignore_call67;
wire    ap_block_state5_pp0_stage0_iter4_ignore_call67;
wire    ap_block_state6_pp0_stage0_iter5_ignore_call67;
wire    ap_block_state7_pp0_stage0_iter6_ignore_call67;
wire    ap_block_state8_pp0_stage0_iter7_ignore_call67;
wire    ap_block_state9_pp0_stage0_iter8_ignore_call67;
wire    ap_block_state10_pp0_stage0_iter9_ignore_call67;
wire    ap_block_state11_pp0_stage0_iter10_ignore_call67;
wire    ap_block_state12_pp0_stage0_iter11_ignore_call67;
wire    ap_block_state13_pp0_stage0_iter12_ignore_call67;
wire    ap_block_state14_pp0_stage0_iter13_ignore_call67;
wire    ap_block_state15_pp0_stage0_iter14_ignore_call67;
wire    ap_block_state16_pp0_stage0_iter15_ignore_call67;
wire    ap_block_state17_pp0_stage0_iter16_ignore_call67;
wire    ap_block_state18_pp0_stage0_iter17_ignore_call67;
wire    ap_block_state19_pp0_stage0_iter18_ignore_call67;
wire    ap_block_state20_pp0_stage0_iter19_ignore_call67;
wire    ap_block_state21_pp0_stage0_iter20_ignore_call67;
wire    ap_block_state22_pp0_stage0_iter21_ignore_call67;
wire    ap_block_state23_pp0_stage0_iter22_ignore_call67;
wire    ap_block_state24_pp0_stage0_iter23_ignore_call67;
wire    ap_block_state25_pp0_stage0_iter24_ignore_call67;
wire    ap_block_state26_pp0_stage0_iter25_ignore_call67;
reg    ap_block_pp0_stage0_11001_ignoreCallOp101;
wire    call_ret6_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config13_s_fu_139_ap_ready;
wire   [30:0] call_ret6_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config13_s_fu_139_ap_return;
reg    ap_block_pp0_stage0_01001;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to24;
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
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter21 = 1'b0;
#0 ap_enable_reg_pp0_iter22 = 1'b0;
#0 ap_enable_reg_pp0_iter23 = 1'b0;
#0 ap_enable_reg_pp0_iter24 = 1'b0;
#0 ap_enable_reg_pp0_iter25 = 1'b0;
#0 fc0_input_preg = 96'd0;
#0 fc0_input_ap_vld_preg = 1'b0;
end

motorB_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .p_read(fc0_input_in_sig),
    .ap_return_0(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_1),
    .ap_return_2(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_2),
    .ap_return_3(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_3),
    .ap_return_4(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_4),
    .ap_return_5(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_5),
    .ap_return_6(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_6),
    .ap_return_7(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_7),
    .ap_return_8(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_8),
    .ap_ce(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_ce)
);

motorB_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61(
    .ap_ready(call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_ready),
    .p_read(layer2_out_V_reg_370),
    .p_read1(layer2_out_V_1_reg_375),
    .p_read2(layer2_out_V_2_reg_380),
    .p_read3(layer2_out_V_3_reg_385),
    .p_read4(layer2_out_V_4_reg_390),
    .p_read5(layer2_out_V_5_reg_395),
    .p_read6(layer2_out_V_6_reg_400),
    .p_read7(layer2_out_V_7_reg_405),
    .p_read8(layer2_out_V_8_reg_410),
    .ap_return_0(call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_0),
    .ap_return_1(call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_1),
    .ap_return_2(call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_2),
    .ap_return_3(call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_3),
    .ap_return_4(call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_4),
    .ap_return_5(call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_5),
    .ap_return_6(call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_6),
    .ap_return_7(call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_7),
    .ap_return_8(call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_8)
);

motorB_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .p_read(layer4_out_V_reg_415),
    .p_read1(layer4_out_V_1_reg_420),
    .p_read2(layer4_out_V_2_reg_425),
    .p_read3(layer4_out_V_3_reg_430),
    .p_read4(layer4_out_V_4_reg_435),
    .p_read5(layer4_out_V_5_reg_440),
    .p_read6(layer4_out_V_6_reg_445),
    .p_read7(layer4_out_V_7_reg_450),
    .p_read8(layer4_out_V_8_reg_455),
    .ap_return_0(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_1),
    .ap_return_2(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_2),
    .ap_return_3(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_3),
    .ap_return_4(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_4),
    .ap_return_5(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_5),
    .ap_return_6(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_6),
    .ap_return_7(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_7),
    .ap_return_8(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_8),
    .ap_ce(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_ce)
);

motorB_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87(
    .ap_ready(call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_ready),
    .p_read(layer5_out_V_reg_460),
    .p_read1(layer5_out_V_1_reg_465),
    .p_read2(layer5_out_V_2_reg_470),
    .p_read3(layer5_out_V_3_reg_475),
    .p_read4(layer5_out_V_4_reg_480),
    .p_read5(layer5_out_V_5_reg_485),
    .p_read6(layer5_out_V_6_reg_490),
    .p_read7(layer5_out_V_7_reg_495),
    .p_read8(layer5_out_V_8_reg_500),
    .ap_return_0(call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_0),
    .ap_return_1(call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_1),
    .ap_return_2(call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_2),
    .ap_return_3(call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_3),
    .ap_return_4(call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_4),
    .ap_return_5(call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_5),
    .ap_return_6(call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_6),
    .ap_return_7(call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_7),
    .ap_return_8(call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_8)
);

motorB_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .p_read(layer7_out_V_reg_505),
    .p_read1(layer7_out_V_1_reg_510),
    .p_read2(layer7_out_V_2_reg_515),
    .p_read3(layer7_out_V_3_reg_520),
    .p_read4(layer7_out_V_4_reg_525),
    .p_read5(layer7_out_V_5_reg_530),
    .p_read6(layer7_out_V_6_reg_535),
    .p_read7(layer7_out_V_7_reg_540),
    .p_read8(layer7_out_V_8_reg_545),
    .ap_return_0(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_1),
    .ap_return_2(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_2),
    .ap_return_3(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_3),
    .ap_return_4(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_4),
    .ap_return_5(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_5),
    .ap_return_6(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_6),
    .ap_return_7(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_7),
    .ap_return_8(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_8),
    .ap_ce(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_ce)
);

motorB_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113(
    .ap_ready(call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_ready),
    .p_read(layer8_out_V_reg_550),
    .p_read1(layer8_out_V_1_reg_555),
    .p_read2(layer8_out_V_2_reg_560),
    .p_read3(layer8_out_V_3_reg_565),
    .p_read4(layer8_out_V_4_reg_570),
    .p_read5(layer8_out_V_5_reg_575),
    .p_read6(layer8_out_V_6_reg_580),
    .p_read7(layer8_out_V_7_reg_585),
    .p_read8(layer8_out_V_8_reg_590),
    .ap_return_0(call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_0),
    .ap_return_1(call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_1),
    .ap_return_2(call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_2),
    .ap_return_3(call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_3),
    .ap_return_4(call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_4),
    .ap_return_5(call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_5),
    .ap_return_6(call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_6),
    .ap_return_7(call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_7),
    .ap_return_8(call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_8)
);

motorB_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config11_s grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config11_s_fu_126(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .p_read(layer10_out_V_reg_595),
    .p_read1(layer10_out_V_1_reg_600),
    .p_read2(layer10_out_V_2_reg_605),
    .p_read3(layer10_out_V_3_reg_610),
    .p_read4(layer10_out_V_4_reg_615),
    .p_read5(layer10_out_V_5_reg_620),
    .p_read6(layer10_out_V_6_reg_625),
    .p_read7(layer10_out_V_7_reg_630),
    .p_read8(layer10_out_V_8_reg_635),
    .ap_return(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config11_s_fu_126_ap_return),
    .ap_ce(grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config11_s_fu_126_ap_ce)
);

motorB_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config13_s call_ret6_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config13_s_fu_139(
    .ap_ready(call_ret6_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config13_s_fu_139_ap_ready),
    .p_read(layer11_out_V_reg_640),
    .ap_return(call_ret6_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config13_s_fu_139_ap_return)
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
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter22 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter22 <= ap_enable_reg_pp0_iter21;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter23 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter23 <= ap_enable_reg_pp0_iter22;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter24 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter24 <= ap_enable_reg_pp0_iter23;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter25 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter25 <= ap_enable_reg_pp0_iter24;
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
        layer10_out_V_1_reg_600 <= call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_1;
        layer10_out_V_2_reg_605 <= call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_2;
        layer10_out_V_3_reg_610 <= call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_3;
        layer10_out_V_4_reg_615 <= call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_4;
        layer10_out_V_5_reg_620 <= call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_5;
        layer10_out_V_6_reg_625 <= call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_6;
        layer10_out_V_7_reg_630 <= call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_7;
        layer10_out_V_8_reg_635 <= call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_8;
        layer10_out_V_reg_595 <= call_ret5_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config10_s_fu_113_ap_return_0;
        layer11_out_V_reg_640 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config11_s_fu_126_ap_return;
        layer2_out_V_1_reg_375 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_1;
        layer2_out_V_2_reg_380 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_2;
        layer2_out_V_3_reg_385 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_3;
        layer2_out_V_4_reg_390 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_4;
        layer2_out_V_5_reg_395 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_5;
        layer2_out_V_6_reg_400 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_6;
        layer2_out_V_7_reg_405 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_7;
        layer2_out_V_8_reg_410 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_8;
        layer2_out_V_reg_370 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_return_0;
        layer4_out_V_1_reg_420 <= call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_1;
        layer4_out_V_2_reg_425 <= call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_2;
        layer4_out_V_3_reg_430 <= call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_3;
        layer4_out_V_4_reg_435 <= call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_4;
        layer4_out_V_5_reg_440 <= call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_5;
        layer4_out_V_6_reg_445 <= call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_6;
        layer4_out_V_7_reg_450 <= call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_7;
        layer4_out_V_8_reg_455 <= call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_8;
        layer4_out_V_reg_415 <= call_ret2_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config4_s_fu_61_ap_return_0;
        layer5_out_V_1_reg_465 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_1;
        layer5_out_V_2_reg_470 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_2;
        layer5_out_V_3_reg_475 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_3;
        layer5_out_V_4_reg_480 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_4;
        layer5_out_V_5_reg_485 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_5;
        layer5_out_V_6_reg_490 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_6;
        layer5_out_V_7_reg_495 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_7;
        layer5_out_V_8_reg_500 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_8;
        layer5_out_V_reg_460 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_return_0;
        layer7_out_V_1_reg_510 <= call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_1;
        layer7_out_V_2_reg_515 <= call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_2;
        layer7_out_V_3_reg_520 <= call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_3;
        layer7_out_V_4_reg_525 <= call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_4;
        layer7_out_V_5_reg_530 <= call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_5;
        layer7_out_V_6_reg_535 <= call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_6;
        layer7_out_V_7_reg_540 <= call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_7;
        layer7_out_V_8_reg_545 <= call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_8;
        layer7_out_V_reg_505 <= call_ret_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config7_s_fu_87_ap_return_0;
        layer8_out_V_1_reg_555 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_1;
        layer8_out_V_2_reg_560 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_2;
        layer8_out_V_3_reg_565 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_3;
        layer8_out_V_4_reg_570 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_4;
        layer8_out_V_5_reg_575 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_5;
        layer8_out_V_6_reg_580 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_6;
        layer8_out_V_7_reg_585 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_7;
        layer8_out_V_8_reg_590 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_8;
        layer8_out_V_reg_550 <= grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_return_0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter25 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to24 = 1'b1;
    end else begin
        ap_idle_pp0_0to24 = 1'b0;
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
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to24 == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp101))) begin
        grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config11_s_fu_126_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config11_s_fu_126_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp28))) begin
        grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config2_s_fu_55_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp51))) begin
        grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config5_s_fu_74_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp76))) begin
        grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config8_s_fu_100_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter25 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
    ap_block_pp0_stage0_01001 = ((ap_start == 1'b1) & (fc0_input_ap_vld_in_sig == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_start == 1'b1) & (fc0_input_ap_vld_in_sig == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp101 = ((ap_start == 1'b1) & (fc0_input_ap_vld_in_sig == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp28 = ((ap_start == 1'b1) & (fc0_input_ap_vld_in_sig == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp51 = ((ap_start == 1'b1) & (fc0_input_ap_vld_in_sig == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp76 = ((ap_start == 1'b1) & (fc0_input_ap_vld_in_sig == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_start == 1'b1) & (fc0_input_ap_vld_in_sig == 1'b0));
end

assign ap_block_state10_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter9_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter9_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter9_ignore_call67 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter9_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10_ignore_call67 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11_ignore_call67 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12_ignore_call67 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13_ignore_call67 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter14 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter14_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter14_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter14_ignore_call67 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter14_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter15 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter15_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter15_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter15_ignore_call67 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter15_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter16 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter16_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter16_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter16_ignore_call67 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter16_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage0_iter17 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage0_iter17_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage0_iter17_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage0_iter17_ignore_call67 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage0_iter17_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter18 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter18_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter18_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter18_ignore_call67 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter18_ignore_call7 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call27 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call47 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call67 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call7 = (fc0_input_ap_vld_in_sig == 1'b0);
end

assign ap_block_state20_pp0_stage0_iter19 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage0_iter19_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage0_iter19_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage0_iter19_ignore_call67 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage0_iter19_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter20 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter20_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter20_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter20_ignore_call67 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter20_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage0_iter21 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage0_iter21_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage0_iter21_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage0_iter21_ignore_call67 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage0_iter21_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage0_iter22 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage0_iter22_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage0_iter22_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage0_iter22_ignore_call67 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage0_iter22_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage0_iter23 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage0_iter23_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage0_iter23_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage0_iter23_ignore_call67 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage0_iter23_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage0_iter24 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage0_iter24_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage0_iter24_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage0_iter24_ignore_call67 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage0_iter24_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage0_iter25 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage0_iter25_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage0_iter25_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage0_iter25_ignore_call67 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage0_iter25_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1_ignore_call67 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2_ignore_call67 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3_ignore_call67 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4_ignore_call67 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5_ignore_call67 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6_ignore_call67 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7_ignore_call67 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8_ignore_call27 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8_ignore_call47 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8_ignore_call67 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign layer13_out = call_ret6_relu_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_relu_config13_s_fu_139_ap_return;

endmodule //motorB
