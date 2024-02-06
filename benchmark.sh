cd AlJabr-1

time for i in 1 2 3;
do
    TMP="/tmp/xelatex/$i"
    mkdir -p $TMP
    xelatex -output-directory=$TMP -jobname=output Al-jabr-1.tex > /dev/null
done

time for i in 1 2 3;
do
    TMP="/tmp/latexmk/$i"
    mkdir -p $TMP
    latexmk -cd -jobname=output -auxdir=$TMP -outdir=$TMP -synctex=1 -interaction=batchmode -f -xelatex Al-jabr-1.tex > /dev/null
done
