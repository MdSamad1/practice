module string_task;
  string a = "DSi";
  string b = "VLSI";
  string c = "Team";
  
  
  
  initial begin
    
    $display ("We are %s!",{a," ",b," ",c});
  end
endmodule
