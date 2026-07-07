## UrbanCanvas
UrbanCanvas est une application permet de découvrir des œuvres de Street Art, leurs artistes et 

de réaliser des missions de découverte à partir de données entièrement mockées.

---------------------------------------------------------------------------------

## Liens du projet
- Trello : [Tableau Trello UrbanCanvas](https://trello.com/b/mRY6Wu9R/urbancanvas)
- FigJam : [Board FigJam UrbanCanvas](https://www.figma.com/board/6wNpXyLIH0u9sMRkT9jpGV/Urban-Canvas?node-id=0-1&p=f&t=mjyO1smQr9PISLRJ-0)
---------------------------------------------------------------------------------

## Objectifs
- Découvrir des œuvres de Street Art.
- Consulter les informations détaillées d'une œuvre.
- Filtrer les œuvres par type d'art.
- Explorer les œuvres sur une carte interactive.
- Découvrir les artistes et accéder à leur site web.
- Développer une application SwiftUI modulaire, réutilisable et testée.

---------------------------------------------------------------------------------

## Fonctionnalités

### Version 1 — Référencement et consultation

Cette première version permet de consulter les œuvres de Street Art présentes dans l’application.

- Affichage d’une liste verticale des œuvres.
- Présentation des informations principales dans la liste : nom de l’œuvre, image miniature et lieu.
- Ouverture d’une fiche détail au clic sur une œuvre.
- Affichage complet des informations d’une œuvre : titre, description, image, type d’art, conditions de conservation, date, auteur·ice et localisation.
- Mise en place d’une navigation simple entre la liste des œuvres et la fiche détail.

---------------------------------------------------------------------------------

### Version 2 — Tri et filtrage

Cette version ajoute une logique de filtrage afin de faciliter la recherche des œuvres.

- Ajout d’un bouton de filtrage en haut de l’écran principal.
- Affichage d’un menu ou d’une popup de filtres.
- Filtrage des œuvres par type d’art.
- Mise à jour immédiate de la liste après sélection d’un filtre.
- Création de composants SwiftUI réutilisables pour gérer les filtres.
- Ajout de tests unitaires pour vérifier la logique de filtrage.

---------------------------------------------------------------------------------

### Version 3 — Exploration cartographique

Cette version permet d’explorer les œuvres depuis une carte interactive.

- Ajout d’une bascule Liste / Carte avec un Picker.
- Conservation de la vue Liste déjà créée dans la V1.
- Affichage des œuvres sur une carte avec MapKit.
- Ajout de marqueurs pour représenter les œuvres sur la carte.
- Affichage d’un aperçu d’œuvre au clic sur un marqueur.
- Présentation dans l’aperçu : image, titre et début de description.
- Navigation vers la fiche détail complète depuis l’aperçu de la carte.

---------------------------------------------------------------------------------

### Version 4 — Découverte des auteur·ices

Cette version ajoute une nouvelle section dédiée aux artistes.

- Refonte de la navigation principale avec une barre d’onglets.
- Ajout d’un onglet pour l’exploration des œuvres.
- Ajout d’un onglet dédié aux auteur·ices.
- Affichage des auteur·ices sous forme de cartes.
- Présentation des informations principales : nom, âge, origines, type d’art de prédilection et photo.
- Utilisation d’une image de remplacement si aucune photo n’est disponible.
- Ajout de tests unitaires pour les modèles, les composants et la navigation.

---------------------------------------------------------------------------------

### Version 5 — Mission de découverte

Cette version ajoute une nouvelle fonctionnalité permettant à l’utilisateur·ice de découvrir plusieurs œuvres sous forme de mission.

- Ajout d’un onglet Mission accessible depuis la navigation principale.
- Génération automatique d’une mission à partir des données mockées.
- Sélection de 3 à 5 œuvres pour encourager la découverte de contenus variés.
- Sélection basée uniquement sur les œuvres disponibles dans l’application.
- Respect des contraintes de sélection :
  - ne pas proposer deux fois la même œuvre ;
  - éviter de répéter deux fois le/la même auteur·ice ;
  - inclure au moins deux types d’art différents dans la mission.
- Affichage des œuvres sélectionnées sous forme de cartes numérotées.
- Présentation des informations principales dans chaque carte : titre, image, type d’art, auteur·ice et localisation.
- Ouverture de la fiche détail d’une œuvre depuis la mission.
- Possibilité de marquer une œuvre comme découverte.
- Affichage de la progression de la mission, par exemple : `2 œuvres découvertes sur 5`.
- Mise à jour immédiate de la progression lorsqu’une œuvre est marquée comme découverte.
- Affichage d’un message de réussite lorsque toutes les œuvres sont découvertes.
- Ajout d’un bouton Nouvelle mission pour recalculer une nouvelle sélection.
- Ajout de tests unitaires pour la génération de mission, les cartes, la progression et les interactions principales.

---------------------------------------------------------------------------------
## Bonus personnel — Intégration Continue et Fastlane

En complément des fonctionnalités demandées dans le cahier des charges, une intégration continue a été mise en place avec GitHub Actions.

À chaque Push sur les branches `main` ou `dev`, le workflow CI :

- récupère automatiquement le projet depuis GitHub ;
- configure l'environnement Xcode ;
- compile l'application ;
- exécute l'ensemble des tests unitaires.

Cette automatisation permet de vérifier que chaque nouvelle fonctionnalité compile correctement et que les tests passent avant d'être intégrée dans le projet.

Le projet contient également une première configuration Fastlane afin de préparer l'automatisation iOS.

Fastlane permet de :

- lancer les tests unitaires ;
- préparer un build de l'application ;
- préparer un futur déploiement sur TestFlight.

Le déploiement TestFlight n'est pas encore actif. Il nécessitera un compte Apple Developer ainsi que les certificats de signature.

Cette démarche s'inscrit dans une logique professionnelle de qualité logicielle, d'intégration continue et de préparation au déploiement.

---------------------------------------------------------------------------------

## Contraintes techniques

- Application développée exclusivement pour iPhone en mode portrait.
- Interface réalisée uniquement avec SwiftUI.
- Données entièrement statiques et mockées dans le projet.
- Aucune API distante.
- Aucune base de données locale comme CoreData ou SwiftData.
- Images embarquées dans les assets ou chargées depuis une URL avec AsyncImage.
- Versioning Git avec des commits dédiés pour chaque version et chaque fonctionnalité importante.
- Intégration Continue avec GitHub Actions et première configuration Fastlane.

---------------------------------------------------------------------------------

## Branches Git
- main : version stable
- dev : développement

---------------------------------------------------------------------------------

## Architecture V5

UrbanCanvas
├── App
│   ├── ContentView.swift → lance MainView
│   ├── urban_canvasApp.swift → point d’entrée de l’app
│   └── Assets.xcassets → images locales
│
├── Components
│   → composants réutilisables SwiftUI
│   ├── ArtistCardView.swift → carte auteur + bouton site web
│   ├── ArtworkRowView.swift → ligne d’œuvre
│   ├── ArtworkPreviewCardView.swift → aperçu sur la carte
│   ├── ArtworkMapMarkerView.swift → marqueur de carte
│   ├── ArtworkTopBarView.swift → barre Liste / Carte + filtre
│   ├── FilterPopupView.swift → popup des filtres
│   ├── FilterOptionButtonView.swift → bouton de filtre
│   ├── FloatingTabBarView.swift → navigation Œuvres / Mission / Auteurs
│   └── MissionCardView.swift → carte d’une œuvre dans une mission
│
├── Data
│   └── MockData.swift → données statiques : œuvres + artistes
│
├── Models
│   ├── Artist.swift → modèle auteur
│   ├── Artwork.swift → modèle œuvre
│   ├── ArtType.swift → type d’art
│   ├── DisplayMode.swift → mode Liste / Carte
│   ├── MainTab.swift → onglets principaux : œuvres / mission / auteurs
│   └── MissionItem.swift → élément de mission avec œuvre + état découvert
│
├── Services
│   └── MissionGenerator.swift → génère automatiquement une mission de 3 à 5 œuvres
│
├── Views
│   ├── MainView.swift → écran racine avec FloatingTabBar
│   ├── ArtworkListView.swift → liste + filtre + carte
│   ├── ArtworkDetailView.swift → détail d’une œuvre
│   ├── ArtworkMapScreenView.swift → carte interactive
│   ├── ArtistListView.swift → grille des auteurs
│   └── MissionView.swift → écran Mission : progression, cartes, nouvelle mission
│
├── urban_canvasTests
│   ├── Components
│   │   ├── MissionCardViewTests.swift → tests de la carte mission
│   │   └── autres tests composants
│   │
│   ├── Data
│   │   ├── MissionGeneratorTests.swift → tests génération mission
│   │   └── autres tests données
│   │
│   ├── Models
│   │   ├── MissionItemTests.swift → tests élément de mission
│   │   ├── MainTabTests.swift → tests onglet mission
│   │   └── autres tests modèles
│   │
│   └── Views
│       ├── MissionViewTests.swift → tests écran mission / progression
│       └── autres tests écrans
│
├── .github
│   └── workflows
│       ├── ios-ci.yml → compile l’application et lance les tests avec GitHub Actions
│       └── ios-testflight.yml → prépare un futur workflow de déploiement TestFlight
│
└── fastlane
    ├── Appfile → informations de configuration de l’application iOS
    ├── Fastfile → commandes Fastlane pour les tests et le build
    └── README.md → documentation des commandes Fastlane