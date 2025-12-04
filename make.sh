#!/bin/bash

cd ebmb
make

cd manual
pdflatex ebmb
pdflatex ebmb
cd ..

cd ..

cd scripts
./make.sh
cd ..

pdflatex -shell-escape thesis
bibtex8 thesis
pdflatex thesis
bibtex8 thesis
pdflatex thesis
pdflatex thesis

pdflatex -shell-escape slides
pdflatex slides
pdflatex slides
