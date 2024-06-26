module and_gate_tb;
    reg a, b;
    wire out;

    // Instantiate the AND gate
    and_gate u1 (.a(a), .b(b), .out(out));

    initial begin
        
	// Test all possible input combinations
        $dumpfile("and_gate_tb.vcd");
	$dumpvars(0,and_gate_tb);
	a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        // Finish the simulation
        $finish;
    end

    initial begin
        $monitor("a = %b, b = %b, out = %b", a, b, out);
    end
endmodule

