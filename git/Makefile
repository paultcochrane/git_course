.PHONY: clean

BASENAME = git
TEXNAME = $(BASENAME).tex

TEXFILES = figures/CentralRepo_tikz.tex \
	   figures/simple_branch_tikz.tex \
	   figures/merge_simple_branch_tikz.tex \
	   figures/working_dir_staging_repo.tex \
	   about_the_course.tex \
	   version_control_systems.tex \
	   installing_git.tex

default: all

slides: $(BASENAME).pdf

$(BASENAME).pdf: $(TEXNAME) $(TEXFILES) git_course.cls
	xelatex $(TEXNAME) && xelatex $(TEXNAME)

all: slides

show:
	evince $(BASENAME).pdf 2> /dev/null &

clean:
	rm -f *.vrb *.log *.nav *.snm *.toc *.aux *.out *.dvi $(BASENAME).pdf

help:
	@echo "Possible targets: all, slides, show, clean"
