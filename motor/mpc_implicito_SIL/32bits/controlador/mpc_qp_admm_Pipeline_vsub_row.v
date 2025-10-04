module mpc_qp_admm_Pipeline_vsub_row (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        temp2_V_3_012,
        temp2_V_2_011,
        temp2_V_1_010,
        temp2_V_0_09,
        temp1_V_0_1_reload,
        temp1_V_1_1_reload,
        temp1_V_2_1_reload,
        temp1_V_3_1_reload,
        p_read,
        p_read1,
        p_read2,
        p_read3,
        temp2_V_3_1_out,
        temp2_V_3_1_out_ap_vld,
        temp2_V_2_1_out,
        temp2_V_2_1_out_ap_vld,
        temp2_V_1_1_out,
        temp2_V_1_1_out_ap_vld,
        temp2_V_0_1_out,
        temp2_V_0_1_out_ap_vld
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] temp2_V_3_012;
input  [31:0] temp2_V_2_011;
input  [31:0] temp2_V_1_010;
input  [31:0] temp2_V_0_09;
input  [31:0] temp1_V_0_1_reload;
input  [31:0] temp1_V_1_1_reload;
input  [31:0] temp1_V_2_1_reload;
input  [31:0] temp1_V_3_1_reload;
input  [31:0] p_read;
input  [31:0] p_read1;
input  [31:0] p_read2;
input  [31:0] p_read3;
output  [31:0] temp2_V_3_1_out;
output   temp2_V_3_1_out_ap_vld;
output  [31:0] temp2_V_2_1_out;
output   temp2_V_2_1_out_ap_vld;
output  [31:0] temp2_V_1_1_out;
output   temp2_V_1_1_out_ap_vld;
output  [31:0] temp2_V_0_1_out;
output   temp2_V_0_1_out_ap_vld;

reg ap_idle;
reg temp2_V_3_1_out_ap_vld;
reg temp2_V_2_1_out_ap_vld;
reg temp2_V_1_1_out_ap_vld;
reg temp2_V_0_1_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln127_fu_228_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [2:0] i_fu_80;
wire   [2:0] add_ln127_fu_234_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_i_2;
reg   [31:0] temp2_V_1_fu_84;
wire   [31:0] temp2_V_1_5_fu_332_p3;
wire   [1:0] trunc_ln813_fu_240_p1;
reg   [31:0] temp2_V_1_1_fu_88;
reg   [31:0] temp2_V_1_2_fu_92;
reg   [31:0] temp2_V_1_3_fu_96;
wire   [31:0] lhs_fu_244_p6;
wire   [31:0] rhs_fu_262_p6;
wire  signed [32:0] sext_ln813_fu_258_p1;
wire  signed [32:0] sext_ln813_2_fu_276_p1;
wire   [32:0] ret_V_fu_280_p2;
wire   [0:0] p_Result_s_fu_286_p3;
wire   [0:0] p_Result_2_fu_298_p3;
wire   [0:0] xor_ln895_fu_306_p2;
wire   [0:0] overflow_fu_312_p2;
wire   [0:0] xor_ln302_fu_318_p2;
wire   [31:0] select_ln346_fu_324_p3;
wire   [31:0] p_Val2_2_fu_294_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_done_reg = 1'b0;
end

mpc_mux_42_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_42_32_1_1_U134(
    .din0(temp1_V_0_1_reload),
    .din1(temp1_V_1_1_reload),
    .din2(temp1_V_2_1_reload),
    .din3(temp1_V_3_1_reload),
    .din4(trunc_ln813_fu_240_p1),
    .dout(lhs_fu_244_p6)
);

mpc_mux_42_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_42_32_1_1_U135(
    .din0(p_read),
    .din1(p_read1),
    .din2(p_read2),
    .din3(p_read3),
    .din4(trunc_ln813_fu_240_p1),
    .dout(rhs_fu_262_p6)
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
        ap_CS_fsm <= ap_ST_fsm_state1;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        if ((icmp_ln127_fu_228_p2 == 1'd0)) begin
            i_fu_80 <= add_ln127_fu_234_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_80 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        if (((trunc_ln813_fu_240_p1 == 2'd1) & (icmp_ln127_fu_228_p2 == 1'd0))) begin
            temp2_V_1_1_fu_88 <= temp2_V_1_5_fu_332_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            temp2_V_1_1_fu_88 <= temp2_V_1_010;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        if (((trunc_ln813_fu_240_p1 == 2'd2) & (icmp_ln127_fu_228_p2 == 1'd0))) begin
            temp2_V_1_2_fu_92 <= temp2_V_1_5_fu_332_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            temp2_V_1_2_fu_92 <= temp2_V_2_011;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        if (((trunc_ln813_fu_240_p1 == 2'd3) & (icmp_ln127_fu_228_p2 == 1'd0))) begin
            temp2_V_1_3_fu_96 <= temp2_V_1_5_fu_332_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            temp2_V_1_3_fu_96 <= temp2_V_3_012;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        if (((trunc_ln813_fu_240_p1 == 2'd0) & (icmp_ln127_fu_228_p2 == 1'd0))) begin
            temp2_V_1_fu_84 <= temp2_V_1_5_fu_332_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            temp2_V_1_fu_84 <= temp2_V_0_09;
        end
    end
end

always @ (*) begin
    if ((ap_start_int == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln127_fu_228_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_i_2 = 3'd0;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_80;
    end
end

always @ (*) begin
    if (((icmp_ln127_fu_228_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        temp2_V_0_1_out_ap_vld = 1'b1;
    end else begin
        temp2_V_0_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln127_fu_228_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        temp2_V_1_1_out_ap_vld = 1'b1;
    end else begin
        temp2_V_1_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln127_fu_228_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        temp2_V_2_1_out_ap_vld = 1'b1;
    end else begin
        temp2_V_2_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln127_fu_228_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        temp2_V_3_1_out_ap_vld = 1'b1;
    end else begin
        temp2_V_3_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln127_fu_234_p2 = (ap_sig_allocacmp_i_2 + 3'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln127_fu_228_p2 = ((ap_sig_allocacmp_i_2 == 3'd4) ? 1'b1 : 1'b0);

assign overflow_fu_312_p2 = (xor_ln895_fu_306_p2 & p_Result_2_fu_298_p3);

assign p_Result_2_fu_298_p3 = ret_V_fu_280_p2[32'd31];

assign p_Result_s_fu_286_p3 = ret_V_fu_280_p2[32'd32];

assign p_Val2_2_fu_294_p1 = ret_V_fu_280_p2[31:0];

assign ret_V_fu_280_p2 = ($signed(sext_ln813_fu_258_p1) - $signed(sext_ln813_2_fu_276_p1));

assign select_ln346_fu_324_p3 = ((overflow_fu_312_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign sext_ln813_2_fu_276_p1 = $signed(rhs_fu_262_p6);

assign sext_ln813_fu_258_p1 = $signed(lhs_fu_244_p6);

assign temp2_V_0_1_out = temp2_V_1_fu_84;

assign temp2_V_1_1_out = temp2_V_1_1_fu_88;

assign temp2_V_1_5_fu_332_p3 = ((xor_ln302_fu_318_p2[0:0] == 1'b1) ? select_ln346_fu_324_p3 : p_Val2_2_fu_294_p1);

assign temp2_V_2_1_out = temp2_V_1_2_fu_92;

assign temp2_V_3_1_out = temp2_V_1_3_fu_96;

assign trunc_ln813_fu_240_p1 = ap_sig_allocacmp_i_2[1:0];

assign xor_ln302_fu_318_p2 = (p_Result_s_fu_286_p3 ^ p_Result_2_fu_298_p3);

assign xor_ln895_fu_306_p2 = (p_Result_s_fu_286_p3 ^ 1'd1);

endmodule //mpc_qp_admm_Pipeline_vsub_row
