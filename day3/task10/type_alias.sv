module type_alias;

	typedef integer unsigned MyUInt;
	

	initial begin
		MyUInt Fifty = 50;
		MyUInt mynum = 70;
		$display("My Interger value is %d", Fifty);
		$display("My Interger value is %d", mynum);
	end
endmodule

