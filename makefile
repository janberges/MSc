all: thesis.pdf

%.pdf: %.tex %.bbl %.aux
	pdflatex $<

%.bbl: %.aux
	bibtex $*

%.aux: %.tex
	pdflatex $<

.PHONY: clean

clean:
	rm -f thesis-blx.bib thesis.aux thesis.auxlock thesis.bbl thesis.blg \ 	theses.lof thesis.log thesis.out thesis.run.xml thesis.synctex.gz \
	thesis.toc */*.aux
