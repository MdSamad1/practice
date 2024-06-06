module unpacked_array;
  int a [3:0];
  int max =0;
  
 
  initial begin
    a[0] = $random;
    a[1] = $random;
    a[2] = $random;
    a[3] = $random;
    $display("a[0] = %b [%0d]",a[0],a[0]);
    $display("a[1] = %b [%0d]",a[1],a[1]);
    $display("a[2] = %b [%0d]",a[2],a[2]);
    $display("a[3] = %b [%0d]",a[3],a[3]);
    
    for(int i=0; i<4; ++i) begin
      if(a[i]>=max) begin
        max = a[i];
        $display("Comparing after iteration, In a[%0d] and Max number is %0d",i,max);
      end
    end 
  end
endmodule

