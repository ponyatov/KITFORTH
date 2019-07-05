TEX = KITFORTH.tex header.tex

TEX += intro/intro.tex intro/iot.tex

TEX += FORTH/FORTH.tex

TEX += implement/implement.tex implement/way.tex
TEX += implement/structure.tex
FIG += /tmp/structure1.pdf
FIG += /tmp/structure2.pdf
FIG += /tmp/structure3.pdf
FIG += /tmp/structure4.pdf
TEX += compiler/bc.tex compiler/bcx.tex
TEX += compiler/compiler.tex

LATEX = pdflatex -halt-on-error

GITHASH = $(shell git rev-parse --short HEAD		)
GITLAST = $(shell git rev-list --tags --max-count=1	)
GITTAG  = $(shell git describe --tags $(GITLAST)	)

KITFORTH.pdf: $(TEX) $(LST) $(FIG) Makefile
	echo "\\date{версия $(GITTAG)}" > date.tex
	$(LATEX) $< && $(LATEX) $<

pdf: KITFORTH_$(GITTAG).pdf
KITFORTH_$(GITTAG).pdf: KITFORTH.pdf
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook \
		-dNOPAUSE -dQUIET -dBATCH \
		-sOutputFile=$@ $<
# /screen /ebook /prepress

/tmp/%.pdf: implement/%.dot
	dot -T pdf -o $@ $<
