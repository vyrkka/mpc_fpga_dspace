module mpc_qp_admm_Pipeline_vadd_row4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        Htk_V_address0,
        Htk_V_ce0,
        Htk_V_q0,
        temp6_V_address0,
        temp6_V_ce0,
        temp6_V_we0,
        temp6_V_d0,
        uk_admm_V_address0,
        uk_admm_V_ce0,
        uk_admm_V_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] Htk_V_address0;
output   Htk_V_ce0;
input  [31:0] Htk_V_q0;
output  [4:0] temp6_V_address0;
output   temp6_V_ce0;
output   temp6_V_we0;
output  [31:0] temp6_V_d0;
output  [4:0] uk_admm_V_address0;
output   uk_admm_V_ce0;
input  [31:0] uk_admm_V_q0;

reg ap_idle;
reg Htk_V_ce0;
reg temp6_V_ce0;
reg temp6_V_we0;
reg uk_admm_V_ce0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln119_fu_97_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] i_6_cast_fu_109_p1;
reg   [63:0] i_6_cast_reg_201;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage0;
reg   [4:0] i_fu_46;
wire   [4:0] add_ln119_fu_103_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_i_4;
wire  signed [31:0] sext_ln813_fu_120_p0;
wire  signed [31:0] sext_ln813_4_fu_124_p0;
wire  signed [32:0] sext_ln813_4_fu_124_p1;
wire  signed [32:0] sext_ln813_fu_120_p1;
wire   [32:0] ret_V_fu_128_p2;
wire  signed [31:0] p_Val2_4_fu_142_p0;
wire  signed [31:0] p_Val2_4_fu_142_p1;
wire   [31:0] p_Val2_4_fu_142_p2;
wire   [0:0] p_Result_s_fu_134_p3;
wire   [0:0] p_Result_4_fu_148_p3;
wire   [0:0] xor_ln895_fu_156_p2;
wire   [0:0] overflow_fu_162_p2;
wire   [0:0] xor_ln302_fu_168_p2;
wire   [31:0] select_ln346_fu_174_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

mpc_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        if (((icmp_ln119_fu_97_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_46 <= add_ln119_fu_103_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_46 <= 5'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln119_fu_97_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_6_cast_reg_201[4 : 0] <= i_6_cast_fu_109_p1[4 : 0];
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        Htk_V_ce0 = 1'b1;
    end else begin
        Htk_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln119_fu_97_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
        ap_sig_allocacmp_i_4 = 5'd0;
    end else begin
        ap_sig_allocacmp_i_4 = i_fu_46;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp6_V_ce0 = 1'b1;
    end else begin
        temp6_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp6_V_we0 = 1'b1;
    end else begin
        temp6_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        uk_admm_V_ce0 = 1'b1;
    end else begin
        uk_admm_V_ce0 = 1'b0;
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

assign Htk_V_address0 = i_6_cast_fu_109_p1;

assign add_ln119_fu_103_p2 = (ap_sig_allocacmp_i_4 + 5'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign i_6_cast_fu_109_p1 = ap_sig_allocacmp_i_4;

assign icmp_ln119_fu_97_p2 = ((ap_sig_allocacmp_i_4 == 5'd24) ? 1'b1 : 1'b0);

assign overflow_fu_162_p2 = (xor_ln895_fu_156_p2 & p_Result_4_fu_148_p3);

assign p_Result_4_fu_148_p3 = p_Val2_4_fu_142_p2[32'd31];

assign p_Result_s_fu_134_p3 = ret_V_fu_128_p2[32'd32];

assign p_Val2_4_fu_142_p0 = Htk_V_q0;

assign p_Val2_4_fu_142_p1 = uk_admm_V_q0;

assign p_Val2_4_fu_142_p2 = ($signed(p_Val2_4_fu_142_p0) + $signed(p_Val2_4_fu_142_p1));

assign ret_V_fu_128_p2 = ($signed(sext_ln813_4_fu_124_p1) + $signed(sext_ln813_fu_120_p1));

assign select_ln346_fu_174_p3 = ((overflow_fu_162_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign sext_ln813_4_fu_124_p0 = Htk_V_q0;

assign sext_ln813_4_fu_124_p1 = sext_ln813_4_fu_124_p0;

assign sext_ln813_fu_120_p0 = uk_admm_V_q0;

assign sext_ln813_fu_120_p1 = sext_ln813_fu_120_p0;

assign temp6_V_address0 = i_6_cast_reg_201;

assign temp6_V_d0 = ((xor_ln302_fu_168_p2[0:0] == 1'b1) ? select_ln346_fu_174_p3 : p_Val2_4_fu_142_p2);

assign uk_admm_V_address0 = i_6_cast_fu_109_p1;

assign xor_ln302_fu_168_p2 = (p_Result_s_fu_134_p3 ^ p_Result_4_fu_148_p3);

assign xor_ln895_fu_156_p2 = (p_Result_s_fu_134_p3 ^ 1'd1);

always @ (posedge ap_clk) begin
    i_6_cast_reg_201[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end

endmodule //mpc_qp_admm_Pipeline_vadd_row4
