.PHONY: all clean doxy

all: doxy

doxy:
	rm -rf docs ; doxygen doxy.gen 1>/dev/null
