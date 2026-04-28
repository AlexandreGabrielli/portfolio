@echo off
echo Cleaning LaTeX auxiliary files...
del /q *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls *.log *.run.xml *.toc *.pdf *.out *.synctex.gz 2>nul
echo Done.
pause
