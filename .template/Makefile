.PHONY: clean withversion run

INPUT=support
OUTPUT=$(shell basename $(CURDIR))
DEP=$(wildcard *.sty img/*.png gen/img/*.png)
THEME=Custom
IMAGES := $(patsubst %.pdf,gen/%.png,$(wildcard img/*.pdf))



.DEFAULT_GOAL := all 

all: build
	
build: gen/$(OUTPUT).pdf

run-old: gen/$(OUTPUT).pdf
	 impressive -f -g 2048x768+330+0  --nologo gen/$(OUTPUT)_notes.pdf
run: gen/$(OUTPUT).pdf
	pdfpc gen/$(OUTPUT)_notes.pdf --notes=left --switch-screens

clean:
	rm -rf gen

pdf2png: $(IMAGES)

gen/%.pdf: pdf2png
	mkdir -p gen
	pandoc --citeproc -st beamer -V theme:$(THEME)  --slide-level=2 $(INPUT).md -o gen/$(OUTPUT).pdf
	pandoc --slide-level=2 $(INPUT).md -o gen/$(OUTPUT).pptx
	pandoc --citeproc -st beamer -V classoption=notes -V theme:$(THEME) --slide-level=2 $(INPUT).md -o gen/$(OUTPUT)_notes.pdf -H beamer-notes.tex

gen/%.html: pdf2png
	pandoc -t revealjs -s -o gen/$(OUTPUT).html $(INPUT).md -V transition=cube -V revealjs-url=https://revealjs.com

gen/img/%.png:
	mkdir -p gen/img
	pdftoppm $(subst gen/,,$(basename $@)).pdf $(basename $@) -png -singlefile
