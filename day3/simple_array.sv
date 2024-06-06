module first_array;
  
  bit [15:0] array1;
  bit [15:0] sum = 0 ;
  
  initial begin
    
    foreach(array1[i]) begin
      array1[i] = $random;
      sum = sum + array1[i];
      $display("array1[%0d] = %0b and sum = %d",i,array1[i],sum);
      
    end
  end
endmodule

