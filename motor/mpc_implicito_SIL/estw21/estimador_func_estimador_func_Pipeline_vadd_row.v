module estimador_func_estimador_func_Pipeline_vadd_row (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        temp2_V_0_01_reload,
        temp2_V_1_02_reload,
        temp2_V_2_03_reload,
        temp3_V_0_04_reload,
        temp3_V_1_05_reload,
        temp3_V_2_06_reload,
        temp5_V_2_012_out,
        temp5_V_2_012_out_ap_vld,
        temp5_V_1_011_out,
        temp5_V_1_011_out_ap_vld,
        temp5_V_0_010_out,
        temp5_V_0_010_out_ap_vld
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [20:0] temp2_V_0_01_reload;
input  [20:0] temp2_V_1_02_reload;
input  [20:0] temp2_V_2_03_reload;
input  [20:0] temp3_V_0_04_reload;
input  [20:0] temp3_V_1_05_reload;
input  [20:0] temp3_V_2_06_reload;
output  [20:0] temp5_V_2_012_out;
output   temp5_V_2_012_out_ap_vld;
output  [20:0] temp5_V_1_011_out;
output   temp5_V_1_011_out_ap_vld;
output  [20:0] temp5_V_0_010_out;
output   temp5_V_0_010_out_ap_vld;

reg ap_idle;
reg temp5_V_2_012_out_ap_vld;
reg temp5_V_1_011_out_ap_vld;
reg temp5_V_0_010_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln134_fu_143_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [1:0] i_fu_62;
wire   [1:0] add_ln134_fu_149_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i_2;
wire   [1:0] i_2_load_fu_140_p1;
reg   [20:0] temp5_V_1_fu_66;
wire   [20:0] temp5_V_1_4_fu_241_p3;
reg   [20:0] temp5_V_1_1_fu_70;
reg   [20:0] temp5_V_1_2_fu_74;
wire  signed [20:0] lhs_fu_155_p5;
wire  signed [20:0] rhs_fu_171_p5;
wire  signed [21:0] sext_ln813_2_fu_183_p1;
wire  signed [21:0] sext_ln813_fu_167_p1;
wire   [21:0] ret_V_fu_187_p2;
wire   [20:0] p_Val2_2_fu_201_p2;
wire   [0:0] p_Result_s_fu_193_p3;
wire   [0:0] p_Result_2_fu_207_p3;
wire   [0:0] xor_ln895_fu_215_p2;
wire   [0:0] overflow_fu_221_p2;
wire   [0:0] xor_ln302_fu_227_p2;
wire   [20:0] select_ln346_fu_233_p3;
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

estimador_func_mux_32_21_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 21 ),
    .din2_WIDTH( 21 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 21 ))
mux_32_21_1_1_U28(
    .din0(temp2_V_0_01_reload),
    .din1(temp2_V_1_02_reload),
    .din2(temp2_V_2_03_reload),
    .din3(ap_sig_allocacmp_i_2),
    .dout(lhs_fu_155_p5)
);

estimador_func_mux_32_21_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 21 ),
    .din2_WIDTH( 21 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 21 ))
mux_32_21_1_1_U29(
    .din0(temp3_V_0_04_reload),
    .din1(temp3_V_1_05_reload),
    .din2(temp3_V_2_06_reload),
    .din3(ap_sig_allocacmp_i_2),
    .dout(rhs_fu_171_p5)
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
        if ((icmp_ln134_fu_143_p2 == 1'd0)) begin
            i_fu_62 <= add_ln134_fu_149_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_62 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((i_2_load_fu_140_p1 == 2'd1) & (icmp_ln134_fu_143_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        temp5_V_1_1_fu_70 <= temp5_V_1_4_fu_241_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((~(i_2_load_fu_140_p1 == 2'd1) & ~(i_2_load_fu_140_p1 == 2'd0) & (icmp_ln134_fu_143_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        temp5_V_1_2_fu_74 <= temp5_V_1_4_fu_241_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((i_2_load_fu_140_p1 == 2'd0) & (icmp_ln134_fu_143_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        temp5_V_1_fu_66 <= temp5_V_1_4_fu_241_p3;
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
    if (((icmp_ln134_fu_143_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
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
        ap_sig_allocacmp_i_2 = 2'd0;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_62;
    end
end

always @ (*) begin
    if (((icmp_ln134_fu_143_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        temp5_V_0_010_out_ap_vld = 1'b1;
    end else begin
        temp5_V_0_010_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln134_fu_143_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        temp5_V_1_011_out_ap_vld = 1'b1;
    end else begin
        temp5_V_1_011_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln134_fu_143_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        temp5_V_2_012_out_ap_vld = 1'b1;
    end else begin
        temp5_V_2_012_out_ap_vld = 1'b0;
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

assign add_ln134_fu_149_p2 = (ap_sig_allocacmp_i_2 + 2'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign i_2_load_fu_140_p1 = ap_sig_allocacmp_i_2;

assign icmp_ln134_fu_143_p2 = ((ap_sig_allocacmp_i_2 == 2'd3) ? 1'b1 : 1'b0);

assign overflow_fu_221_p2 = (xor_ln895_fu_215_p2 & p_Result_2_fu_207_p3);

assign p_Result_2_fu_207_p3 = p_Val2_2_fu_201_p2[32'd20];

assign p_Result_s_fu_193_p3 = ret_V_fu_187_p2[32'd21];

assign p_Val2_2_fu_201_p2 = ($signed(rhs_fu_171_p5) + $signed(lhs_fu_155_p5));

assign ret_V_fu_187_p2 = ($signed(sext_ln813_2_fu_183_p1) + $signed(sext_ln813_fu_167_p1));

assign select_ln346_fu_233_p3 = ((overflow_fu_221_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign sext_ln813_2_fu_183_p1 = rhs_fu_171_p5;

assign sext_ln813_fu_167_p1 = lhs_fu_155_p5;

assign temp5_V_0_010_out = temp5_V_1_fu_66;

assign temp5_V_1_011_out = temp5_V_1_1_fu_70;

assign temp5_V_1_4_fu_241_p3 = ((xor_ln302_fu_227_p2[0:0] == 1'b1) ? select_ln346_fu_233_p3 : p_Val2_2_fu_201_p2);

assign temp5_V_2_012_out = temp5_V_1_2_fu_74;

assign xor_ln302_fu_227_p2 = (p_Result_s_fu_193_p3 ^ p_Result_2_fu_207_p3);

assign xor_ln895_fu_215_p2 = (p_Result_s_fu_193_p3 ^ 1'd1);

endmodule //estimador_func_estimador_func_Pipeline_vadd_row
