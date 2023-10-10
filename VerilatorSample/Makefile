# Target executable
TARGET = simv

# Source files
SRC = $(wildcard *.sv) $(wildcard *.v)

# Set the number of threads to use for parallel compilation (2 * cores)
CORES = $(shell getconf _NPROCESSORS_ONLN)
THREADS = $(shell echo $$((2 * $(CORES))))

# VCS flags
VCSFLAGS = -full64 -sverilog -kdb -debug_all -debug_acc+pp+fsdb +lint=all,noVCDE +warn=all -j$(THREADS) \
					 -timescale=1ns/1ps +v2k
COMMON_FLAGS +=

# Simulator
SIM = vcs

# Altera FPGA library files (for simulation)
INC_V = ./simlib/altera_primitives.v \
				./simlib/220model.v \
				./simlib/sgate.v \
				./simlib/altera_mf.v \
				./simlib/cyclonev_atoms.v
INC_V_FLAGS = $(addprefix -v , $(INC_V))
INC_SV =
INC_SV_FLAGS = $(addprefix -v , $(INC_SV))

# Verilog and SystemVerilog source files directory
SRC_DIR := .

# Output filelist
FILELIST := filelist.f

# Find all Verilog and SystemVerilog source files in the source directory
VERILOG_FILES := $(wildcard $(SRC_DIR)/*.v)
SYSTEMVERILOG_FILES := $(wildcard $(SRC_DIR)/*.sv)

# Combine Verilog and SystemVerilog files
ALL_VERILOG_FILES := $(VERILOG_FILES) $(SYSTEMVERILOG_FILES)

# Verilator command for linting
VERILATOR := verilator

# Flags for Verilator linting (add more flags as needed)
VERILATOR_FLAGS := --lint-only

# Phony target to generate the filelist.f
generate_filelist:
	printf "%s\n" $(ALL_VERILOG_FILES) > $(FILELIST)

default : $(SRC)
	$(SIM) $(VCSFLAGS) $(INC_V_FLAGS) $(INC_SV_FLAGS) -o $(TARGET) $(SRC)

mat1 : $(SRC) .cp_mat1
	$(SIM) $(VCSFLAGS) $(INC_V_FLAGS) $(INC_SV_FLAGS) -o $(TARGET) $(SRC)

mat2 : $(SRC) .cp_mat2
	$(SIM) $(VCSFLAGS) $(INC_V_FLAGS) $(INC_SV_FLAGS) -o $(TARGET) $(SRC)

mat3 : $(SRC) .cp_mat3
	$(SIM) $(VCSFLAGS) $(INC_V_FLAGS) $(INC_SV_FLAGS) -o $(TARGET) $(SRC)

mat_gen : $(SRC) .cp_mat_gen
	$(SIM) $(VCSFLAGS) $(INC_V_FLAGS) $(INC_SV_FLAGS) -o $(TARGET) $(SRC)

lint:
	$(VERILATOR) $(VERILATOR_FLAGS) -f $(FILELIST)

sim:
	./$(TARGET)

wave-vcd:
	gtkwave top.vcd

wave-fsdb:
	verdi -dbdir simv.daidir/ -ssf top.fsdb

.cp_mat1 :
	cp matA_1.mif matA.mif
	cp matB_1.mif matB.mif
	cp matC_1.mif matC.mif

.cp_mat2 :
	cp matA_2.mif matA.mif
	cp matB_2.mif matB.mif
	cp matC_2.mif matC.mif

.cp_mat3 :
	cp matA_3.mif matA.mif
	cp matB_3.mif matB.mif
	cp matC_3.mif matC.mif

.cp_mat_gen :
	python generate_matrix.py matA_gen.mif matB_gen.mif matC_gen.mif
	cp matA_gen.mif matA.mif
	cp matB_gen.mif matB.mif
	cp matC_gen.mif matC.mif

clean :
	-rm -r csrc
	-rm -r DVEfiles
	-rm -r verdiLog
	-rm -r vfastLog
	-rm $(TARGET)
	-rm -r $(TARGET).daidir
	-rm ucli.key
	-rm matA.mif
	-rm matB.mif
	-rm matC.mif
	-rm top.fsdb
	-rm top.vcd
	-rm top.vcd.fsdb
	-rm novas.conf
	-rm novas.rc
	-rm inter.fsdb
	rm -f $(FILELIST)

# Specify phony targets (targets that are not files)
.PHONY: mat1 mat2 mat_gen .cp_mat1 .cp_mat2 .cp_mat_gen clean generate_filelist lint
