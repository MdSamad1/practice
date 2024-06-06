module wait_fork;
   
	initial begin
		
		fork
          
			#40 $display ("[%0t ns] Show #40 $display statement", $time);    
      
			begin
				#20 $display ("[%0t ns] Show #20 $display statement", $time);
              	
				#50 $display ("[%0t ns] Show #50 $display statement", $time);
			end
      
			#60 $display ("[%0t ns] TIMEOUT", $time);
		join_any

      	$display ("[%0t ns] Fork join is done, wait fork to end", $time);
      
      	fork
          #10 $display ("[%0t ns] Wait for 10", $time);
          #20 $display ("[%0t ns] Wait for 20", $time);
        join_any
      
      	wait fork;
        $display ("[%0t ns] Fork join is over", $time);
   end
endmodule
