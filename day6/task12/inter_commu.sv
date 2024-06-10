/* module inter_commu();

  // Event declaration
  event generate_event;
  
  // Random number storage
  int random_number;
  
  // Process to generate random number
  initial begin
	  //$display(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");

	  for(int i =0;i<=10;++i) begin
    	 	 #10; // Wait for 10 time units
      		random_number = $urandom_range(0, 100); // Generate a random number between 0 and 100
      		-> generate_event; // Trigger the event
	end
//    #300 $display("[%0t] fork will end here!",$time);
    
//    $display("End simulation time:[%0t]",$time);
  end
  
  // Process to print random number
  initial begin
	  for(int j=0;j<=15;++j)begin
      		@generate_event; // Wait for the event to be triggered
      		$display("Generated random number: %0d", random_number); // Print the random number
	end
  end
  initial begin
	  #250 $display("[%0t]Simulation about to end!",$time);
	  #300 $finish;
  end

endmodule
*/

module inter_commu();

  // Event declaration
  event generate_event;

  // Random number storage
  int random_number;

  // Process to generate random number
  initial begin

    forever begin
      #10; // Wait for 10 time units
      random_number = $urandom_range(0, 100); // Generate a random number between 0 and 100
      -> generate_event; // Trigger the event
    end

  end

  // Process to print random number
  initial begin
    forever begin
      @generate_event; // Wait for the event to be triggered
      $display("Generated random number: %0d", random_number); // Print the random number
    end
  end
//  initial begin
//          #250 $display("[%0t]Simulation about to end!",$time);
//          #300 $finish;
//  end

endmodule
