# Variables
MODULES = and_gate.v and_gate_tb.v
OUTPUT = and_gate_tb.vvp

# Default target
all: $(OUTPUT)

# Compile the Verilog files
$(OUTPUT): $(MODULES)
	iverilog -o $(OUTPUT) $(MODULES)

# Run the simulation
run: $(OUTPUT)
	vvp $(OUTPUT)

# Clean the output files
clean:
	rm -f $(OUTPUT)

.PHONY: all run clean


