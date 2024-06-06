module block_nonblock;
	reg[7:0] a,b,c,d,e,f,g,h,i;

	initial begin
		a = 8'hDA;
		$display("[%0t] a=%0h b=%0h c=%0h",$time,a,b,c);
		#10
		b = 8'hF1;
		$display("[%0t] a=%0h b=%0h c=%0h",$time,a,b,c);
		#5
		c =8'h30;
		$display("[%0t] a=%0h b=%0h c=%0h",$time,a,b,c);
	end
	    initial begin
                d <= 8'hDA;
                $display("[%0t] d=%0h e=%0h f=%0h",$time,d,e,f);
                #10
                e <= 8'hF1;
                $display("[%0t] d=%0h e=%0h f=%0h",$time,d,e,f);
                #5
                f <=8'h30;
		$display("[%0t] d=%0h e=%0h f=%0h",$time,d,e,f);
	end
endmodule
