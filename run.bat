@echo off
set OUTNAME=2026-05-25_Portfolio_MAS-Innokick_GATI-Alexandre

pdflatex main.tex
biber main
pdflatex main.tex
pdflatex main.tex

if exist main.pdf (
    copy /Y main.pdf "%OUTNAME%.pdf" >nul
    start "" "%OUTNAME%.pdf"
)

