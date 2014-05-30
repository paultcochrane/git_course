.PHONY: clean

TEX_FILES = \
	CentralRepo.tex\
	CourseFlow.tex\
	DistributedRepos.tex\
	DistributedReposMainRepo.tex\
	BranchConcepts.tex\
	RollbackWithDiff.tex\
	RollbackWithMerge.tex

PDF_FILES = $(patsubst %.tex,%.pdf,$(TEX_FILES))

all: $(PDF_FILES)

%.pdf: %.tex %_tikz.tex
	pdflatex $<
	pdflatex $<

clean:
	rm -f *.log *.aux $(PDF_FILES)
