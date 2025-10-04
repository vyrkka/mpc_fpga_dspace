module predictor_func_predictor_func_Pipeline_mvmult_row1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        sext_ln24,
        temp2_V_1_076_out,
        temp2_V_1_076_out_ap_vld,
        temp2_V_0_075_out,
        temp2_V_0_075_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] sext_ln24;
output  [63:0] temp2_V_1_076_out;
output   temp2_V_1_076_out_ap_vld;
output  [63:0] temp2_V_0_075_out;
output   temp2_V_0_075_out_ap_vld;

reg ap_idle;
reg temp2_V_1_076_out_ap_vld;
reg temp2_V_0_075_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln24_fu_88_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln24_reg_201;
reg   [0:0] icmp_ln24_reg_201_pp0_iter1_reg;
reg   [0:0] icmp_ln24_reg_201_pp0_iter2_reg;
wire   [0:0] trunc_ln25_fu_100_p1;
reg   [0:0] trunc_ln25_reg_205;
reg   [0:0] trunc_ln25_reg_205_pp0_iter1_reg;
reg   [0:0] trunc_ln25_reg_205_pp0_iter2_reg;
reg   [0:0] trunc_ln25_reg_205_pp0_iter3_reg;
reg   [1:0] i_1_fu_44;
wire   [1:0] add_ln24_fu_94_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage0;
reg   [63:0] temp2_V_1_fu_48;
wire   [63:0] temp2_V_1_6_fu_150_p3;
reg   [63:0] temp2_V_1_3_fu_52;
wire   [63:0] temp2_V_1_5_fu_143_p3;
wire    ap_block_pp0_stage0_01001;
wire  signed [28:0] grp_fu_112_p0;
wire   [91:0] grp_fu_112_p2;
wire   [59:0] temp2_V_0_fu_129_p4;
wire  signed [63:0] sext_ln818_fu_139_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire  signed [91:0] grp_fu_112_p00;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_done_reg = 1'b0;
end

predictor_func_mul_29s_64s_92_5_1 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 29 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 92 ))
mul_29s_64s_92_5_1_U7(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_112_p0),
    .din1(sext_ln24),
    .ce(1'b1),
    .dout(grp_fu_112_p2)
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln24_fu_88_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_1_fu_44 <= add_ln24_fu_94_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_44 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln24_reg_201 <= icmp_ln24_fu_88_p2;
        icmp_ln24_reg_201_pp0_iter1_reg <= icmp_ln24_reg_201;
        trunc_ln25_reg_205_pp0_iter1_reg <= trunc_ln25_reg_205;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        icmp_ln24_reg_201_pp0_iter2_reg <= icmp_ln24_reg_201_pp0_iter1_reg;
        trunc_ln25_reg_205_pp0_iter2_reg <= trunc_ln25_reg_205_pp0_iter1_reg;
        trunc_ln25_reg_205_pp0_iter3_reg <= trunc_ln25_reg_205_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        temp2_V_1_3_fu_52 <= temp2_V_1_5_fu_143_p3;
        temp2_V_1_fu_48 <= temp2_V_1_6_fu_150_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln24_fu_88_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln25_reg_205 <= trunc_ln25_fu_100_p1;
    end
end

always @ (*) begin
    if (((icmp_ln24_fu_88_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_i = 2'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_44;
    end
end

always @ (*) begin
    if (((icmp_ln24_reg_201_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        temp2_V_0_075_out_ap_vld = 1'b1;
    end else begin
        temp2_V_0_075_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln24_reg_201_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        temp2_V_1_076_out_ap_vld = 1'b1;
    end else begin
        temp2_V_1_076_out_ap_vld = 1'b0;
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

assign add_ln24_fu_94_p2 = (ap_sig_allocacmp_i + 2'd1);

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

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign grp_fu_112_p0 = grp_fu_112_p00;

assign grp_fu_112_p00 = ((trunc_ln25_fu_100_p1[0:0] == 1'b1) ? 92'd95724 : 92'd190532990);

assign icmp_ln24_fu_88_p2 = ((ap_sig_allocacmp_i == 2'd2) ? 1'b1 : 1'b0);

assign sext_ln818_fu_139_p1 = $signed(temp2_V_0_fu_129_p4);

assign temp2_V_0_075_out = temp2_V_1_fu_48;

assign temp2_V_0_fu_129_p4 = {{grp_fu_112_p2[91:32]}};

assign temp2_V_1_076_out = temp2_V_1_3_fu_52;

assign temp2_V_1_5_fu_143_p3 = ((trunc_ln25_reg_205_pp0_iter3_reg[0:0] == 1'b1) ? sext_ln818_fu_139_p1 : temp2_V_1_3_fu_52);

assign temp2_V_1_6_fu_150_p3 = ((trunc_ln25_reg_205_pp0_iter3_reg[0:0] == 1'b1) ? temp2_V_1_fu_48 : sext_ln818_fu_139_p1);

assign trunc_ln25_fu_100_p1 = ap_sig_allocacmp_i[0:0];

endmodule //predictor_func_predictor_func_Pipeline_mvmult_row1
