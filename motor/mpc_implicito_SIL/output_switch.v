module output_switch(
    input wire clk_1,        // Clock signal
	input wire ce_1,
    input wire valid,      // Valid signal to switch output
    input wire [31:0] y,       // First input signal
    input wire [31:0] yhat,    // Second input signal
    output reg [31:0] yout      // Output signal
);

    // Internal signal to track if valid has been asserted
    reg switched = 'b0;

    always @(posedge clk_1) begin

        if (!switched) begin
            // If we haven't switched yet, check for valid
            if (valid) begin
                switched <= 1;
                yout <= yhat;
            end
            else begin
                yout <= y;
            end
        end
        else begin
            // Once switched, always output yhat
            yout <= yhat;
        end
    end
endmodule