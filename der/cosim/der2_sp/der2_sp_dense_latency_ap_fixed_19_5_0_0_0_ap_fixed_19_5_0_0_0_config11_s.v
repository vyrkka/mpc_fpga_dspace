module der2_sp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_ce,
        p_read,
        p_read1,
        p_read2,
        ap_return_0,
        ap_return_1
);

parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   ap_ce;
input  [18:0] p_read;
input  [18:0] p_read1;
input  [18:0] p_read2;
output  [18:0] ap_return_0;
output  [18:0] ap_return_1;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
reg    ap_block_pp0_stage1_subdone;
wire   [18:0] p_Val2_484_fu_186_p2;
reg   [18:0] p_Val2_484_reg_973;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] overflow_fu_302_p2;
reg   [0:0] overflow_reg_978;
wire   [0:0] or_ln346_fu_332_p2;
reg   [0:0] or_ln346_reg_983;
wire  signed [18:0] mult_V_110_fu_527_p3;
reg  signed [18:0] mult_V_110_reg_988;
wire   [18:0] mult_V_fu_542_p3;
reg   [18:0] mult_V_reg_994;
wire    ap_block_pp0_stage1_11001;
wire   [18:0] p_Val2_490_fu_591_p2;
reg   [18:0] p_Val2_490_reg_999;
wire   [0:0] overflow_164_fu_715_p2;
reg   [0:0] overflow_164_reg_1004;
wire   [0:0] or_ln346_81_fu_745_p2;
reg   [0:0] or_ln346_81_reg_1009;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_block_pp0_stage0_subdone;
reg   [18:0] ap_port_reg_p_read2;
reg  signed [18:0] grp_fu_104_p0;
wire  signed [34:0] sext_ln70_fu_143_p1;
wire  signed [35:0] sext_ln70_60_fu_548_p1;
reg   [16:0] grp_fu_104_p1;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire   [14:0] r_V_108_fu_105_p1;
wire   [34:0] p_Result_s_fu_148_p1;
wire   [35:0] grp_fu_104_p2;
wire   [34:0] p_Val2_483_fu_156_p1;
wire   [34:0] p_Result_412_fu_166_p1;
wire   [34:0] tmp_660_fu_174_p1;
wire   [0:0] tmp_660_fu_174_p3;
wire   [18:0] zext_ln377_fu_182_p1;
wire   [18:0] p_Val2_483_fu_156_p4;
wire   [0:0] p_Result_413_fu_192_p3;
wire   [0:0] p_Result_412_fu_166_p3;
wire   [0:0] xor_ln896_fu_200_p2;
wire   [34:0] Range2_all_ones_fu_212_p1;
wire   [34:0] tmp_fu_220_p1;
wire   [1:0] tmp_fu_220_p4;
wire   [0:0] carry_162_fu_206_p2;
wire   [0:0] Range1_all_ones_fu_230_p2;
wire   [0:0] Range1_all_zeros_fu_236_p2;
wire   [34:0] tmp_663_fu_250_p1;
wire   [0:0] tmp_663_fu_250_p3;
wire   [0:0] Range2_all_ones_fu_212_p3;
wire   [0:0] xor_ln890_fu_258_p2;
wire   [0:0] and_ln890_fu_264_p2;
wire   [0:0] deleted_zeros_fu_242_p3;
wire   [0:0] xor_ln895_fu_284_p2;
wire   [0:0] p_Result_s_fu_148_p3;
wire   [0:0] or_ln895_fu_290_p2;
wire   [0:0] xor_ln895_246_fu_296_p2;
wire   [0:0] deleted_ones_fu_270_p3;
wire   [0:0] xor_ln896_246_fu_308_p2;
wire   [0:0] and_ln891_fu_278_p2;
wire   [0:0] or_ln896_fu_314_p2;
wire   [0:0] xor_ln896_268_fu_320_p2;
wire   [0:0] underflow_fu_326_p2;
wire   [33:0] r_V_108_fu_105_p2;
wire   [0:0] tmp_666_fu_369_p3;
wire   [18:0] zext_ln377_80_fu_377_p1;
wire   [18:0] p_Val2_486_fu_351_p4;
wire   [18:0] p_Val2_487_fu_381_p2;
wire   [0:0] p_Result_416_fu_387_p3;
wire   [0:0] p_Result_415_fu_361_p3;
wire   [0:0] xor_ln896_247_fu_395_p2;
wire   [0:0] xor_ln888_fu_415_p2;
wire   [0:0] Range2_all_ones_86_fu_407_p3;
wire   [0:0] or_ln888_fu_421_p2;
wire   [0:0] tmp_669_fu_433_p3;
wire   [0:0] xor_ln890_80_fu_441_p2;
wire   [0:0] or_ln890_fu_447_p2;
wire   [0:0] carry_164_fu_401_p2;
wire   [0:0] deleted_zeros_79_fu_427_p2;
wire   [0:0] xor_ln895_247_fu_465_p2;
wire   [0:0] p_Result_414_fu_343_p3;
wire   [0:0] or_ln895_80_fu_471_p2;
wire   [0:0] xor_ln895_248_fu_477_p2;
wire   [0:0] deleted_ones_163_fu_453_p2;
wire   [0:0] xor_ln896_248_fu_489_p2;
wire   [0:0] and_ln891_80_fu_459_p2;
wire   [0:0] or_ln896_80_fu_495_p2;
wire   [0:0] xor_ln896_269_fu_501_p2;
wire   [0:0] overflow_163_fu_483_p2;
wire   [0:0] underflow_163_fu_507_p2;
wire   [0:0] or_ln346_80_fu_521_p2;
wire   [18:0] select_ln346_fu_513_p3;
wire   [18:0] select_ln346_121_fu_535_p3;
wire   [0:0] tmp_672_fu_579_p3;
wire   [18:0] zext_ln377_81_fu_587_p1;
wire   [18:0] p_Val2_489_fu_561_p4;
wire   [0:0] p_Result_419_fu_597_p3;
wire   [0:0] p_Result_418_fu_571_p3;
wire   [0:0] xor_ln896_249_fu_605_p2;
wire   [1:0] tmp_s_fu_617_p4;
wire   [2:0] tmp_1_fu_633_p4;
wire   [0:0] carry_166_fu_611_p2;
wire   [0:0] Range1_all_ones_164_fu_643_p2;
wire   [0:0] Range1_all_zeros_2_fu_649_p2;
wire   [0:0] tmp_674_fu_663_p3;
wire   [0:0] Range2_all_ones_85_fu_627_p2;
wire   [0:0] xor_ln890_81_fu_671_p2;
wire   [0:0] and_ln890_7_fu_677_p2;
wire   [0:0] deleted_zeros_80_fu_655_p3;
wire   [0:0] xor_ln895_249_fu_697_p2;
wire   [0:0] p_Result_417_fu_553_p3;
wire   [0:0] or_ln895_81_fu_703_p2;
wire   [0:0] xor_ln895_250_fu_709_p2;
wire   [0:0] deleted_ones_164_fu_683_p3;
wire   [0:0] xor_ln896_250_fu_721_p2;
wire   [0:0] and_ln891_81_fu_691_p2;
wire   [0:0] or_ln896_81_fu_727_p2;
wire   [0:0] xor_ln896_270_fu_733_p2;
wire   [0:0] underflow_164_fu_739_p2;
wire   [18:0] select_ln346_122_fu_751_p3;
wire  signed [19:0] sext_ln813_fu_764_p1;
wire   [19:0] ret_V_fu_767_p2;
wire   [18:0] p_Val2_493_fu_781_p2;
wire   [0:0] p_Result_420_fu_773_p3;
wire   [0:0] p_Result_421_fu_786_p3;
wire   [0:0] xor_ln895_251_fu_794_p2;
wire   [0:0] xor_ln896_251_fu_806_p2;
wire   [0:0] xor_ln302_fu_818_p2;
wire   [0:0] overflow_165_fu_800_p2;
wire   [0:0] xor_ln302_163_fu_824_p2;
wire   [0:0] underflow_165_fu_812_p2;
wire   [0:0] or_ln302_fu_830_p2;
wire   [18:0] select_ln302_fu_836_p3;
wire   [18:0] select_ln350_fu_844_p3;
wire  signed [18:0] p_Val2_s_fu_852_p3;
wire  signed [18:0] rhs_80_fu_758_p3;
wire  signed [19:0] sext_ln813_143_fu_864_p1;
wire  signed [19:0] sext_ln813_142_fu_860_p1;
wire   [19:0] ret_V_80_fu_868_p2;
wire   [18:0] p_Val2_496_fu_882_p2;
wire   [0:0] p_Result_422_fu_874_p3;
wire   [0:0] p_Result_423_fu_888_p3;
wire   [0:0] xor_ln895_252_fu_896_p2;
wire   [0:0] xor_ln896_252_fu_908_p2;
wire   [0:0] xor_ln302_164_fu_920_p2;
wire   [0:0] overflow_166_fu_902_p2;
wire   [0:0] xor_ln302_165_fu_926_p2;
wire   [0:0] underflow_166_fu_914_p2;
wire   [0:0] or_ln302_80_fu_932_p2;
wire   [18:0] select_ln302_164_fu_938_p3;
wire   [18:0] select_ln350_80_fu_946_p3;
wire   [18:0] p_Val2_497_fu_954_p3;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
end

der2_sp_mul_19s_17ns_36_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 19 ),
    .din1_WIDTH( 17 ),
    .dout_WIDTH( 36 ))
mul_19s_17ns_36_1_1_U93(
    .din0(grp_fu_104_p0),
    .din1(grp_fu_104_p1),
    .dout(grp_fu_104_p2)
);

der2_sp_mul_19s_15ns_34_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 19 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 34 ))
mul_19s_15ns_34_1_1_U94(
    .din0(p_read1),
    .din1(r_V_108_fu_105_p1),
    .dout(r_V_108_fu_105_p2)
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
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_port_reg_p_read2 <= p_read2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mult_V_110_reg_988 <= mult_V_110_fu_527_p3;
        or_ln346_reg_983 <= or_ln346_fu_332_p2;
        overflow_reg_978 <= overflow_fu_302_p2;
        p_Val2_484_reg_973 <= p_Val2_484_fu_186_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mult_V_reg_994 <= mult_V_fu_542_p3;
        or_ln346_81_reg_1009 <= or_ln346_81_fu_745_p2;
        overflow_164_reg_1004 <= overflow_164_fu_715_p2;
        p_Val2_490_reg_999 <= p_Val2_490_fu_591_p2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_104_p0 = sext_ln70_60_fu_548_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_104_p0 = sext_ln70_fu_143_p1;
        end else begin
            grp_fu_104_p0 = 'bx;
        end
    end else begin
        grp_fu_104_p0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_104_p1 = 36'd43706;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_104_p1 = 35'd30473;
        end else begin
            grp_fu_104_p1 = 'bx;
        end
    end else begin
        grp_fu_104_p1 = 'bx;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (ap_reset_idle_pp0 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((ap_reset_idle_pp0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Range1_all_ones_164_fu_643_p2 = ((tmp_1_fu_633_p4 == 3'd7) ? 1'b1 : 1'b0);

assign Range1_all_ones_fu_230_p2 = ((tmp_fu_220_p4 == 2'd3) ? 1'b1 : 1'b0);

assign Range1_all_zeros_2_fu_649_p2 = ((tmp_1_fu_633_p4 == 3'd0) ? 1'b1 : 1'b0);

assign Range1_all_zeros_fu_236_p2 = ((tmp_fu_220_p4 == 2'd0) ? 1'b1 : 1'b0);

assign Range2_all_ones_85_fu_627_p2 = ((tmp_s_fu_617_p4 == 2'd3) ? 1'b1 : 1'b0);

assign Range2_all_ones_86_fu_407_p3 = r_V_108_fu_105_p2[32'd33];

assign Range2_all_ones_fu_212_p1 = grp_fu_104_p2;

assign Range2_all_ones_fu_212_p3 = Range2_all_ones_fu_212_p1[32'd34];

assign and_ln890_7_fu_677_p2 = (xor_ln890_81_fu_671_p2 & Range2_all_ones_85_fu_627_p2);

assign and_ln890_fu_264_p2 = (xor_ln890_fu_258_p2 & Range2_all_ones_fu_212_p3);

assign and_ln891_80_fu_459_p2 = (carry_164_fu_401_p2 & Range2_all_ones_86_fu_407_p3);

assign and_ln891_81_fu_691_p2 = (carry_166_fu_611_p2 & Range1_all_ones_164_fu_643_p2);

assign and_ln891_fu_278_p2 = (carry_162_fu_206_p2 & Range1_all_ones_fu_230_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_subdone = (1'b0 == ap_ce);
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_subdone = (1'b0 == ap_ce);
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_return_0 = p_Val2_497_fu_954_p3;

assign ap_return_1 = mult_V_reg_994;

assign carry_162_fu_206_p2 = (xor_ln896_fu_200_p2 & p_Result_412_fu_166_p3);

assign carry_164_fu_401_p2 = (xor_ln896_247_fu_395_p2 & p_Result_415_fu_361_p3);

assign carry_166_fu_611_p2 = (xor_ln896_249_fu_605_p2 & p_Result_418_fu_571_p3);

assign deleted_ones_163_fu_453_p2 = (or_ln890_fu_447_p2 & Range2_all_ones_86_fu_407_p3);

assign deleted_ones_164_fu_683_p3 = ((carry_166_fu_611_p2[0:0] == 1'b1) ? and_ln890_7_fu_677_p2 : Range1_all_ones_164_fu_643_p2);

assign deleted_ones_fu_270_p3 = ((carry_162_fu_206_p2[0:0] == 1'b1) ? and_ln890_fu_264_p2 : Range1_all_ones_fu_230_p2);

assign deleted_zeros_79_fu_427_p2 = (or_ln888_fu_421_p2 ^ Range2_all_ones_86_fu_407_p3);

assign deleted_zeros_80_fu_655_p3 = ((carry_166_fu_611_p2[0:0] == 1'b1) ? Range1_all_ones_164_fu_643_p2 : Range1_all_zeros_2_fu_649_p2);

assign deleted_zeros_fu_242_p3 = ((carry_162_fu_206_p2[0:0] == 1'b1) ? Range1_all_ones_fu_230_p2 : Range1_all_zeros_fu_236_p2);

assign mult_V_110_fu_527_p3 = ((or_ln346_80_fu_521_p2[0:0] == 1'b1) ? select_ln346_fu_513_p3 : p_Val2_487_fu_381_p2);

assign mult_V_fu_542_p3 = ((or_ln346_reg_983[0:0] == 1'b1) ? select_ln346_121_fu_535_p3 : p_Val2_484_reg_973);

assign or_ln302_80_fu_932_p2 = (xor_ln302_165_fu_926_p2 | overflow_166_fu_902_p2);

assign or_ln302_fu_830_p2 = (xor_ln302_163_fu_824_p2 | overflow_165_fu_800_p2);

assign or_ln346_80_fu_521_p2 = (underflow_163_fu_507_p2 | overflow_163_fu_483_p2);

assign or_ln346_81_fu_745_p2 = (underflow_164_fu_739_p2 | overflow_164_fu_715_p2);

assign or_ln346_fu_332_p2 = (underflow_fu_326_p2 | overflow_fu_302_p2);

assign or_ln888_fu_421_p2 = (xor_ln888_fu_415_p2 | p_Result_416_fu_387_p3);

assign or_ln890_fu_447_p2 = (xor_ln890_80_fu_441_p2 | or_ln888_fu_421_p2);

assign or_ln895_80_fu_471_p2 = (xor_ln895_247_fu_465_p2 | p_Result_416_fu_387_p3);

assign or_ln895_81_fu_703_p2 = (xor_ln895_249_fu_697_p2 | p_Result_419_fu_597_p3);

assign or_ln895_fu_290_p2 = (xor_ln895_fu_284_p2 | p_Result_413_fu_192_p3);

assign or_ln896_80_fu_495_p2 = (xor_ln896_248_fu_489_p2 | xor_ln896_247_fu_395_p2);

assign or_ln896_81_fu_727_p2 = (xor_ln896_250_fu_721_p2 | xor_ln896_249_fu_605_p2);

assign or_ln896_fu_314_p2 = (xor_ln896_fu_200_p2 | xor_ln896_246_fu_308_p2);

assign overflow_163_fu_483_p2 = (xor_ln895_248_fu_477_p2 & or_ln895_80_fu_471_p2);

assign overflow_164_fu_715_p2 = (xor_ln895_250_fu_709_p2 & or_ln895_81_fu_703_p2);

assign overflow_165_fu_800_p2 = (xor_ln895_251_fu_794_p2 & p_Result_421_fu_786_p3);

assign overflow_166_fu_902_p2 = (xor_ln895_252_fu_896_p2 & p_Result_423_fu_888_p3);

assign overflow_fu_302_p2 = (xor_ln895_246_fu_296_p2 & or_ln895_fu_290_p2);

assign p_Result_412_fu_166_p1 = grp_fu_104_p2;

assign p_Result_412_fu_166_p3 = p_Result_412_fu_166_p1[32'd32];

assign p_Result_413_fu_192_p3 = p_Val2_484_fu_186_p2[32'd18];

assign p_Result_414_fu_343_p3 = r_V_108_fu_105_p2[32'd33];

assign p_Result_415_fu_361_p3 = r_V_108_fu_105_p2[32'd32];

assign p_Result_416_fu_387_p3 = p_Val2_487_fu_381_p2[32'd18];

assign p_Result_417_fu_553_p3 = grp_fu_104_p2[32'd35];

assign p_Result_418_fu_571_p3 = grp_fu_104_p2[32'd32];

assign p_Result_419_fu_597_p3 = p_Val2_490_fu_591_p2[32'd18];

assign p_Result_420_fu_773_p3 = ret_V_fu_767_p2[32'd19];

assign p_Result_421_fu_786_p3 = p_Val2_493_fu_781_p2[32'd18];

assign p_Result_422_fu_874_p3 = ret_V_80_fu_868_p2[32'd19];

assign p_Result_423_fu_888_p3 = p_Val2_496_fu_882_p2[32'd18];

assign p_Result_s_fu_148_p1 = grp_fu_104_p2;

assign p_Result_s_fu_148_p3 = p_Result_s_fu_148_p1[32'd34];

assign p_Val2_483_fu_156_p1 = grp_fu_104_p2;

assign p_Val2_483_fu_156_p4 = {{p_Val2_483_fu_156_p1[32:14]}};

assign p_Val2_484_fu_186_p2 = (zext_ln377_fu_182_p1 + p_Val2_483_fu_156_p4);

assign p_Val2_486_fu_351_p4 = {{r_V_108_fu_105_p2[32:14]}};

assign p_Val2_487_fu_381_p2 = (zext_ln377_80_fu_377_p1 + p_Val2_486_fu_351_p4);

assign p_Val2_489_fu_561_p4 = {{grp_fu_104_p2[32:14]}};

assign p_Val2_490_fu_591_p2 = (zext_ln377_81_fu_587_p1 + p_Val2_489_fu_561_p4);

assign p_Val2_493_fu_781_p2 = ($signed(mult_V_110_reg_988) + $signed(19'd523410));

assign p_Val2_496_fu_882_p2 = ($signed(rhs_80_fu_758_p3) + $signed(p_Val2_s_fu_852_p3));

assign p_Val2_497_fu_954_p3 = ((or_ln302_80_fu_932_p2[0:0] == 1'b1) ? select_ln302_164_fu_938_p3 : select_ln350_80_fu_946_p3);

assign p_Val2_s_fu_852_p3 = ((or_ln302_fu_830_p2[0:0] == 1'b1) ? select_ln302_fu_836_p3 : select_ln350_fu_844_p3);

assign r_V_108_fu_105_p1 = 34'd14327;

assign ret_V_80_fu_868_p2 = ($signed(sext_ln813_143_fu_864_p1) + $signed(sext_ln813_142_fu_860_p1));

assign ret_V_fu_767_p2 = ($signed(sext_ln813_fu_764_p1) + $signed(20'd1047698));

assign rhs_80_fu_758_p3 = ((or_ln346_81_reg_1009[0:0] == 1'b1) ? select_ln346_122_fu_751_p3 : p_Val2_490_reg_999);

assign select_ln302_164_fu_938_p3 = ((xor_ln302_164_fu_920_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_496_fu_882_p2);

assign select_ln302_fu_836_p3 = ((xor_ln302_fu_818_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_493_fu_781_p2);

assign select_ln346_121_fu_535_p3 = ((overflow_reg_978[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_122_fu_751_p3 = ((overflow_164_reg_1004[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_fu_513_p3 = ((overflow_163_fu_483_p2[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln350_80_fu_946_p3 = ((underflow_166_fu_914_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_496_fu_882_p2);

assign select_ln350_fu_844_p3 = ((underflow_165_fu_812_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_493_fu_781_p2);

assign sext_ln70_60_fu_548_p1 = $signed(ap_port_reg_p_read2);

assign sext_ln70_fu_143_p1 = $signed(p_read);

assign sext_ln813_142_fu_860_p1 = p_Val2_s_fu_852_p3;

assign sext_ln813_143_fu_864_p1 = rhs_80_fu_758_p3;

assign sext_ln813_fu_764_p1 = mult_V_110_reg_988;

assign tmp_1_fu_633_p4 = {{grp_fu_104_p2[35:33]}};

assign tmp_660_fu_174_p1 = grp_fu_104_p2;

assign tmp_660_fu_174_p3 = tmp_660_fu_174_p1[32'd13];

assign tmp_663_fu_250_p1 = grp_fu_104_p2;

assign tmp_663_fu_250_p3 = tmp_663_fu_250_p1[32'd33];

assign tmp_666_fu_369_p3 = r_V_108_fu_105_p2[32'd13];

assign tmp_669_fu_433_p3 = r_V_108_fu_105_p2[32'd33];

assign tmp_672_fu_579_p3 = grp_fu_104_p2[32'd13];

assign tmp_674_fu_663_p3 = grp_fu_104_p2[32'd33];

assign tmp_fu_220_p1 = grp_fu_104_p2;

assign tmp_fu_220_p4 = {{tmp_fu_220_p1[34:33]}};

assign tmp_s_fu_617_p4 = {{grp_fu_104_p2[35:34]}};

assign underflow_163_fu_507_p2 = (xor_ln896_269_fu_501_p2 & p_Result_414_fu_343_p3);

assign underflow_164_fu_739_p2 = (xor_ln896_270_fu_733_p2 & p_Result_417_fu_553_p3);

assign underflow_165_fu_812_p2 = (xor_ln896_251_fu_806_p2 & p_Result_420_fu_773_p3);

assign underflow_166_fu_914_p2 = (xor_ln896_252_fu_908_p2 & p_Result_422_fu_874_p3);

assign underflow_fu_326_p2 = (xor_ln896_268_fu_320_p2 & p_Result_s_fu_148_p3);

assign xor_ln302_163_fu_824_p2 = (xor_ln302_fu_818_p2 ^ 1'd1);

assign xor_ln302_164_fu_920_p2 = (p_Result_423_fu_888_p3 ^ p_Result_422_fu_874_p3);

assign xor_ln302_165_fu_926_p2 = (xor_ln302_164_fu_920_p2 ^ 1'd1);

assign xor_ln302_fu_818_p2 = (p_Result_421_fu_786_p3 ^ p_Result_420_fu_773_p3);

assign xor_ln888_fu_415_p2 = (p_Result_415_fu_361_p3 ^ 1'd1);

assign xor_ln890_80_fu_441_p2 = (tmp_669_fu_433_p3 ^ 1'd1);

assign xor_ln890_81_fu_671_p2 = (tmp_674_fu_663_p3 ^ 1'd1);

assign xor_ln890_fu_258_p2 = (tmp_663_fu_250_p3 ^ 1'd1);

assign xor_ln895_246_fu_296_p2 = (p_Result_s_fu_148_p3 ^ 1'd1);

assign xor_ln895_247_fu_465_p2 = (deleted_zeros_79_fu_427_p2 ^ 1'd1);

assign xor_ln895_248_fu_477_p2 = (p_Result_414_fu_343_p3 ^ 1'd1);

assign xor_ln895_249_fu_697_p2 = (deleted_zeros_80_fu_655_p3 ^ 1'd1);

assign xor_ln895_250_fu_709_p2 = (p_Result_417_fu_553_p3 ^ 1'd1);

assign xor_ln895_251_fu_794_p2 = (p_Result_420_fu_773_p3 ^ 1'd1);

assign xor_ln895_252_fu_896_p2 = (p_Result_422_fu_874_p3 ^ 1'd1);

assign xor_ln895_fu_284_p2 = (deleted_zeros_fu_242_p3 ^ 1'd1);

assign xor_ln896_246_fu_308_p2 = (deleted_ones_fu_270_p3 ^ 1'd1);

assign xor_ln896_247_fu_395_p2 = (p_Result_416_fu_387_p3 ^ 1'd1);

assign xor_ln896_248_fu_489_p2 = (deleted_ones_163_fu_453_p2 ^ 1'd1);

assign xor_ln896_249_fu_605_p2 = (p_Result_419_fu_597_p3 ^ 1'd1);

assign xor_ln896_250_fu_721_p2 = (deleted_ones_164_fu_683_p3 ^ 1'd1);

assign xor_ln896_251_fu_806_p2 = (p_Result_421_fu_786_p3 ^ 1'd1);

assign xor_ln896_252_fu_908_p2 = (p_Result_423_fu_888_p3 ^ 1'd1);

assign xor_ln896_268_fu_320_p2 = (or_ln896_fu_314_p2 ^ and_ln891_fu_278_p2);

assign xor_ln896_269_fu_501_p2 = (or_ln896_80_fu_495_p2 ^ and_ln891_80_fu_459_p2);

assign xor_ln896_270_fu_733_p2 = (or_ln896_81_fu_727_p2 ^ and_ln891_81_fu_691_p2);

assign xor_ln896_fu_200_p2 = (p_Result_413_fu_192_p3 ^ 1'd1);

assign zext_ln377_80_fu_377_p1 = tmp_666_fu_369_p3;

assign zext_ln377_81_fu_587_p1 = tmp_672_fu_579_p3;

assign zext_ln377_fu_182_p1 = tmp_660_fu_174_p3;

endmodule //der2_sp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config11_s
