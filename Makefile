#############################################################################
#
#    Filename: Makefile
#      Author: Chris Charles
#
#############################################################################

LIB=lib

all: elegant

sample-resume: $(LIB)/elegant.tex sample-resume.tex
	texexec --usemodules=$(LIB)/elegant sample-resume.tex

elegant: elegant-resume.pdf elegant-cover.pdf
	pdftk elegant-cover.pdf elegant-resume.pdf cat output elegant.pdf

elegant-resume.pdf: $(LIB)/elegant.tex resume.tex
	texexec --result=elegant-resume --usemodules=$(LIB)/elegant resume.tex

elegant-cover.pdf: $(LIB)/elegant-cover.tex cover-letter.tex
	texexec --result=elegant-cover --usemodules=$(LIB)/elegant-cover cover-letter.tex

clean:
	rm -f *.tui *.tuo *.mp *.log *.pdf *.tmp
	rm -rf texmf-var
