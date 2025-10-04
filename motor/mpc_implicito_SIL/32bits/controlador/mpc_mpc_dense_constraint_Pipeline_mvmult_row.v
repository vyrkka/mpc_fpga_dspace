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
        sext_ln1271_28,
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
output  [31:0] temp_V_d0;
input  [31:0] sext_ln1271_28;
input  [31:0] x0_load_cast;

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
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln24_fu_139_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [2:0] D_V_0_address0;
reg    D_V_0_ce0;
wire   [15:0] D_V_0_q0;
wire   [2:0] D_V_1_address0;
reg    D_V_1_ce0;
wire   [16:0] D_V_1_q0;
wire  signed [48:0] x0_load_cast_cast_fu_123_p1;
reg  signed [48:0] x0_load_cast_cast_reg_567;
wire    ap_block_pp0_stage0_11001;
wire  signed [47:0] sext_ln1271_28_cast_fu_127_p1;
reg  signed [47:0] sext_ln1271_28_cast_reg_572;
wire   [63:0] i_cast_fu_151_p1;
reg   [63:0] i_cast_reg_581;
reg   [63:0] i_cast_reg_581_pp0_iter1_reg;
reg   [63:0] i_cast_reg_581_pp0_iter2_reg;
reg   [63:0] i_cast_reg_581_pp0_iter3_reg;
reg   [15:0] D_V_0_load_reg_596;
reg   [16:0] D_V_1_load_reg_601;
wire   [47:0] mul_ln1273_fu_165_p2;
reg   [47:0] mul_ln1273_reg_606;
reg   [0:0] tmp_reg_611;
reg   [31:0] trunc_ln818_s_reg_617;
reg   [0:0] tmp_203_reg_622;
reg   [0:0] tmp_204_reg_628;
reg   [0:0] tmp_206_reg_633;
wire   [48:0] mul_ln1273_28_fu_215_p2;
reg   [48:0] mul_ln1273_28_reg_640;
reg   [0:0] tmp_210_reg_645;
reg   [0:0] tmp_210_reg_645_pp0_iter3_reg;
wire   [48:0] add_ln1347_fu_380_p2;
reg   [48:0] add_ln1347_reg_650;
reg   [0:0] tmp_208_reg_655;
reg   [31:0] trunc_ln818_23_reg_661;
reg   [0:0] tmp_209_reg_666;
reg   [0:0] tmp_212_reg_672;
wire    ap_block_pp0_stage0;
reg   [3:0] i_fu_68;
wire   [3:0] add_ln24_fu_145_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_i_11;
wire  signed [31:0] mul_ln1273_fu_165_p0;
wire   [15:0] mul_ln1273_fu_165_p1;
wire  signed [31:0] mul_ln1273_28_fu_215_p0;
wire   [16:0] mul_ln1273_28_fu_215_p1;
wire   [31:0] zext_ln377_fu_228_p1;
wire   [31:0] add_ln377_fu_231_p2;
wire   [0:0] tmp_205_fu_236_p3;
wire   [0:0] xor_ln896_64_fu_244_p2;
wire   [0:0] xor_ln888_fu_255_p2;
wire   [0:0] or_ln888_fu_260_p2;
wire   [0:0] tmp_207_fu_271_p3;
wire   [0:0] xor_ln890_fu_278_p2;
wire   [0:0] or_ln890_fu_284_p2;
wire   [0:0] and_ln378_fu_250_p2;
wire   [0:0] xor_ln888_6_fu_266_p2;
wire   [0:0] xor_ln895_fu_300_p2;
wire   [0:0] or_ln895_fu_306_p2;
wire   [0:0] xor_ln895_58_fu_312_p2;
wire   [0:0] and_ln890_fu_290_p2;
wire   [0:0] xor_ln896_67_fu_323_p2;
wire   [0:0] and_ln891_fu_295_p2;
wire   [0:0] or_ln896_fu_329_p2;
wire   [0:0] xor_ln896_fu_335_p2;
wire   [0:0] and_ln895_fu_317_p2;
wire   [0:0] and_ln896_fu_341_p2;
wire   [0:0] or_ln346_fu_346_p2;
wire   [31:0] select_ln346_fu_352_p3;
wire   [31:0] select_ln346_52_fu_360_p3;
wire   [47:0] shl_ln838_s_fu_368_p3;
wire  signed [48:0] sext_ln813_fu_376_p1;
wire   [31:0] zext_ln377_25_fu_419_p1;
wire   [31:0] add_ln377_28_fu_422_p2;
wire   [0:0] tmp_211_fu_427_p3;
wire   [0:0] xor_ln896_68_fu_435_p2;
wire   [0:0] xor_ln888_7_fu_446_p2;
wire   [0:0] or_ln888_3_fu_451_p2;
wire   [0:0] tmp_213_fu_462_p3;
wire   [0:0] xor_ln890_31_fu_469_p2;
wire   [0:0] or_ln890_3_fu_475_p2;
wire   [0:0] and_ln378_28_fu_441_p2;
wire   [0:0] xor_ln888_8_fu_457_p2;
wire   [0:0] xor_ln895_59_fu_491_p2;
wire   [0:0] or_ln895_25_fu_497_p2;
wire   [0:0] xor_ln895_60_fu_503_p2;
wire   [0:0] and_ln890_24_fu_481_p2;
wire   [0:0] xor_ln896_70_fu_514_p2;
wire   [0:0] and_ln891_25_fu_486_p2;
wire   [0:0] or_ln896_25_fu_520_p2;
wire   [0:0] xor_ln896_85_fu_526_p2;
wire   [0:0] and_ln895_28_fu_508_p2;
wire   [0:0] and_ln896_28_fu_532_p2;
wire   [0:0] or_ln346_28_fu_545_p2;
wire   [31:0] select_ln346_53_fu_537_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire   [48:0] mul_ln1273_28_fu_215_p10;
wire   [47:0] mul_ln1273_fu_165_p10;
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

mpc_mpc_dense_constraint_Pipeline_mvmult_row_D_V_0_ROM_AUTO_1R #(
    .DataWidth( 16 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
D_V_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(D_V_0_address0),
    .ce0(D_V_0_ce0),
    .q0(D_V_0_q0)
);

mpc_mpc_dense_constraint_Pipeline_mvmult_row_D_V_1_ROM_AUTO_1R #(
    .DataWidth( 17 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
D_V_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(D_V_1_address0),
    .ce0(D_V_1_ce0),
    .q0(D_V_1_q0)
);

mpc_mul_32s_16ns_48_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 48 ))
mul_32s_16ns_48_1_1_U13(
    .din0(mul_ln1273_fu_165_p0),
    .din1(mul_ln1273_fu_165_p1),
    .dout(mul_ln1273_fu_165_p2)
);

mpc_mul_32s_17ns_49_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 17 ),
    .dout_WIDTH( 49 ))
mul_32s_17ns_49_1_1_U14(
    .din0(mul_ln1273_28_fu_215_p0),
    .din1(mul_ln1273_28_fu_215_p1),
    .dout(mul_ln1273_28_fu_215_p2)
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
        if (((icmp_ln24_fu_139_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_68 <= add_ln24_fu_145_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_68 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        D_V_0_load_reg_596 <= D_V_0_q0;
        D_V_1_load_reg_601 <= D_V_1_q0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_cast_reg_581_pp0_iter1_reg[3 : 0] <= i_cast_reg_581[3 : 0];
        sext_ln1271_28_cast_reg_572 <= sext_ln1271_28_cast_fu_127_p1;
        x0_load_cast_cast_reg_567 <= x0_load_cast_cast_fu_123_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln1347_reg_650 <= add_ln1347_fu_380_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        i_cast_reg_581_pp0_iter2_reg[3 : 0] <= i_cast_reg_581_pp0_iter1_reg[3 : 0];
        i_cast_reg_581_pp0_iter3_reg[3 : 0] <= i_cast_reg_581_pp0_iter2_reg[3 : 0];
        mul_ln1273_28_reg_640 <= mul_ln1273_28_fu_215_p2;
        mul_ln1273_reg_606 <= mul_ln1273_fu_165_p2;
        tmp_203_reg_622 <= mul_ln1273_fu_165_p2[32'd47];
        tmp_204_reg_628 <= mul_ln1273_fu_165_p2[32'd15];
        tmp_206_reg_633 <= mul_ln1273_fu_165_p2[32'd47];
        tmp_208_reg_655 <= add_ln1347_fu_380_p2[32'd48];
        tmp_209_reg_666 <= add_ln1347_fu_380_p2[32'd47];
        tmp_210_reg_645 <= mul_ln1273_28_fu_215_p2[32'd15];
        tmp_210_reg_645_pp0_iter3_reg <= tmp_210_reg_645;
        tmp_212_reg_672 <= add_ln1347_fu_380_p2[32'd48];
        tmp_reg_611 <= mul_ln1273_fu_165_p2[32'd47];
        trunc_ln818_23_reg_661 <= {{add_ln1347_fu_380_p2[47:16]}};
        trunc_ln818_s_reg_617 <= {{mul_ln1273_fu_165_p2[47:16]}};
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln24_fu_139_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_cast_reg_581[3 : 0] <= i_cast_fu_151_p1[3 : 0];
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        D_V_0_ce0 = 1'b1;
    end else begin
        D_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        D_V_1_ce0 = 1'b1;
    end else begin
        D_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln24_fu_139_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_11 = 4'd0;
    end else begin
        ap_sig_allocacmp_i_11 = i_fu_68;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        temp_V_ce0 = 1'b1;
    end else begin
        temp_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
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

assign D_V_0_address0 = i_cast_fu_151_p1;

assign D_V_1_address0 = i_cast_fu_151_p1;

assign add_ln1347_fu_380_p2 = ($signed(sext_ln813_fu_376_p1) + $signed(mul_ln1273_28_reg_640));

assign add_ln24_fu_145_p2 = (ap_sig_allocacmp_i_11 + 4'd1);

assign add_ln377_28_fu_422_p2 = (zext_ln377_25_fu_419_p1 + trunc_ln818_23_reg_661);

assign add_ln377_fu_231_p2 = (zext_ln377_fu_228_p1 + trunc_ln818_s_reg_617);

assign and_ln378_28_fu_441_p2 = (xor_ln896_68_fu_435_p2 & tmp_209_reg_666);

assign and_ln378_fu_250_p2 = (xor_ln896_64_fu_244_p2 & tmp_203_reg_622);

assign and_ln890_24_fu_481_p2 = (tmp_212_reg_672 & or_ln890_3_fu_475_p2);

assign and_ln890_fu_290_p2 = (tmp_206_reg_633 & or_ln890_fu_284_p2);

assign and_ln891_25_fu_486_p2 = (tmp_212_reg_672 & and_ln378_28_fu_441_p2);

assign and_ln891_fu_295_p2 = (tmp_206_reg_633 & and_ln378_fu_250_p2);

assign and_ln895_28_fu_508_p2 = (xor_ln895_60_fu_503_p2 & or_ln895_25_fu_497_p2);

assign and_ln895_fu_317_p2 = (xor_ln895_58_fu_312_p2 & or_ln895_fu_306_p2);

assign and_ln896_28_fu_532_p2 = (xor_ln896_85_fu_526_p2 & tmp_208_reg_655);

assign and_ln896_fu_341_p2 = (xor_ln896_fu_335_p2 & tmp_reg_611);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

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

assign i_cast_fu_151_p1 = ap_sig_allocacmp_i_11;

assign icmp_ln24_fu_139_p2 = ((ap_sig_allocacmp_i_11 == 4'd8) ? 1'b1 : 1'b0);

assign mul_ln1273_28_fu_215_p0 = x0_load_cast_cast_reg_567;

assign mul_ln1273_28_fu_215_p1 = mul_ln1273_28_fu_215_p10;

assign mul_ln1273_28_fu_215_p10 = D_V_1_load_reg_601;

assign mul_ln1273_fu_165_p0 = sext_ln1271_28_cast_reg_572;

assign mul_ln1273_fu_165_p1 = mul_ln1273_fu_165_p10;

assign mul_ln1273_fu_165_p10 = D_V_0_load_reg_596;

assign or_ln346_28_fu_545_p2 = (and_ln896_28_fu_532_p2 | and_ln895_28_fu_508_p2);

assign or_ln346_fu_346_p2 = (and_ln896_fu_341_p2 | and_ln895_fu_317_p2);

assign or_ln888_3_fu_451_p2 = (xor_ln888_7_fu_446_p2 | tmp_211_fu_427_p3);

assign or_ln888_fu_260_p2 = (xor_ln888_fu_255_p2 | tmp_205_fu_236_p3);

assign or_ln890_3_fu_475_p2 = (xor_ln890_31_fu_469_p2 | or_ln888_3_fu_451_p2);

assign or_ln890_fu_284_p2 = (xor_ln890_fu_278_p2 | or_ln888_fu_260_p2);

assign or_ln895_25_fu_497_p2 = (xor_ln895_59_fu_491_p2 | tmp_211_fu_427_p3);

assign or_ln895_fu_306_p2 = (xor_ln895_fu_300_p2 | tmp_205_fu_236_p3);

assign or_ln896_25_fu_520_p2 = (xor_ln896_70_fu_514_p2 | xor_ln896_68_fu_435_p2);

assign or_ln896_fu_329_p2 = (xor_ln896_67_fu_323_p2 | xor_ln896_64_fu_244_p2);

assign select_ln346_52_fu_360_p3 = ((or_ln346_fu_346_p2[0:0] == 1'b1) ? select_ln346_fu_352_p3 : add_ln377_fu_231_p2);

assign select_ln346_53_fu_537_p3 = ((and_ln895_28_fu_508_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_fu_352_p3 = ((and_ln895_fu_317_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign sext_ln1271_28_cast_fu_127_p1 = $signed(sext_ln1271_28);

assign sext_ln813_fu_376_p1 = $signed(shl_ln838_s_fu_368_p3);

assign shl_ln838_s_fu_368_p3 = {{select_ln346_52_fu_360_p3}, {16'd0}};

assign temp_V_address0 = i_cast_reg_581_pp0_iter3_reg;

assign temp_V_d0 = ((or_ln346_28_fu_545_p2[0:0] == 1'b1) ? select_ln346_53_fu_537_p3 : add_ln377_28_fu_422_p2);

assign tmp_205_fu_236_p3 = add_ln377_fu_231_p2[32'd31];

assign tmp_207_fu_271_p3 = mul_ln1273_reg_606[32'd47];

assign tmp_211_fu_427_p3 = add_ln377_28_fu_422_p2[32'd31];

assign tmp_213_fu_462_p3 = add_ln1347_reg_650[32'd48];

assign x0_load_cast_cast_fu_123_p1 = $signed(x0_load_cast);

assign xor_ln888_6_fu_266_p2 = (tmp_206_reg_633 ^ or_ln888_fu_260_p2);

assign xor_ln888_7_fu_446_p2 = (tmp_209_reg_666 ^ 1'd1);

assign xor_ln888_8_fu_457_p2 = (tmp_212_reg_672 ^ or_ln888_3_fu_451_p2);

assign xor_ln888_fu_255_p2 = (tmp_203_reg_622 ^ 1'd1);

assign xor_ln890_31_fu_469_p2 = (tmp_213_fu_462_p3 ^ 1'd1);

assign xor_ln890_fu_278_p2 = (tmp_207_fu_271_p3 ^ 1'd1);

assign xor_ln895_58_fu_312_p2 = (tmp_reg_611 ^ 1'd1);

assign xor_ln895_59_fu_491_p2 = (xor_ln888_8_fu_457_p2 ^ 1'd1);

assign xor_ln895_60_fu_503_p2 = (tmp_208_reg_655 ^ 1'd1);

assign xor_ln895_fu_300_p2 = (xor_ln888_6_fu_266_p2 ^ 1'd1);

assign xor_ln896_64_fu_244_p2 = (tmp_205_fu_236_p3 ^ 1'd1);

assign xor_ln896_67_fu_323_p2 = (1'd1 ^ and_ln890_fu_290_p2);

assign xor_ln896_68_fu_435_p2 = (tmp_211_fu_427_p3 ^ 1'd1);

assign xor_ln896_70_fu_514_p2 = (1'd1 ^ and_ln890_24_fu_481_p2);

assign xor_ln896_85_fu_526_p2 = (or_ln896_25_fu_520_p2 ^ and_ln891_25_fu_486_p2);

assign xor_ln896_fu_335_p2 = (or_ln896_fu_329_p2 ^ and_ln891_fu_295_p2);

assign zext_ln377_25_fu_419_p1 = tmp_210_reg_645_pp0_iter3_reg;

assign zext_ln377_fu_228_p1 = tmp_204_reg_628;

always @ (posedge ap_clk) begin
    i_cast_reg_581[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    i_cast_reg_581_pp0_iter1_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    i_cast_reg_581_pp0_iter2_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    i_cast_reg_581_pp0_iter3_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end

endmodule //mpc_mpc_dense_constraint_Pipeline_mvmult_row
