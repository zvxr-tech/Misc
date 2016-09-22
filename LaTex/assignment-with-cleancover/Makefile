# Makefile to generate .pdf files from .tex files in the cwd.
# Clean will only remove .pdf files that have a matching .tex file existing
# This will also add a coverpage - this is needed when the cover page is
# dissimilar to the rest of the document.
#
# Mike Clark <clark.in.canadaATgmail.com> - 2016

FILES_IN=$(wildcard *.tex)
FILES_OUT=$(patsubst %.tex, %.pdf, $(FILES_IN))
FILES_COVER=coverpage.pdf
FINAL_PDF=FINAL.pdf

.PHONY: all
all: $(FILES_OUT) $(FINAL_PDF)

%.pdf: %.tex
	pdflatex $<
	-bibtex $(basename $<)
	pdflatex $<
	pdflatex $<

$(FINAL_PDF): $(FILES_COVER) $(FILES_OUT) 
	gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=$(FINAL_PDF) $^

.PHONY: clean
clean:
	@/bin/rm -f *~ *.bbl *.blg *.log *.aux $(FILES_OUT) $(FINAL_PDF)
