.PHONY: all clean doxy

all: doxy

doxy:
	rm -rf docs ; doxygen doxy.gen 1>/dev/null
	
pub:
	git checkout master && git checkout Makefile ponyatov FORTH manual doc
	make -C FORTH
	make -C manual
	make doxy

NOW = $(shell date +%d%m%y)
release:
	git tag $(NOW) && git push -v --tags gh
