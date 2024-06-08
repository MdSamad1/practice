#Variables
MODULES = dut_101.sv dut_101_tb.sv
TOP = dut_101_tb


#Targets
vivado :
		xvlog -sv ${MODULES}
		xelab ${TOP} -s matha 
		xsim matha -runall

iverilog: 
		iverilog -o ${TOP}.vvp -g2012 ${MODULES}
		vvp ${TOP}.vvp

clean: 
		rm -rf xsim.dir *.log *.pb *.jou *.wdb

.PHONY: vivado iverilog clean

