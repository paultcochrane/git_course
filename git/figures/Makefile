.PHONY: clean

FILES := \
	 initial-wedding-scene.pdf \
	 add-bridepair-wedding-scene.pdf

all: $(FILES)

%.pdf: %.tex
	latexmk $<

clean:
	latexmk -c
