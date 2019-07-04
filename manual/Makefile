TEX = KITFORTH.tex header.tex

LATEX = pdflatex -halt-on-error

KITFORTH.pdf: $(TEX) $(LST) $(FIG)
	$(LATEX) $< && $(LATEX) $<
