module motor_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config11_s (
        ap_clk,
        ap_rst,
        p_read,
        p_read1,
        p_read2,
        ap_return,
        ap_ce
);


input   ap_clk;
input   ap_rst;
input  [31:0] p_read;
input  [31:0] p_read1;
input  [31:0] p_read2;
output  [31:0] ap_return;
input   ap_ce;

reg[31:0] ap_return;

wire   [55:0] r_V_fu_82_p2;
reg   [55:0] r_V_reg_115;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
wire   [56:0] r_V_33_fu_80_p2;
reg   [56:0] r_V_33_reg_119;
wire   [56:0] r_V_34_fu_81_p2;
reg   [56:0] r_V_34_reg_131;
reg  signed [31:0] p_read25_reg_997;
reg   [0:0] p_Result_s_reg_1002;
reg   [0:0] p_Result_131_reg_1008;
wire   [31:0] p_Val2_143_fu_179_p2;
reg   [31:0] p_Val2_143_reg_1014;
reg   [0:0] p_Result_132_reg_1019;
reg   [0:0] Range2_all_ones_reg_1026;
reg   [0:0] p_Result_133_reg_1033;
reg   [31:0] p_Val2_145_reg_1039;
reg   [0:0] p_Result_134_reg_1044;
reg   [0:0] tmp_211_reg_1050;
reg   [0:0] Range2_all_ones_25_reg_1055;
reg   [0:0] p_Result_136_reg_1062;
reg   [31:0] p_Val2_148_reg_1068;
reg   [0:0] p_Result_137_reg_1073;
reg   [0:0] tmp_217_reg_1079;
reg   [0:0] Range2_all_ones_26_reg_1084;
wire  signed [31:0] lhs_14_fu_748_p3;
reg  signed [31:0] lhs_14_reg_1091;
wire   [25:0] r_V_33_fu_80_p1;
wire    ap_block_pp0_stage0;
wire   [25:0] r_V_34_fu_81_p1;
wire  signed [24:0] r_V_fu_82_p1;
wire   [0:0] tmp_fu_167_p3;
wire   [31:0] zext_ln377_fu_175_p1;
wire   [31:0] p_Val2_142_fu_149_p4;
wire   [0:0] xor_ln896_fu_248_p2;
wire   [0:0] xor_ln888_fu_258_p2;
wire   [0:0] or_ln888_fu_263_p2;
wire   [0:0] tmp_208_fu_273_p3;
wire   [0:0] xor_ln890_fu_281_p2;
wire   [0:0] or_ln890_fu_287_p2;
wire   [0:0] carry_52_fu_253_p2;
wire   [0:0] deleted_zeros_fu_268_p2;
wire   [0:0] xor_ln895_fu_303_p2;
wire   [0:0] or_ln895_fu_309_p2;
wire   [0:0] xor_ln895_78_fu_314_p2;
wire   [0:0] deleted_ones_fu_293_p2;
wire   [0:0] xor_ln896_78_fu_325_p2;
wire   [0:0] and_ln891_fu_298_p2;
wire   [0:0] or_ln896_fu_331_p2;
wire   [0:0] xor_ln896_87_fu_337_p2;
wire   [0:0] overflow_fu_319_p2;
wire   [0:0] underflow_fu_343_p2;
wire   [0:0] or_ln346_fu_356_p2;
wire   [31:0] select_ln346_38_fu_348_p3;
wire   [31:0] zext_ln377_25_fu_369_p1;
wire   [31:0] p_Val2_146_fu_372_p2;
wire   [0:0] p_Result_135_fu_377_p3;
wire   [0:0] xor_ln896_79_fu_385_p2;
wire   [0:0] xor_ln888_53_fu_396_p2;
wire   [0:0] or_ln888_25_fu_401_p2;
wire   [0:0] tmp_214_fu_412_p3;
wire   [0:0] xor_ln890_25_fu_420_p2;
wire   [0:0] or_ln890_25_fu_426_p2;
wire   [0:0] carry_54_fu_391_p2;
wire   [0:0] deleted_zeros_25_fu_407_p2;
wire   [0:0] xor_ln895_79_fu_442_p2;
wire   [0:0] or_ln895_25_fu_448_p2;
wire   [0:0] xor_ln895_80_fu_454_p2;
wire   [0:0] deleted_ones_51_fu_432_p2;
wire   [0:0] xor_ln896_80_fu_465_p2;
wire   [0:0] and_ln891_25_fu_437_p2;
wire   [0:0] or_ln896_25_fu_471_p2;
wire   [0:0] xor_ln896_88_fu_477_p2;
wire   [0:0] overflow_51_fu_459_p2;
wire   [0:0] underflow_51_fu_483_p2;
wire   [0:0] or_ln346_25_fu_496_p2;
wire   [31:0] select_ln346_39_fu_488_p3;
wire  signed [31:0] rhs_fu_362_p3;
wire  signed [32:0] sext_ln813_fu_556_p1;
wire   [32:0] ret_V_fu_560_p2;
wire   [31:0] p_Val2_151_fu_574_p2;
wire   [0:0] p_Result_139_fu_566_p3;
wire   [0:0] p_Result_140_fu_580_p3;
wire   [0:0] xor_ln895_83_fu_588_p2;
wire   [0:0] xor_ln896_83_fu_600_p2;
wire   [0:0] xor_ln302_fu_612_p2;
wire   [0:0] overflow_53_fu_594_p2;
wire   [0:0] xor_ln302_50_fu_618_p2;
wire   [0:0] underflow_53_fu_606_p2;
wire   [0:0] or_ln302_fu_624_p2;
wire   [31:0] select_ln302_fu_630_p3;
wire   [31:0] select_ln350_fu_638_p3;
wire  signed [31:0] p_Val2_s_fu_646_p3;
wire  signed [31:0] rhs_24_fu_502_p3;
wire  signed [32:0] sext_ln813_41_fu_658_p1;
wire  signed [32:0] sext_ln813_40_fu_654_p1;
wire   [32:0] ret_V_24_fu_662_p2;
wire   [31:0] p_Val2_154_fu_676_p2;
wire   [0:0] p_Result_141_fu_668_p3;
wire   [0:0] p_Result_142_fu_682_p3;
wire   [0:0] xor_ln895_84_fu_690_p2;
wire   [0:0] xor_ln896_84_fu_702_p2;
wire   [0:0] xor_ln302_51_fu_714_p2;
wire   [0:0] overflow_54_fu_696_p2;
wire   [0:0] xor_ln302_52_fu_720_p2;
wire   [0:0] underflow_54_fu_708_p2;
wire   [0:0] or_ln302_24_fu_726_p2;
wire   [31:0] select_ln302_51_fu_732_p3;
wire   [31:0] select_ln350_24_fu_740_p3;
wire   [31:0] zext_ln377_26_fu_756_p1;
wire   [31:0] p_Val2_149_fu_759_p2;
wire   [0:0] p_Result_138_fu_764_p3;
wire   [0:0] xor_ln896_81_fu_772_p2;
wire   [0:0] xor_ln888_55_fu_783_p2;
wire   [0:0] or_ln888_26_fu_788_p2;
wire   [0:0] tmp_220_fu_799_p3;
wire   [0:0] xor_ln890_26_fu_807_p2;
wire   [0:0] or_ln890_26_fu_813_p2;
wire   [0:0] carry_56_fu_778_p2;
wire   [0:0] deleted_zeros_26_fu_794_p2;
wire   [0:0] xor_ln895_81_fu_829_p2;
wire   [0:0] or_ln895_26_fu_835_p2;
wire   [0:0] xor_ln895_82_fu_841_p2;
wire   [0:0] deleted_ones_52_fu_819_p2;
wire   [0:0] xor_ln896_82_fu_852_p2;
wire   [0:0] and_ln891_26_fu_824_p2;
wire   [0:0] or_ln896_26_fu_858_p2;
wire   [0:0] xor_ln896_89_fu_864_p2;
wire   [0:0] overflow_52_fu_846_p2;
wire   [0:0] underflow_52_fu_870_p2;
wire   [0:0] or_ln346_26_fu_883_p2;
wire   [31:0] select_ln346_40_fu_875_p3;
wire  signed [31:0] rhs_25_fu_889_p3;
wire  signed [32:0] sext_ln813_43_fu_900_p1;
wire  signed [32:0] sext_ln813_42_fu_897_p1;
wire   [32:0] ret_V_25_fu_904_p2;
wire   [31:0] p_Val2_156_fu_918_p2;
wire   [0:0] p_Result_143_fu_910_p3;
wire   [0:0] p_Result_144_fu_923_p3;
wire   [0:0] xor_ln895_85_fu_931_p2;
wire   [0:0] xor_ln896_85_fu_943_p2;
wire   [0:0] xor_ln302_53_fu_955_p2;
wire   [0:0] overflow_55_fu_937_p2;
wire   [0:0] xor_ln302_54_fu_961_p2;
wire   [0:0] underflow_55_fu_949_p2;
wire   [0:0] or_ln302_25_fu_967_p2;
wire   [31:0] select_ln302_53_fu_973_p3;
wire   [31:0] select_ln350_25_fu_981_p3;
wire   [31:0] select_ln302_54_fu_989_p3;
reg    ap_ce_reg;
reg  signed [31:0] p_read_int_reg;
reg  signed [31:0] p_read1_int_reg;
reg   [31:0] p_read2_int_reg;
reg   [31:0] ap_return_int_reg;

motor_mul_32s_26ns_57_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 26 ),
    .dout_WIDTH( 57 ))
mul_32s_26ns_57_1_0_U62(
    .din0(p_read1_int_reg),
    .din1(r_V_33_fu_80_p1),
    .dout(r_V_33_fu_80_p2)
);

motor_mul_32s_26ns_57_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 26 ),
    .dout_WIDTH( 57 ))
mul_32s_26ns_57_1_0_U63(
    .din0(p_read25_reg_997),
    .din1(r_V_34_fu_81_p1),
    .dout(r_V_34_fu_81_p2)
);

motor_mul_32s_25s_56_1_0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 25 ),
    .dout_WIDTH( 56 ))
mul_32s_25s_56_1_0_U64(
    .din0(p_read_int_reg),
    .din1(r_V_fu_82_p1),
    .dout(r_V_fu_82_p2)
);

always @ (posedge ap_clk) begin
    ap_ce_reg <= ap_ce;
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        Range2_all_ones_25_reg_1055 <= r_V_33_fu_80_p2[32'd56];
        Range2_all_ones_26_reg_1084 <= r_V_34_fu_81_p2[32'd56];
        Range2_all_ones_reg_1026 <= r_V_fu_82_p2[32'd55];
        lhs_14_reg_1091 <= lhs_14_fu_748_p3;
        p_Result_131_reg_1008 <= r_V_fu_82_p2[32'd55];
        p_Result_132_reg_1019 <= p_Val2_143_fu_179_p2[32'd31];
        p_Result_133_reg_1033 <= r_V_33_fu_80_p2[32'd56];
        p_Result_134_reg_1044 <= r_V_33_fu_80_p2[32'd55];
        p_Result_136_reg_1062 <= r_V_34_fu_81_p2[32'd56];
        p_Result_137_reg_1073 <= r_V_34_fu_81_p2[32'd55];
        p_Result_s_reg_1002 <= r_V_fu_82_p2[32'd55];
        p_Val2_143_reg_1014 <= p_Val2_143_fu_179_p2;
        p_Val2_145_reg_1039 <= {{r_V_33_fu_80_p2[55:24]}};
        p_Val2_148_reg_1068 <= {{r_V_34_fu_81_p2[55:24]}};
        p_read25_reg_997 <= p_read2_int_reg;
        r_V_33_reg_119 <= r_V_33_fu_80_p2;
        r_V_34_reg_131 <= r_V_34_fu_81_p2;
        r_V_reg_115 <= r_V_fu_82_p2;
        tmp_211_reg_1050 <= r_V_33_fu_80_p2[32'd23];
        tmp_217_reg_1079 <= r_V_34_fu_81_p2[32'd23];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce_reg)) begin
        ap_return_int_reg <= select_ln302_54_fu_989_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        p_read1_int_reg <= p_read1;
        p_read2_int_reg <= p_read2;
        p_read_int_reg <= p_read;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return = ap_return_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return = select_ln302_54_fu_989_p3;
    end else begin
        ap_return = 'bx;
    end
end

assign and_ln891_25_fu_437_p2 = (carry_54_fu_391_p2 & Range2_all_ones_25_reg_1055);

assign and_ln891_26_fu_824_p2 = (carry_56_fu_778_p2 & Range2_all_ones_26_reg_1084);

assign and_ln891_fu_298_p2 = (carry_52_fu_253_p2 & Range2_all_ones_reg_1026);

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign carry_52_fu_253_p2 = (xor_ln896_fu_248_p2 & p_Result_131_reg_1008);

assign carry_54_fu_391_p2 = (xor_ln896_79_fu_385_p2 & p_Result_134_reg_1044);

assign carry_56_fu_778_p2 = (xor_ln896_81_fu_772_p2 & p_Result_137_reg_1073);

assign deleted_ones_51_fu_432_p2 = (or_ln890_25_fu_426_p2 & Range2_all_ones_25_reg_1055);

assign deleted_ones_52_fu_819_p2 = (or_ln890_26_fu_813_p2 & Range2_all_ones_26_reg_1084);

assign deleted_ones_fu_293_p2 = (or_ln890_fu_287_p2 & Range2_all_ones_reg_1026);

assign deleted_zeros_25_fu_407_p2 = (or_ln888_25_fu_401_p2 ^ Range2_all_ones_25_reg_1055);

assign deleted_zeros_26_fu_794_p2 = (or_ln888_26_fu_788_p2 ^ Range2_all_ones_26_reg_1084);

assign deleted_zeros_fu_268_p2 = (or_ln888_fu_263_p2 ^ Range2_all_ones_reg_1026);

assign lhs_14_fu_748_p3 = ((or_ln302_24_fu_726_p2[0:0] == 1'b1) ? select_ln302_51_fu_732_p3 : select_ln350_24_fu_740_p3);

assign or_ln302_24_fu_726_p2 = (xor_ln302_52_fu_720_p2 | overflow_54_fu_696_p2);

assign or_ln302_25_fu_967_p2 = (xor_ln302_54_fu_961_p2 | overflow_55_fu_937_p2);

assign or_ln302_fu_624_p2 = (xor_ln302_50_fu_618_p2 | overflow_53_fu_594_p2);

assign or_ln346_25_fu_496_p2 = (underflow_51_fu_483_p2 | overflow_51_fu_459_p2);

assign or_ln346_26_fu_883_p2 = (underflow_52_fu_870_p2 | overflow_52_fu_846_p2);

assign or_ln346_fu_356_p2 = (underflow_fu_343_p2 | overflow_fu_319_p2);

assign or_ln888_25_fu_401_p2 = (xor_ln888_53_fu_396_p2 | p_Result_135_fu_377_p3);

assign or_ln888_26_fu_788_p2 = (xor_ln888_55_fu_783_p2 | p_Result_138_fu_764_p3);

assign or_ln888_fu_263_p2 = (xor_ln888_fu_258_p2 | p_Result_132_reg_1019);

assign or_ln890_25_fu_426_p2 = (xor_ln890_25_fu_420_p2 | or_ln888_25_fu_401_p2);

assign or_ln890_26_fu_813_p2 = (xor_ln890_26_fu_807_p2 | or_ln888_26_fu_788_p2);

assign or_ln890_fu_287_p2 = (xor_ln890_fu_281_p2 | or_ln888_fu_263_p2);

assign or_ln895_25_fu_448_p2 = (xor_ln895_79_fu_442_p2 | p_Result_135_fu_377_p3);

assign or_ln895_26_fu_835_p2 = (xor_ln895_81_fu_829_p2 | p_Result_138_fu_764_p3);

assign or_ln895_fu_309_p2 = (xor_ln895_fu_303_p2 | p_Result_132_reg_1019);

assign or_ln896_25_fu_471_p2 = (xor_ln896_80_fu_465_p2 | xor_ln896_79_fu_385_p2);

assign or_ln896_26_fu_858_p2 = (xor_ln896_82_fu_852_p2 | xor_ln896_81_fu_772_p2);

assign or_ln896_fu_331_p2 = (xor_ln896_fu_248_p2 | xor_ln896_78_fu_325_p2);

assign overflow_51_fu_459_p2 = (xor_ln895_80_fu_454_p2 & or_ln895_25_fu_448_p2);

assign overflow_52_fu_846_p2 = (xor_ln895_82_fu_841_p2 & or_ln895_26_fu_835_p2);

assign overflow_53_fu_594_p2 = (xor_ln895_83_fu_588_p2 & p_Result_140_fu_580_p3);

assign overflow_54_fu_696_p2 = (xor_ln895_84_fu_690_p2 & p_Result_142_fu_682_p3);

assign overflow_55_fu_937_p2 = (xor_ln895_85_fu_931_p2 & p_Result_144_fu_923_p3);

assign overflow_fu_319_p2 = (xor_ln895_78_fu_314_p2 & or_ln895_fu_309_p2);

assign p_Result_135_fu_377_p3 = p_Val2_146_fu_372_p2[32'd31];

assign p_Result_138_fu_764_p3 = p_Val2_149_fu_759_p2[32'd31];

assign p_Result_139_fu_566_p3 = ret_V_fu_560_p2[32'd32];

assign p_Result_140_fu_580_p3 = p_Val2_151_fu_574_p2[32'd31];

assign p_Result_141_fu_668_p3 = ret_V_24_fu_662_p2[32'd32];

assign p_Result_142_fu_682_p3 = p_Val2_154_fu_676_p2[32'd31];

assign p_Result_143_fu_910_p3 = ret_V_25_fu_904_p2[32'd32];

assign p_Result_144_fu_923_p3 = p_Val2_156_fu_918_p2[32'd31];

assign p_Val2_142_fu_149_p4 = {{r_V_fu_82_p2[55:24]}};

assign p_Val2_143_fu_179_p2 = (zext_ln377_fu_175_p1 + p_Val2_142_fu_149_p4);

assign p_Val2_146_fu_372_p2 = (zext_ln377_25_fu_369_p1 + p_Val2_145_reg_1039);

assign p_Val2_149_fu_759_p2 = (zext_ln377_26_fu_756_p1 + p_Val2_148_reg_1068);

assign p_Val2_151_fu_574_p2 = ($signed(rhs_fu_362_p3) + $signed(32'd4805206));

assign p_Val2_154_fu_676_p2 = ($signed(rhs_24_fu_502_p3) + $signed(p_Val2_s_fu_646_p3));

assign p_Val2_156_fu_918_p2 = ($signed(rhs_25_fu_889_p3) + $signed(lhs_14_reg_1091));

assign p_Val2_s_fu_646_p3 = ((or_ln302_fu_624_p2[0:0] == 1'b1) ? select_ln302_fu_630_p3 : select_ln350_fu_638_p3);

assign r_V_33_fu_80_p1 = 57'd24323242;

assign r_V_34_fu_81_p1 = 57'd17765902;

assign r_V_fu_82_p1 = 56'd72057594022464233;

assign ret_V_24_fu_662_p2 = ($signed(sext_ln813_41_fu_658_p1) + $signed(sext_ln813_40_fu_654_p1));

assign ret_V_25_fu_904_p2 = ($signed(sext_ln813_43_fu_900_p1) + $signed(sext_ln813_42_fu_897_p1));

assign ret_V_fu_560_p2 = ($signed(sext_ln813_fu_556_p1) + $signed(33'd4805206));

assign rhs_24_fu_502_p3 = ((or_ln346_25_fu_496_p2[0:0] == 1'b1) ? select_ln346_39_fu_488_p3 : p_Val2_146_fu_372_p2);

assign rhs_25_fu_889_p3 = ((or_ln346_26_fu_883_p2[0:0] == 1'b1) ? select_ln346_40_fu_875_p3 : p_Val2_149_fu_759_p2);

assign rhs_fu_362_p3 = ((or_ln346_fu_356_p2[0:0] == 1'b1) ? select_ln346_38_fu_348_p3 : p_Val2_143_reg_1014);

assign select_ln302_51_fu_732_p3 = ((xor_ln302_51_fu_714_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_154_fu_676_p2);

assign select_ln302_53_fu_973_p3 = ((xor_ln302_53_fu_955_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_156_fu_918_p2);

assign select_ln302_54_fu_989_p3 = ((or_ln302_25_fu_967_p2[0:0] == 1'b1) ? select_ln302_53_fu_973_p3 : select_ln350_25_fu_981_p3);

assign select_ln302_fu_630_p3 = ((xor_ln302_fu_612_p2[0:0] == 1'b1) ? 32'd2147483647 : p_Val2_151_fu_574_p2);

assign select_ln346_38_fu_348_p3 = ((overflow_fu_319_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_39_fu_488_p3 = ((overflow_51_fu_459_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln346_40_fu_875_p3 = ((overflow_52_fu_846_p2[0:0] == 1'b1) ? 32'd2147483647 : 32'd2147483648);

assign select_ln350_24_fu_740_p3 = ((underflow_54_fu_708_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_154_fu_676_p2);

assign select_ln350_25_fu_981_p3 = ((underflow_55_fu_949_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_156_fu_918_p2);

assign select_ln350_fu_638_p3 = ((underflow_53_fu_606_p2[0:0] == 1'b1) ? 32'd2147483648 : p_Val2_151_fu_574_p2);

assign sext_ln813_40_fu_654_p1 = p_Val2_s_fu_646_p3;

assign sext_ln813_41_fu_658_p1 = rhs_24_fu_502_p3;

assign sext_ln813_42_fu_897_p1 = lhs_14_reg_1091;

assign sext_ln813_43_fu_900_p1 = rhs_25_fu_889_p3;

assign sext_ln813_fu_556_p1 = rhs_fu_362_p3;

assign tmp_208_fu_273_p3 = r_V_reg_115[32'd55];

assign tmp_214_fu_412_p3 = r_V_33_reg_119[32'd56];

assign tmp_220_fu_799_p3 = r_V_34_reg_131[32'd56];

assign tmp_fu_167_p3 = r_V_fu_82_p2[32'd23];

assign underflow_51_fu_483_p2 = (xor_ln896_88_fu_477_p2 & p_Result_133_reg_1033);

assign underflow_52_fu_870_p2 = (xor_ln896_89_fu_864_p2 & p_Result_136_reg_1062);

assign underflow_53_fu_606_p2 = (xor_ln896_83_fu_600_p2 & p_Result_139_fu_566_p3);

assign underflow_54_fu_708_p2 = (xor_ln896_84_fu_702_p2 & p_Result_141_fu_668_p3);

assign underflow_55_fu_949_p2 = (xor_ln896_85_fu_943_p2 & p_Result_143_fu_910_p3);

assign underflow_fu_343_p2 = (xor_ln896_87_fu_337_p2 & p_Result_s_reg_1002);

assign xor_ln302_50_fu_618_p2 = (xor_ln302_fu_612_p2 ^ 1'd1);

assign xor_ln302_51_fu_714_p2 = (p_Result_142_fu_682_p3 ^ p_Result_141_fu_668_p3);

assign xor_ln302_52_fu_720_p2 = (xor_ln302_51_fu_714_p2 ^ 1'd1);

assign xor_ln302_53_fu_955_p2 = (p_Result_144_fu_923_p3 ^ p_Result_143_fu_910_p3);

assign xor_ln302_54_fu_961_p2 = (xor_ln302_53_fu_955_p2 ^ 1'd1);

assign xor_ln302_fu_612_p2 = (p_Result_140_fu_580_p3 ^ p_Result_139_fu_566_p3);

assign xor_ln888_53_fu_396_p2 = (p_Result_134_reg_1044 ^ 1'd1);

assign xor_ln888_55_fu_783_p2 = (p_Result_137_reg_1073 ^ 1'd1);

assign xor_ln888_fu_258_p2 = (p_Result_131_reg_1008 ^ 1'd1);

assign xor_ln890_25_fu_420_p2 = (tmp_214_fu_412_p3 ^ 1'd1);

assign xor_ln890_26_fu_807_p2 = (tmp_220_fu_799_p3 ^ 1'd1);

assign xor_ln890_fu_281_p2 = (tmp_208_fu_273_p3 ^ 1'd1);

assign xor_ln895_78_fu_314_p2 = (p_Result_s_reg_1002 ^ 1'd1);

assign xor_ln895_79_fu_442_p2 = (deleted_zeros_25_fu_407_p2 ^ 1'd1);

assign xor_ln895_80_fu_454_p2 = (p_Result_133_reg_1033 ^ 1'd1);

assign xor_ln895_81_fu_829_p2 = (deleted_zeros_26_fu_794_p2 ^ 1'd1);

assign xor_ln895_82_fu_841_p2 = (p_Result_136_reg_1062 ^ 1'd1);

assign xor_ln895_83_fu_588_p2 = (p_Result_139_fu_566_p3 ^ 1'd1);

assign xor_ln895_84_fu_690_p2 = (p_Result_141_fu_668_p3 ^ 1'd1);

assign xor_ln895_85_fu_931_p2 = (p_Result_143_fu_910_p3 ^ 1'd1);

assign xor_ln895_fu_303_p2 = (deleted_zeros_fu_268_p2 ^ 1'd1);

assign xor_ln896_78_fu_325_p2 = (deleted_ones_fu_293_p2 ^ 1'd1);

assign xor_ln896_79_fu_385_p2 = (p_Result_135_fu_377_p3 ^ 1'd1);

assign xor_ln896_80_fu_465_p2 = (deleted_ones_51_fu_432_p2 ^ 1'd1);

assign xor_ln896_81_fu_772_p2 = (p_Result_138_fu_764_p3 ^ 1'd1);

assign xor_ln896_82_fu_852_p2 = (deleted_ones_52_fu_819_p2 ^ 1'd1);

assign xor_ln896_83_fu_600_p2 = (p_Result_140_fu_580_p3 ^ 1'd1);

assign xor_ln896_84_fu_702_p2 = (p_Result_142_fu_682_p3 ^ 1'd1);

assign xor_ln896_85_fu_943_p2 = (p_Result_144_fu_923_p3 ^ 1'd1);

assign xor_ln896_87_fu_337_p2 = (or_ln896_fu_331_p2 ^ and_ln891_fu_298_p2);

assign xor_ln896_88_fu_477_p2 = (or_ln896_25_fu_471_p2 ^ and_ln891_25_fu_437_p2);

assign xor_ln896_89_fu_864_p2 = (or_ln896_26_fu_858_p2 ^ and_ln891_26_fu_824_p2);

assign xor_ln896_fu_248_p2 = (p_Result_132_reg_1019 ^ 1'd1);

assign zext_ln377_25_fu_369_p1 = tmp_211_reg_1050;

assign zext_ln377_26_fu_756_p1 = tmp_217_reg_1079;

assign zext_ln377_fu_175_p1 = tmp_fu_167_p3;

endmodule //motor_dense_latency_ap_fixed_32_8_0_0_0_ap_fixed_32_8_0_0_0_config11_s
