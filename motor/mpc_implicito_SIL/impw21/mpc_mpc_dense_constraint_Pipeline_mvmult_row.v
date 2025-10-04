module mpc_mpc_dense_constraint_Pipeline_mvmult_row (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        temp_V_address0,
        temp_V_ce0,
        temp_V_we0,
        temp_V_d0,
        sext_ln1271_2,
        x0_load_cast
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
output   temp_V_we0;
output  [20:0] temp_V_d0;
input  [20:0] sext_ln1271_2;
input  [20:0] x0_load_cast;

reg ap_idle;
reg temp_V_ce0;
reg temp_V_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln8_fu_139_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [2:0] E_V_0_address0;
reg    E_V_0_ce0;
wire   [13:0] E_V_0_q0;
wire   [2:0] E_V_1_address0;
reg    E_V_1_ce0;
wire   [14:0] E_V_1_q0;
wire  signed [35:0] x0_load_cast_cast_fu_123_p1;
reg  signed [35:0] x0_load_cast_cast_reg_578;
wire    ap_block_pp0_stage0_11001;
wire  signed [34:0] sext_ln1271_2_cast_fu_127_p1;
reg  signed [34:0] sext_ln1271_2_cast_reg_583;
wire   [63:0] i_cast_fu_151_p1;
reg   [63:0] i_cast_reg_592;
reg   [63:0] i_cast_reg_592_pp0_iter1_reg;
reg   [63:0] i_cast_reg_592_pp0_iter2_reg;
reg   [63:0] i_cast_reg_592_pp0_iter3_reg;
reg   [63:0] i_cast_reg_592_pp0_iter4_reg;
reg   [63:0] i_cast_reg_592_pp0_iter5_reg;
wire   [20:0] add_ln377_63_fu_203_p2;
reg   [20:0] add_ln377_63_reg_618;
wire   [0:0] and_ln895_fu_303_p2;
reg   [0:0] and_ln895_reg_623;
wire   [0:0] or_ln346_fu_333_p2;
reg   [0:0] or_ln346_reg_628;
wire   [0:0] tmp_631_fu_369_p3;
reg   [0:0] tmp_631_reg_633;
wire   [0:0] tmp_632_fu_387_p3;
reg   [0:0] tmp_632_reg_638;
wire   [20:0] add_ln377_fu_406_p2;
reg   [20:0] add_ln377_reg_643;
wire   [0:0] xor_ln896_172_fu_420_p2;
reg   [0:0] xor_ln896_172_reg_648;
wire   [0:0] tmp_635_fu_426_p3;
reg   [0:0] tmp_635_reg_653;
wire   [0:0] and_ln895_180_fu_496_p2;
reg   [0:0] and_ln895_180_reg_658;
wire   [0:0] or_ln896_63_fu_508_p2;
reg   [0:0] or_ln896_63_reg_664;
wire    ap_block_pp0_stage0;
reg   [2:0] i_fu_68;
wire   [2:0] add_ln8_fu_145_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_i_4;
wire  signed [34:0] grp_fu_553_p2;
wire   [0:0] tmp_627_fu_192_p3;
wire   [20:0] zext_ln377_fu_199_p1;
wire   [20:0] trunc_ln818_s_fu_176_p4;
wire   [0:0] tmp_628_fu_209_p3;
wire   [0:0] tmp_626_fu_185_p3;
wire   [0:0] xor_ln896_168_fu_217_p2;
wire   [0:0] xor_ln888_fu_236_p2;
wire   [0:0] tmp_629_fu_229_p3;
wire   [0:0] or_ln888_fu_242_p2;
wire   [0:0] tmp_630_fu_254_p3;
wire   [0:0] xor_ln890_fu_261_p2;
wire   [0:0] or_ln890_fu_267_p2;
wire   [0:0] and_ln378_63_fu_223_p2;
wire   [0:0] xor_ln888_126_fu_248_p2;
wire   [0:0] xor_ln895_236_fu_285_p2;
wire   [0:0] tmp_fu_169_p3;
wire   [0:0] or_ln895_fu_291_p2;
wire   [0:0] xor_ln895_fu_297_p2;
wire   [0:0] and_ln890_fu_273_p2;
wire   [0:0] xor_ln896_171_fu_309_p2;
wire   [0:0] and_ln891_fu_279_p2;
wire   [0:0] or_ln896_fu_315_p2;
wire   [0:0] xor_ln896_fu_321_p2;
wire   [0:0] and_ln896_fu_327_p2;
wire   [20:0] select_ln346_fu_339_p3;
wire   [20:0] select_ln346_287_fu_346_p3;
wire   [34:0] shl_ln838_s_fu_352_p3;
wire  signed [35:0] sext_ln813_fu_360_p1;
wire  signed [35:0] grp_fu_564_p2;
(* use_dsp48 = "no" *) wire   [35:0] add_ln1347_fu_364_p2;
wire   [0:0] tmp_633_fu_395_p3;
wire   [20:0] zext_ln377_64_fu_402_p1;
wire   [20:0] trunc_ln818_65_fu_377_p4;
wire   [0:0] tmp_634_fu_412_p3;
wire   [0:0] xor_ln888_127_fu_434_p2;
wire   [0:0] or_ln888_63_fu_440_p2;
wire   [0:0] tmp_636_fu_452_p3;
wire   [0:0] xor_ln890_64_fu_460_p2;
wire   [0:0] or_ln890_63_fu_466_p2;
wire   [0:0] xor_ln888_128_fu_446_p2;
wire   [0:0] xor_ln895_237_fu_478_p2;
wire   [0:0] or_ln895_68_fu_484_p2;
wire   [0:0] xor_ln895_238_fu_490_p2;
wire   [0:0] and_ln890_63_fu_472_p2;
wire   [0:0] xor_ln896_174_fu_502_p2;
wire   [0:0] and_ln378_fu_514_p2;
wire   [0:0] and_ln891_63_fu_518_p2;
wire   [0:0] xor_ln896_196_fu_523_p2;
wire   [0:0] and_ln896_74_fu_528_p2;
wire   [0:0] or_ln346_69_fu_540_p2;
wire   [20:0] select_ln346_288_fu_533_p3;
wire  signed [20:0] grp_fu_553_p0;
wire   [13:0] grp_fu_553_p1;
wire  signed [20:0] grp_fu_564_p0;
wire   [14:0] grp_fu_564_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire   [34:0] grp_fu_553_p10;
wire   [35:0] grp_fu_564_p10;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_done_reg = 1'b0;
end

mpc_mpc_dense_constraint_Pipeline_mvmult_row_E_V_0_ROM_AUTO_1R #(
    .DataWidth( 14 ),
    .AddressRange( 6 ),
    .AddressWidth( 3 ))
E_V_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(E_V_0_address0),
    .ce0(E_V_0_ce0),
    .q0(E_V_0_q0)
);

mpc_mpc_dense_constraint_Pipeline_mvmult_row_E_V_1_ROM_AUTO_1R #(
    .DataWidth( 15 ),
    .AddressRange( 6 ),
    .AddressWidth( 3 ))
E_V_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(E_V_1_address0),
    .ce0(E_V_1_ce0),
    .q0(E_V_1_q0)
);

mpc_mul_mul_21s_14ns_35_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 14 ),
    .dout_WIDTH( 35 ))
mul_mul_21s_14ns_35_4_1_U12(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_553_p0),
    .din1(grp_fu_553_p1),
    .ce(1'b1),
    .dout(grp_fu_553_p2)
);

mpc_mul_mul_21s_15ns_36_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 36 ))
mul_mul_21s_15ns_36_4_1_U13(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_564_p0),
    .din1(grp_fu_564_p1),
    .ce(1'b1),
    .dout(grp_fu_564_p2)
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln8_fu_139_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_68 <= add_ln8_fu_145_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_68 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln377_63_reg_618 <= add_ln377_63_fu_203_p2;
        add_ln377_reg_643 <= add_ln377_fu_406_p2;
        and_ln895_180_reg_658 <= and_ln895_180_fu_496_p2;
        and_ln895_reg_623 <= and_ln895_fu_303_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        i_cast_reg_592_pp0_iter2_reg[2 : 0] <= i_cast_reg_592_pp0_iter1_reg[2 : 0];
        i_cast_reg_592_pp0_iter3_reg[2 : 0] <= i_cast_reg_592_pp0_iter2_reg[2 : 0];
        i_cast_reg_592_pp0_iter4_reg[2 : 0] <= i_cast_reg_592_pp0_iter3_reg[2 : 0];
        i_cast_reg_592_pp0_iter5_reg[2 : 0] <= i_cast_reg_592_pp0_iter4_reg[2 : 0];
        or_ln346_reg_628 <= or_ln346_fu_333_p2;
        or_ln896_63_reg_664 <= or_ln896_63_fu_508_p2;
        tmp_631_reg_633 <= add_ln1347_fu_364_p2[32'd35];
        tmp_632_reg_638 <= add_ln1347_fu_364_p2[32'd34];
        tmp_635_reg_653 <= add_ln1347_fu_364_p2[32'd35];
        xor_ln896_172_reg_648 <= xor_ln896_172_fu_420_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_cast_reg_592_pp0_iter1_reg[2 : 0] <= i_cast_reg_592[2 : 0];
        sext_ln1271_2_cast_reg_583 <= sext_ln1271_2_cast_fu_127_p1;
        x0_load_cast_cast_reg_578 <= x0_load_cast_cast_fu_123_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln8_fu_139_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_cast_reg_592[2 : 0] <= i_cast_fu_151_p1[2 : 0];
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_V_0_ce0 = 1'b1;
    end else begin
        E_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_V_1_ce0 = 1'b1;
    end else begin
        E_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln8_fu_139_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_i_4 = 3'd0;
    end else begin
        ap_sig_allocacmp_i_4 = i_fu_68;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        temp_V_ce0 = 1'b1;
    end else begin
        temp_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        temp_V_we0 = 1'b1;
    end else begin
        temp_V_we0 = 1'b0;
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

assign E_V_0_address0 = i_cast_fu_151_p1;

assign E_V_1_address0 = i_cast_reg_592;

assign add_ln1347_fu_364_p2 = ($signed(sext_ln813_fu_360_p1) + $signed(grp_fu_564_p2));

assign add_ln377_63_fu_203_p2 = (zext_ln377_fu_199_p1 + trunc_ln818_s_fu_176_p4);

assign add_ln377_fu_406_p2 = (zext_ln377_64_fu_402_p1 + trunc_ln818_65_fu_377_p4);

assign add_ln8_fu_145_p2 = (ap_sig_allocacmp_i_4 + 3'd1);

assign and_ln378_63_fu_223_p2 = (xor_ln896_168_fu_217_p2 & tmp_626_fu_185_p3);

assign and_ln378_fu_514_p2 = (xor_ln896_172_reg_648 & tmp_632_reg_638);

assign and_ln890_63_fu_472_p2 = (tmp_635_fu_426_p3 & or_ln890_63_fu_466_p2);

assign and_ln890_fu_273_p2 = (tmp_629_fu_229_p3 & or_ln890_fu_267_p2);

assign and_ln891_63_fu_518_p2 = (tmp_635_reg_653 & and_ln378_fu_514_p2);

assign and_ln891_fu_279_p2 = (tmp_629_fu_229_p3 & and_ln378_63_fu_223_p2);

assign and_ln895_180_fu_496_p2 = (xor_ln895_238_fu_490_p2 & or_ln895_68_fu_484_p2);

assign and_ln895_fu_303_p2 = (xor_ln895_fu_297_p2 & or_ln895_fu_291_p2);

assign and_ln896_74_fu_528_p2 = (xor_ln896_196_fu_523_p2 & tmp_631_reg_633);

assign and_ln896_fu_327_p2 = (xor_ln896_fu_321_p2 & tmp_fu_169_p3);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign grp_fu_553_p0 = sext_ln1271_2_cast_reg_583;

assign grp_fu_553_p1 = grp_fu_553_p10;

assign grp_fu_553_p10 = E_V_0_q0;

assign grp_fu_564_p0 = x0_load_cast_cast_reg_578;

assign grp_fu_564_p1 = grp_fu_564_p10;

assign grp_fu_564_p10 = E_V_1_q0;

assign i_cast_fu_151_p1 = ap_sig_allocacmp_i_4;

assign icmp_ln8_fu_139_p2 = ((ap_sig_allocacmp_i_4 == 3'd6) ? 1'b1 : 1'b0);

assign or_ln346_69_fu_540_p2 = (and_ln896_74_fu_528_p2 | and_ln895_180_reg_658);

assign or_ln346_fu_333_p2 = (and_ln896_fu_327_p2 | and_ln895_fu_303_p2);

assign or_ln888_63_fu_440_p2 = (xor_ln888_127_fu_434_p2 | tmp_634_fu_412_p3);

assign or_ln888_fu_242_p2 = (xor_ln888_fu_236_p2 | tmp_628_fu_209_p3);

assign or_ln890_63_fu_466_p2 = (xor_ln890_64_fu_460_p2 | or_ln888_63_fu_440_p2);

assign or_ln890_fu_267_p2 = (xor_ln890_fu_261_p2 | or_ln888_fu_242_p2);

assign or_ln895_68_fu_484_p2 = (xor_ln895_237_fu_478_p2 | tmp_634_fu_412_p3);

assign or_ln895_fu_291_p2 = (xor_ln895_236_fu_285_p2 | tmp_628_fu_209_p3);

assign or_ln896_63_fu_508_p2 = (xor_ln896_174_fu_502_p2 | xor_ln896_172_fu_420_p2);

assign or_ln896_fu_315_p2 = (xor_ln896_171_fu_309_p2 | xor_ln896_168_fu_217_p2);

assign select_ln346_287_fu_346_p3 = ((or_ln346_reg_628[0:0] == 1'b1) ? select_ln346_fu_339_p3 : add_ln377_63_reg_618);

assign select_ln346_288_fu_533_p3 = ((and_ln895_180_reg_658[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_fu_339_p3 = ((and_ln895_reg_623[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign sext_ln1271_2_cast_fu_127_p1 = $signed(sext_ln1271_2);

assign sext_ln813_fu_360_p1 = $signed(shl_ln838_s_fu_352_p3);

assign shl_ln838_s_fu_352_p3 = {{select_ln346_287_fu_346_p3}, {14'd0}};

assign temp_V_address0 = i_cast_reg_592_pp0_iter5_reg;

assign temp_V_d0 = ((or_ln346_69_fu_540_p2[0:0] == 1'b1) ? select_ln346_288_fu_533_p3 : add_ln377_reg_643);

assign tmp_626_fu_185_p3 = grp_fu_553_p2[32'd34];

assign tmp_627_fu_192_p3 = grp_fu_553_p2[32'd13];

assign tmp_628_fu_209_p3 = add_ln377_63_fu_203_p2[32'd20];

assign tmp_629_fu_229_p3 = grp_fu_553_p2[32'd34];

assign tmp_630_fu_254_p3 = grp_fu_553_p2[32'd34];

assign tmp_631_fu_369_p3 = add_ln1347_fu_364_p2[32'd35];

assign tmp_632_fu_387_p3 = add_ln1347_fu_364_p2[32'd34];

assign tmp_633_fu_395_p3 = grp_fu_564_p2[32'd13];

assign tmp_634_fu_412_p3 = add_ln377_fu_406_p2[32'd20];

assign tmp_635_fu_426_p3 = add_ln1347_fu_364_p2[32'd35];

assign tmp_636_fu_452_p3 = add_ln1347_fu_364_p2[32'd35];

assign tmp_fu_169_p3 = grp_fu_553_p2[32'd34];

assign trunc_ln818_65_fu_377_p4 = {{add_ln1347_fu_364_p2[34:14]}};

assign trunc_ln818_s_fu_176_p4 = {{grp_fu_553_p2[34:14]}};

assign x0_load_cast_cast_fu_123_p1 = $signed(x0_load_cast);

assign xor_ln888_126_fu_248_p2 = (tmp_629_fu_229_p3 ^ or_ln888_fu_242_p2);

assign xor_ln888_127_fu_434_p2 = (tmp_632_fu_387_p3 ^ 1'd1);

assign xor_ln888_128_fu_446_p2 = (tmp_635_fu_426_p3 ^ or_ln888_63_fu_440_p2);

assign xor_ln888_fu_236_p2 = (tmp_626_fu_185_p3 ^ 1'd1);

assign xor_ln890_64_fu_460_p2 = (tmp_636_fu_452_p3 ^ 1'd1);

assign xor_ln890_fu_261_p2 = (tmp_630_fu_254_p3 ^ 1'd1);

assign xor_ln895_236_fu_285_p2 = (xor_ln888_126_fu_248_p2 ^ 1'd1);

assign xor_ln895_237_fu_478_p2 = (xor_ln888_128_fu_446_p2 ^ 1'd1);

assign xor_ln895_238_fu_490_p2 = (tmp_631_fu_369_p3 ^ 1'd1);

assign xor_ln895_fu_297_p2 = (tmp_fu_169_p3 ^ 1'd1);

assign xor_ln896_168_fu_217_p2 = (tmp_628_fu_209_p3 ^ 1'd1);

assign xor_ln896_171_fu_309_p2 = (1'd1 ^ and_ln890_fu_273_p2);

assign xor_ln896_172_fu_420_p2 = (tmp_634_fu_412_p3 ^ 1'd1);

assign xor_ln896_174_fu_502_p2 = (1'd1 ^ and_ln890_63_fu_472_p2);

assign xor_ln896_196_fu_523_p2 = (or_ln896_63_reg_664 ^ and_ln891_63_fu_518_p2);

assign xor_ln896_fu_321_p2 = (or_ln896_fu_315_p2 ^ and_ln891_fu_279_p2);

assign zext_ln377_64_fu_402_p1 = tmp_633_fu_395_p3;

assign zext_ln377_fu_199_p1 = tmp_627_fu_192_p3;

always @ (posedge ap_clk) begin
    i_cast_reg_592[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    i_cast_reg_592_pp0_iter1_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    i_cast_reg_592_pp0_iter2_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    i_cast_reg_592_pp0_iter3_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    i_cast_reg_592_pp0_iter4_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    i_cast_reg_592_pp0_iter5_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
end

endmodule //mpc_mpc_dense_constraint_Pipeline_mvmult_row
