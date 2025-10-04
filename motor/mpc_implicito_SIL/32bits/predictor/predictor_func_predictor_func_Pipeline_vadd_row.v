module predictor_func_predictor_func_Pipeline_vadd_row (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        temp1_V_1_074_reload,
        temp1_V_0_073_reload,
        temp2_V_1_076_reload,
        temp2_V_0_075_reload,
        temp3_V_1_078_out,
        temp3_V_1_078_out_ap_vld,
        temp3_V_0_077_out,
        temp3_V_0_077_out_ap_vld
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] temp1_V_1_074_reload;
input  [63:0] temp1_V_0_073_reload;
input  [63:0] temp2_V_1_076_reload;
input  [63:0] temp2_V_0_075_reload;
output  [63:0] temp3_V_1_078_out;
output   temp3_V_1_078_out_ap_vld;
output  [63:0] temp3_V_0_077_out;
output   temp3_V_0_077_out_ap_vld;

reg ap_idle;
reg temp3_V_1_078_out_ap_vld;
reg temp3_V_0_077_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln134_fu_98_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [1:0] i_fu_40;
wire   [1:0] add_ln134_fu_104_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i_1;
reg   [63:0] temp3_V_1_fu_44;
wire   [63:0] temp3_V_1_6_fu_150_p3;
reg   [63:0] temp3_V_1_3_fu_48;
wire   [63:0] temp3_V_1_5_fu_142_p3;
wire   [0:0] trunc_ln813_fu_116_p1;
wire   [63:0] select_ln813_1_fu_128_p3;
wire   [63:0] select_ln813_fu_120_p3;
wire   [63:0] temp3_V_0_fu_136_p2;
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
        if ((icmp_ln134_fu_98_p2 == 1'd0)) begin
            i_fu_40 <= add_ln134_fu_104_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_40 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln134_fu_98_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        temp3_V_1_3_fu_48 <= temp3_V_1_5_fu_142_p3;
        temp3_V_1_fu_44 <= temp3_V_1_6_fu_150_p3;
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
    if (((icmp_ln134_fu_98_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
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
        ap_sig_allocacmp_i_1 = 2'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_40;
    end
end

always @ (*) begin
    if (((icmp_ln134_fu_98_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        temp3_V_0_077_out_ap_vld = 1'b1;
    end else begin
        temp3_V_0_077_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln134_fu_98_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        temp3_V_1_078_out_ap_vld = 1'b1;
    end else begin
        temp3_V_1_078_out_ap_vld = 1'b0;
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

assign add_ln134_fu_104_p2 = (ap_sig_allocacmp_i_1 + 2'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln134_fu_98_p2 = ((ap_sig_allocacmp_i_1 == 2'd2) ? 1'b1 : 1'b0);

assign select_ln813_1_fu_128_p3 = ((trunc_ln813_fu_116_p1[0:0] == 1'b1) ? temp2_V_1_076_reload : temp2_V_0_075_reload);

assign select_ln813_fu_120_p3 = ((trunc_ln813_fu_116_p1[0:0] == 1'b1) ? temp1_V_1_074_reload : temp1_V_0_073_reload);

assign temp3_V_0_077_out = temp3_V_1_fu_44;

assign temp3_V_0_fu_136_p2 = (select_ln813_1_fu_128_p3 + select_ln813_fu_120_p3);

assign temp3_V_1_078_out = temp3_V_1_3_fu_48;

assign temp3_V_1_5_fu_142_p3 = ((trunc_ln813_fu_116_p1[0:0] == 1'b1) ? temp3_V_0_fu_136_p2 : temp3_V_1_3_fu_48);

assign temp3_V_1_6_fu_150_p3 = ((trunc_ln813_fu_116_p1[0:0] == 1'b1) ? temp3_V_1_fu_44 : temp3_V_0_fu_136_p2);

assign trunc_ln813_fu_116_p1 = ap_sig_allocacmp_i_1[0:0];

endmodule //predictor_func_predictor_func_Pipeline_vadd_row
