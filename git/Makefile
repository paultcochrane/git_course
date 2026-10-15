.PHONY: clean figures

default: all

%.pdf: %.tex git_course.cls title-preamble.tex
	latexmk -pdflua -shell-escape $<

figures:
	$(MAKE) --directory=$@

overview-background-setup.pdf: installing_git.tex

git-on-your-own.pdf: figures

git-with-others.pdf: figures/simple_branch_tikz.tex figures/merge_simple_branch_tikz.tex

tips-and-tricks.pdf: \
	restore-deleted-file-from-sha.txt \
	most-recent-commit-affecting-file.txt \
	recover-lost-or-deleted-commit.txt \
	set-executable-bit-on-windows-git.txt \
	extract-subdir-into-own-repo-with-filter-branch.txt \
	extract-subdir-into-own-repo-with-git-subtree.txt

all: \
	overview-background-setup.pdf \
	git-on-your-own.pdf \
	git-with-others.pdf \
	tips-and-tricks.pdf

clean:
	latexmk -c
	rm -f git.pdf

help:
	@echo "Possible targets: all, clean"
