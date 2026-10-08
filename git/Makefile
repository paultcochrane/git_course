.PHONY: clean

default: slides

overview-background-setup.pdf: overview-background-setup.tex
	latexmk -pdflua -shell-escape overview-background-setup.tex

slides:
	latexmk -pdflua -shell-escape git.tex

all: \
	overview-background-setup.pdf

clean:
	latexmk -c
	rm -f git.pdf

help:
	@echo "Possible targets: all, slides, clean"
