module der_dnn2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config13_s (
        ap_ready,
        p_read6,
        p_read15,
        p_read20,
        ap_return_0,
        ap_return_1,
        ap_return_2
);


output   ap_ready;
input  [11:0] p_read6;
input  [11:0] p_read15;
input  [11:0] p_read20;
output  [11:0] ap_return_0;
output  [11:0] ap_return_1;
output  [11:0] ap_return_2;

wire   [0:0] icmp_ln1649_fu_52_p2;
wire   [10:0] trunc_ln40_34_fu_48_p1;
wire   [10:0] datareg_V_fu_58_p3;
wire   [0:0] icmp_ln1649_33_fu_70_p2;
wire   [10:0] trunc_ln40_33_fu_44_p1;
wire   [10:0] datareg_V_33_fu_76_p3;
wire   [0:0] icmp_ln1649_34_fu_88_p2;
wire   [10:0] trunc_ln40_fu_40_p1;
wire   [10:0] datareg_V_34_fu_94_p3;
wire   [11:0] zext_ln45_fu_66_p1;
wire   [11:0] zext_ln45_33_fu_84_p1;
wire   [11:0] zext_ln45_34_fu_102_p1;

assign ap_ready = 1'b1;

assign datareg_V_33_fu_76_p3 = ((icmp_ln1649_33_fu_70_p2[0:0] == 1'b1) ? trunc_ln40_33_fu_44_p1 : 11'd0);

assign datareg_V_34_fu_94_p3 = ((icmp_ln1649_34_fu_88_p2[0:0] == 1'b1) ? trunc_ln40_fu_40_p1 : 11'd0);

assign datareg_V_fu_58_p3 = ((icmp_ln1649_fu_52_p2[0:0] == 1'b1) ? trunc_ln40_34_fu_48_p1 : 11'd0);

assign trunc_ln40_33_fu_44_p1 = p_read15[10:0];

assign trunc_ln40_34_fu_48_p1 = p_read6[10:0];

assign trunc_ln40_fu_40_p1 = p_read20[10:0];

assign zext_ln45_33_fu_84_p1 = datareg_V_33_fu_76_p3;

assign zext_ln45_34_fu_102_p1 = datareg_V_34_fu_94_p3;

assign zext_ln45_fu_66_p1 = datareg_V_fu_58_p3;

assign ap_return_0 = zext_ln45_fu_66_p1;

assign ap_return_1 = zext_ln45_33_fu_84_p1;

assign ap_return_2 = zext_ln45_34_fu_102_p1;

assign icmp_ln1649_33_fu_70_p2 = (($signed(p_read15) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_34_fu_88_p2 = (($signed(p_read20) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_fu_52_p2 = (($signed(p_read6) > $signed(12'd0)) ? 1'b1 : 1'b0);

endmodule //der_dnn2_relu_ap_fixed_12_5_4_0_0_ap_fixed_12_5_4_0_0_relu_config13_s
