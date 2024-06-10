 MODULES += inter_commu.sv
# MODULES += semaphore.sv
# MODULES += mailbox.sv
#MODULES += interface_s.sv interface_s_tb.sv

TOP = inter_commu
#TOP = semaphore
#TOP = mailbox_e
#TOP = interface_s_tb

vivado: 
	xvlog -sv ${MODULES}
	xelab ${TOP} -s matha
	xsim matha -runall

clean: 
	rm -rf *.log *.pb *.jou *xsim.dir

.PHONY: 
	clean vivado


