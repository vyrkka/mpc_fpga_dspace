module der_relu_ap_fixed_22_8_0_0_0_ap_fixed_22_8_0_0_0_relu_config16_s (
        ap_ready,
        p_read,
        p_read1,
        ap_return_0,
        ap_return_1
);


output   ap_ready;
input  [21:0] p_read;
input  [21:0] p_read1;
output  [21:0] ap_return_0;
output  [21:0] ap_return_1;

wire   [0:0] icmp_ln1649_fu_40_p2;
wire   [20:0] trunc_ln40_35_fu_36_p1;
wire   [20:0] datareg_V_fu_46_p3;
wire   [0:0] icmp_ln1649_35_fu_58_p2;
wire   [20:0] trunc_ln40_fu_32_p1;
wire   [20:0] datareg_V_35_fu_64_p3;
wire   [21:0] zext_ln45_fu_54_p1;
wire   [21:0] zext_ln45_35_fu_72_p1;

assign ap_ready = 1'b1;

assign datareg_V_35_fu_64_p3 = ((icmp_ln1649_35_fu_58_p2[0:0] == 1'b1) ? trunc_ln40_fu_32_p1 : 21'd0);

assign datareg_V_fu_46_p3 = ((icmp_ln1649_fu_40_p2[0:0] == 1'b1) ? trunc_ln40_35_fu_36_p1 : 21'd0);

assign trunc_ln40_35_fu_36_p1 = p_read[20:0];

assign trunc_ln40_fu_32_p1 = p_read1[20:0];

assign zext_ln45_35_fu_72_p1 = datareg_V_35_fu_64_p3;

assign zext_ln45_fu_54_p1 = datareg_V_fu_46_p3;

assign ap_return_0 = zext_ln45_fu_54_p1;

assign ap_return_1 = zext_ln45_35_fu_72_p1;

assign icmp_ln1649_35_fu_58_p2 = (($signed(p_read1) > $signed(22'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1649_fu_40_p2 = (($signed(p_read) > $signed(22'd0)) ? 1'b1 : 1'b0);

endmodule //der_relu_ap_fixed_22_8_0_0_0_ap_fixed_22_8_0_0_0_relu_config16_s
