module der2_sp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_ce,
        p_read,
        p_read1,
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
wire   [18:0] p_Val2_473_fu_155_p2;
reg   [18:0] p_Val2_473_reg_742;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] overflow_fu_279_p2;
reg   [0:0] overflow_reg_747;
wire   [0:0] or_ln346_fu_309_p2;
reg   [0:0] or_ln346_reg_752;
wire  signed [18:0] rhs_fu_322_p3;
reg  signed [18:0] rhs_reg_757;
wire    ap_block_pp0_stage1_11001;
wire   [18:0] p_Val2_476_fu_371_p2;
reg   [18:0] p_Val2_476_reg_763;
wire   [0:0] overflow_160_fu_487_p2;
reg   [0:0] overflow_160_reg_768;
wire   [0:0] or_ln346_79_fu_517_p2;
reg   [0:0] or_ln346_79_reg_773;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_block_pp0_stage0_subdone;
reg   [18:0] ap_port_reg_p_read1;
reg  signed [18:0] grp_fu_94_p0;
wire  signed [35:0] sext_ln70_fu_112_p1;
wire  signed [34:0] sext_ln70_58_fu_328_p1;
reg  signed [16:0] grp_fu_94_p1;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire   [35:0] grp_fu_94_p2;
wire   [0:0] tmp_645_fu_143_p3;
wire   [18:0] zext_ln377_fu_151_p1;
wire   [18:0] p_Val2_472_fu_125_p4;
wire   [0:0] p_Result_404_fu_161_p3;
wire   [0:0] p_Result_403_fu_135_p3;
wire   [0:0] xor_ln896_fu_169_p2;
wire   [1:0] tmp_fu_181_p4;
wire   [2:0] tmp_9_fu_197_p4;
wire   [0:0] carry_159_fu_175_p2;
wire   [0:0] Range1_all_ones_fu_207_p2;
wire   [0:0] Range1_all_zeros_fu_213_p2;
wire   [0:0] tmp_647_fu_227_p3;
wire   [0:0] Range2_all_ones_fu_191_p2;
wire   [0:0] xor_ln890_fu_235_p2;
wire   [0:0] and_ln890_fu_241_p2;
wire   [0:0] deleted_zeros_fu_219_p3;
wire   [0:0] xor_ln895_fu_261_p2;
wire   [0:0] p_Result_s_fu_117_p3;
wire   [0:0] or_ln895_fu_267_p2;
wire   [0:0] xor_ln895_241_fu_273_p2;
wire   [0:0] deleted_ones_fu_247_p3;
wire   [0:0] xor_ln896_241_fu_285_p2;
wire   [0:0] and_ln891_fu_255_p2;
wire   [0:0] or_ln896_fu_291_p2;
wire   [0:0] xor_ln896_266_fu_297_p2;
wire   [0:0] underflow_fu_303_p2;
wire   [18:0] select_ln346_119_fu_315_p3;
wire   [34:0] p_Result_405_fu_333_p1;
wire   [34:0] p_Val2_475_fu_341_p1;
wire   [34:0] p_Result_406_fu_351_p1;
wire   [34:0] tmp_650_fu_359_p1;
wire   [0:0] tmp_650_fu_359_p3;
wire   [18:0] zext_ln377_79_fu_367_p1;
wire   [18:0] p_Val2_475_fu_341_p4;
wire   [0:0] p_Result_407_fu_377_p3;
wire   [0:0] p_Result_406_fu_351_p3;
wire   [0:0] xor_ln896_242_fu_385_p2;
wire   [34:0] Range2_all_ones_83_fu_397_p1;
wire   [34:0] tmp_s_fu_405_p1;
wire   [1:0] tmp_s_fu_405_p4;
wire   [0:0] carry_161_fu_391_p2;
wire   [0:0] Range1_all_ones_160_fu_415_p2;
wire   [0:0] Range1_all_zeros_1_fu_421_p2;
wire   [34:0] tmp_653_fu_435_p1;
wire   [0:0] tmp_653_fu_435_p3;
wire   [0:0] Range2_all_ones_83_fu_397_p3;
wire   [0:0] xor_ln890_79_fu_443_p2;
wire   [0:0] and_ln890_5_fu_449_p2;
wire   [0:0] deleted_zeros_78_fu_427_p3;
wire   [0:0] xor_ln895_242_fu_469_p2;
wire   [0:0] p_Result_405_fu_333_p3;
wire   [0:0] or_ln895_79_fu_475_p2;
wire   [0:0] xor_ln895_243_fu_481_p2;
wire   [0:0] deleted_ones_160_fu_455_p3;
wire   [0:0] xor_ln896_243_fu_493_p2;
wire   [0:0] and_ln891_79_fu_463_p2;
wire   [0:0] or_ln896_79_fu_499_p2;
wire   [0:0] xor_ln896_267_fu_505_p2;
wire   [0:0] underflow_160_fu_511_p2;
wire   [18:0] select_ln346_120_fu_523_p3;
wire  signed [19:0] sext_ln813_fu_536_p1;
wire   [19:0] ret_V_fu_539_p2;
wire   [18:0] p_Val2_478_fu_553_p2;
wire   [0:0] p_Result_408_fu_545_p3;
wire   [0:0] p_Result_409_fu_558_p3;
wire   [0:0] xor_ln895_244_fu_566_p2;
wire   [0:0] xor_ln896_244_fu_578_p2;
wire   [0:0] xor_ln302_fu_590_p2;
wire   [0:0] overflow_161_fu_572_p2;
wire   [0:0] xor_ln302_160_fu_596_p2;
wire   [0:0] underflow_161_fu_584_p2;
wire   [0:0] or_ln302_fu_602_p2;
wire   [18:0] select_ln302_fu_608_p3;
wire   [18:0] select_ln350_fu_616_p3;
wire  signed [18:0] rhs_79_fu_530_p3;
wire  signed [19:0] sext_ln813_141_fu_632_p1;
wire   [19:0] ret_V_79_fu_636_p2;
wire   [18:0] p_Val2_481_fu_650_p2;
wire   [0:0] p_Result_410_fu_642_p3;
wire   [0:0] p_Result_411_fu_656_p3;
wire   [0:0] xor_ln895_245_fu_664_p2;
wire   [0:0] xor_ln896_245_fu_676_p2;
wire   [0:0] xor_ln302_161_fu_688_p2;
wire   [0:0] overflow_162_fu_670_p2;
wire   [0:0] xor_ln302_162_fu_694_p2;
wire   [0:0] underflow_162_fu_682_p2;
wire   [0:0] or_ln302_79_fu_700_p2;
wire   [18:0] select_ln302_161_fu_706_p3;
wire   [18:0] select_ln350_79_fu_714_p3;
wire   [18:0] p_Val2_482_fu_722_p3;
wire   [18:0] p_Val2_479_fu_624_p3;
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

der2_sp_mul_19s_17s_36_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 19 ),
    .din1_WIDTH( 17 ),
    .dout_WIDTH( 36 ))
mul_19s_17s_36_1_1_U102(
    .din0(grp_fu_94_p0),
    .din1(grp_fu_94_p1),
    .dout(grp_fu_94_p2)
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
        ap_port_reg_p_read1 <= p_read1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        or_ln346_79_reg_773 <= or_ln346_79_fu_517_p2;
        overflow_160_reg_768 <= overflow_160_fu_487_p2;
        p_Val2_476_reg_763 <= p_Val2_476_fu_371_p2;
        rhs_reg_757 <= rhs_fu_322_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        or_ln346_reg_752 <= or_ln346_fu_309_p2;
        overflow_reg_747 <= overflow_fu_279_p2;
        p_Val2_473_reg_742 <= p_Val2_473_fu_155_p2;
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
            grp_fu_94_p0 = sext_ln70_58_fu_328_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_94_p0 = sext_ln70_fu_112_p1;
        end else begin
            grp_fu_94_p0 = 'bx;
        end
    end else begin
        grp_fu_94_p0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_94_p1 = 35'd30400;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_94_p1 = 36'd68719418596;
        end else begin
            grp_fu_94_p1 = 'bx;
        end
    end else begin
        grp_fu_94_p1 = 'bx;
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

assign Range1_all_ones_160_fu_415_p2 = ((tmp_s_fu_405_p4 == 2'd3) ? 1'b1 : 1'b0);

assign Range1_all_ones_fu_207_p2 = ((tmp_9_fu_197_p4 == 3'd7) ? 1'b1 : 1'b0);

assign Range1_all_zeros_1_fu_421_p2 = ((tmp_s_fu_405_p4 == 2'd0) ? 1'b1 : 1'b0);

assign Range1_all_zeros_fu_213_p2 = ((tmp_9_fu_197_p4 == 3'd0) ? 1'b1 : 1'b0);

assign Range2_all_ones_83_fu_397_p1 = grp_fu_94_p2;

assign Range2_all_ones_83_fu_397_p3 = Range2_all_ones_83_fu_397_p1[32'd34];

assign Range2_all_ones_fu_191_p2 = ((tmp_fu_181_p4 == 2'd3) ? 1'b1 : 1'b0);

assign and_ln890_5_fu_449_p2 = (xor_ln890_79_fu_443_p2 & Range2_all_ones_83_fu_397_p3);

assign and_ln890_fu_241_p2 = (xor_ln890_fu_235_p2 & Range2_all_ones_fu_191_p2);

assign and_ln891_79_fu_463_p2 = (carry_161_fu_391_p2 & Range1_all_ones_160_fu_415_p2);

assign and_ln891_fu_255_p2 = (carry_159_fu_175_p2 & Range1_all_ones_fu_207_p2);

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

assign ap_return_0 = p_Val2_482_fu_722_p3;

assign ap_return_1 = p_Val2_479_fu_624_p3;

assign carry_159_fu_175_p2 = (xor_ln896_fu_169_p2 & p_Result_403_fu_135_p3);

assign carry_161_fu_391_p2 = (xor_ln896_242_fu_385_p2 & p_Result_406_fu_351_p3);

assign deleted_ones_160_fu_455_p3 = ((carry_161_fu_391_p2[0:0] == 1'b1) ? and_ln890_5_fu_449_p2 : Range1_all_ones_160_fu_415_p2);

assign deleted_ones_fu_247_p3 = ((carry_159_fu_175_p2[0:0] == 1'b1) ? and_ln890_fu_241_p2 : Range1_all_ones_fu_207_p2);

assign deleted_zeros_78_fu_427_p3 = ((carry_161_fu_391_p2[0:0] == 1'b1) ? Range1_all_ones_160_fu_415_p2 : Range1_all_zeros_1_fu_421_p2);

assign deleted_zeros_fu_219_p3 = ((carry_159_fu_175_p2[0:0] == 1'b1) ? Range1_all_ones_fu_207_p2 : Range1_all_zeros_fu_213_p2);

assign or_ln302_79_fu_700_p2 = (xor_ln302_162_fu_694_p2 | overflow_162_fu_670_p2);

assign or_ln302_fu_602_p2 = (xor_ln302_160_fu_596_p2 | overflow_161_fu_572_p2);

assign or_ln346_79_fu_517_p2 = (underflow_160_fu_511_p2 | overflow_160_fu_487_p2);

assign or_ln346_fu_309_p2 = (underflow_fu_303_p2 | overflow_fu_279_p2);

assign or_ln895_79_fu_475_p2 = (xor_ln895_242_fu_469_p2 | p_Result_407_fu_377_p3);

assign or_ln895_fu_267_p2 = (xor_ln895_fu_261_p2 | p_Result_404_fu_161_p3);

assign or_ln896_79_fu_499_p2 = (xor_ln896_243_fu_493_p2 | xor_ln896_242_fu_385_p2);

assign or_ln896_fu_291_p2 = (xor_ln896_fu_169_p2 | xor_ln896_241_fu_285_p2);

assign overflow_160_fu_487_p2 = (xor_ln895_243_fu_481_p2 & or_ln895_79_fu_475_p2);

assign overflow_161_fu_572_p2 = (xor_ln895_244_fu_566_p2 & p_Result_409_fu_558_p3);

assign overflow_162_fu_670_p2 = (xor_ln895_245_fu_664_p2 & p_Result_411_fu_656_p3);

assign overflow_fu_279_p2 = (xor_ln895_241_fu_273_p2 & or_ln895_fu_267_p2);

assign p_Result_403_fu_135_p3 = grp_fu_94_p2[32'd32];

assign p_Result_404_fu_161_p3 = p_Val2_473_fu_155_p2[32'd18];

assign p_Result_405_fu_333_p1 = grp_fu_94_p2;

assign p_Result_405_fu_333_p3 = p_Result_405_fu_333_p1[32'd34];

assign p_Result_406_fu_351_p1 = grp_fu_94_p2;

assign p_Result_406_fu_351_p3 = p_Result_406_fu_351_p1[32'd32];

assign p_Result_407_fu_377_p3 = p_Val2_476_fu_371_p2[32'd18];

assign p_Result_408_fu_545_p3 = ret_V_fu_539_p2[32'd19];

assign p_Result_409_fu_558_p3 = p_Val2_478_fu_553_p2[32'd18];

assign p_Result_410_fu_642_p3 = ret_V_79_fu_636_p2[32'd19];

assign p_Result_411_fu_656_p3 = p_Val2_481_fu_650_p2[32'd18];

assign p_Result_s_fu_117_p3 = grp_fu_94_p2[32'd35];

assign p_Val2_472_fu_125_p4 = {{grp_fu_94_p2[32:14]}};

assign p_Val2_473_fu_155_p2 = (zext_ln377_fu_151_p1 + p_Val2_472_fu_125_p4);

assign p_Val2_475_fu_341_p1 = grp_fu_94_p2;

assign p_Val2_475_fu_341_p4 = {{p_Val2_475_fu_341_p1[32:14]}};

assign p_Val2_476_fu_371_p2 = (zext_ln377_79_fu_367_p1 + p_Val2_475_fu_341_p4);

assign p_Val2_478_fu_553_p2 = ($signed(rhs_reg_757) + $signed(19'd16383));

assign p_Val2_479_fu_624_p3 = ((or_ln302_fu_602_p2[0:0] == 1'b1) ? select_ln302_fu_608_p3 : select_ln350_fu_616_p3);

assign p_Val2_481_fu_650_p2 = ($signed(rhs_79_fu_530_p3) + $signed(19'd432));

assign p_Val2_482_fu_722_p3 = ((or_ln302_79_fu_700_p2[0:0] == 1'b1) ? select_ln302_161_fu_706_p3 : select_ln350_79_fu_714_p3);

assign ret_V_79_fu_636_p2 = ($signed(sext_ln813_141_fu_632_p1) + $signed(20'd432));

assign ret_V_fu_539_p2 = ($signed(sext_ln813_fu_536_p1) + $signed(20'd16383));

assign rhs_79_fu_530_p3 = ((or_ln346_79_reg_773[0:0] == 1'b1) ? select_ln346_120_fu_523_p3 : p_Val2_476_reg_763);

assign rhs_fu_322_p3 = ((or_ln346_reg_752[0:0] == 1'b1) ? select_ln346_119_fu_315_p3 : p_Val2_473_reg_742);

assign select_ln302_161_fu_706_p3 = ((xor_ln302_161_fu_688_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_481_fu_650_p2);

assign select_ln302_fu_608_p3 = ((xor_ln302_fu_590_p2[0:0] == 1'b1) ? 19'd262143 : p_Val2_478_fu_553_p2);

assign select_ln346_119_fu_315_p3 = ((overflow_reg_747[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln346_120_fu_523_p3 = ((overflow_160_reg_768[0:0] == 1'b1) ? 19'd262143 : 19'd262144);

assign select_ln350_79_fu_714_p3 = ((underflow_162_fu_682_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_481_fu_650_p2);

assign select_ln350_fu_616_p3 = ((underflow_161_fu_584_p2[0:0] == 1'b1) ? 19'd262144 : p_Val2_478_fu_553_p2);

assign sext_ln70_58_fu_328_p1 = $signed(ap_port_reg_p_read1);

assign sext_ln70_fu_112_p1 = $signed(p_read);

assign sext_ln813_141_fu_632_p1 = rhs_79_fu_530_p3;

assign sext_ln813_fu_536_p1 = rhs_reg_757;

assign tmp_645_fu_143_p3 = grp_fu_94_p2[32'd13];

assign tmp_647_fu_227_p3 = grp_fu_94_p2[32'd33];

assign tmp_650_fu_359_p1 = grp_fu_94_p2;

assign tmp_650_fu_359_p3 = tmp_650_fu_359_p1[32'd13];

assign tmp_653_fu_435_p1 = grp_fu_94_p2;

assign tmp_653_fu_435_p3 = tmp_653_fu_435_p1[32'd33];

assign tmp_9_fu_197_p4 = {{grp_fu_94_p2[35:33]}};

assign tmp_fu_181_p4 = {{grp_fu_94_p2[35:34]}};

assign tmp_s_fu_405_p1 = grp_fu_94_p2;

assign tmp_s_fu_405_p4 = {{tmp_s_fu_405_p1[34:33]}};

assign underflow_160_fu_511_p2 = (xor_ln896_267_fu_505_p2 & p_Result_405_fu_333_p3);

assign underflow_161_fu_584_p2 = (xor_ln896_244_fu_578_p2 & p_Result_408_fu_545_p3);

assign underflow_162_fu_682_p2 = (xor_ln896_245_fu_676_p2 & p_Result_410_fu_642_p3);

assign underflow_fu_303_p2 = (xor_ln896_266_fu_297_p2 & p_Result_s_fu_117_p3);

assign xor_ln302_160_fu_596_p2 = (xor_ln302_fu_590_p2 ^ 1'd1);

assign xor_ln302_161_fu_688_p2 = (p_Result_411_fu_656_p3 ^ p_Result_410_fu_642_p3);

assign xor_ln302_162_fu_694_p2 = (xor_ln302_161_fu_688_p2 ^ 1'd1);

assign xor_ln302_fu_590_p2 = (p_Result_409_fu_558_p3 ^ p_Result_408_fu_545_p3);

assign xor_ln890_79_fu_443_p2 = (tmp_653_fu_435_p3 ^ 1'd1);

assign xor_ln890_fu_235_p2 = (tmp_647_fu_227_p3 ^ 1'd1);

assign xor_ln895_241_fu_273_p2 = (p_Result_s_fu_117_p3 ^ 1'd1);

assign xor_ln895_242_fu_469_p2 = (deleted_zeros_78_fu_427_p3 ^ 1'd1);

assign xor_ln895_243_fu_481_p2 = (p_Result_405_fu_333_p3 ^ 1'd1);

assign xor_ln895_244_fu_566_p2 = (p_Result_408_fu_545_p3 ^ 1'd1);

assign xor_ln895_245_fu_664_p2 = (p_Result_410_fu_642_p3 ^ 1'd1);

assign xor_ln895_fu_261_p2 = (deleted_zeros_fu_219_p3 ^ 1'd1);

assign xor_ln896_241_fu_285_p2 = (deleted_ones_fu_247_p3 ^ 1'd1);

assign xor_ln896_242_fu_385_p2 = (p_Result_407_fu_377_p3 ^ 1'd1);

assign xor_ln896_243_fu_493_p2 = (deleted_ones_160_fu_455_p3 ^ 1'd1);

assign xor_ln896_244_fu_578_p2 = (p_Result_409_fu_558_p3 ^ 1'd1);

assign xor_ln896_245_fu_676_p2 = (p_Result_411_fu_656_p3 ^ 1'd1);

assign xor_ln896_266_fu_297_p2 = (or_ln896_fu_291_p2 ^ and_ln891_fu_255_p2);

assign xor_ln896_267_fu_505_p2 = (or_ln896_79_fu_499_p2 ^ and_ln891_79_fu_463_p2);

assign xor_ln896_fu_169_p2 = (p_Result_404_fu_161_p3 ^ 1'd1);

assign zext_ln377_79_fu_367_p1 = tmp_650_fu_359_p3;

assign zext_ln377_fu_151_p1 = tmp_645_fu_143_p3;

endmodule //der2_sp_dense_latency_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_config14_s
