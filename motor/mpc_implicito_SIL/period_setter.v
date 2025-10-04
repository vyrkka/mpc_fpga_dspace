module period_setter(
    input wire clk,           // Clock signal
	input wire ce,
    input wire reset,         // Reset signal
    input wire [31:0] period, // Input period
    input wire done,          // Done signal
    output reg start,         // Start signal output
    output reg [31:0] min_period // Output for minimum period
);

    reg [31:0] counter = 'd0;       // Counter for the period
    reg [31:0] measure_counter = 'd0; // Counter for measuring min_period
    reg measuring = 'd0;            // Flag to indicate measuring phase
    reg start = 1'b0;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            counter <= 32'b0;
            measure_counter <= 32'b0;
            start <= 1'b0;
            measuring <= 1'b0;
            min_period <= 32'b0;
        end else begin
            counter <= counter + 1; // Counter always increments

            if (!measuring) begin
                // Normal counting phase
                if (counter >= period-1) begin
                    start <= 1'b1;
                    counter <= 32'b0; // Reset counter after period is reached
                    measuring <= 1'b1; // Switch to measuring phase
                end
            end else begin
                // Measuring phase
                start <= 1'b0;
                if (!done) begin
                    measure_counter <= measure_counter + 1;
                end else begin
                    min_period <= measure_counter;
                    measure_counter <= 32'b0;
                    measuring <= 1'b0; // Go back to counting phase
                end
            end
        end
    end
endmodule