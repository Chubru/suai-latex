SHELL := /bin/bash

PRESENTATIONFILE := presentation-example
PRESENTATIONSTYLE := ./presentation
TMPDIR := ./tmp
PRESDIR := .

default: pdf

pdf: | $(TMPDIR)
	cd $(PRESDIR) && TEXINPUTS="$(PRESENTATIONSTYLE)//:" xelatex -output-directory=$(TMPDIR) $(PRESENTATIONFILE).tex
	mv $(TMPDIR)/$(PRESENTATIONFILE).pdf $(PRESENTATIONFILE).pdf


$(TMPDIR):
	mkdir -p $(TMPDIR)

.PHONY: pdf