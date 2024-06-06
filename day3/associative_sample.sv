module associative_sample;
  int my_fruits [string]; 
  initial begin
    my_fruits = '{"apple": 5, "banana": 3, "orange": 7};
    $display("my_fruits: %p",my_fruits);
   	my_fruits["grape"] = 9;
    $display("my_fruits: %p",my_fruits);
  end
endmodule


