#!/bin/bash

# documentation: https://www.ghostscript.com/doc/current/VectorDevices.htm#PDFA
# template: /usr/share/ghostscript/9.26/lib/PDFA_def.ps
# see also: http://www.iup.uni-bremen.de/~hilboll/blog/2014/04/creating-pdf/a-output-using-xetex-and-ghostscript/

infile=${1:-thesis.pdf}
outfile=${2:-${infile%.pdf}_a.pdf}
deffile=`pwd`/PDFA_def.ps

ghostscript \
    -sDEVICE=pdfwrite \
    -dPDFSETTINGS=/prepress \
    -dPDFA=1 \
    -dCompatibilityLevel=1.4 \
    -dPDFACompatibilityPolicy=1 \
    -sColorConversionStrategy=UseDeviceIndependentColor \
    -sProcessColorModel=DeviceRGB \
    -dNOSAFER \
    -o $outfile \
    $infile \
    $deffile

# -o combines sOutputFile, -dBATCH, and -dNOPAUSE
