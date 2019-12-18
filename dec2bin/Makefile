# Copyright (c) 2019 Patrick Pedersen

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# Author		: Patrick Pedersen
# Description	: Makefile for the decimal to binary encoder
#				  To run a gtkwave simulation of the testbenchm simply run make

SRC  	 := dec2bin.vhdl dec2bin_tb.vhdl
SIMULATE := dec2bin_tb

all: simulate

syntax:
	ghdl -s $(SRC)

analyze: syntax
	ghdl -a $(SRC)

simulate: analyze
	ghdl -e $(SIMULATE)
	ghdl -r $(SIMULATE) --vcd=$(SIMULATE).vcd

gtkwave: simulate
	gtkwave $(SIMULATE).vcd

clean:
	rm -f *.cf