module repeat_loops;

        int sum=0;
	initial begin
		repeat(5) begin
			$display("repeating five times!");
			sum = 3 + sum;
			$display("Sum = %d!",sum);
        	end
	end
 endmodule
