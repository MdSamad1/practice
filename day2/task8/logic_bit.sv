module logic_bit;

    
    logic [3:0] a;
    bit [3:0] b;

    initial begin
        
        a = 4'bx;
        
        b = 4'bz;

        
        $display("Logic variable a: %b", a);
        $display("Bit variable b: %b", b);
    end

endmodule

