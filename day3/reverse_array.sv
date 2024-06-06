module reverse_array;
	int array[5] = '{1,2,3,4,5};
	initial begin
		$display ("Original array: %p",array);	
		array.reverse();
		$display ("Reverse array: %p",array);
	end
endmodule

