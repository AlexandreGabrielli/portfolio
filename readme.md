# Portfolio Alexandre Gati

Ce projet contient le portfolio d'apprentissage pour le Master HES-SO Innokick.

## Structure du projet

- `main.tex` : Fichier principal du document.
- `sections/` : Contient les différents chapitres et la page de titre.
- `image/` : Contient les images et logos utilisés.
- `references.bib` : Fichier de bibliographie (format BibLaTeX).
- `clean.bat` : Script Windows pour supprimer les fichiers de compilation.

## Prérequis

- Une distribution LaTeX (ex: MiKTeX)
- Biber (pour la gestion de la bibliographie)

## Instructions de compilation

Pour générer le PDF avec les références bibliographiques à jour, exécutez les commandes suivantes dans l'ordre :

1. `pdflatex main.tex`
2. `biber main`
3. `pdflatex main.tex`
4. `pdflatex main.tex`

En cas d'erreur liée à des fichiers auxiliaires corrompus, utilisez `clean.bat` pour réinitialiser l'environnement de compilation.
