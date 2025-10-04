module motor_main (
    clk_1,
        ce_1,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        r, pos, vel,
        fc0_input_ap_vld,
        layer13_out,
        layer13_out_ap_vld
);
input   clk_1;
input   ce_1;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   fc0_input_ap_vld;
input [15:0] r;
input [15:0] pos;
input [15:0] vel;
output  [15:0] layer13_out;
output   layer13_out_ap_vld;

reg ap_done;
wire ap_idle;
wire ap_ready;
wire layer13_out_ap_vld;

// Clock divider to generate clk_2 (factor of 2)
reg clk_2 = 1'b0;
always @(posedge clk_1 or posedge ap_rst) begin
	if (ap_rst)
		clk_2 <= 1'b0;
	else
		clk_2 <= ~clk_2;
end

// Pulse stretching and synchronization for ap_start
reg ap_start_stretched;
reg ap_start_sync;
reg ap_start_prev;

always @(posedge clk_1 or posedge ap_rst) begin
	if (ap_rst) begin
		ap_start_stretched <= 1'b0;
		ap_start_prev <= 1'b0;
	end else begin
		ap_start_prev <= ap_start;
		
		// Detect rising edge of ap_start
		if (ap_start && !ap_start_prev) begin
			ap_start_stretched <= 1'b1;
		end
		// Clear when clk_2 rising edge occurs
		else if (clk_2 && !ap_start_prev) begin
			ap_start_stretched <= 1'b0;
		end
	end
end

// Generate ap_start pulse for the downsampled module
always @(posedge clk_2 or posedge ap_rst) begin
	if (ap_rst) begin
		ap_start_sync <= 1'b0;
	end else begin
		ap_start_sync <= ap_start_stretched;
	end
end

// Pulse stretching and synchronization for fc0_input_ap_vld
reg fc0_input_ap_vld_stretched;
reg fc0_input_ap_vld_sync;
reg fc0_input_ap_vld_prev;

always @(posedge clk_1 or posedge ap_rst) begin
	if (ap_rst) begin
		fc0_input_ap_vld_stretched <= 1'b0;
		fc0_input_ap_vld_prev <= 1'b0;
	end else begin
		fc0_input_ap_vld_prev <= fc0_input_ap_vld;
		
		// Detect rising edge of fc0_input_ap_vld
		if (fc0_input_ap_vld && !fc0_input_ap_vld_prev) begin
			fc0_input_ap_vld_stretched <= 1'b1;
		end
		// Clear when clk_2 rising edge occurs
		else if (clk_2 && !fc0_input_ap_vld_prev) begin
			fc0_input_ap_vld_stretched <= 1'b0;
		end
	end
end

// Generate fc0_input_ap_vld pulse for the downsampled module
always @(posedge clk_2 or posedge ap_rst) begin
	if (ap_rst) begin
		fc0_input_ap_vld_sync <= 1'b0;
	end else begin
		fc0_input_ap_vld_sync <= fc0_input_ap_vld_stretched;
	end
end

// ap_done pulse generation from clk_2 domain to clk_1 domain
reg ap_done_clk2_prev;
reg ap_done_stretched;
reg ap_done_stretched_prev;

// First, stretch the ap_done signal from clk_2 domain
always @(posedge clk_2 or posedge ap_rst) begin
	if (ap_rst) begin
		ap_done_clk2_prev <= 1'b0;
		ap_done_stretched <= 1'b0;
	end else begin
		ap_done_clk2_prev <= ap_done_clk2;
		
		// Detect rising edge and stretch the pulse
		if (ap_done_clk2 && !ap_done_clk2_prev) begin
			ap_done_stretched <= 1'b1;
		end
		// Keep it high for two clk_2 cycles to ensure clk_1 sees it
		else if (ap_done_clk2_prev && !ap_done_clk2) begin
			ap_done_stretched <= 1'b0;
		end
	end
end

// Then detect the stretched pulse on clk_1 and generate single cycle pulse
always @(posedge clk_1 or posedge ap_rst) begin
	if (ap_rst) begin
		ap_done_stretched_prev <= 1'b0;
		ap_done <= 1'b0;
	end else begin
		ap_done_stretched_prev <= ap_done_stretched;
		
		// Generate single cycle pulse on rising edge of stretched signal
		ap_done <= ap_done_stretched && !ap_done_stretched_prev;
	end
end

    motor motor_inst (
        .clk_1(clk_2),                           // Use downsampled clock
        .ce_1(ce_1),
        .ap_rst(ap_rst),
        .ap_start(ap_start_sync),                // Synchronized ap_start
        .ap_done(ap_done_clk2),                  // Internal ap_done
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .r(r),
        .pos(pos),
        .vel(vel),
        .fc0_input_ap_vld(fc0_input_ap_vld_sync), // Synchronized fc0_input_ap_vld
        .layer13_out(layer13_out),
        .layer13_out_ap_vld(layer13_out_ap_vld)
    );
endmodule	