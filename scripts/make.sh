#!/bin/bash

ebmb=$(dirname $(pwd))/ebmb

export PATH=$ebmb:$PATH
export PYTHONPATH=$ebmb:$PYTHONPATH

for script in *.py
do
    echo $script
    python $script
done
