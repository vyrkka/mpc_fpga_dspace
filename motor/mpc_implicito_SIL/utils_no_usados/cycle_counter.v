module cycle_counter (
    input wire clk_1,
	input wire ce_1,
    input wire reset,
    input wire [1:0] mode,
    input wire ap_ready,
    input wire ap_done,
    output reg ap_start,
    output reg [15:0] num_cycles
);

    // Internal counter to track the number of cycles
    reg [15:0] cycle_count = 'd0;

    // Combinational logic for outputs
    always @* begin
        case (mode)
            2'b00: begin // Mode 1
                ap_start = 'd1;
                num_cycles = 'd0;
            end
            2'b01: begin // Mode 2
                ap_start = (cycle_count == 'd0) ? 1 : 0;
                num_cycles = (ap_ready) ? (cycle_count + 'd1) : 0;
            end
            2'b10: begin // Mode 3
                ap_start = (cycle_count == 'd0) ? 1 : 0;
                num_cycles = (ap_done) ? (cycle_count + 'd1) : 0;
            end
            default: begin // Default case
                ap_start = 'd0;
                num_cycles = 'd0;
            end
        endcase
    end

    // Increment the cycle count when ap_start is high in mode 2
    always @(posedge clk_1 or posedge reset) begin
        if (reset) begin
            cycle_count <= 'd0;
        end else begin
            if ((mode == 2'b01) && (~ap_ready)) begin
                cycle_count <= cycle_count + 'd1;
            end else if ((mode == 2'b10) && (~ap_done)) begin
                cycle_count <= cycle_count + 'd1;
            end else begin
				cycle_count <= 'd0;
			end
        end
    end

endmodule