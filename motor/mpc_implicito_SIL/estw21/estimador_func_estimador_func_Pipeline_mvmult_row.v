module estimador_func_estimador_func_Pipeline_mvmult_row (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        conv7_i_i,
        temp2_V_2_03_out,
        temp2_V_2_03_out_ap_vld,
        temp2_V_1_02_out,
        temp2_V_1_02_out_ap_vld,
        temp2_V_0_01_out,
        temp2_V_0_01_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [20:0] conv7_i_i;
output  [20:0] temp2_V_2_03_out;
output   temp2_V_2_03_out_ap_vld;
output  [20:0] temp2_V_1_02_out;
output   temp2_V_1_02_out_ap_vld;
output  [20:0] temp2_V_0_01_out;
output   temp2_V_0_01_out_ap_vld;

reg ap_idle;
reg temp2_V_2_03_out_ap_vld;
reg temp2_V_1_02_out_ap_vld;
reg temp2_V_0_01_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln24_fu_135_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [1:0] i_3_reg_481;
wire    ap_block_pp0_stage0_11001;
wire   [41:0] r_V_2_fu_163_p2;
reg   [41:0] r_V_2_reg_490;
reg   [0:0] p_Result_s_reg_495;
reg   [20:0] p_Val2_2_reg_501;
reg   [0:0] p_Result_5_reg_506;
reg   [0:0] tmp_reg_511;
wire   [0:0] Range2_all_ones_fu_213_p2;
reg   [0:0] Range2_all_ones_reg_516;
wire   [0:0] Range1_all_ones_fu_229_p2;
reg   [0:0] Range1_all_ones_reg_521;
wire   [0:0] Range1_all_zeros_fu_235_p2;
reg   [0:0] Range1_all_zeros_reg_528;
reg   [1:0] i_fu_80;
wire   [1:0] add_ln24_fu_141_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i_3;
wire    ap_block_pp0_stage0;
reg   [20:0] temp2_V_2_1_fu_84;
wire   [20:0] temp2_V_2_8_fu_418_p3;
reg   [20:0] temp2_V_2_2_fu_88;
wire   [20:0] temp2_V_2_7_fu_410_p3;
reg   [20:0] temp2_V_2_3_fu_92;
wire   [20:0] temp2_V_2_fu_402_p3;
wire    ap_block_pp0_stage0_01001;
wire   [20:0] r_V_fu_147_p5;
wire   [20:0] r_V_2_fu_163_p0;
wire   [5:0] tmp_1_fu_203_p4;
wire   [6:0] tmp_2_fu_219_p4;
wire   [20:0] zext_ln377_fu_255_p1;
wire   [20:0] p_Val2_s_fu_258_p2;
wire   [0:0] p_Result_6_fu_263_p3;
wire   [0:0] xor_ln896_fu_271_p2;
wire   [0:0] carry_2_fu_277_p2;
wire   [0:0] tmp_23_fu_288_p3;
wire   [0:0] xor_ln890_fu_295_p2;
wire   [0:0] and_ln890_fu_301_p2;
wire   [0:0] deleted_zeros_fu_282_p3;
wire   [0:0] xor_ln895_1_fu_318_p2;
wire   [0:0] or_ln895_fu_324_p2;
wire   [0:0] xor_ln895_2_fu_330_p2;
wire   [0:0] deleted_ones_fu_306_p3;
wire   [0:0] xor_ln896_1_fu_341_p2;
wire   [0:0] and_ln891_fu_313_p2;
wire   [0:0] or_ln896_fu_347_p2;
wire   [0:0] xor_ln896_9_fu_353_p2;
wire   [0:0] overflow_fu_335_p2;
wire   [0:0] underflow_fu_359_p2;
wire   [0:0] or_ln346_fu_372_p2;
wire   [20:0] select_ln346_1_fu_364_p3;
wire   [0:0] icmp_ln1420_fu_386_p2;
wire   [0:0] icmp_ln1420_1_fu_391_p2;
wire   [0:0] or_ln1420_fu_396_p2;
wire   [20:0] temp2_V_2_9_fu_378_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire   [41:0] r_V_2_fu_163_p00;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

estimador_func_mux_32_21_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 21 ),
    .din2_WIDTH( 21 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 21 ))
mux_32_21_1_1_U1(
    .din0(21'd533915),
    .din1(21'd19780),
    .din2(21'd373883),
    .din3(ap_sig_allocacmp_i_3),
    .dout(r_V_fu_147_p5)
);

estimador_func_mul_21ns_21s_42_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 21 ),
    .dout_WIDTH( 42 ))
mul_21ns_21s_42_1_1_U2(
    .din0(r_V_2_fu_163_p0),
    .din1(conv7_i_i),
    .dout(r_V_2_fu_163_p2)
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln24_fu_135_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_80 <= add_ln24_fu_141_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_80 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln24_fu_135_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        Range1_all_ones_reg_521 <= Range1_all_ones_fu_229_p2;
        Range1_all_zeros_reg_528 <= Range1_all_zeros_fu_235_p2;
        Range2_all_ones_reg_516 <= Range2_all_ones_fu_213_p2;
        p_Result_5_reg_506 <= r_V_2_fu_163_p2[32'd34];
        p_Result_s_reg_495 <= r_V_2_fu_163_p2[32'd41];
        p_Val2_2_reg_501 <= {{r_V_2_fu_163_p2[34:14]}};
        r_V_2_reg_490 <= r_V_2_fu_163_p2;
        tmp_reg_511 <= r_V_2_fu_163_p2[32'd13];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_3_reg_481 <= ap_sig_allocacmp_i_3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp2_V_2_1_fu_84 <= temp2_V_2_8_fu_418_p3;
        temp2_V_2_2_fu_88 <= temp2_V_2_7_fu_410_p3;
        temp2_V_2_3_fu_92 <= temp2_V_2_fu_402_p3;
    end
end

always @ (*) begin
    if (((icmp_ln24_fu_135_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_3 = 2'd0;
    end else begin
        ap_sig_allocacmp_i_3 = i_fu_80;
    end
end

always @ (*) begin
    if (((icmp_ln24_fu_135_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp2_V_0_01_out_ap_vld = 1'b1;
    end else begin
        temp2_V_0_01_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln24_fu_135_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp2_V_1_02_out_ap_vld = 1'b1;
    end else begin
        temp2_V_1_02_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln24_fu_135_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp2_V_2_03_out_ap_vld = 1'b1;
    end else begin
        temp2_V_2_03_out_ap_vld = 1'b0;
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

assign Range1_all_ones_fu_229_p2 = ((tmp_2_fu_219_p4 == 7'd127) ? 1'b1 : 1'b0);

assign Range1_all_zeros_fu_235_p2 = ((tmp_2_fu_219_p4 == 7'd0) ? 1'b1 : 1'b0);

assign Range2_all_ones_fu_213_p2 = ((tmp_1_fu_203_p4 == 6'd63) ? 1'b1 : 1'b0);

assign add_ln24_fu_141_p2 = (ap_sig_allocacmp_i_3 + 2'd1);

assign and_ln890_fu_301_p2 = (xor_ln890_fu_295_p2 & Range2_all_ones_reg_516);

assign and_ln891_fu_313_p2 = (carry_2_fu_277_p2 & Range1_all_ones_reg_521);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign carry_2_fu_277_p2 = (xor_ln896_fu_271_p2 & p_Result_5_reg_506);

assign deleted_ones_fu_306_p3 = ((carry_2_fu_277_p2[0:0] == 1'b1) ? and_ln890_fu_301_p2 : Range1_all_ones_reg_521);

assign deleted_zeros_fu_282_p3 = ((carry_2_fu_277_p2[0:0] == 1'b1) ? Range1_all_ones_reg_521 : Range1_all_zeros_reg_528);

assign icmp_ln1420_1_fu_391_p2 = ((i_3_reg_481 == 2'd1) ? 1'b1 : 1'b0);

assign icmp_ln1420_fu_386_p2 = ((i_3_reg_481 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln24_fu_135_p2 = ((ap_sig_allocacmp_i_3 == 2'd3) ? 1'b1 : 1'b0);

assign or_ln1420_fu_396_p2 = (icmp_ln1420_fu_386_p2 | icmp_ln1420_1_fu_391_p2);

assign or_ln346_fu_372_p2 = (underflow_fu_359_p2 | overflow_fu_335_p2);

assign or_ln895_fu_324_p2 = (xor_ln895_1_fu_318_p2 | p_Result_6_fu_263_p3);

assign or_ln896_fu_347_p2 = (xor_ln896_fu_271_p2 | xor_ln896_1_fu_341_p2);

assign overflow_fu_335_p2 = (xor_ln895_2_fu_330_p2 & or_ln895_fu_324_p2);

assign p_Result_6_fu_263_p3 = p_Val2_s_fu_258_p2[32'd20];

assign p_Val2_s_fu_258_p2 = (zext_ln377_fu_255_p1 + p_Val2_2_reg_501);

assign r_V_2_fu_163_p0 = r_V_2_fu_163_p00;

assign r_V_2_fu_163_p00 = r_V_fu_147_p5;

assign select_ln346_1_fu_364_p3 = ((overflow_fu_335_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign temp2_V_0_01_out = temp2_V_2_1_fu_84;

assign temp2_V_1_02_out = temp2_V_2_2_fu_88;

assign temp2_V_2_03_out = temp2_V_2_3_fu_92;

assign temp2_V_2_7_fu_410_p3 = ((icmp_ln1420_1_fu_391_p2[0:0] == 1'b1) ? temp2_V_2_9_fu_378_p3 : temp2_V_2_2_fu_88);

assign temp2_V_2_8_fu_418_p3 = ((icmp_ln1420_fu_386_p2[0:0] == 1'b1) ? temp2_V_2_9_fu_378_p3 : temp2_V_2_1_fu_84);

assign temp2_V_2_9_fu_378_p3 = ((or_ln346_fu_372_p2[0:0] == 1'b1) ? select_ln346_1_fu_364_p3 : p_Val2_s_fu_258_p2);

assign temp2_V_2_fu_402_p3 = ((or_ln1420_fu_396_p2[0:0] == 1'b1) ? temp2_V_2_3_fu_92 : temp2_V_2_9_fu_378_p3);

assign tmp_1_fu_203_p4 = {{r_V_2_fu_163_p2[41:36]}};

assign tmp_23_fu_288_p3 = r_V_2_reg_490[32'd35];

assign tmp_2_fu_219_p4 = {{r_V_2_fu_163_p2[41:35]}};

assign underflow_fu_359_p2 = (xor_ln896_9_fu_353_p2 & p_Result_s_reg_495);

assign xor_ln890_fu_295_p2 = (tmp_23_fu_288_p3 ^ 1'd1);

assign xor_ln895_1_fu_318_p2 = (deleted_zeros_fu_282_p3 ^ 1'd1);

assign xor_ln895_2_fu_330_p2 = (p_Result_s_reg_495 ^ 1'd1);

assign xor_ln896_1_fu_341_p2 = (deleted_ones_fu_306_p3 ^ 1'd1);

assign xor_ln896_9_fu_353_p2 = (or_ln896_fu_347_p2 ^ and_ln891_fu_313_p2);

assign xor_ln896_fu_271_p2 = (p_Result_6_fu_263_p3 ^ 1'd1);

assign zext_ln377_fu_255_p1 = tmp_reg_511;

endmodule //estimador_func_estimador_func_Pipeline_mvmult_row
