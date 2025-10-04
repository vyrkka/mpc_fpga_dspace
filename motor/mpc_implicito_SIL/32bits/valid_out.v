module valid_out (
    input wire clk_1,
	input wire ce_1,
    input wire [31:0] input_signal,
    input wire valid_signal,
    output reg [31:0] output_signal
);

    reg [31:0] previous_input = 'd0;

    always @(posedge clk_1) begin
        if (valid_signal) begin
            output_signal <= input_signal;
            previous_input <= input_signal;
        end else begin
            output_signal <= previous_input;
        end
    end

endmodule