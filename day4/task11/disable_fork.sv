module disable_fork;
   
	initial begin	
      	
		fork
         
         #40 $display ("[%0t ns] Show #40 $display statement", $time);    
        
         begin
            #20 $display ("[%0t ns] Show #20 $display statement", $time);
            #50 $display ("[%0t ns] Show #50 $display statement", $time);
         end
         
          #60 $display ("[%0t ns] TIMEOUT", $time);
      join_any
      
      $display ("[%0tns] Fork join is done, let's disable fork", $time);      
      
      disable fork;
   end
endmodule
