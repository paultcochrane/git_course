.PHONY: clean

TEX_FILES = \
	CentralRepo.tex\
	DistributedRepos.tex\
	DistributedReposMainRepo.tex\
	BranchConcepts.tex\
	RollbackWithDiff.tex\
	RollbackWithMerge.tex

PDF_FILES = $(patsubst %.tex,%.pdf,$(TEX_FILES))

all: $(PDF_FILES)

CentralRepo.pdf: CentralRepo.tex CentralRepo_tikz.tex
	pdflatex $<
	pdflatex $<

DistributedRepos.pdf: DistributedRepos.tex DistributedRepos_tikz.tex
	pdflatex $<
	pdflatex $<

DistributedReposMainRepo.pdf: DistributedReposMainRepo.tex DistributedReposMainRepo_tikz.tex
	pdflatex $<
	pdflatex $<

BranchConcepts.pdf: BranchConcepts.tex BranchConcepts_tikz.tex
	pdflatex $<
	pdflatex $<

RollbackWithDiff.pdf: RollbackWithDiff.tex RollbackWithDiff_tikz.tex
	pdflatex $<
	pdflatex $<

RollbackWithMerge.pdf: RollbackWithMerge.tex RollbackWithMerge_tikz.tex
	pdflatex $<
	pdflatex $<

clean:
	rm -f *.log *.aux $(PDF_FILES)
