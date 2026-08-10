.PHONY: clean

default: all

slides:
	latexmk -pdflua -shell-escape git.tex

all: slides

clean:
	latexmk -c
	rm -f git.pdf

help:
	@echo "Possible targets: all, slides, show, clean"
