module motor_relu_ap_fixed_21_7_0_0_0_ap_fixed_21_7_0_0_0_relu_config13_s (
        ap_ready,
        p_read,
        ap_return
);


output   ap_ready;
input  [20:0] p_read;
output  [19:0] ap_return;

wire   [0:0] icmp_ln1649_fu_26_p2;
wire   [19:0] trunc_ln40_fu_22_p1;

assign ap_ready = 1'b1;

assign trunc_ln40_fu_22_p1 = p_read[19:0];

assign ap_return = ((icmp_ln1649_fu_26_p2[0:0] == 1'b1) ? trunc_ln40_fu_22_p1 : 20'd0);

assign icmp_ln1649_fu_26_p2 = (($signed(p_read) > $signed(21'd0)) ? 1'b1 : 1'b0);

endmodule //motor_relu_ap_fixed_21_7_0_0_0_ap_fixed_21_7_0_0_0_relu_config13_s
