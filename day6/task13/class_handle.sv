class Packet;
	int count;
endclass

module class_handle;
  	// Create two "handles" for the class Packet
  	// Note: These "handles" now point to NULL
	Packet pkt, pkt2;
  
  	initial begin

      
      // Call the new() function of this class and 
      // assign the member some value
      pkt = new();
      pkt.count = 16'habcd;
         
      // Display the class member using the "pkt" handle
      $display ("[pkt] count = 0x%0h", pkt.count);
      
      // Make pkt2 handle to point to pkt and print member variable
      pkt2 = pkt;
      $display ("[pkt2] count = 0x%0h", pkt2.count);
  	end
endmodule
