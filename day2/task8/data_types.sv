module data_types;

	logic [2:0] a = 3'b101;
	bit [3:0] b = 4'b1000;
	integer c = 11;
	byte d = 13;

	logic [3:0] u;
	bit [7:0] v;
	integer w;
	byte x;

	initial begin
		u = a + $signed(b);
		$display("Sum of a and b is %0d",u);

		v = $signed(c) * $signed(d);
		$display("Product of c and d is %0d",v);
		
	end			
endmodule

