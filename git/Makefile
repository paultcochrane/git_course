.PHONY: clean

default: slides

%.pdf: %.tex
	latexmk -pdflua -shell-escape $<

slides:
	latexmk -pdflua -shell-escape git.tex

all: \
	overview-background-setup.pdf \
	git-on-your-own.pdf

clean:
	latexmk -c
	rm -f git.pdf

help:
	@echo "Possible targets: all, slides, clean"
