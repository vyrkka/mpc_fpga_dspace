module mpc_mpc_dense_constraint_Pipeline_vmmult_column (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        sext_ln1271,
        sext_ln1271_1,
        qt_06_out,
        qt_06_out_ap_vld,
        qt16_05_out,
        qt16_05_out_ap_vld,
        qt2_04_out,
        qt2_04_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [20:0] sext_ln1271;
input  [20:0] sext_ln1271_1;
output  [20:0] qt_06_out;
output   qt_06_out_ap_vld;
output  [20:0] qt16_05_out;
output   qt16_05_out_ap_vld;
output  [20:0] qt2_04_out;
output   qt2_04_out_ap_vld;

reg ap_idle;
reg qt_06_out_ap_vld;
reg qt16_05_out_ap_vld;
reg qt2_04_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln21_fu_175_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire  signed [41:0] sext_ln1271_1_cast_fu_159_p1;
reg  signed [41:0] sext_ln1271_1_cast_reg_791;
reg   [1:0] j_1_reg_796;
reg   [1:0] j_1_reg_796_pp0_iter1_reg;
reg   [0:0] icmp_ln21_reg_802;
wire   [41:0] mul_ln1273_fu_203_p2;
reg   [41:0] mul_ln1273_reg_806;
reg   [0:0] tmp_616_reg_811;
reg   [20:0] trunc_ln_reg_817;
reg   [0:0] tmp_617_reg_822;
reg   [0:0] tmp_618_reg_827;
wire   [0:0] icmp_ln1019_fu_253_p2;
reg   [0:0] icmp_ln1019_reg_832;
wire   [0:0] icmp_ln1019_1_fu_269_p2;
reg   [0:0] icmp_ln1019_1_reg_837;
wire   [0:0] icmp_ln878_fu_275_p2;
reg   [0:0] icmp_ln878_reg_844;
wire   [20:0] tmp_fu_281_p5;
reg   [20:0] tmp_reg_849;
wire  signed [34:0] shl_ln_fu_437_p3;
reg  signed [34:0] shl_ln_reg_854;
wire   [35:0] trunc_ln1347_1_fu_457_p1;
reg   [35:0] trunc_ln1347_1_reg_859;
reg   [0:0] tmp_621_reg_864;
reg   [20:0] trunc_ln818_s_reg_870;
reg   [0:0] tmp_622_reg_875;
reg   [0:0] tmp_623_reg_880;
reg   [6:0] tmp_3_reg_885;
reg   [7:0] tmp_6_s_reg_890;
reg   [1:0] j_fu_110;
wire   [1:0] add_ln21_fu_181_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_j_1;
wire    ap_block_pp0_stage0;
reg   [20:0] qt2_04_fu_114;
wire   [20:0] select_ln1420_2_fu_728_p3;
reg   [20:0] qt16_05_fu_118;
wire   [20:0] select_ln1420_1_fu_714_p3;
reg   [20:0] qt_06_fu_122;
wire   [20:0] select_ln1420_fu_701_p3;
wire    ap_block_pp0_stage0_01001;
wire   [20:0] tmp_1_fu_187_p5;
wire   [20:0] mul_ln1273_fu_203_p0;
wire   [5:0] tmp_s_fu_243_p4;
wire   [6:0] tmp_2_fu_259_p4;
wire   [20:0] zext_ln377_fu_298_p1;
wire   [20:0] add_ln377_fu_301_p2;
wire   [0:0] tmp_619_fu_306_p3;
wire   [0:0] xor_ln896_fu_314_p2;
wire   [0:0] and_ln378_fu_320_p2;
wire   [0:0] tmp_620_fu_331_p3;
wire   [0:0] xor_ln890_fu_338_p2;
wire   [0:0] and_ln890_fu_344_p2;
wire   [0:0] select_ln888_fu_325_p3;
wire   [0:0] xor_ln895_fu_361_p2;
wire   [0:0] or_ln895_fu_367_p2;
wire   [0:0] xor_ln895_234_fu_373_p2;
wire   [0:0] select_ln890_fu_349_p3;
wire   [0:0] xor_ln896_169_fu_384_p2;
wire   [0:0] and_ln891_fu_356_p2;
wire   [0:0] or_ln896_fu_390_p2;
wire   [0:0] xor_ln896_194_fu_396_p2;
wire   [0:0] and_ln895_fu_378_p2;
wire   [0:0] and_ln896_fu_402_p2;
wire   [20:0] mul_ln1273_57_fu_416_p0;
wire  signed [20:0] mul_ln1273_57_fu_416_p1;
wire   [0:0] or_ln346_fu_407_p2;
wire   [20:0] select_ln346_fu_421_p3;
wire   [20:0] select_ln346_284_fu_429_p3;
wire  signed [41:0] mul_ln1273_57_fu_416_p2;
wire  signed [42:0] sext_ln813_195_fu_445_p1;
wire  signed [42:0] sext_ln813_fu_449_p1;
wire   [34:0] trunc_ln1347_fu_453_p1;
wire   [42:0] add_ln1347_fu_461_p2;
wire   [34:0] add_ln810_39_fu_467_p2;
wire  signed [35:0] sext_ln1347_fu_536_p1;
wire   [20:0] zext_ln377_63_fu_544_p1;
wire   [20:0] add_ln377_63_fu_547_p2;
wire   [0:0] tmp_624_fu_552_p3;
wire   [0:0] xor_ln896_170_fu_560_p2;
wire   [0:0] and_ln378_63_fu_566_p2;
wire   [0:0] icmp_ln1019_3_fu_576_p2;
wire   [0:0] icmp_ln878_1_fu_581_p2;
wire   [35:0] add_ln810_fu_539_p2;
wire   [0:0] tmp_625_fu_594_p3;
wire   [0:0] icmp_ln1019_2_fu_571_p2;
wire   [0:0] xor_ln890_63_fu_602_p2;
wire   [0:0] and_ln890_1_fu_608_p2;
wire   [0:0] select_ln888_1_fu_586_p3;
wire   [0:0] xor_ln895_235_fu_628_p2;
wire   [0:0] or_ln895_1_fu_634_p2;
wire   [0:0] xor_ln895_236_fu_640_p2;
wire   [0:0] select_ln890_1_fu_614_p3;
wire   [0:0] xor_ln896_173_fu_651_p2;
wire   [0:0] and_ln891_1_fu_622_p2;
wire   [0:0] or_ln896_1_fu_657_p2;
wire   [0:0] xor_ln896_195_fu_663_p2;
wire   [0:0] and_ln895_179_fu_645_p2;
wire   [0:0] and_ln896_73_fu_669_p2;
wire   [0:0] or_ln346_68_fu_682_p2;
wire   [20:0] select_ln346_285_fu_674_p3;
wire   [0:0] icmp_ln1420_fu_696_p2;
wire   [20:0] select_ln346_286_fu_688_p3;
wire   [0:0] icmp_ln1420_1_fu_709_p2;
wire   [0:0] or_ln1420_fu_722_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire   [41:0] mul_ln1273_57_fu_416_p00;
wire   [41:0] mul_ln1273_fu_203_p00;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
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
mux_32_21_1_1_U1(
    .din0(21'd1037),
    .din1(21'd1026),
    .din2(21'd1014),
    .din3(ap_sig_allocacmp_j_1),
    .dout(tmp_1_fu_187_p5)
);

mpc_mul_21ns_21s_42_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 21 ),
    .dout_WIDTH( 42 ))
mul_21ns_21s_42_1_1_U2(
    .din0(mul_ln1273_fu_203_p0),
    .din1(sext_ln1271),
    .dout(mul_ln1273_fu_203_p2)
);

mpc_mux_32_21_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 21 ),
    .din2_WIDTH( 21 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 21 ))
mux_32_21_1_1_U3(
    .din0(21'd30517),
    .din1(21'd30032),
    .din2(21'd29549),
    .din3(ap_sig_allocacmp_j_1),
    .dout(tmp_fu_281_p5)
);

mpc_mul_21ns_21s_42_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 21 ),
    .dout_WIDTH( 42 ))
mul_21ns_21s_42_1_1_U4(
    .din0(mul_ln1273_57_fu_416_p0),
    .din1(mul_ln1273_57_fu_416_p1),
    .dout(mul_ln1273_57_fu_416_p2)
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln21_fu_175_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_110 <= add_ln21_fu_181_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_110 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln21_reg_802 <= icmp_ln21_fu_175_p2;
        j_1_reg_796 <= ap_sig_allocacmp_j_1;
        j_1_reg_796_pp0_iter1_reg <= j_1_reg_796;
        sext_ln1271_1_cast_reg_791 <= sext_ln1271_1_cast_fu_159_p1;
        shl_ln_reg_854[34 : 14] <= shl_ln_fu_437_p3[34 : 14];
        tmp_3_reg_885 <= {{add_ln1347_fu_461_p2[42:36]}};
        tmp_621_reg_864 <= add_ln1347_fu_461_p2[32'd42];
        tmp_622_reg_875 <= add_ln810_39_fu_467_p2[32'd34];
        tmp_623_reg_880 <= mul_ln1273_57_fu_416_p2[32'd13];
        tmp_6_s_reg_890 <= {{add_ln1347_fu_461_p2[42:35]}};
        trunc_ln1347_1_reg_859 <= trunc_ln1347_1_fu_457_p1;
        trunc_ln818_s_reg_870 <= {{add_ln810_39_fu_467_p2[34:14]}};
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln21_fu_175_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln1019_1_reg_837 <= icmp_ln1019_1_fu_269_p2;
        icmp_ln1019_reg_832 <= icmp_ln1019_fu_253_p2;
        icmp_ln878_reg_844 <= icmp_ln878_fu_275_p2;
        mul_ln1273_reg_806 <= mul_ln1273_fu_203_p2;
        tmp_616_reg_811 <= mul_ln1273_fu_203_p2[32'd41];
        tmp_617_reg_822 <= mul_ln1273_fu_203_p2[32'd34];
        tmp_618_reg_827 <= mul_ln1273_fu_203_p2[32'd13];
        tmp_reg_849 <= tmp_fu_281_p5;
        trunc_ln_reg_817 <= {{mul_ln1273_fu_203_p2[34:14]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        qt16_05_fu_118 <= select_ln1420_1_fu_714_p3;
        qt2_04_fu_114 <= select_ln1420_2_fu_728_p3;
        qt_06_fu_122 <= select_ln1420_fu_701_p3;
    end
end

always @ (*) begin
    if (((icmp_ln21_fu_175_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_j_1 = 2'd0;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_110;
    end
end

always @ (*) begin
    if (((icmp_ln21_reg_802 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        qt16_05_out_ap_vld = 1'b1;
    end else begin
        qt16_05_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln21_reg_802 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        qt2_04_out_ap_vld = 1'b1;
    end else begin
        qt2_04_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln21_reg_802 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        qt_06_out_ap_vld = 1'b1;
    end else begin
        qt_06_out_ap_vld = 1'b0;
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

assign add_ln1347_fu_461_p2 = ($signed(sext_ln813_195_fu_445_p1) + $signed(sext_ln813_fu_449_p1));

assign add_ln21_fu_181_p2 = (ap_sig_allocacmp_j_1 + 2'd1);

assign add_ln377_63_fu_547_p2 = (zext_ln377_63_fu_544_p1 + trunc_ln818_s_reg_870);

assign add_ln377_fu_301_p2 = (zext_ln377_fu_298_p1 + trunc_ln_reg_817);

assign add_ln810_39_fu_467_p2 = ($signed(shl_ln_fu_437_p3) + $signed(trunc_ln1347_fu_453_p1));

assign add_ln810_fu_539_p2 = ($signed(sext_ln1347_fu_536_p1) + $signed(trunc_ln1347_1_reg_859));

assign and_ln378_63_fu_566_p2 = (xor_ln896_170_fu_560_p2 & tmp_622_reg_875);

assign and_ln378_fu_320_p2 = (xor_ln896_fu_314_p2 & tmp_617_reg_822);

assign and_ln890_1_fu_608_p2 = (xor_ln890_63_fu_602_p2 & icmp_ln1019_2_fu_571_p2);

assign and_ln890_fu_344_p2 = (xor_ln890_fu_338_p2 & icmp_ln1019_reg_832);

assign and_ln891_1_fu_622_p2 = (icmp_ln1019_3_fu_576_p2 & and_ln378_63_fu_566_p2);

assign and_ln891_fu_356_p2 = (icmp_ln1019_1_reg_837 & and_ln378_fu_320_p2);

assign and_ln895_179_fu_645_p2 = (xor_ln895_236_fu_640_p2 & or_ln895_1_fu_634_p2);

assign and_ln895_fu_378_p2 = (xor_ln895_234_fu_373_p2 & or_ln895_fu_367_p2);

assign and_ln896_73_fu_669_p2 = (xor_ln896_195_fu_663_p2 & tmp_621_reg_864);

assign and_ln896_fu_402_p2 = (xor_ln896_194_fu_396_p2 & tmp_616_reg_811);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln1019_1_fu_269_p2 = ((tmp_2_fu_259_p4 == 7'd127) ? 1'b1 : 1'b0);

assign icmp_ln1019_2_fu_571_p2 = ((tmp_3_reg_885 == 7'd127) ? 1'b1 : 1'b0);

assign icmp_ln1019_3_fu_576_p2 = ((tmp_6_s_reg_890 == 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln1019_fu_253_p2 = ((tmp_s_fu_243_p4 == 6'd63) ? 1'b1 : 1'b0);

assign icmp_ln1420_1_fu_709_p2 = ((j_1_reg_796_pp0_iter1_reg == 2'd1) ? 1'b1 : 1'b0);

assign icmp_ln1420_fu_696_p2 = ((j_1_reg_796_pp0_iter1_reg == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln21_fu_175_p2 = ((ap_sig_allocacmp_j_1 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln878_1_fu_581_p2 = ((tmp_6_s_reg_890 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln878_fu_275_p2 = ((tmp_2_fu_259_p4 == 7'd0) ? 1'b1 : 1'b0);

assign mul_ln1273_57_fu_416_p0 = mul_ln1273_57_fu_416_p00;

assign mul_ln1273_57_fu_416_p00 = tmp_reg_849;

assign mul_ln1273_57_fu_416_p1 = sext_ln1271_1_cast_reg_791;

assign mul_ln1273_fu_203_p0 = mul_ln1273_fu_203_p00;

assign mul_ln1273_fu_203_p00 = tmp_1_fu_187_p5;

assign or_ln1420_fu_722_p2 = (icmp_ln1420_fu_696_p2 | icmp_ln1420_1_fu_709_p2);

assign or_ln346_68_fu_682_p2 = (and_ln896_73_fu_669_p2 | and_ln895_179_fu_645_p2);

assign or_ln346_fu_407_p2 = (and_ln896_fu_402_p2 | and_ln895_fu_378_p2);

assign or_ln895_1_fu_634_p2 = (xor_ln895_235_fu_628_p2 | tmp_624_fu_552_p3);

assign or_ln895_fu_367_p2 = (xor_ln895_fu_361_p2 | tmp_619_fu_306_p3);

assign or_ln896_1_fu_657_p2 = (xor_ln896_173_fu_651_p2 | xor_ln896_170_fu_560_p2);

assign or_ln896_fu_390_p2 = (xor_ln896_fu_314_p2 | xor_ln896_169_fu_384_p2);

assign qt16_05_out = qt16_05_fu_118;

assign qt2_04_out = qt2_04_fu_114;

assign qt_06_out = qt_06_fu_122;

assign select_ln1420_1_fu_714_p3 = ((icmp_ln1420_1_fu_709_p2[0:0] == 1'b1) ? select_ln346_286_fu_688_p3 : qt16_05_fu_118);

assign select_ln1420_2_fu_728_p3 = ((or_ln1420_fu_722_p2[0:0] == 1'b1) ? qt2_04_fu_114 : select_ln346_286_fu_688_p3);

assign select_ln1420_fu_701_p3 = ((icmp_ln1420_fu_696_p2[0:0] == 1'b1) ? select_ln346_286_fu_688_p3 : qt_06_fu_122);

assign select_ln346_284_fu_429_p3 = ((or_ln346_fu_407_p2[0:0] == 1'b1) ? select_ln346_fu_421_p3 : add_ln377_fu_301_p2);

assign select_ln346_285_fu_674_p3 = ((and_ln895_179_fu_645_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln346_286_fu_688_p3 = ((or_ln346_68_fu_682_p2[0:0] == 1'b1) ? select_ln346_285_fu_674_p3 : add_ln377_63_fu_547_p2);

assign select_ln346_fu_421_p3 = ((and_ln895_fu_378_p2[0:0] == 1'b1) ? 21'd1048575 : 21'd1048576);

assign select_ln888_1_fu_586_p3 = ((and_ln378_63_fu_566_p2[0:0] == 1'b1) ? icmp_ln1019_3_fu_576_p2 : icmp_ln878_1_fu_581_p2);

assign select_ln888_fu_325_p3 = ((and_ln378_fu_320_p2[0:0] == 1'b1) ? icmp_ln1019_1_reg_837 : icmp_ln878_reg_844);

assign select_ln890_1_fu_614_p3 = ((and_ln378_63_fu_566_p2[0:0] == 1'b1) ? and_ln890_1_fu_608_p2 : icmp_ln1019_3_fu_576_p2);

assign select_ln890_fu_349_p3 = ((and_ln378_fu_320_p2[0:0] == 1'b1) ? and_ln890_fu_344_p2 : icmp_ln1019_1_reg_837);

assign sext_ln1271_1_cast_fu_159_p1 = $signed(sext_ln1271_1);

assign sext_ln1347_fu_536_p1 = shl_ln_reg_854;

assign sext_ln813_195_fu_445_p1 = shl_ln_fu_437_p3;

assign sext_ln813_fu_449_p1 = mul_ln1273_57_fu_416_p2;

assign shl_ln_fu_437_p3 = {{select_ln346_284_fu_429_p3}, {14'd0}};

assign tmp_2_fu_259_p4 = {{mul_ln1273_fu_203_p2[41:35]}};

assign tmp_619_fu_306_p3 = add_ln377_fu_301_p2[32'd20];

assign tmp_620_fu_331_p3 = mul_ln1273_reg_806[32'd35];

assign tmp_624_fu_552_p3 = add_ln377_63_fu_547_p2[32'd20];

assign tmp_625_fu_594_p3 = add_ln810_fu_539_p2[32'd35];

assign tmp_s_fu_243_p4 = {{mul_ln1273_fu_203_p2[41:36]}};

assign trunc_ln1347_1_fu_457_p1 = mul_ln1273_57_fu_416_p2[35:0];

assign trunc_ln1347_fu_453_p1 = mul_ln1273_57_fu_416_p2[34:0];

assign xor_ln890_63_fu_602_p2 = (tmp_625_fu_594_p3 ^ 1'd1);

assign xor_ln890_fu_338_p2 = (tmp_620_fu_331_p3 ^ 1'd1);

assign xor_ln895_234_fu_373_p2 = (tmp_616_reg_811 ^ 1'd1);

assign xor_ln895_235_fu_628_p2 = (select_ln888_1_fu_586_p3 ^ 1'd1);

assign xor_ln895_236_fu_640_p2 = (tmp_621_reg_864 ^ 1'd1);

assign xor_ln895_fu_361_p2 = (select_ln888_fu_325_p3 ^ 1'd1);

assign xor_ln896_169_fu_384_p2 = (select_ln890_fu_349_p3 ^ 1'd1);

assign xor_ln896_170_fu_560_p2 = (tmp_624_fu_552_p3 ^ 1'd1);

assign xor_ln896_173_fu_651_p2 = (select_ln890_1_fu_614_p3 ^ 1'd1);

assign xor_ln896_194_fu_396_p2 = (or_ln896_fu_390_p2 ^ and_ln891_fu_356_p2);

assign xor_ln896_195_fu_663_p2 = (or_ln896_1_fu_657_p2 ^ and_ln891_1_fu_622_p2);

assign xor_ln896_fu_314_p2 = (tmp_619_fu_306_p3 ^ 1'd1);

assign zext_ln377_63_fu_544_p1 = tmp_623_reg_880;

assign zext_ln377_fu_298_p1 = tmp_618_reg_827;

always @ (posedge ap_clk) begin
    shl_ln_reg_854[13:0] <= 14'b00000000000000;
end

endmodule //mpc_mpc_dense_constraint_Pipeline_vmmult_column
