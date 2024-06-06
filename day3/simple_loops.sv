module simple_loops;
    int count = 0;

    initial begin
        for (int i = 1; i < 11; ++i) begin
            $display("%d", i);
            count = count + 2;
            $display("Count: %d", count);
        end
        if (count % 2 == 0) begin
            $display("Count is an Even number!");
        end else begin
            $display("Count is an Odd number!");
        end
    end
endmodule

