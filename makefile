.PHONY: all clean

all: thesis.pdf

clean:
	@rm -f *.aux */*.aux *.auxlock *.bbl *.blg *-blx.bib */*.dpth .DS_Store */.DS_Store *.fdb_latexmk *.fls .*.lb *.lof *.log */*.log */*.md5 *.out *.run.xml */*.run.xml *.synctex.gz *.toc

%.pdf: %.tex
	latexmk $*
