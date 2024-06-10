#MODULES += class_intro.sv
#MODULES += class_handle.sv
#MODULES += class_constructor.sv
#MODULES += class_this.sv
#MODULES += class_super.sv
#MODULES += class_inheritance.sv
MODULES += class_poly.sv







#TOP = class_intro
#TOP = class_handle
#TOP = class_constructor
#TOP = class_this
#TOP = class_super
#TOP = class_inheritance
TOP = class_poly






vivado:
	xvlog -sv ${MODULES}
	xelab ${TOP} -s matha
	xsim matha -runall

clean:
	rm -rf *.log *.pb *.jou xsim.dir

.PHONY:
	clean vivado




