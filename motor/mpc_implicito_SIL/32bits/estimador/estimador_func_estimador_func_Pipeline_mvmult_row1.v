module estimador_func_estimador_func_Pipeline_mvmult_row1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        conv7_i_i51,
        temp3_V_2_06_out,
        temp3_V_2_06_out_ap_vld,
        temp3_V_1_05_out,
        temp3_V_1_05_out_ap_vld,
        temp3_V_0_04_out,
        temp3_V_0_04_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] conv7_i_i51;
output  [31:0] temp3_V_2_06_out;
output   temp3_V_2_06_out_ap_vld;
output  [31:0] temp3_V_1_05_out;
output   temp3_V_1_05_out_ap_vld;
output  [31:0] temp3_V_0_04_out;
output   temp3_V_0_04_out_ap_vld;

reg ap_idle;
reg temp3_V_2_06_out_ap_vld;
reg temp3_V_1_05_out_ap_vld;
reg temp3_V_0_04_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln24_fu_133_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire  signed [63:0] conv7_i_i51_cast_fu_121_p1;
reg  signed [63:0] conv7_i_i51_cast_reg_479;
reg   [1:0] i_reg_484;
reg   [1:0] i_reg_484_pp0_iter1_reg;
reg   [0:0] icmp_ln24_reg_490;
wire   [31:0] r_V_fu_145_p5;
reg   [31:0] r_V_reg_494;
wire   [63:0] r_V_1_fu_165_p2;
reg   [63:0] r_V_1_reg_499;
reg   [0:0] p_Result_s_reg_504;
reg   [31:0] p_Val2_s_reg_510;
reg   [0:0] p_Result_3_reg_515;
reg   [0:0] tmp_reg_520;
reg   [14:0] tmp_4_reg_525;
reg   [15:0] tmp_5_reg_530;
reg   [1:0] i_1_fu_78;
wire   [1:0] add_ln24_fu_139_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage0;
reg   [31:0] temp3_V_2_1_fu_82;
wire   [31:0] temp3_V_2_8_fu_416_p3;
reg   [31:0] temp3_V_2_2_fu_86;
wire   [31:0] temp3_V_2_7_fu_408_p3;
reg   [31:0] temp3_V_2_3_fu_90;
wire   [31:0] temp3_V_2_fu_400_p3;
wire    ap_block_pp0_stage0_01001;
wire   [31:0] r_V_1_fu_165_p0;
wire  signed [31:0] r_V_1_fu_165_p1;
wire   [31:0] zext_ln377_1_fu_233_p1;
wire   [31:0] p_Val2_3_fu_236_p2;
wire   [0:0] p_Result_4_fu_241_p3;
wire   [0:0] xor_ln896_2_fu_249_p2;
wire   [0:0] carry_1_fu_255_p2;
wire   [0:0] Range1_all_ones_fu_265_p2;
wire   [0:0] Range1_all_zeros_fu_270_p2;
wire   [0:0] tmp_21_fu_283_p3;
wire   [0:0] Range2_all_ones_fu_260_p2;
wire   [0:0] xor_ln890_fu_290_p2;
wire   [0:0] and_ln890_1_fu_296_p2;
wire   [0:0] deleted_zeros_fu_275_p3;
wire   [0:0] xor_ln895_3_fu_316_p2;
wire   [0:0] or_ln895_1_fu_322_p2;
wire   [0:0] xor_ln895_4_fu_328_p2;
wire   [0:0] deleted_ones_fu_302_p3;
wire   [0:0] xor_ln896_3_fu_339_p2;
wire   [0:0] and_ln891_1_fu_310_p2;
wire   [0:0] or_ln896_1_fu_345_p2;
wire   [0:0] xor_ln896_fu_351_p2;
wire   [0:0] overflow_fu_333_p2;
wire   [0:0] underflow_fu_357_p2;
wire   [0:0] or_ln346_1_fu_370_p2;
wire   [31:0] select_ln346_3_fu_362_p3;
wire   [0:0] icmp_ln1420_fu_384_p2;
wire   [0:0] icmp_ln1420_2_fu_389_p2;
wire   [0:0] or_ln1420_fu_394_p2;
wire   [31:0] temp3_V_2_9_fu_376_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire   [63:0] r_V_1_fu_165_p00;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
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
mux_32_32_1_1_U9(
    .din0(32'd44818),
    .din1(32'd491),
    .din2(32'd0),
    .din3(ap_sig_allocacmp_i),
    .dout(r_V_fu_145_p5)
);

estimador_func_mul_32ns_32s_64_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
mul_32ns_32s_64_1_1_U10(
    .din0(r_V_1_fu_165_p0),
    .din1(r_V_1_fu_165_p1),
    .dout(r_V_1_fu_165_p2)
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln24_fu_133_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_1_fu_78 <= add_ln24_fu_139_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_78 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        conv7_i_i51_cast_reg_479 <= conv7_i_i51_cast_fu_121_p1;
        i_reg_484 <= ap_sig_allocacmp_i;
        i_reg_484_pp0_iter1_reg <= i_reg_484;
        icmp_ln24_reg_490 <= icmp_ln24_fu_133_p2;
        p_Result_3_reg_515 <= r_V_1_fu_165_p2[32'd47];
        p_Result_s_reg_504 <= r_V_1_fu_165_p2[32'd63];
        p_Val2_s_reg_510 <= {{r_V_1_fu_165_p2[47:16]}};
        r_V_1_reg_499 <= r_V_1_fu_165_p2;
        tmp_4_reg_525 <= {{r_V_1_fu_165_p2[63:49]}};
        tmp_5_reg_530 <= {{r_V_1_fu_165_p2[63:48]}};
        tmp_reg_520 <= r_V_1_fu_165_p2[32'd15];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln24_fu_133_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        r_V_reg_494 <= r_V_fu_145_p5;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        temp3_V_2_1_fu_82 <= temp3_V_2_8_fu_416_p3;
        temp3_V_2_2_fu_86 <= temp3_V_2_7_fu_408_p3;
        temp3_V_2_3_fu_90 <= temp3_V_2_fu_400_p3;
    end
end

always @ (*) begin
    if (((icmp_ln24_fu_133_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_i = 2'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_78;
    end
end

always @ (*) begin
    if (((icmp_ln24_reg_490 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp3_V_0_04_out_ap_vld = 1'b1;
    end else begin
        temp3_V_0_04_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln24_reg_490 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp3_V_1_05_out_ap_vld = 1'b1;
    end else begin
        temp3_V_1_05_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln24_reg_490 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp3_V_2_06_out_ap_vld = 1'b1;
    end else begin
        temp3_V_2_06_out_ap_vld = 1'b0;
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

assign Range1_all_ones_fu_265_p2 = ((tmp_5_reg_530 == 16'd65535) ? 1'b1 : 1'b0);

assign Range1_all_zeros_fu_270_p2 = ((tmp_5_reg_530 == 16'd0) ? 1'b1 : 1'b0);

assign Range2_all_ones_fu_260_p2 = ((tmp_4_reg_525 == 15'd32767) ? 1'b1 : 1'b0);

assign add_ln24_fu_139_p2 = (ap_sig_allocacmp_i + 2'd1);

assign and_ln890_1_fu_296_p2 = (xor_ln890_fu_290_p2 & Range2_all_ones_fu_260_p2);

assign and_ln891_1_fu_310_p2 = (carry_1_fu_255_p2 & Range1_all_ones_fu_265_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign carry_1_fu_255_p2 = (xor_ln896_2_fu_249_p2 & p_Result_3_reg_515);

assign conv7_i_i51_cast_fu_121_p1 = $signed(conv7_i_i51);

assign deleted_ones_fu_302_p3 = ((carry_1_fu_255_p2[0:0] == 1'b1) ? and_ln890_1_fu_296_p2 : Range1_all_ones_fu_265_p2);

assign deleted_zeros_fu_275_p3 = ((carry_1_fu_255_p2[0:0] == 1'b1) ? Range1_all_ones_fu_265_p2 : Range1_all_zeros_fu_270_p2);

assign icmp_ln1420_2_fu_389_p2 = ((i_reg_484_pp0_iter1_reg == 2'd1) ? 1'b1 : 1'b0);

assign icmp_ln1420_fu_384_p2 = ((i_reg_484_pp0_iter1_reg == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln24_fu_133_p2 = ((ap_sig_allocacmp_i == 2'd3) ? 1'b1 : 1'b0);

assign or_ln1420_fu_394_p2 = (icmp_ln1420_fu_384_p2 | icmp_ln1420_2_fu_389_p2);

assign or_ln346_1_fu_370_p2 = (underflow_fu_357_p2 | overflow_fu_333_p2);

assign or_ln895_1_fu_322_p2 = (xor_ln895_3_fu_316_p2 | p_Result_4_fu_241_p3);

assign or_ln896_1_fu_345_p2 = (xor_ln896_3_fu_339_p2 | xor_ln896_2_fu_249_p2);

assign overflow_fu_333_p2 = (xor_ln895_4_fu_328_p2 & or_ln895_1_fu_322_p2);

assign p_Result_4_fu_241_p3 = p_Val2_3_fu_236_p2[32'd31];

assign p_Val2_3_fu_236_p2 = (p_Val2_s_reg_510 + zext_ln377_1_fu_233_p1);

assign r_V_1_fu_165_p0 = r_V_1_fu_165_p00;

assign r_V_1_fu_165_p00 = r_V_reg_494;

assign r_V_1_fu_165_p1 = conv7_i_i51_cast_reg_479;

assign select_ln346_3_fu_362_p3 = ((overflow_fu_333_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign temp3_V_0_04_out = temp3_V_2_1_fu_82;

assign temp3_V_1_05_out = temp3_V_2_2_fu_86;

assign temp3_V_2_06_out = temp3_V_2_3_fu_90;

assign temp3_V_2_7_fu_408_p3 = ((icmp_ln1420_2_fu_389_p2[0:0] == 1'b1) ? temp3_V_2_9_fu_376_p3 : temp3_V_2_2_fu_86);

assign temp3_V_2_8_fu_416_p3 = ((icmp_ln1420_fu_384_p2[0:0] == 1'b1) ? temp3_V_2_9_fu_376_p3 : temp3_V_2_1_fu_82);

assign temp3_V_2_9_fu_376_p3 = ((or_ln346_1_fu_370_p2[0:0] == 1'b1) ? select_ln346_3_fu_362_p3 : p_Val2_3_fu_236_p2);

assign temp3_V_2_fu_400_p3 = ((or_ln1420_fu_394_p2[0:0] == 1'b1) ? temp3_V_2_3_fu_90 : temp3_V_2_9_fu_376_p3);

assign tmp_21_fu_283_p3 = r_V_1_reg_499[32'd48];

assign underflow_fu_357_p2 = (xor_ln896_fu_351_p2 & p_Result_s_reg_504);

assign xor_ln890_fu_290_p2 = (tmp_21_fu_283_p3 ^ 1'd1);

assign xor_ln895_3_fu_316_p2 = (deleted_zeros_fu_275_p3 ^ 1'd1);

assign xor_ln895_4_fu_328_p2 = (p_Result_s_reg_504 ^ 1'd1);

assign xor_ln896_2_fu_249_p2 = (p_Result_4_fu_241_p3 ^ 1'd1);

assign xor_ln896_3_fu_339_p2 = (deleted_ones_fu_302_p3 ^ 1'd1);

assign xor_ln896_fu_351_p2 = (or_ln896_1_fu_345_p2 ^ and_ln891_1_fu_310_p2);

assign zext_ln377_1_fu_233_p1 = tmp_reg_520;

endmodule //estimador_func_estimador_func_Pipeline_mvmult_row1
