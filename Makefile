.PHONY: all clean doxy

all: doxy

doxy:
	rm -rf docs ; doxygen doxy.gen 1>/dev/null

NOW = $(shell date +%d%m%y)
release:
	git tag $(NOW) && git push -v --tags gh
