.PHONY: clean figures

default: slides

%.pdf: %.tex git_course.cls title-preamble.tex
	latexmk -pdflua -shell-escape $<

slides:
	latexmk -pdflua -shell-escape git.tex

figures:
	$(MAKE) --directory=$@

overview-background-setup.pdf: installing_git.tex

git-on-your-own.pdf: figures

git-with-others.pdf: figures/simple_branch_tikz.tex figures/merge_simple_branch_tikz.tex

all: \
	overview-background-setup.pdf \
	git-on-your-own.pdf \
	git-with-others.pdf

clean:
	latexmk -c
	rm -f git.pdf

help:
	@echo "Possible targets: all, slides, clean"
