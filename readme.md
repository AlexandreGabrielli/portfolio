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

## Instructions académiques 

- Il faut choisir 3 compétences, chacune dans une des trois catégories suivantes : 
  - Compétences techniques (C)
  - Compétences méthodologiques (B)
  - Compétences personnelles et sociales (A)
- Pour chaque compétence, il faut fournir au moins trois preuves d'apprentissage et les analyser en lien avec la compétence choisie.
- Il semble y avoir une importance donnée au radar comme preuve d'évolution.

---

## Choix des 3 compétences retenues

### Principe de sélection

Les compétences ont été choisies en priorité selon deux critères :
1. **Preuves déjà existantes** — artefacts professionnels, annexes du portfolio, documents rédigés dans le journal réflexif.
2. **Minimum de travail supplémentaire** — éviter de tout reconstruire, valoriser ce qui est déjà fait.

---

### Compétence A — Catégorie sociale et personnelle

**Choix : A2 — Anticiper et gérer les divergences**

> *« Anticiper et gérer les divergences afin de faciliter un processus participatif de convergence en intégrant les préconceptions, les besoins et les enjeux des différents acteurs à l'aide de méthodes agiles, de méthodes de communication et de médiation. »*

**Justification du choix :**
- Auto-évaluation la plus élevée de la catégorie A (8/10), ce qui permet de raconter une progression crédible et bien ancrée.
- La situation professionnalisante (banque privée, département reporting, choix de la technologie pour les rapports clients) est entièrement rédigée dans le journal réflexif.
- Aucune trace physique (photo, export d'outil) n'est requise : les 3 preuves sont des documents textuels reconstituables.
- Compétence directement liée au « plafond de verre » décrit dans la section *Ancrage professionnel* du portfolio (incapacité à convaincre en dehors du registre technique).

**Preuves / traces à mobiliser :**

| # | Preuve                                                                                                                      | Statut         | Source                                                            |
|---|-----------------------------------------------------------------------------------------------------------------------------|----------------|-------------------------------------------------------------------|
| 1 | **Veille concurrentielle rapide** sur des rapports clients comparables (structure, données mises en avant, lisibilité)      | 🔴 À (re)créer | Document texte / tableau — récupérable ou reconstituable          |
| 2 | **Grille de décision** (critères + pondération) pour comparer 2–3 options technologiques de génération de rapports          | 🔴 À (re)créer | Tableur ou tableau LaTeX — facile à reconstituer                  |
| 3 | **Compte-rendu de réunion de cadrage** actant la décision : solution choisie, périmètre, critères, risques, responsabilités | 🔴 À (re)créer | Document texte — reconstituable depuis la mémoire de la situation |
| + | **Radar d'évolution** A2 (avant/après formation)                                                                            | 🔴 À créer     | Diagramme radar à inclure dans le portfolio                       |

---

### Compétence B — Catégorie méthodologique

**Choix : B4 — Méthodes agiles et lean au service du prototypage itératif**

> *« Choisir et mettre en œuvre des méthodes agiles, telle que la méthode lean, favorisant la réalisation de prototypes, de manière itérative, dans le but de créer un maximum de valeur en optimisant les ressources disponibles. »*

**Justification du choix :**
- **Annexe C** (backlog priorisé TWIICE) est déjà dans le portfolio et correspond directement à la preuve #2 de B4 telle que décrite dans le journal réflexif.
- La situation professionnalisante (introduction de Scrum dans un contexte de certification IEC 62304) est bien développée et techniquement distinctive — elle valorise le profil ingénieur médical.
- Les deux preuves restantes (proposition de découpage en sprints, CR de rétrospective) sont des documents courts et faciles à reconstituer.

**Preuves / traces à mobiliser :**

| # | Preuve | Statut | Source |
|---|--------|--------|--------|
| 1 | **Proposition de découpage en sprints** de 2 semaines avec livrables documentés conformes ISO 62304 | 🔴 À (re)créer | Document texte / tableau — reconstituable |
| 2 | **Backlog priorisé du premier trimestre** avec justification de la priorisation (valeur utilisateur × risque certification) | ✅ Existante | **Annexe C** du portfolio (`annexes/annexe_c_backlog.tex`) |
| 3 | **Compte-rendu de la première rétrospective d'équipe** avec les 3 actions d'amélioration retenues | 🔴 À (re)créer | Document court (format Start/Stop/Continue) — reconstituable |
| + | **Radar d'évolution** B4 (avant/après formation) | 🔴 À créer | Diagramme radar à inclure dans le portfolio |

---

### Compétence C — Catégorie métier

**Choix : C2 — Synthétiser les informations pour définir des problématiques prioritaires**

> *« Synthétiser les informations recueillies dans la phase d'empathie pour définir des problématiques à résoudre et/ou des opportunités à développer. »*

**Justification du choix :**
- **C'est la compétence la mieux couverte par des artefacts existants** : les Annexes B et C du portfolio correspondent exactement aux preuves #1, #2 et #3 décrites dans le journal réflexif.
- La NDT-SW-001 (Annexe B) est un document professionnel réel et signé, ce qui lui confère une crédibilité forte comme preuve d'apprentissage.
- La situation professionnalisante (exosquelette TWIICE, priorisation des décisions structurantes sous contrainte de certification) est directement liée au mandat actuel — cohérence forte avec le reste du portfolio.

**Preuves / traces à mobiliser :**

| # | Preuve | Statut | Source |
|---|--------|--------|--------|
| 1 | **Liste structurée des décisions à prendre**, avec impact certification et risque associé pour chacune | ✅ Existante | **Annexe B** — NDT-SW-001, sections 1 & 2 (`annexes/annexe_b_ndt.tex`) |
| 2 | **Matrice d'Eisenhower** pour prioriser les sujets (important / urgent) | ✅ Existante | **Annexe C** — Backlog, tableau de traçabilité Eisenhower (`annexes/annexe_c_backlog.tex`) |
| 3 | **Grille build vs buy** sur les sujets prioritaires, avec critères techniques, économiques et réglementaires | ✅ Existante | **Annexe B** — NDT-SW-001, section 3 (grille multi-critères) (`annexes/annexe_b_ndt.tex`) |
| + | **Radar d'évolution** C2 (avant/après formation) | 🔴 À créer | Diagramme radar à inclure dans le portfolio |

---

### Résumé des travaux restants

| Compétence | Preuves ✅ prêtes | Preuves 🔴 à créer |
|---|---|---|
| **A2** | 0/3 | Veille concurrentielle · Grille de décision · CR de réunion · Radar |
| **B4** | 1/3 (Annexe C) | Proposition sprints · CR rétrospective · Radar |
| **C2** | 3/3 (Annexes B & C) | Radar uniquement |
