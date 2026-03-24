module der2_sp_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s (
        ap_ready,
        p_read15,
        p_read23,
        p_read27,
        ap_return_0,
        ap_return_1,
        ap_return_2
);


output   ap_ready;
input  [18:0] p_read15;
input  [18:0] p_read23;
input  [18:0] p_read27;
output  [18:0] ap_return_0;
output  [18:0] ap_return_1;
output  [18:0] ap_return_2;

wire   [0:0] icmp_ln1649_fu_52_p2;
wire   [17:0] trunc_ln40_18_fu_48_p1;
wire   [17:0] datareg_V_fu_58_p3;
wire   [0:0] icmp_ln1649_17_fu_70_p2;
wire   [17:0] trunc_ln40_17_fu_44_p1;
wire   [17:0] datareg_V_17_fu_76_p3;
wire   [0:0] icmp_ln1649_18_fu_88_p2;
wire   [17:0] trunc_ln40_fu_40_p1;
wire   [17:0] datareg_V_18_fu_94_p3;
wire   [18:0] zext_ln45_fu_66_p1;
wire   [18:0] zext_ln45_17_fu_84_p1;
wire   [18:0] zext_ln45_18_fu_102_p1;

assign ap_ready = 1'b1;

assign datareg_V_17_fu_76_p3 = ((icmp_ln1649_17_fu_70_p2[0:0] == 1'b1) ? trunc_ln40_17_fu_44_p1 : 18'd0);

assign datareg_V_18_fu_94_p3 = ((icmp_ln1649_18_fu_88_p2[0:0] == 1'b1) ? trunc_ln40_fu_40_p1 : 18'd0);

assign datareg_V_fu_58_p3 = ((icmp_ln1649_fu_52_p2[0:0] == 1'b1) ? trunc_ln40_18_fu_48_p1 : 18'd0);

assign trunc_ln40_17_fu_44_p1 = p_read23[17:0];

assign trunc_ln40_18_fu_48_p1 = p_read15[17:0];

assign trunc_ln40_fu_40_p1 = p_read27[17:0];

assign zext_ln45_17_fu_84_p1 = datareg_V_17_fu_76_p3;

assign zext_ln45_18_fu_102_p1 = datareg_V_18_fu_94_p3;

assign zext_ln45_fu_66_p1 = datareg_V_fu_58_p3;

assign ap_return_0 = zext_ln45_fu_66_p1;

assign ap_return_1 = zext_ln45_17_fu_84_p1;

assign ap_return_2 = zext_ln45_18_fu_102_p1;

assign icmp_ln1649_17_fu_70_p2 = (($signed(p_read23) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_18_fu_88_p2 = (($signed(p_read27) > $signed(19'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_fu_52_p2 = (($signed(p_read15) > $signed(19'd0)) ? 1'b1 : 1'b0);

endmodule //der2_sp_relu_ap_fixed_19_5_0_0_0_ap_fixed_19_5_0_0_0_relu_config10_s
