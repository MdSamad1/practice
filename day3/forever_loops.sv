 module forever_loops;

	logic clk=0;
	initial forever begin
		#5 clk = ~ clk;
		$display("clk: %d",clk);
	end
	initial begin
		#50 $finish;
	end
 endmodule


