.PHONY: clean

FILES := \
	working-copy-staging-repo-choc-cake-direct-commit.pdf \
	working-copy-staging-repo-commit-staged-files.pdf \
	working-copy-staging-repo-edit-choc-cake.pdf \
	working-copy-staging-repo-edit-pavlova.pdf \
	working-copy-staging-repo-initial-state.pdf \
	working-copy-staging-repo-stage-choc-cake.pdf \
	working-copy-staging-repo-stage-pavlova.pdf

all: $(FILES)

%.pdf: %.tex wc-staging-repo-preamble.tex
	latexmk $<

clean:
	latexmk -c
