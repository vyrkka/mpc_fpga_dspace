module predictor_func (
        clk_1,
		ce_1,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        xhat_address0,
        xhat_ce0,
        xhat_q0,
        xhat_address1,
        xhat_ce1,
        xhat_q1,
        uk,
        yhat,
        yhat_ap_vld
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;

input   clk_1;
input	ce_1;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [0:0] xhat_address0;
output   xhat_ce0;
input  [63:0] xhat_q0;
output  [0:0] xhat_address1;
output   xhat_ce1;
input  [63:0] xhat_q1;
input  [63:0] uk;
output  [63:0] yhat;
output   yhat_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg xhat_ce0;
reg xhat_ce1;
reg yhat_ap_vld;

(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] xhat_load_reg_271;
wire    ap_CS_fsm_state2;
wire   [95:0] shl_ln_fu_148_p3;
reg   [95:0] shl_ln_reg_276;
wire    grp_predictor_func_Pipeline_mvmult_row_fu_114_ap_start;
wire    grp_predictor_func_Pipeline_mvmult_row_fu_114_ap_done;
wire    grp_predictor_func_Pipeline_mvmult_row_fu_114_ap_idle;
wire    grp_predictor_func_Pipeline_mvmult_row_fu_114_ap_ready;
wire   [63:0] grp_predictor_func_Pipeline_mvmult_row_fu_114_temp1_V_1_074_out;
wire    grp_predictor_func_Pipeline_mvmult_row_fu_114_temp1_V_1_074_out_ap_vld;
wire   [63:0] grp_predictor_func_Pipeline_mvmult_row_fu_114_temp1_V_0_073_out;
wire    grp_predictor_func_Pipeline_mvmult_row_fu_114_temp1_V_0_073_out_ap_vld;
wire    grp_predictor_func_Pipeline_mvmult_row1_fu_123_ap_start;
wire    grp_predictor_func_Pipeline_mvmult_row1_fu_123_ap_done;
wire    grp_predictor_func_Pipeline_mvmult_row1_fu_123_ap_idle;
wire    grp_predictor_func_Pipeline_mvmult_row1_fu_123_ap_ready;
wire   [63:0] grp_predictor_func_Pipeline_mvmult_row1_fu_123_temp2_V_1_076_out;
wire    grp_predictor_func_Pipeline_mvmult_row1_fu_123_temp2_V_1_076_out_ap_vld;
wire   [63:0] grp_predictor_func_Pipeline_mvmult_row1_fu_123_temp2_V_0_075_out;
wire    grp_predictor_func_Pipeline_mvmult_row1_fu_123_temp2_V_0_075_out_ap_vld;
wire    grp_predictor_func_Pipeline_vadd_row_fu_131_ap_start;
wire    grp_predictor_func_Pipeline_vadd_row_fu_131_ap_done;
wire    grp_predictor_func_Pipeline_vadd_row_fu_131_ap_idle;
wire    grp_predictor_func_Pipeline_vadd_row_fu_131_ap_ready;
wire   [63:0] grp_predictor_func_Pipeline_vadd_row_fu_131_temp3_V_1_078_out;
wire    grp_predictor_func_Pipeline_vadd_row_fu_131_temp3_V_1_078_out_ap_vld;
wire   [63:0] grp_predictor_func_Pipeline_vadd_row_fu_131_temp3_V_0_077_out;
wire    grp_predictor_func_Pipeline_vadd_row_fu_131_temp3_V_0_077_out_ap_vld;
wire    grp_predictor_func_Pipeline_mvmult_column_fu_141_ap_start;
wire    grp_predictor_func_Pipeline_mvmult_column_fu_141_ap_done;
wire    grp_predictor_func_Pipeline_mvmult_column_fu_141_ap_idle;
wire    grp_predictor_func_Pipeline_mvmult_column_fu_141_ap_ready;
wire   [63:0] grp_predictor_func_Pipeline_mvmult_column_fu_141_lhs_out;
wire    grp_predictor_func_Pipeline_mvmult_column_fu_141_lhs_out_ap_vld;
reg    grp_predictor_func_Pipeline_mvmult_row_fu_114_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_predictor_func_Pipeline_mvmult_row1_fu_123_ap_start_reg;
reg    grp_predictor_func_Pipeline_vadd_row_fu_131_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
reg    grp_predictor_func_Pipeline_mvmult_column_fu_141_ap_start_reg;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire   [0:0] icmp_ln1650_fu_184_p2;
wire   [0:0] icmp_ln1649_fu_190_p2;
wire   [0:0] or_ln1650_fu_204_p2;
wire   [63:0] select_ln1650_fu_196_p3;
reg   [7:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_block_state3_on_subcall_done;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
#0 grp_predictor_func_Pipeline_mvmult_row_fu_114_ap_start_reg = 1'b0;
#0 grp_predictor_func_Pipeline_mvmult_row1_fu_123_ap_start_reg = 1'b0;
#0 grp_predictor_func_Pipeline_vadd_row_fu_131_ap_start_reg = 1'b0;
#0 grp_predictor_func_Pipeline_mvmult_column_fu_141_ap_start_reg = 1'b0;
end

predictor_func_predictor_func_Pipeline_mvmult_row grp_predictor_func_Pipeline_mvmult_row_fu_114(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_predictor_func_Pipeline_mvmult_row_fu_114_ap_start),
    .ap_done(grp_predictor_func_Pipeline_mvmult_row_fu_114_ap_done),
    .ap_idle(grp_predictor_func_Pipeline_mvmult_row_fu_114_ap_idle),
    .ap_ready(grp_predictor_func_Pipeline_mvmult_row_fu_114_ap_ready),
    .sext_ln1273(xhat_load_reg_271),
    .shl_ln(shl_ln_reg_276),
    .temp1_V_1_074_out(grp_predictor_func_Pipeline_mvmult_row_fu_114_temp1_V_1_074_out),
    .temp1_V_1_074_out_ap_vld(grp_predictor_func_Pipeline_mvmult_row_fu_114_temp1_V_1_074_out_ap_vld),
    .temp1_V_0_073_out(grp_predictor_func_Pipeline_mvmult_row_fu_114_temp1_V_0_073_out),
    .temp1_V_0_073_out_ap_vld(grp_predictor_func_Pipeline_mvmult_row_fu_114_temp1_V_0_073_out_ap_vld)
);

predictor_func_predictor_func_Pipeline_mvmult_row1 grp_predictor_func_Pipeline_mvmult_row1_fu_123(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_predictor_func_Pipeline_mvmult_row1_fu_123_ap_start),
    .ap_done(grp_predictor_func_Pipeline_mvmult_row1_fu_123_ap_done),
    .ap_idle(grp_predictor_func_Pipeline_mvmult_row1_fu_123_ap_idle),
    .ap_ready(grp_predictor_func_Pipeline_mvmult_row1_fu_123_ap_ready),
    .sext_ln24(uk),
    .temp2_V_1_076_out(grp_predictor_func_Pipeline_mvmult_row1_fu_123_temp2_V_1_076_out),
    .temp2_V_1_076_out_ap_vld(grp_predictor_func_Pipeline_mvmult_row1_fu_123_temp2_V_1_076_out_ap_vld),
    .temp2_V_0_075_out(grp_predictor_func_Pipeline_mvmult_row1_fu_123_temp2_V_0_075_out),
    .temp2_V_0_075_out_ap_vld(grp_predictor_func_Pipeline_mvmult_row1_fu_123_temp2_V_0_075_out_ap_vld)
);

predictor_func_predictor_func_Pipeline_vadd_row grp_predictor_func_Pipeline_vadd_row_fu_131(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_predictor_func_Pipeline_vadd_row_fu_131_ap_start),
    .ap_done(grp_predictor_func_Pipeline_vadd_row_fu_131_ap_done),
    .ap_idle(grp_predictor_func_Pipeline_vadd_row_fu_131_ap_idle),
    .ap_ready(grp_predictor_func_Pipeline_vadd_row_fu_131_ap_ready),
    .temp1_V_1_074_reload(grp_predictor_func_Pipeline_mvmult_row_fu_114_temp1_V_1_074_out),
    .temp1_V_0_073_reload(grp_predictor_func_Pipeline_mvmult_row_fu_114_temp1_V_0_073_out),
    .temp2_V_1_076_reload(grp_predictor_func_Pipeline_mvmult_row1_fu_123_temp2_V_1_076_out),
    .temp2_V_0_075_reload(grp_predictor_func_Pipeline_mvmult_row1_fu_123_temp2_V_0_075_out),
    .temp3_V_1_078_out(grp_predictor_func_Pipeline_vadd_row_fu_131_temp3_V_1_078_out),
    .temp3_V_1_078_out_ap_vld(grp_predictor_func_Pipeline_vadd_row_fu_131_temp3_V_1_078_out_ap_vld),
    .temp3_V_0_077_out(grp_predictor_func_Pipeline_vadd_row_fu_131_temp3_V_0_077_out),
    .temp3_V_0_077_out_ap_vld(grp_predictor_func_Pipeline_vadd_row_fu_131_temp3_V_0_077_out_ap_vld)
);

predictor_func_predictor_func_Pipeline_mvmult_column grp_predictor_func_Pipeline_mvmult_column_fu_141(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_predictor_func_Pipeline_mvmult_column_fu_141_ap_start),
    .ap_done(grp_predictor_func_Pipeline_mvmult_column_fu_141_ap_done),
    .ap_idle(grp_predictor_func_Pipeline_mvmult_column_fu_141_ap_idle),
    .ap_ready(grp_predictor_func_Pipeline_mvmult_column_fu_141_ap_ready),
    .temp3_V_1_078_reload(grp_predictor_func_Pipeline_vadd_row_fu_131_temp3_V_1_078_out),
    .temp3_V_0_077_reload(grp_predictor_func_Pipeline_vadd_row_fu_131_temp3_V_0_077_out),
    .lhs_out(grp_predictor_func_Pipeline_mvmult_column_fu_141_lhs_out),
    .lhs_out_ap_vld(grp_predictor_func_Pipeline_mvmult_column_fu_141_lhs_out_ap_vld)
);

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_predictor_func_Pipeline_mvmult_column_fu_141_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            grp_predictor_func_Pipeline_mvmult_column_fu_141_ap_start_reg <= 1'b1;
        end else if ((grp_predictor_func_Pipeline_mvmult_column_fu_141_ap_ready == 1'b1)) begin
            grp_predictor_func_Pipeline_mvmult_column_fu_141_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_predictor_func_Pipeline_mvmult_row1_fu_123_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_predictor_func_Pipeline_mvmult_row1_fu_123_ap_start_reg <= 1'b1;
        end else if ((grp_predictor_func_Pipeline_mvmult_row1_fu_123_ap_ready == 1'b1)) begin
            grp_predictor_func_Pipeline_mvmult_row1_fu_123_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_predictor_func_Pipeline_mvmult_row_fu_114_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_predictor_func_Pipeline_mvmult_row_fu_114_ap_start_reg <= 1'b1;
        end else if ((grp_predictor_func_Pipeline_mvmult_row_fu_114_ap_ready == 1'b1)) begin
            grp_predictor_func_Pipeline_mvmult_row_fu_114_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_predictor_func_Pipeline_vadd_row_fu_131_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_predictor_func_Pipeline_vadd_row_fu_131_ap_start_reg <= 1'b1;
        end else if ((grp_predictor_func_Pipeline_vadd_row_fu_131_ap_ready == 1'b1)) begin
            grp_predictor_func_Pipeline_vadd_row_fu_131_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        shl_ln_reg_276[95 : 32] <= shl_ln_fu_148_p3[95 : 32];
        xhat_load_reg_271 <= xhat_q1;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_block_state3_on_subcall_done)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

assign ap_ST_fsm_state4_blk = 1'b0;

always @ (*) begin
    if ((grp_predictor_func_Pipeline_vadd_row_fu_131_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end

assign ap_ST_fsm_state6_blk = 1'b0;

always @ (*) begin
    if ((grp_predictor_func_Pipeline_mvmult_column_fu_141_ap_done == 1'b0)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end

assign ap_ST_fsm_state8_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        xhat_ce0 = 1'b1;
    end else begin
        xhat_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        xhat_ce1 = 1'b1;
    end else begin
        xhat_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        yhat_ap_vld = 1'b1;
    end else begin
        yhat_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((grp_predictor_func_Pipeline_vadd_row_fu_131_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((grp_predictor_func_Pipeline_mvmult_column_fu_141_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

always @ (*) begin
    ap_block_state3_on_subcall_done = ((grp_predictor_func_Pipeline_mvmult_row1_fu_123_ap_done == 1'b0) | (grp_predictor_func_Pipeline_mvmult_row_fu_114_ap_done == 1'b0));
end

assign grp_predictor_func_Pipeline_mvmult_column_fu_141_ap_start = grp_predictor_func_Pipeline_mvmult_column_fu_141_ap_start_reg;

assign grp_predictor_func_Pipeline_mvmult_row1_fu_123_ap_start = grp_predictor_func_Pipeline_mvmult_row1_fu_123_ap_start_reg;

assign grp_predictor_func_Pipeline_mvmult_row_fu_114_ap_start = grp_predictor_func_Pipeline_mvmult_row_fu_114_ap_start_reg;

assign grp_predictor_func_Pipeline_vadd_row_fu_131_ap_start = grp_predictor_func_Pipeline_vadd_row_fu_131_ap_start_reg;

assign icmp_ln1649_fu_190_p2 = (($signed(grp_predictor_func_Pipeline_mvmult_column_fu_141_lhs_out) > $signed(64'd34359738368)) ? 1'b1 : 1'b0);

assign icmp_ln1650_fu_184_p2 = (($signed(grp_predictor_func_Pipeline_mvmult_column_fu_141_lhs_out) < $signed(64'd18446744039349813248)) ? 1'b1 : 1'b0);

assign or_ln1650_fu_204_p2 = (icmp_ln1650_fu_184_p2 | icmp_ln1649_fu_190_p2);

assign select_ln1650_fu_196_p3 = ((icmp_ln1650_fu_184_p2[0:0] == 1'b1) ? 64'd18446744039349813248 : 64'd34359738368);

assign shl_ln_fu_148_p3 = {{xhat_q0}, {32'd0}};

assign xhat_address0 = 64'd1;

assign xhat_address1 = 64'd0;

assign yhat = ((or_ln1650_fu_204_p2[0:0] == 1'b1) ? select_ln1650_fu_196_p3 : grp_predictor_func_Pipeline_mvmult_column_fu_141_lhs_out);

always @ (posedge clk_1) begin
    shl_ln_reg_276[31:0] <= 32'b00000000000000000000000000000000;
end

endmodule //predictor_func
