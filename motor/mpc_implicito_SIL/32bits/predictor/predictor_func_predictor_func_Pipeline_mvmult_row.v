module predictor_func_predictor_func_Pipeline_mvmult_row (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        sext_ln1273,
        shl_ln,
        temp1_V_1_074_out,
        temp1_V_1_074_out_ap_vld,
        temp1_V_0_073_out,
        temp1_V_0_073_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] sext_ln1273;
input  [95:0] shl_ln;
output  [63:0] temp1_V_1_074_out;
output   temp1_V_1_074_out_ap_vld;
output  [63:0] temp1_V_0_073_out;
output   temp1_V_0_073_out_ap_vld;

reg ap_idle;
reg temp1_V_1_074_out_ap_vld;
reg temp1_V_0_073_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln24_fu_102_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln24_reg_244;
reg   [0:0] icmp_ln24_reg_244_pp0_iter1_reg;
reg   [0:0] icmp_ln24_reg_244_pp0_iter2_reg;
reg   [0:0] icmp_ln24_reg_244_pp0_iter3_reg;
wire   [0:0] trunc_ln25_fu_114_p1;
reg   [0:0] trunc_ln25_reg_248;
reg   [0:0] trunc_ln25_reg_248_pp0_iter1_reg;
reg   [0:0] trunc_ln25_reg_248_pp0_iter2_reg;
reg   [0:0] trunc_ln25_reg_248_pp0_iter3_reg;
reg   [0:0] trunc_ln25_reg_248_pp0_iter4_reg;
reg   [63:0] temp1_V_0_reg_260;
reg   [1:0] i_fu_52;
wire   [1:0] add_ln24_fu_108_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i_2;
wire    ap_block_pp0_stage0;
reg   [63:0] temp1_V_1_fu_56;
wire   [63:0] temp1_V_1_6_fu_189_p3;
reg   [63:0] temp1_V_1_3_fu_60;
wire   [63:0] temp1_V_1_5_fu_183_p3;
wire    ap_block_pp0_stage0_01001;
wire  signed [32:0] grp_fu_126_p0;
wire   [95:0] grp_fu_126_p2;
wire   [63:0] tmp_fu_143_p4;
wire   [95:0] shl_ln1_fu_153_p3;
wire   [95:0] select_ln813_fu_137_p3;
wire   [95:0] add_ln1347_fu_161_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire  signed [95:0] grp_fu_126_p00;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_done_reg = 1'b0;
end

predictor_func_mul_33s_64s_96_5_1 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 33 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 96 ))
mul_33s_64s_96_5_1_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_126_p0),
    .din1(sext_ln1273),
    .ce(1'b1),
    .dout(grp_fu_126_p2)
);

predictor_func_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln24_fu_102_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_52 <= add_ln24_fu_108_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_52 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln24_reg_244 <= icmp_ln24_fu_102_p2;
        icmp_ln24_reg_244_pp0_iter1_reg <= icmp_ln24_reg_244;
        trunc_ln25_reg_248_pp0_iter1_reg <= trunc_ln25_reg_248;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        icmp_ln24_reg_244_pp0_iter2_reg <= icmp_ln24_reg_244_pp0_iter1_reg;
        icmp_ln24_reg_244_pp0_iter3_reg <= icmp_ln24_reg_244_pp0_iter2_reg;
        temp1_V_0_reg_260 <= {{add_ln1347_fu_161_p2[95:32]}};
        trunc_ln25_reg_248_pp0_iter2_reg <= trunc_ln25_reg_248_pp0_iter1_reg;
        trunc_ln25_reg_248_pp0_iter3_reg <= trunc_ln25_reg_248_pp0_iter2_reg;
        trunc_ln25_reg_248_pp0_iter4_reg <= trunc_ln25_reg_248_pp0_iter3_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        temp1_V_1_3_fu_60 <= temp1_V_1_5_fu_183_p3;
        temp1_V_1_fu_56 <= temp1_V_1_6_fu_189_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln24_fu_102_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln25_reg_248 <= trunc_ln25_fu_114_p1;
    end
end

always @ (*) begin
    if (((icmp_ln24_fu_102_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_2 = 2'd0;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_52;
    end
end

always @ (*) begin
    if (((icmp_ln24_reg_244_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        temp1_V_0_073_out_ap_vld = 1'b1;
    end else begin
        temp1_V_0_073_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln24_reg_244_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        temp1_V_1_074_out_ap_vld = 1'b1;
    end else begin
        temp1_V_1_074_out_ap_vld = 1'b0;
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

assign add_ln1347_fu_161_p2 = (shl_ln1_fu_153_p3 + select_ln813_fu_137_p3);

assign add_ln24_fu_108_p2 = (ap_sig_allocacmp_i_2 + 2'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign grp_fu_126_p0 = grp_fu_126_p00;

assign grp_fu_126_p00 = ((trunc_ln25_fu_114_p1[0:0] == 1'b1) ? 96'd4233586 : 96'd4172793605);

assign icmp_ln24_fu_102_p2 = ((ap_sig_allocacmp_i_2 == 2'd2) ? 1'b1 : 1'b0);

assign select_ln813_fu_137_p3 = ((trunc_ln25_reg_248_pp0_iter3_reg[0:0] == 1'b1) ? shl_ln : 96'd0);

assign shl_ln1_fu_153_p3 = {{tmp_fu_143_p4}, {32'd0}};

assign temp1_V_0_073_out = temp1_V_1_fu_56;

assign temp1_V_1_074_out = temp1_V_1_3_fu_60;

assign temp1_V_1_5_fu_183_p3 = ((trunc_ln25_reg_248_pp0_iter4_reg[0:0] == 1'b1) ? temp1_V_0_reg_260 : temp1_V_1_3_fu_60);

assign temp1_V_1_6_fu_189_p3 = ((trunc_ln25_reg_248_pp0_iter4_reg[0:0] == 1'b1) ? temp1_V_1_fu_56 : temp1_V_0_reg_260);

assign tmp_fu_143_p4 = {{grp_fu_126_p2[95:32]}};

assign trunc_ln25_fu_114_p1 = ap_sig_allocacmp_i_2[0:0];

endmodule //predictor_func_predictor_func_Pipeline_mvmult_row
