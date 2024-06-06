module pri_uni;
	
	int a = 4;

	initial begin
		unique if(a==4) begin
			$display("display1: a = %d",a);
		end
		else if (a==4) begin
                        $display("display2: a = %d",a);
                end  
		else begin
                        $display("display3:Mismatch value!");
                end
	end
	initial begin
		  priority if(a==4) begin
                        $display("display1: a = %d",a);
                end
                else if (a==4) begin                                                                                                                   $display("display2: a = %d",a);                                                                                        end
                else begin                                                                                                                             $display("display3:Mismatch value!");                                                                                  end

	end 
endmodule
