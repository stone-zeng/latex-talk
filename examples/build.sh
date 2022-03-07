if [ "$1" == "-c" ]
then
    rm *.aux *.fdb_latexmk *.fls *.log
else
    latexmk -pdflua emoji.tex
    latexmk -pdflua feynman-diag.tex
    latexmk -pdflua variable-font.tex

    cd fduthesis
    latexmk -pdfxe fduthesis-template.tex

    cd ../normal-dist
    latexmk -pdfxe normal-dist.tex

    cd ..
fi
