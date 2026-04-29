# Portfolio Alexandre Gati

Ce projet contient le portfolio d'apprentissage pour le Master HES-SO Innokick.

## Structure du projet

- `main.tex` : Fichier principal du document.
- `sections/` : Contient les différents chapitres et la page de titre.
- `annexes/` : Contient les annexes du portfolio.
  - `annexes_main.tex` : Fichier de coordination — déclarez ici chaque annexe.
  - `exemple_annexe_latex.tex` : Modèle d'annexe rédigée en LaTeX.
  - `pdfs/` : Dépôt des fichiers PDF à inclure comme annexes.
- `image/` : Contient les images et logos utilisés.
- `references.bib` : Fichier de bibliographie (format BibLaTeX).
- `clean.bat` : Script Windows pour supprimer les fichiers de compilation.

## Ajouter une annexe

### Annexe rédigée en LaTeX
1. Créer un fichier dans `annexes/`, ex. `annexes/mon_annexe.tex`
2. Rédiger le contenu (commencez directement par `\chapter{Titre}`)
3. Déclarer dans `annexes/annexes_main.tex` : `\input{annexes/mon_annexe}`

### Annexe PDF
1. Copier le fichier PDF dans `annexes/pdfs/`, ex. `annexes/pdfs/mon_document.pdf`
2. Déclarer dans `annexes/annexes_main.tex` :
   ```latex
   \annexepdf{Titre de l'annexe}{annexes/pdfs/mon_document.pdf}
   ```
   Options avancées (premier argument optionnel) :
   - `\annexepdf[pages=1]{Titre}{...}` — première page uniquement
   - `\annexepdf[pages=1-3]{Titre}{...}` — pages 1 à 3
   - `\annexepdf[pages={1,3,5}]{Titre}{...}` — pages spécifiques

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
