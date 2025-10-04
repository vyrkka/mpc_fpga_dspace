module conv_32_to_21(
	input wire [31:0] in_signal,
	output wire [20:0] out_signal
);

	assign out_signal = {in_signal[31], in_signal[19:0]};

endmodule