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
input [15:0] r;
input [15:0] pos;
input [15:0] vel;
output  [15:0] layer13_out;
output   layer13_out_ap_vld;

reg [47:0] fc0_input;
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
reg    ap_block_pp0_stage0_subdone;
reg   [47:0] fc0_input_preg;
reg   [47:0] fc0_input_in_sig;
reg    fc0_input_ap_vld_preg;
reg    fc0_input_blk_n;
wire    ap_block_pp0_stage0;
reg   [15:0] layer2_out_V_reg_185;
reg    ap_block_pp0_stage0_11001;
reg   [15:0] layer2_out_V_1_reg_190;
reg   [15:0] layer2_out_V_2_reg_195;
reg   [15:0] layer2_out_V_3_reg_200;
reg   [15:0] layer4_out_V_reg_205;
reg   [15:0] layer4_out_V_1_reg_210;
reg   [15:0] layer4_out_V_2_reg_215;
reg   [15:0] layer4_out_V_3_reg_220;
reg   [15:0] layer5_out_V_reg_225;
reg   [15:0] layer5_out_V_1_reg_230;
reg   [15:0] layer7_out_V_reg_235;
reg   [15:0] layer7_out_V_1_reg_240;
reg   [15:0] layer8_out_V_reg_245;
reg   [15:0] layer8_out_V_1_reg_250;
reg   [15:0] layer8_out_V_2_reg_255;
reg   [15:0] layer10_out_V_reg_260;
reg   [15:0] layer10_out_V_1_reg_265;
reg   [15:0] layer10_out_V_2_reg_270;
wire   [15:0] grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config11_s_fu_96_ap_return;
reg   [15:0] layer11_out_V_reg_275;
wire   [15:0] grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config2_s_fu_55_ap_return_0;
wire   [15:0] grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config2_s_fu_55_ap_return_1;
wire   [15:0] grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config2_s_fu_55_ap_return_2;
wire   [15:0] grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config2_s_fu_55_ap_return_3;
reg    grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config2_s_fu_55_ap_ce;
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
reg    ap_block_pp0_stage0_11001_ignoreCallOp16;
wire    call_ret2_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config4_s_fu_61_ap_ready;
wire   [15:0] call_ret2_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config4_s_fu_61_ap_return_0;
wire   [15:0] call_ret2_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config4_s_fu_61_ap_return_1;
wire   [15:0] call_ret2_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config4_s_fu_61_ap_return_2;
wire   [15:0] call_ret2_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config4_s_fu_61_ap_return_3;
wire   [15:0] grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config5_s_fu_69_ap_return_0;
wire   [15:0] grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config5_s_fu_69_ap_return_1;
reg    grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config5_s_fu_69_ap_ce;
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
reg    ap_block_pp0_stage0_11001_ignoreCallOp27;
wire    call_ret_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config7_s_fu_77_ap_ready;
wire   [15:0] call_ret_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config7_s_fu_77_ap_return_0;
wire   [15:0] call_ret_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config7_s_fu_77_ap_return_1;
wire   [15:0] grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config8_s_fu_83_ap_return_0;
wire   [15:0] grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config8_s_fu_83_ap_return_1;
wire   [15:0] grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config8_s_fu_83_ap_return_2;
reg    grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config8_s_fu_83_ap_ce;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call23;
wire    ap_block_state2_pp0_stage0_iter1_ignore_call23;
wire    ap_block_state3_pp0_stage0_iter2_ignore_call23;
wire    ap_block_state4_pp0_stage0_iter3_ignore_call23;
wire    ap_block_state5_pp0_stage0_iter4_ignore_call23;
wire    ap_block_state6_pp0_stage0_iter5_ignore_call23;
wire    ap_block_state7_pp0_stage0_iter6_ignore_call23;
wire    ap_block_state8_pp0_stage0_iter7_ignore_call23;
wire    ap_block_state9_pp0_stage0_iter8_ignore_call23;
wire    ap_block_state10_pp0_stage0_iter9_ignore_call23;
wire    ap_block_state11_pp0_stage0_iter10_ignore_call23;
wire    ap_block_state12_pp0_stage0_iter11_ignore_call23;
wire    ap_block_state13_pp0_stage0_iter12_ignore_call23;
wire    ap_block_state14_pp0_stage0_iter13_ignore_call23;
reg    ap_block_pp0_stage0_11001_ignoreCallOp36;
wire    call_ret5_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config10_s_fu_89_ap_ready;
wire   [15:0] call_ret5_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config10_s_fu_89_ap_return_0;
wire   [15:0] call_ret5_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config10_s_fu_89_ap_return_1;
wire   [15:0] call_ret5_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config10_s_fu_89_ap_return_2;
reg    grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config11_s_fu_96_ap_ce;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call31;
wire    ap_block_state2_pp0_stage0_iter1_ignore_call31;
wire    ap_block_state3_pp0_stage0_iter2_ignore_call31;
wire    ap_block_state4_pp0_stage0_iter3_ignore_call31;
wire    ap_block_state5_pp0_stage0_iter4_ignore_call31;
wire    ap_block_state6_pp0_stage0_iter5_ignore_call31;
wire    ap_block_state7_pp0_stage0_iter6_ignore_call31;
wire    ap_block_state8_pp0_stage0_iter7_ignore_call31;
wire    ap_block_state9_pp0_stage0_iter8_ignore_call31;
wire    ap_block_state10_pp0_stage0_iter9_ignore_call31;
wire    ap_block_state11_pp0_stage0_iter10_ignore_call31;
wire    ap_block_state12_pp0_stage0_iter11_ignore_call31;
wire    ap_block_state13_pp0_stage0_iter12_ignore_call31;
wire    ap_block_state14_pp0_stage0_iter13_ignore_call31;
reg    ap_block_pp0_stage0_11001_ignoreCallOp45;
wire    call_ret6_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config13_s_fu_103_ap_ready;
wire   [14:0] call_ret6_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config13_s_fu_103_ap_return;
reg    ap_block_pp0_stage0_01001;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to12;
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
#0 fc0_input_preg = 48'd0;
#0 fc0_input_ap_vld_preg = 1'b0;
end

motor_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config2_s grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config2_s_fu_55(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .p_read(fc0_input_in_sig),
    .ap_return_0(grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config2_s_fu_55_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config2_s_fu_55_ap_return_1),
    .ap_return_2(grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config2_s_fu_55_ap_return_2),
    .ap_return_3(grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config2_s_fu_55_ap_return_3),
    .ap_ce(grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config2_s_fu_55_ap_ce)
);

motor_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config4_s call_ret2_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config4_s_fu_61(
    .ap_ready(call_ret2_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config4_s_fu_61_ap_ready),
    .p_read2(layer2_out_V_reg_185),
    .p_read4(layer2_out_V_1_reg_190),
    .p_read7(layer2_out_V_2_reg_195),
    .p_read8(layer2_out_V_3_reg_200),
    .ap_return_0(call_ret2_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config4_s_fu_61_ap_return_0),
    .ap_return_1(call_ret2_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config4_s_fu_61_ap_return_1),
    .ap_return_2(call_ret2_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config4_s_fu_61_ap_return_2),
    .ap_return_3(call_ret2_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config4_s_fu_61_ap_return_3)
);

motor_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config5_s grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config5_s_fu_69(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .p_read(layer4_out_V_reg_205),
    .p_read1(layer4_out_V_1_reg_210),
    .p_read2(layer4_out_V_2_reg_215),
    .p_read3(layer4_out_V_3_reg_220),
    .ap_return_0(grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config5_s_fu_69_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config5_s_fu_69_ap_return_1),
    .ap_ce(grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config5_s_fu_69_ap_ce)
);

motor_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config7_s call_ret_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config7_s_fu_77(
    .ap_ready(call_ret_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config7_s_fu_77_ap_ready),
    .p_read(layer5_out_V_reg_225),
    .p_read3(layer5_out_V_1_reg_230),
    .ap_return_0(call_ret_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config7_s_fu_77_ap_return_0),
    .ap_return_1(call_ret_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config7_s_fu_77_ap_return_1)
);

motor_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config8_s grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config8_s_fu_83(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .p_read(layer7_out_V_reg_235),
    .p_read1(layer7_out_V_1_reg_240),
    .ap_return_0(grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config8_s_fu_83_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config8_s_fu_83_ap_return_1),
    .ap_return_2(grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config8_s_fu_83_ap_return_2),
    .ap_ce(grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config8_s_fu_83_ap_ce)
);

motor_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config10_s call_ret5_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config10_s_fu_89(
    .ap_ready(call_ret5_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config10_s_fu_89_ap_ready),
    .p_read(layer8_out_V_reg_245),
    .p_read7(layer8_out_V_1_reg_250),
    .p_read8(layer8_out_V_2_reg_255),
    .ap_return_0(call_ret5_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config10_s_fu_89_ap_return_0),
    .ap_return_1(call_ret5_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config10_s_fu_89_ap_return_1),
    .ap_return_2(call_ret5_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config10_s_fu_89_ap_return_2)
);

motor_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config11_s grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config11_s_fu_96(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .p_read(layer10_out_V_reg_260),
    .p_read1(layer10_out_V_1_reg_265),
    .p_read2(layer10_out_V_2_reg_270),
    .ap_return(grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config11_s_fu_96_ap_return),
    .ap_ce(grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config11_s_fu_96_ap_ce)
);

motor_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config13_s call_ret6_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config13_s_fu_103(
    .ap_ready(call_ret6_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config13_s_fu_103_ap_ready),
    .p_read(layer11_out_V_reg_275),
    .ap_return(call_ret6_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config13_s_fu_103_ap_return)
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            fc0_input_ap_vld_preg <= 1'b0;
        end else if ((~((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0)) & (fc0_input_ap_vld == 1'b1))) begin
            fc0_input_ap_vld_preg <= fc0_input_ap_vld;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        fc0_input_preg <= 48'd0;
    end else begin
        if ((~((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0)) & (fc0_input_ap_vld == 1'b1))) begin
            fc0_input_preg <= fc0_input;
        end
    end
end

always @ (posedge clk_1) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        layer10_out_V_1_reg_265 <= call_ret5_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config10_s_fu_89_ap_return_1;
        layer10_out_V_2_reg_270 <= call_ret5_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config10_s_fu_89_ap_return_2;
        layer10_out_V_reg_260 <= call_ret5_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config10_s_fu_89_ap_return_0;
        layer11_out_V_reg_275 <= grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config11_s_fu_96_ap_return;
        layer4_out_V_1_reg_210 <= call_ret2_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config4_s_fu_61_ap_return_1;
        layer4_out_V_2_reg_215 <= call_ret2_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config4_s_fu_61_ap_return_2;
        layer4_out_V_3_reg_220 <= call_ret2_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config4_s_fu_61_ap_return_3;
        layer4_out_V_reg_205 <= call_ret2_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config4_s_fu_61_ap_return_0;
        layer5_out_V_1_reg_230 <= grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config5_s_fu_69_ap_return_1;
        layer5_out_V_reg_225 <= grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config5_s_fu_69_ap_return_0;
        layer7_out_V_1_reg_240 <= call_ret_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config7_s_fu_77_ap_return_1;
        layer7_out_V_reg_235 <= call_ret_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config7_s_fu_77_ap_return_0;
        layer8_out_V_1_reg_250 <= grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config8_s_fu_83_ap_return_1;
        layer8_out_V_2_reg_255 <= grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config8_s_fu_83_ap_return_2;
        layer8_out_V_reg_245 <= grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config8_s_fu_83_ap_return_0;
    end
end

always @ (posedge clk_1) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        layer2_out_V_1_reg_190 <= grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config2_s_fu_55_ap_return_1;
        layer2_out_V_2_reg_195 <= grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config2_s_fu_55_ap_return_2;
        layer2_out_V_3_reg_200 <= grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config2_s_fu_55_ap_return_3;
        layer2_out_V_reg_185 <= grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config2_s_fu_55_ap_return_0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
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
    if (((ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to12 = 1'b1;
    end else begin
        ap_idle_pp0_0to12 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to12 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp45) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config11_s_fu_96_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config11_s_fu_96_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp16) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config2_s_fu_55_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config2_s_fu_55_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp27) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config5_s_fu_69_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config5_s_fu_69_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp36) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config8_s_fu_83_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_config8_s_fu_83_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
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
    ap_block_pp0_stage0_11001_ignoreCallOp16 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_start == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp27 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_start == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp36 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_start == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp45 = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_start == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((fc0_input_ap_vld_in_sig == 1'b0) & (ap_start == 1'b1));
end

assign ap_block_state10_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter9_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter9_ignore_call23 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter9_ignore_call31 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter9_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10_ignore_call23 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10_ignore_call31 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11_ignore_call23 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11_ignore_call31 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12_ignore_call23 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12_ignore_call31 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13_ignore_call23 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13_ignore_call31 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13_ignore_call7 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call17 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call23 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call31 = (fc0_input_ap_vld_in_sig == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call7 = (fc0_input_ap_vld_in_sig == 1'b0);
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1_ignore_call23 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1_ignore_call31 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2_ignore_call23 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2_ignore_call31 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3_ignore_call23 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3_ignore_call31 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4_ignore_call23 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4_ignore_call31 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5_ignore_call23 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5_ignore_call31 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6_ignore_call23 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6_ignore_call31 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7_ignore_call23 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7_ignore_call31 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8_ignore_call17 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8_ignore_call23 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8_ignore_call31 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign layer13_out = call_ret6_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config13_s_fu_103_ap_return;

endmodule //motor
