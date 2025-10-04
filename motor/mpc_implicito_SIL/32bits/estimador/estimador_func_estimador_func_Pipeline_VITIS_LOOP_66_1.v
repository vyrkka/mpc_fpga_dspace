module estimador_func_estimador_func_Pipeline_VITIS_LOOP_66_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        zhat_next_0,
        zhat_next_0_ap_vld,
        temp6_V_0_013_reload,
        temp6_V_1_014_reload,
        temp6_V_2_015_reload,
        zhat_next_1,
        zhat_next_1_ap_vld,
        zhat_next_2,
        zhat_next_2_ap_vld
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] zhat_next_0;
output   zhat_next_0_ap_vld;
input  [31:0] temp6_V_0_013_reload;
input  [31:0] temp6_V_1_014_reload;
input  [31:0] temp6_V_2_015_reload;
output  [31:0] zhat_next_1;
output   zhat_next_1_ap_vld;
output  [31:0] zhat_next_2;
output   zhat_next_2_ap_vld;

reg ap_idle;
reg[31:0] zhat_next_0;
reg zhat_next_0_ap_vld;
reg[31:0] zhat_next_1;
reg zhat_next_1_ap_vld;
reg[31:0] zhat_next_2;
reg zhat_next_2_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln66_fu_105_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [1:0] i_fu_54;
wire   [1:0] add_ln66_fu_111_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i_4;
wire   [1:0] i_4_load_fu_102_p1;
wire   [31:0] tmp_s_fu_117_p5;
wire   [0:0] icmp_ln1650_fu_147_p2;
wire   [0:0] icmp_ln1649_fu_168_p2;
wire   [31:0] tmp_1_fu_153_p5;
wire   [31:0] tmp_3_fu_132_p5;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_start_int;
reg    ap_condition_184;
reg    ap_condition_191;
reg    ap_condition_196;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
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
mux_32_32_1_1_U50(
    .din0(temp6_V_0_013_reload),
    .din1(temp6_V_1_014_reload),
    .din2(temp6_V_2_015_reload),
    .din3(ap_sig_allocacmp_i_4),
    .dout(tmp_s_fu_117_p5)
);

estimador_func_mux_32_32_1_1_x #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_32_32_1_1_x_U51(
    .din0(32'd4294311936),
    .din1(32'd4294555521),
    .din2(32'd4294901760),
    .din3(ap_sig_allocacmp_i_4),
    .dout(tmp_3_fu_132_p5)
);

estimador_func_mux_32_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_32_32_1_1_U52(
    .din0(32'd655360),
    .din1(32'd411775),
    .din2(32'd65536),
    .din3(ap_sig_allocacmp_i_4),
    .dout(tmp_1_fu_153_p5)
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
        if ((icmp_ln66_fu_105_p2 == 1'd0)) begin
            i_fu_54 <= add_ln66_fu_111_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_54 <= 2'd0;
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
    if (((icmp_ln66_fu_105_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
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
        ap_sig_allocacmp_i_4 = 2'd0;
    end else begin
        ap_sig_allocacmp_i_4 = i_fu_54;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_184)) begin
        if ((icmp_ln1650_fu_147_p2 == 1'd1)) begin
            zhat_next_0 = tmp_3_fu_132_p5;
        end else if (((icmp_ln1649_fu_168_p2 == 1'd1) & (icmp_ln1650_fu_147_p2 == 1'd0))) begin
            zhat_next_0 = tmp_1_fu_153_p5;
        end else if (((icmp_ln1649_fu_168_p2 == 1'd0) & (icmp_ln1650_fu_147_p2 == 1'd0))) begin
            zhat_next_0 = tmp_s_fu_117_p5;
        end else begin
            zhat_next_0 = 'bx;
        end
    end else begin
        zhat_next_0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln1650_fu_147_p2 == 1'd1) & (i_4_load_fu_102_p1 == 2'd0) & (icmp_ln66_fu_105_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1)) | ((icmp_ln1649_fu_168_p2 == 1'd1) & (icmp_ln1650_fu_147_p2 == 1'd0) & (i_4_load_fu_102_p1 == 2'd0) & (icmp_ln66_fu_105_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1)) | ((icmp_ln1649_fu_168_p2 == 1'd0) & (icmp_ln1650_fu_147_p2 == 1'd0) & (i_4_load_fu_102_p1 == 2'd0) & (icmp_ln66_fu_105_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1)))) begin
        zhat_next_0_ap_vld = 1'b1;
    end else begin
        zhat_next_0_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_191)) begin
        if ((icmp_ln1650_fu_147_p2 == 1'd1)) begin
            zhat_next_1 = tmp_3_fu_132_p5;
        end else if (((icmp_ln1649_fu_168_p2 == 1'd1) & (icmp_ln1650_fu_147_p2 == 1'd0))) begin
            zhat_next_1 = tmp_1_fu_153_p5;
        end else if (((icmp_ln1649_fu_168_p2 == 1'd0) & (icmp_ln1650_fu_147_p2 == 1'd0))) begin
            zhat_next_1 = tmp_s_fu_117_p5;
        end else begin
            zhat_next_1 = 'bx;
        end
    end else begin
        zhat_next_1 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln1650_fu_147_p2 == 1'd1) & (i_4_load_fu_102_p1 == 2'd1) & (icmp_ln66_fu_105_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1)) | ((icmp_ln1649_fu_168_p2 == 1'd1) & (icmp_ln1650_fu_147_p2 == 1'd0) & (i_4_load_fu_102_p1 == 2'd1) & (icmp_ln66_fu_105_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1)) | ((icmp_ln1649_fu_168_p2 == 1'd0) & (icmp_ln1650_fu_147_p2 == 1'd0) & (i_4_load_fu_102_p1 == 2'd1) & (icmp_ln66_fu_105_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1)))) begin
        zhat_next_1_ap_vld = 1'b1;
    end else begin
        zhat_next_1_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_196)) begin
        if ((icmp_ln1650_fu_147_p2 == 1'd1)) begin
            zhat_next_2 = tmp_3_fu_132_p5;
        end else if (((icmp_ln1649_fu_168_p2 == 1'd1) & (icmp_ln1650_fu_147_p2 == 1'd0))) begin
            zhat_next_2 = tmp_1_fu_153_p5;
        end else if (((icmp_ln1649_fu_168_p2 == 1'd0) & (icmp_ln1650_fu_147_p2 == 1'd0))) begin
            zhat_next_2 = tmp_s_fu_117_p5;
        end else begin
            zhat_next_2 = 'bx;
        end
    end else begin
        zhat_next_2 = 'bx;
    end
end

always @ (*) begin
    if (((~(i_4_load_fu_102_p1 == 2'd0) & ~(i_4_load_fu_102_p1 == 2'd1) & (icmp_ln1650_fu_147_p2 == 1'd1) & (icmp_ln66_fu_105_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1)) | (~(i_4_load_fu_102_p1 == 2'd0) & ~(i_4_load_fu_102_p1 == 2'd1) & (icmp_ln1649_fu_168_p2 == 1'd1) & (icmp_ln1650_fu_147_p2 == 1'd0) & (icmp_ln66_fu_105_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1)) | (~(i_4_load_fu_102_p1 == 2'd0) & ~(i_4_load_fu_102_p1 == 2'd1) & (icmp_ln1649_fu_168_p2 == 1'd0) & (icmp_ln1650_fu_147_p2 == 1'd0) & (icmp_ln66_fu_105_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1)))) begin
        zhat_next_2_ap_vld = 1'b1;
    end else begin
        zhat_next_2_ap_vld = 1'b0;
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

assign add_ln66_fu_111_p2 = (ap_sig_allocacmp_i_4 + 2'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

always @ (*) begin
    ap_condition_184 = ((i_4_load_fu_102_p1 == 2'd0) & (icmp_ln66_fu_105_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1));
end

always @ (*) begin
    ap_condition_191 = ((i_4_load_fu_102_p1 == 2'd1) & (icmp_ln66_fu_105_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1));
end

always @ (*) begin
    ap_condition_196 = (~(i_4_load_fu_102_p1 == 2'd0) & ~(i_4_load_fu_102_p1 == 2'd1) & (icmp_ln66_fu_105_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1));
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign i_4_load_fu_102_p1 = ap_sig_allocacmp_i_4;

assign icmp_ln1649_fu_168_p2 = (($signed(tmp_s_fu_117_p5) > $signed(tmp_1_fu_153_p5)) ? 1'b1 : 1'b0);

assign icmp_ln1650_fu_147_p2 = (($signed(tmp_s_fu_117_p5) < $signed(tmp_3_fu_132_p5)) ? 1'b1 : 1'b0);

assign icmp_ln66_fu_105_p2 = ((ap_sig_allocacmp_i_4 == 2'd3) ? 1'b1 : 1'b0);

endmodule //estimador_func_estimador_func_Pipeline_VITIS_LOOP_66_1
