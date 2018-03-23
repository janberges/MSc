#!/bin/bash

cd ebmb
make

ebmb=`pwd`

export PATH=$ebmb:$PATH
export PYTHONPATH=$ebmb:$PYTHONPATH

cd ..
