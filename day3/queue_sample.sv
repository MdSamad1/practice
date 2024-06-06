module queue_sample;
	int fruits [$];

	initial begin
		fruits = '{5,3,7};
		$display("Original fruits: %p",fruits);
		fruits.push_back(8);
		$display("Fruits after push_back: %p",fruits);
		fruits.pop_front();
		$display("Fruits after pop_front: %p",fruits);

	end
	endmodule


