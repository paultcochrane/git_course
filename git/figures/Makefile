.PHONY: clean

FILES := \
	 initial-wedding-scene.pdf \
	 add-bridepair-wedding-scene.pdf \
	 bridepair-wedding-scene.pdf \
	 add-parents-bridepair-wedding-scene.pdf \
	 bridepair-parents-wedding-scene.pdf \
	 remove-parents-bridepair-wedding-scene.pdf \
	 add-witnesses-bridepair-wedding-scene.pdf \
	 bridepair-witnesses-wedding-scene.pdf

all: $(FILES)

%.pdf: %.tex
	latexmk $<

clean:
	latexmk -c
