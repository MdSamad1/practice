module events;
	event clk_event;

	initial begin
		#10 ->clk_event;
		$display("[%0t] thread1: clock event triggered!",$time);
	end

	initial begin
		$display("[%0t] thread2: waiting for clock event",$time);
		@(clk_event)
		 $display("[%0t] thread2: received for clock event",$time);
	 end
endmodule

