.PHONY: clean

BASENAME = git
TEXNAME = $(BASENAME).tex

TEXFILES = \

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