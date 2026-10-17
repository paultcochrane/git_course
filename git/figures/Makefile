.PHONY: clean project-repo-parts

FILES := \
	 initial-wedding-scene.pdf \
	 add-bridepair-wedding-scene.pdf \
	 bridepair-wedding-scene.pdf \
	 add-parents-bridepair-wedding-scene.pdf \
	 bridepair-parents-wedding-scene.pdf \
	 remove-parents-bridepair-wedding-scene.pdf \
	 add-witnesses-bridepair-wedding-scene.pdf \
	 bridepair-witnesses-wedding-scene.pdf

all: $(FILES) project-repo-parts

project-repo-parts:
	$(MAKE) --directory=$@

%.pdf: %.tex wedding-scene-preamble.tex
	latexmk $<

clean:
	latexmk -c
