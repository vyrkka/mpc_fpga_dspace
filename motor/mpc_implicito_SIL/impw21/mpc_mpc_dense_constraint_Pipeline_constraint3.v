module mpc_mpc_dense_constraint_Pipeline_constraint3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        h_address0,
        h_ce0,
        h_we0,
        h_d0
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] h_address0;
output   h_ce0;
output   h_we0;
output  [20:0] h_d0;

reg ap_idle;
reg h_ce0;
reg h_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln60_fu_70_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] i_6_cast_cast_cast_cast_fu_89_p1;
reg   [1:0] j_fu_36;
wire   [1:0] add_ln60_fu_76_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_j_3;
reg   [2:0] i_fu_40;
wire   [2:0] add_ln62_fu_107_p2;
reg   [2:0] ap_sig_allocacmp_i_load;
wire   [20:0] tmp_s_fu_94_p5;
wire  signed [2:0] i_6_cast_cast_cast_fu_85_p0;
wire  signed [3:0] i_6_cast_cast_cast_fu_85_p1;
wire  signed [2:0] add_ln62_fu_107_p0;
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

mpc_mux_32_21_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 21 ),
    .din2_WIDTH( 21 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 21 ))
mux_32_21_1_1_U31(
    .din0(21'd163840),
    .din1(21'd163840),
    .din2(21'd163840),
    .din3(ap_sig_allocacmp_j_3),
    .dout(tmp_s_fu_94_p5)
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
        if ((icmp_ln60_fu_70_p2 == 1'd0)) begin
            i_fu_40 <= add_ln62_fu_107_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_40 <= 3'd4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        if ((icmp_ln60_fu_70_p2 == 1'd0)) begin
            j_fu_36 <= add_ln60_fu_76_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_36 <= 2'd0;
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
    if (((icmp_ln60_fu_70_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
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
        ap_sig_allocacmp_i_load = 3'd4;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_40;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_j_3 = 2'd0;
    end else begin
        ap_sig_allocacmp_j_3 = j_fu_36;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        h_ce0 = 1'b1;
    end else begin
        h_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln60_fu_70_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        h_we0 = 1'b1;
    end else begin
        h_we0 = 1'b0;
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

assign add_ln60_fu_76_p2 = (ap_sig_allocacmp_j_3 + 2'd1);

assign add_ln62_fu_107_p0 = ap_sig_allocacmp_i_load;

assign add_ln62_fu_107_p2 = ($signed(add_ln62_fu_107_p0) + $signed(3'd1));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign h_address0 = i_6_cast_cast_cast_cast_fu_89_p1;

assign h_d0 = tmp_s_fu_94_p5;

assign i_6_cast_cast_cast_cast_fu_89_p1 = $unsigned(i_6_cast_cast_cast_fu_85_p1);

assign i_6_cast_cast_cast_fu_85_p0 = ap_sig_allocacmp_i_load;

assign i_6_cast_cast_cast_fu_85_p1 = i_6_cast_cast_cast_fu_85_p0;

assign icmp_ln60_fu_70_p2 = ((ap_sig_allocacmp_j_3 == 2'd3) ? 1'b1 : 1'b0);

endmodule //mpc_mpc_dense_constraint_Pipeline_constraint3
