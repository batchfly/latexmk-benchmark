#!/bin/bash
set -e

cd AlJabr-1

OUTDIR=/tmp/benchmark-latexmk
rm -rf ${OUTDIR}

time for i in 1 2 3;
do
    TMP="${OUTDIR}/${i}"
    mkdir -p $TMP
    latexmk -cd -jobname=output -auxdir=$TMP -outdir=$TMP -synctex=1 -interaction=batchmode -f -xelatex Al-jabr-1.tex > /dev/null
done
