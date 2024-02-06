#!/bin/bash
set -e

#wget https://cdn.scienhub.com/bezier-palm.zip
#unzip bezier-palm
cd bezier-palm

rm -rf /tmp/benchmark

start=$SECONDS
for i in 1 2 3;
do
    TMP="/tmp/benchmark/xelatex/$i"
    mkdir -p $TMP
    pdflatex -output-directory=$TMP -jobname=output palm-tpami.tex > /dev/null 2>&1
done
duration=$(( SECONDS - start ))
echo $duration seconds

