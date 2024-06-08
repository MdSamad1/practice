module dut_101 (
  input  logic [7:0] data,  // input data
  output logic       out    // odd parity out
);

	logic [7:0] result;
  	assign result = data[0] ^ data[1] ^ data[2] ^ data[3]^ data[4] ^ data[5] ^ data[6]^ data[7];
	assign out = result;
endmodule
