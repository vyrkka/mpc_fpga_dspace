module motor_relu_ap_fixed_21_7_0_0_0_ap_fixed_21_7_0_0_0_relu_config7_s (
        ap_ready,
        p_read,
        p_read3,
        p_read4,
        ap_return_0,
        ap_return_1,
        ap_return_2
);


output   ap_ready;
input  [20:0] p_read;
input  [20:0] p_read3;
input  [20:0] p_read4;
output  [20:0] ap_return_0;
output  [20:0] ap_return_1;
output  [20:0] ap_return_2;

wire   [0:0] icmp_ln1649_fu_52_p2;
wire   [19:0] trunc_ln40_2_fu_48_p1;
wire   [19:0] datareg_V_fu_58_p3;
wire   [0:0] icmp_ln1649_1_fu_70_p2;
wire   [19:0] trunc_ln40_1_fu_44_p1;
wire   [19:0] datareg_V_1_fu_76_p3;
wire   [0:0] icmp_ln1649_2_fu_88_p2;
wire   [19:0] trunc_ln40_fu_40_p1;
wire   [19:0] datareg_V_2_fu_94_p3;
wire   [20:0] zext_ln45_fu_66_p1;
wire   [20:0] zext_ln45_1_fu_84_p1;
wire   [20:0] zext_ln45_2_fu_102_p1;

assign ap_ready = 1'b1;

assign datareg_V_1_fu_76_p3 = ((icmp_ln1649_1_fu_70_p2[0:0] == 1'b1) ? trunc_ln40_1_fu_44_p1 : 20'd0);

assign datareg_V_2_fu_94_p3 = ((icmp_ln1649_2_fu_88_p2[0:0] == 1'b1) ? trunc_ln40_fu_40_p1 : 20'd0);

assign datareg_V_fu_58_p3 = ((icmp_ln1649_fu_52_p2[0:0] == 1'b1) ? trunc_ln40_2_fu_48_p1 : 20'd0);

assign trunc_ln40_1_fu_44_p1 = p_read3[19:0];

assign trunc_ln40_2_fu_48_p1 = p_read[19:0];

assign trunc_ln40_fu_40_p1 = p_read4[19:0];

assign zext_ln45_1_fu_84_p1 = datareg_V_1_fu_76_p3;

assign zext_ln45_2_fu_102_p1 = datareg_V_2_fu_94_p3;

assign zext_ln45_fu_66_p1 = datareg_V_fu_58_p3;

assign ap_return_0 = zext_ln45_fu_66_p1;

assign ap_return_1 = zext_ln45_1_fu_84_p1;

assign ap_return_2 = zext_ln45_2_fu_102_p1;

assign icmp_ln1649_1_fu_70_p2 = (($signed(p_read3) > $signed(21'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_2_fu_88_p2 = (($signed(p_read4) > $signed(21'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_fu_52_p2 = (($signed(p_read) > $signed(21'd0)) ? 1'b1 : 1'b0);

endmodule //motor_relu_ap_fixed_21_7_0_0_0_ap_fixed_21_7_0_0_0_relu_config7_s
