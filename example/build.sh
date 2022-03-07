if [ "$1" == "-c" ]
then
    rm *.aux *.fdb_latexmk *.fls *.log
else
    latexmk -pdfxe  normal-dist.tex
    latexmk -pdfxe  fduthesis-template.tex
    latexmk -pdflua feynman-diag.tex
    latexmk -pdflua variable-font.tex
    latexmk -pdflua emoji.tex
fi
