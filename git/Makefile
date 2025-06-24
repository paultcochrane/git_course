.PHONY: clean

default: all

slides:
	latexmk -pdflua -shell-escape git.tex

all: slides

clean:
	rm -f *.vrb *.log *.nav *.snm *.toc *.aux *.out *.dvi *.fdb_latexmk *.fls git.pdf

help:
	@echo "Possible targets: all, slides, show, clean"
