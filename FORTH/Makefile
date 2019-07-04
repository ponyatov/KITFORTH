OS  ?= linux
EXE ?=

KITFORTH.log: bcx$(EXE) KITFORTH.bc
	./$^

B_C = bcx.c $(OS).c
B_H = bcx.h $(OS).h
bcx$(EXE): $(B_C) $(B_H) Makefile
	$(CC) -o $@ $(B_C)
	
C_C = compiler.cpp bcx.c
C_H = compiler.hpp bcx.h
compiler$(EXE): $(C_C) $(C_H) Makefile
	$(CXX) -o $@ $(C_C)

KITFORTH.bc: compiler$(EXE) KITFORTH.source
	./$^
