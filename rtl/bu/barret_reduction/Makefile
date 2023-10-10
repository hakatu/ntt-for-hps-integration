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
# INC_V = ./simlib/altera_primitives.v \
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

default : #$(SRC)
	$(SIM) $(VCSFLAGS) $(INC_V_FLAGS) $(INC_SV_FLAGS) -o $(TARGET) $(SRC)

lint:
	$(VERILATOR) $(VERILATOR_FLAGS) -f $(FILELIST)

sim:
	./$(TARGET)

wave-vcd:
	gtkwave *.vcd &

wave-fsdb:
	verdi -dbdir simv.daidir/ -ssf *.fsdb &

clean :
	-rm -r csrc
	-rm -r DVEfiles
	-rm -r verdiLog
	-rm -r vfastLog
	-rm $(TARGET)
	-rm -r $(TARGET).daidir
	-rm ucli.key
	-rm *.fsdb
	-rm *.vcd
	-rm *.vcd.fsdb
	-rm novas.conf
	-rm novas.rc
	-rm inter.fsdb
	rm -f $(FILELIST)

# Specify phony targets (targets that are not files)
.PHONY: clean generate_filelist lint
