.PHONY: clean cleanall 

BASENAME = git_advanced

default: $(BASENAME).pdf clean

%.pdf: %.tex
	pdflatex $<
	pdflatex $<

arara: git_advanced.tex
	arara $<

clean:
	rm -f *.log *.nav *.snm *.toc *.aux *.out *.dvi *.vrb

cleanall: clean
	rm -f $(BASENAME).pdf

