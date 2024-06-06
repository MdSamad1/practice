module do_while_loops;
    
    int LIMIT = 10;
    
    initial begin
        
        int a = 0;
        int b = 1;
        int next;

        $display("%0d", a);
        $display("%0d", b);

        
        while (1) begin
            next = a + b;
            if (next > LIMIT) begin
               
		break;
            end
            $display("%0d", next);
            a = b;
            b = next;
        end
    end
endmodule

