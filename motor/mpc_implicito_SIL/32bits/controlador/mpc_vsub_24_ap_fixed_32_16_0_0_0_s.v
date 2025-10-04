module mpc_vsub_24_ap_fixed_32_16_0_0_0_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        A_address0,
        A_ce0,
        A_q0,
        B_address0,
        B_ce0,
        B_q0,
        R_address0,
        R_ce0,
        R_we0,
        R_d0
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] A_address0;
output   A_ce0;
input  [31:0] A_q0;
output  [4:0] B_address0;
output   B_ce0;
input  [31:0] B_q0;
output  [4:0] R_address0;
output   R_ce0;
output   R_we0;
output  [31:0] R_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg A_ce0;
reg B_ce0;
reg R_ce0;
reg R_we0;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [63:0] zext_ln127_fu_87_p1;
reg   [63:0] zext_ln127_reg_186;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln127_fu_93_p2;
wire    ap_CS_fsm_state3;
reg   [4:0] i_fu_36;
wire   [4:0] add_ln127_fu_99_p2;
wire  signed [32:0] sext_ln813_fu_110_p1;
wire  signed [32:0] sext_ln813_1_fu_114_p1;
wire   [32:0] ret_V_fu_118_p2;
wire   [0:0] p_Result_s_fu_124_p3;
wire   [0:0] p_Result_1_fu_136_p3;
wire   [0:0] xor_ln895_fu_144_p2;
wire   [0:0] overflow_fu_150_p2;
wire   [0:0] xor_ln302_fu_156_p2;
wire   [31:0] select_ln346_fu_162_p3;
wire   [31:0] p_Val2_1_fu_132_p1;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_36 <= 5'd0;
    end else if (((icmp_ln127_fu_93_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_fu_36 <= add_ln127_fu_99_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        zext_ln127_reg_186[4 : 0] <= zext_ln127_fu_87_p1[4 : 0];
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        A_ce0 = 1'b1;
    end else begin
        A_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        B_ce0 = 1'b1;
    end else begin
        B_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        R_ce0 = 1'b1;
    end else begin
        R_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        R_we0 = 1'b1;
    end else begin
        R_we0 = 1'b0;
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

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if ((((icmp_ln127_fu_93_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln127_fu_93_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln127_fu_93_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign A_address0 = zext_ln127_fu_87_p1;

assign B_address0 = zext_ln127_fu_87_p1;

assign R_address0 = zext_ln127_reg_186;

assign R_d0 = ((xor_ln302_fu_156_p2[0:0] == 1'b1) ? select_ln346_fu_162_p3 : p_Val2_1_fu_132_p1);

assign add_ln127_fu_99_p2 = (i_fu_36 + 5'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign icmp_ln127_fu_93_p2 = ((i_fu_36 == 5'd24) ? 1'b1 : 1'b0);

assign overflow_fu_150_p2 = (xor_ln895_fu_144_p2 & p_Result_1_fu_136_p3);

assign p_Result_1_fu_136_p3 = ret_V_fu_118_p2[32'd31];

assign p_Result_s_fu_124_p3 = ret_V_fu_118_p2[32'd32];

assign p_Val2_1_fu_132_p1 = ret_V_fu_118_p2[31:0];

assign ret_V_fu_118_p2 = ($signed(sext_ln813_fu_110_p1) - $signed(sext_ln813_1_fu_114_p1));

assign select_ln346_fu_162_p3 = ((overflow_fu_150_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign sext_ln813_1_fu_114_p1 = $signed(B_q0);

assign sext_ln813_fu_110_p1 = $signed(A_q0);

assign xor_ln302_fu_156_p2 = (p_Result_s_fu_124_p3 ^ p_Result_1_fu_136_p3);

assign xor_ln895_fu_144_p2 = (p_Result_s_fu_124_p3 ^ 1'd1);

assign zext_ln127_fu_87_p1 = i_fu_36;

always @ (posedge ap_clk) begin
    zext_ln127_reg_186[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end

endmodule //mpc_vsub_24_ap_fixed_32_16_0_0_0_s
