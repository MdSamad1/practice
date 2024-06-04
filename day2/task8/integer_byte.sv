module integer_byte;
  integer a;
  byte b;
  reg [31:0] product;
  
  initial begin
    a = 7;
    b = 9;
    #20
    product = a * b;
    
    $display("Product of a and d: %0d",product);
  end
endmodule
