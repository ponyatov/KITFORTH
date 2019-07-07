.PHONY: all clean doxy

all:
	make -C FORTH
	make -C manual

doxy:
	rm -rf docs ; doxygen doxy.gen 1>/dev/null
	
merge:
	git checkout master && git checkout ponyatov -- Makefile FORTH manual doc
	make -C FORTH
	make -C manual
	make doxy
	
NOW = $(shell date +%d%m%y)
release:
	git tag $(NOW) && git push -v --tags gh
