.PHONY: clean

BASENAME = version_control_course
TEXNAME = $(BASENAME).tex

TEXFILES = \
	   concepts.tex\
	   cygwin_install.tex\
	   ssh_concepts.tex\
	   ssh_on_windows.tex\
	   subversion.tex\
	   git.tex

default: all

slides: $(BASENAME).pdf

$(BASENAME).pdf: $(TEXNAME) $(TEXFILES) vcs_beamer.cls
	pdflatex $(TEXNAME)
	#pdflatex $(TEXNAME)

all: slides

show:
	evince $(BASENAME).pdf 2> /dev/null &

clean:
	rm -f *.vrb *.log *.nav *.snm *.toc *.aux *.out *.dvi $(BASENAME).pdf

help:
	@echo "Possible targets: all, slides, show, clean"
