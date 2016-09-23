# Makefile to generate .pdf files from .tex files in the cwd.
# Clean will only remove .pdf files that have a matching .tex file existing
# This will also add a coverpage - this is needed when the cover page is
# dissimilar to the rest of the document.
#
# Mike Clark <clark.in.canadaATgmail.com> - 2016

FILES_IN=$(wildcard *.tex)
FILES_OUT=$(patsubst %.tex, %.pdf, $(FILES_IN))

.PHONY: all
all: $(FILES_OUT) 

%.pdf: %.tex
	pdflatex $<
	-bibtex $(basename $<)
	pdflatex $<
	pdflatex $<


.PHONY: clean
clean:
	@/bin/rm -f *~ *.bbl *.blg *.log *.aux $(FILES_OUT)
