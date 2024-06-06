 module structs_sample;
    
    typedef struct {
        string name;
        string age;
        string address;
    } person;
  
    initial begin
        // Initializing the struct with values
        person samad = '{"raihan", "27", "Dhaka"};
        
        // Display the initial details of the struct
        $display("Samad details = %p", samad);
        
        // Modify the address field of the struct
        samad.address = "Mirpur";
        
        // Display the updated details of the struct
        $display("Samad details = %p", samad);
    end

endmodule


