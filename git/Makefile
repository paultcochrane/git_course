.PHONY: clean

default: all

slides:
	latexmk -pdflua -shell-escape git.tex

course-flow: course-flow.tex
	latexmk -pdflua $@

all: slides course-flow

clean:
	latexmk -c
	rm -f git.pdf

help:
	@echo "Possible targets: all, slides, show, clean"
