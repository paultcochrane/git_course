.PHONY: clean cleanall 

default: git_intro.pdf purge

%.pdf: %.tex
	pdflatex $<
	pdflatex $<

purge:
	rm -f *.log *.nav *.snm *.toc *.aux *.out *.dvi *.vrb

show:
	evince git_intro.pdf &

clean: purge
	rm -f git_intro.pdf

