module mpc_mpc_dense_constraint_Pipeline_vsub_row (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        temp_V_address0,
        temp_V_ce0,
        temp_V_q0,
        f1_V_address0,
        f1_V_ce0,
        f1_V_we0,
        f1_V_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] temp_V_address0;
output   temp_V_ce0;
input  [20:0] temp_V_q0;
output  [2:0] f1_V_address0;
output   f1_V_ce0;
output   f1_V_we0;
output  [20:0] f1_V_d0;

reg ap_idle;
reg temp_V_ce0;
reg f1_V_ce0;
reg f1_V_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln40_fu_95_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [2:0] e_V_address0;
reg    e_V_ce0;
wire   [16:0] e_V_q0;
wire   [63:0] i_2_cast_fu_107_p1;
reg   [63:0] i_2_cast_reg_197;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage0;
reg   [2:0] i_2_fu_44;
wire   [2:0] add_ln40_fu_101_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_i;
wire   [21:0] zext_ln813_fu_118_p1;
wire  signed [21:0] sext_ln813_fu_122_p1;
wire   [21:0] ret_V_fu_126_p2;
wire   [0:0] p_Result_s_fu_132_p3;
wire   [0:0] p_Result_2_fu_144_p3;
wire   [0:0] xor_ln895_12_fu_152_p2;
wire   [0:0] overflow_fu_158_p2;
wire   [0:0] xor_ln302_4_fu_164_p2;
wire   [20:0] select_ln346_fu_170_p3;
wire   [20:0] p_Val2_2_fu_140_p1;
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

mpc_mpc_dense_constraint_Pipeline_vsub_row_e_V_ROM_AUTO_1R #(
    .DataWidth( 17 ),
    .AddressRange( 6 ),
    .AddressWidth( 3 ))
e_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(e_V_address0),
    .ce0(e_V_ce0),
    .q0(e_V_q0)
);

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
        if (((icmp_ln40_fu_95_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_2_fu_44 <= add_ln40_fu_101_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_2_fu_44 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln40_fu_95_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_cast_reg_197[2 : 0] <= i_2_cast_fu_107_p1[2 : 0];
    end
end

always @ (*) begin
    if (((icmp_ln40_fu_95_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i = 3'd0;
    end else begin
        ap_sig_allocacmp_i = i_2_fu_44;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        e_V_ce0 = 1'b1;
    end else begin
        e_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        f1_V_ce0 = 1'b1;
    end else begin
        f1_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        f1_V_we0 = 1'b1;
    end else begin
        f1_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_V_ce0 = 1'b1;
    end else begin
        temp_V_ce0 = 1'b0;
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

assign add_ln40_fu_101_p2 = (ap_sig_allocacmp_i + 3'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign e_V_address0 = i_2_cast_fu_107_p1;

assign f1_V_address0 = i_2_cast_reg_197;

assign f1_V_d0 = ((xor_ln302_4_fu_164_p2[0:0] == 1'b1) ? select_ln346_fu_170_p3 : p_Val2_2_fu_140_p1);

assign i_2_cast_fu_107_p1 = ap_sig_allocacmp_i;

assign icmp_ln40_fu_95_p2 = ((ap_sig_allocacmp_i == 3'd6) ? 1'b1 : 1'b0);

assign overflow_fu_158_p2 = (xor_ln895_12_fu_152_p2 & p_Result_2_fu_144_p3);

assign p_Result_2_fu_144_p3 = ret_V_fu_126_p2[32'd20];

assign p_Result_s_fu_132_p3 = ret_V_fu_126_p2[32'd21];

assign p_Val2_2_fu_140_p1 = ret_V_fu_126_p2[20:0];

assign ret_V_fu_126_p2 = ($signed(zext_ln813_fu_118_p1) - $signed(sext_ln813_fu_122_p1));

assign select_ln346_fu_170_p3 = ((overflow_fu_158_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign sext_ln813_fu_122_p1 = $signed(temp_V_q0);

assign temp_V_address0 = i_2_cast_fu_107_p1;

assign xor_ln302_4_fu_164_p2 = (p_Result_s_fu_132_p3 ^ p_Result_2_fu_144_p3);

assign xor_ln895_12_fu_152_p2 = (p_Result_s_fu_132_p3 ^ 1'd1);

assign zext_ln813_fu_118_p1 = e_V_q0;

always @ (posedge ap_clk) begin
    i_2_cast_reg_197[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
end

endmodule //mpc_mpc_dense_constraint_Pipeline_vsub_row
