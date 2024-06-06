// Code your design here
module dynamic_array_example;

    // Declare a dynamic array of integers
    int dynamic_array[];

    // Function to add a given number of elements to the dynamic array
    function void add_elements_to_array(input int num_elements);
        int current_size = dynamic_array.size();
        int new_size = current_size + num_elements;

        // Resize the array to accommodate the new elements
        dynamic_array = new[int'(new_size)];

        // Add elements to the array (for demonstration, add consecutive numbers starting from current_size)
        for (int i = current_size; i < new_size; i++) begin
            dynamic_array[i] = i; // You can modify this to add specific elements as needed
        end
    endfunction

    // Initial block to demonstrate the functionality
    initial begin
        // Display the initial size of the dynamic array
        $display("Initial size of the dynamic array: %0d", dynamic_array.size());

        // Add 5 elements to the dynamic array
        add_elements_to_array(5);
        $display("Size of the dynamic array after adding 5 elements: %0d", dynamic_array.size());
        $display("Dynamic array contents: %p", dynamic_array);

        // Add 3 more elements to the dynamic array
        add_elements_to_array(3);
        $display("Size of the dynamic array after adding 3 more elements: %0d", dynamic_array.size());
        $display("Dynamic array contents: %p", dynamic_array);
    end

endmodule 

