module packed_array;
  bit [15:0] a;
  bit [7:0] count = 0;
  
 
  initial begin
     a = $random;
    $display("a = %b [%0d]",a,a);
    
    for(int i=0; i<a; ++i) begin
      if(a[i]) begin
        count = count + 1'b1;
        $display("Counting 1 after iteration %0d is %0d",i,count);
      end
    end
  end
endmodule

