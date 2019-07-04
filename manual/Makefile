TEX = KITFORTH.tex header.tex

TEX += intro/intro.tex

TEX += FORTH/FORTH.tex

TEX += compiler/compiler.tex

LATEX = pdflatex -halt-on-error

GITHASH = $(shell git rev-parse --short HEAD		)
GITLAST = $(shell git rev-list --tags --max-count=1	)
GITTAG  = $(shell git describe --tags $(GITLAST)	)

KITFORTH.pdf: $(TEX) $(LST) $(FIG) Makefile
	echo "\\date{версия $(GITTAG)}" > date.tex
	$(LATEX) $< && $(LATEX) $<
