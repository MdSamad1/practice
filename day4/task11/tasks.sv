task sum(int a,int b);
	begin
		#20;
		$display("[%0t] %d",$time,a+b);
	end
endtask

module tasks;

	initial begin
		$display("[%0t] time",$time);
		sum(5,7);
		end
endmodule


