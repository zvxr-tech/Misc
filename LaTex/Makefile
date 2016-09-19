# Makefile to generate .pdf files from .tex files in the cwd.
# Clean will only remove .pdf files that have a matching .tex file existing
#
# This includes the ability to include a coverpage, that can be completely
# different styling than the main document. This is helpful for classes 
# where the document should include information that must be redacted on the
# cover page
#
# Mike Clark <clark.in.canadaATgmail.com> - 2016

FILES_IN=$(wildcard *.tex)
FILES_OUT=$(patsubst %.tex, %.pdf, $(FILES_IN))
# Used for cover pages, uncomment the target to activate this feature
FILES_COVER=coverpage.pdf
FINAL_PDF=FINAL.pdf


.PHONY: all
all: $(FILES_OUT) 

%.pdf: %.tex
	pdflatex $<
	-bibtex $(basename $<)
	pdflatex $<
	pdflatex $<

#$(FINAL_PDF): $(FILES_COVER) $(FILES_OUT)
#	gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=$(FINAL_PDF) $^


.PHONY: clean
clean:
	@/bin/rm -f *~ *.bbl *.blg *.log *.aux $(FILES_OUT) $(FILES_COVER)
