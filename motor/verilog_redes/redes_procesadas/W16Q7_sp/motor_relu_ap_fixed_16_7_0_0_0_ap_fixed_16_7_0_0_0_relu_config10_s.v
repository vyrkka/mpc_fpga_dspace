module motor_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config10_s (
        ap_ready,
        p_read,
        p_read7,
        p_read8,
        ap_return_0,
        ap_return_1,
        ap_return_2
);


output   ap_ready;
input  [15:0] p_read;
input  [15:0] p_read7;
input  [15:0] p_read8;
output  [15:0] ap_return_0;
output  [15:0] ap_return_1;
output  [15:0] ap_return_2;

wire   [0:0] icmp_ln1649_fu_52_p2;
wire   [14:0] trunc_ln40_6_fu_48_p1;
wire   [14:0] datareg_V_fu_58_p3;
wire   [0:0] icmp_ln1649_5_fu_70_p2;
wire   [14:0] trunc_ln40_5_fu_44_p1;
wire   [14:0] datareg_V_5_fu_76_p3;
wire   [0:0] icmp_ln1649_6_fu_88_p2;
wire   [14:0] trunc_ln40_fu_40_p1;
wire   [14:0] datareg_V_6_fu_94_p3;
wire   [15:0] zext_ln45_fu_66_p1;
wire   [15:0] zext_ln45_5_fu_84_p1;
wire   [15:0] zext_ln45_6_fu_102_p1;

assign ap_ready = 1'b1;

assign datareg_V_5_fu_76_p3 = ((icmp_ln1649_5_fu_70_p2[0:0] == 1'b1) ? trunc_ln40_5_fu_44_p1 : 15'd0);

assign datareg_V_6_fu_94_p3 = ((icmp_ln1649_6_fu_88_p2[0:0] == 1'b1) ? trunc_ln40_fu_40_p1 : 15'd0);

assign datareg_V_fu_58_p3 = ((icmp_ln1649_fu_52_p2[0:0] == 1'b1) ? trunc_ln40_6_fu_48_p1 : 15'd0);

assign trunc_ln40_5_fu_44_p1 = p_read7[14:0];

assign trunc_ln40_6_fu_48_p1 = p_read[14:0];

assign trunc_ln40_fu_40_p1 = p_read8[14:0];

assign zext_ln45_5_fu_84_p1 = datareg_V_5_fu_76_p3;

assign zext_ln45_6_fu_102_p1 = datareg_V_6_fu_94_p3;

assign zext_ln45_fu_66_p1 = datareg_V_fu_58_p3;

assign ap_return_0 = zext_ln45_fu_66_p1;

assign ap_return_1 = zext_ln45_5_fu_84_p1;

assign ap_return_2 = zext_ln45_6_fu_102_p1;

assign icmp_ln1649_5_fu_70_p2 = (($signed(p_read7) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_6_fu_88_p2 = (($signed(p_read8) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_fu_52_p2 = (($signed(p_read) > $signed(16'd0)) ? 1'b1 : 1'b0);

endmodule //motor_relu_ap_fixed_16_7_0_0_0_ap_fixed_16_7_0_0_0_relu_config10_s
