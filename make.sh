#!/bin/bash

cd ebmb
make

ebmb=`pwd`

export PATH=$ebmb:$PATH
export PYTHONPATH=$ebmb:$PYTHONPATH

cd manual
pdflatex ebmb
pdflatex ebmb
cd ..

cd ..

cd scripts

for script in *.py
do
    echo $script
    python $script
done

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
