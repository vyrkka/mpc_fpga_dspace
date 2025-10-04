module conv_21_to_32(
	input wire [20:0] in_signal,
	output wire [31:0] out_signal
);

	assign out_signal = {{11{in_signal[20]}}, in_signal};

endmodule