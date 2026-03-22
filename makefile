thesis.pdf: thesis.tex #thesis.aux
	lualatex thesis.tex

#thesis.aux: bibliography.bib thesis.tex
#	bibtex thesis

.PHONY = full clean

images: img/*
	lualatex --shell-escape thesis.tex

full: thesis.tex bibliography.bib
	lualatex thesis.tex
	bibtex thesis
	lualatex thesis.tex
	lualatex thesis.tex

clean:
	-rm thesis.out thesis.log thesis.aux thesis.bbl thesis.blg
