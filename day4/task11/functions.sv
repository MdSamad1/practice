module functions;

	function int factorial(int n);
		int fact =1;
		$display("fact:");
		for(int i=1;i<=n;++i) begin
			fact = fact*i;
			$display("%d",fact);
		end
	endfunction

	initial begin
		factorial(7);
		$display("Completed!");
	end
endmodule
