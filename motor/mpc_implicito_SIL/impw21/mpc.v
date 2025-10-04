module mpc (
        clk_1,
        ce_1,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        r,
        x0_address0,
        x0_ce0,
        x0_q0,
        x0_address1,
        x0_ce1,
        x0_q1,
        u0,
        u0_ap_vld
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   clk_1;
input   ce_1;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] r;
output  [0:0] x0_address0;
output   x0_ce0;
input  [20:0] x0_q0;
output  [0:0] x0_address1;
output   x0_ce1;
input  [20:0] x0_q1;
output  [20:0] u0;
output   u0_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg u0_ap_vld;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [20:0] xk_admm_V_0;
wire   [20:0] trunc_ln32_fu_96_p1;
reg   [20:0] trunc_ln32_reg_118;
reg   [20:0] q_hat_V_0_reg_123;
wire    ap_CS_fsm_state2;
reg   [20:0] q_hat_V_1_reg_128;
reg   [20:0] q_hat_V_2_reg_133;
reg   [4:0] h_V_address0;
reg    h_V_ce0;
reg    h_V_we0;
wire   [20:0] h_V_q0;
reg    h_V_ce1;
wire   [20:0] h_V_q1;
wire    grp_mpc_dense_constraint_fu_65_ap_start;
wire    grp_mpc_dense_constraint_fu_65_ap_done;
wire    grp_mpc_dense_constraint_fu_65_ap_idle;
wire    grp_mpc_dense_constraint_fu_65_ap_ready;
wire   [0:0] grp_mpc_dense_constraint_fu_65_x0_address0;
wire    grp_mpc_dense_constraint_fu_65_x0_ce0;
wire   [0:0] grp_mpc_dense_constraint_fu_65_x0_address1;
wire    grp_mpc_dense_constraint_fu_65_x0_ce1;
wire   [4:0] grp_mpc_dense_constraint_fu_65_h_address0;
wire    grp_mpc_dense_constraint_fu_65_h_ce0;
wire    grp_mpc_dense_constraint_fu_65_h_we0;
wire   [20:0] grp_mpc_dense_constraint_fu_65_h_d0;
wire   [20:0] grp_mpc_dense_constraint_fu_65_ap_return_0;
wire   [20:0] grp_mpc_dense_constraint_fu_65_ap_return_1;
wire   [20:0] grp_mpc_dense_constraint_fu_65_ap_return_2;
wire    grp_qp_admm_fu_82_ap_start;
wire    grp_qp_admm_fu_82_ap_done;
wire    grp_qp_admm_fu_82_ap_idle;
wire    grp_qp_admm_fu_82_ap_ready;
wire   [4:0] grp_qp_admm_fu_82_h_address0;
wire    grp_qp_admm_fu_82_h_ce0;
wire   [4:0] grp_qp_admm_fu_82_h_address1;
wire    grp_qp_admm_fu_82_h_ce1;
wire   [20:0] grp_qp_admm_fu_82_xk_admm_V_0;
wire    grp_qp_admm_fu_82_xk_admm_V_0_ap_vld;
reg    grp_mpc_dense_constraint_fu_65_ap_start_reg;
reg    grp_qp_admm_fu_82_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
#0 xk_admm_V_0 = 21'd0;
#0 grp_mpc_dense_constraint_fu_65_ap_start_reg = 1'b0;
#0 grp_qp_admm_fu_82_ap_start_reg = 1'b0;
end

mpc_h_V_RAM_AUTO_1R1W #(
    .DataWidth( 21 ),
    .AddressRange( 18 ),
    .AddressWidth( 5 ))
h_V_U(
    .clk(clk_1),
    .reset(ap_rst),
    .address0(h_V_address0),
    .ce0(h_V_ce0),
    .we0(h_V_we0),
    .d0(grp_mpc_dense_constraint_fu_65_h_d0),
    .q0(h_V_q0),
    .address1(grp_qp_admm_fu_82_h_address1),
    .ce1(h_V_ce1),
    .q1(h_V_q1)
);

mpc_mpc_dense_constraint grp_mpc_dense_constraint_fu_65(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_mpc_dense_constraint_fu_65_ap_start),
    .ap_done(grp_mpc_dense_constraint_fu_65_ap_done),
    .ap_idle(grp_mpc_dense_constraint_fu_65_ap_idle),
    .ap_ready(grp_mpc_dense_constraint_fu_65_ap_ready),
    .p_read(trunc_ln32_reg_118),
    .x0_address0(grp_mpc_dense_constraint_fu_65_x0_address0),
    .x0_ce0(grp_mpc_dense_constraint_fu_65_x0_ce0),
    .x0_q0(x0_q0),
    .x0_address1(grp_mpc_dense_constraint_fu_65_x0_address1),
    .x0_ce1(grp_mpc_dense_constraint_fu_65_x0_ce1),
    .x0_q1(x0_q1),
    .h_address0(grp_mpc_dense_constraint_fu_65_h_address0),
    .h_ce0(grp_mpc_dense_constraint_fu_65_h_ce0),
    .h_we0(grp_mpc_dense_constraint_fu_65_h_we0),
    .h_d0(grp_mpc_dense_constraint_fu_65_h_d0),
    .ap_return_0(grp_mpc_dense_constraint_fu_65_ap_return_0),
    .ap_return_1(grp_mpc_dense_constraint_fu_65_ap_return_1),
    .ap_return_2(grp_mpc_dense_constraint_fu_65_ap_return_2)
);

mpc_qp_admm grp_qp_admm_fu_82(
    .ap_clk(clk_1),
    .ap_rst(ap_rst),
    .ap_start(grp_qp_admm_fu_82_ap_start),
    .ap_done(grp_qp_admm_fu_82_ap_done),
    .ap_idle(grp_qp_admm_fu_82_ap_idle),
    .ap_ready(grp_qp_admm_fu_82_ap_ready),
    .p_read(q_hat_V_0_reg_123),
    .p_read1(q_hat_V_1_reg_128),
    .p_read2(q_hat_V_2_reg_133),
    .h_address0(grp_qp_admm_fu_82_h_address0),
    .h_ce0(grp_qp_admm_fu_82_h_ce0),
    .h_q0(h_V_q0),
    .h_address1(grp_qp_admm_fu_82_h_address1),
    .h_ce1(grp_qp_admm_fu_82_h_ce1),
    .h_q1(h_V_q1),
    .xk_admm_V_0(grp_qp_admm_fu_82_xk_admm_V_0),
    .xk_admm_V_0_ap_vld(grp_qp_admm_fu_82_xk_admm_V_0_ap_vld)
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
        grp_mpc_dense_constraint_fu_65_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_mpc_dense_constraint_fu_65_ap_start_reg <= 1'b1;
        end else if ((grp_mpc_dense_constraint_fu_65_ap_ready == 1'b1)) begin
            grp_mpc_dense_constraint_fu_65_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if (ap_rst == 1'b1) begin
        grp_qp_admm_fu_82_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_qp_admm_fu_82_ap_start_reg <= 1'b1;
        end else if ((grp_qp_admm_fu_82_ap_ready == 1'b1)) begin
            grp_qp_admm_fu_82_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge clk_1) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        q_hat_V_0_reg_123 <= grp_mpc_dense_constraint_fu_65_ap_return_0;
        q_hat_V_1_reg_128 <= grp_mpc_dense_constraint_fu_65_ap_return_1;
        q_hat_V_2_reg_133 <= grp_mpc_dense_constraint_fu_65_ap_return_2;
    end
end

always @ (posedge clk_1) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        trunc_ln32_reg_118 <= trunc_ln32_fu_96_p1;
    end
end

always @ (posedge clk_1) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_qp_admm_fu_82_xk_admm_V_0_ap_vld == 1'b1))) begin
        xk_admm_V_0 <= grp_qp_admm_fu_82_xk_admm_V_0;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((grp_mpc_dense_constraint_fu_65_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if ((grp_qp_admm_fu_82_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
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
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        h_V_address0 = grp_qp_admm_fu_82_h_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        h_V_address0 = grp_mpc_dense_constraint_fu_65_h_address0;
    end else begin
        h_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        h_V_ce0 = grp_qp_admm_fu_82_h_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        h_V_ce0 = grp_mpc_dense_constraint_fu_65_h_ce0;
    end else begin
        h_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        h_V_ce1 = grp_qp_admm_fu_82_h_ce1;
    end else begin
        h_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        h_V_we0 = grp_mpc_dense_constraint_fu_65_h_we0;
    end else begin
        h_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        u0_ap_vld = 1'b1;
    end else begin
        u0_ap_vld = 1'b0;
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
            if (((grp_mpc_dense_constraint_fu_65_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_qp_admm_fu_82_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
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

assign grp_mpc_dense_constraint_fu_65_ap_start = grp_mpc_dense_constraint_fu_65_ap_start_reg;

assign grp_qp_admm_fu_82_ap_start = grp_qp_admm_fu_82_ap_start_reg;

assign trunc_ln32_fu_96_p1 = r[20:0];

assign u0 = xk_admm_V_0;

assign x0_address0 = grp_mpc_dense_constraint_fu_65_x0_address0;

assign x0_address1 = grp_mpc_dense_constraint_fu_65_x0_address1;

assign x0_ce0 = grp_mpc_dense_constraint_fu_65_x0_ce0;

assign x0_ce1 = grp_mpc_dense_constraint_fu_65_x0_ce1;

endmodule //mpc
