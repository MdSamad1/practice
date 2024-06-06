module array_foreach;
        int my_array[5] = {10, 20, 30, 40, 50};

    initial begin
            foreach (my_array[i]) begin
            $display("Element at index %0d: %0d", i, my_array[i]);
        end
    end
endmodule

