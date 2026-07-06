

## UrbanCanvas
UrbanCanvas est une application permet de découvrir des œuvres de Street Art, leurs artistes et de réaliser des missions de découverte à partir de données entièrement mockées.
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
###### Version 1 — Référencement et consultation
- Affichage de la liste des œuvres de Street Art.
- Consultation de la fiche détaillée d'une œuvre.
- Navigation entre la liste et le détail.
###### Version 2 — Tri et filtrage
- Bouton d'ouverture des filtres.
- Filtrage dynamique des œuvres par type d'art.
- Popup de sélection des filtres.
- Composants SwiftUI réutilisables.
- Tests unitaires des composants et de la logique de filtrage.
###### Version 3 — Exploration cartographique
- Bascule entre le mode Liste et le mode Carte.
- Affichage des œuvres sur une carte avec MapKit.
- Marqueurs interactifs des œuvres.
- Aperçu d'une œuvre directement sur la carte.
- Navigation vers la fiche détail depuis la carte.
###### Version 4 — Découverte des artistes
- Navigation principale avec TabView.
- Onglet dédié aux artistes.
- Affichage des artistes sous forme de cartes.
- Présentation du nom, de la photo, de l'âge, des origines et du style.
- Ouverture du site web officiel d'un artiste.
- Tests unitaires des composants et des modèles.
---------------------------------------------------------------------------------
## Branches Git
- main : version stable
- dev : développement
---------------------------------------------------------------------------------
## Architecture

UrbanCanvas
├── App
│   ├── ContentView.swift → lance MainView
│   ├── urban_canvasApp.swift → point d’entrée de l’app
│   └── Assets.xcassets → images locales

├── Components
│   → composants réutilisables SwiftUI
│   ├── ArtistCardView.swift → carte auteur + bouton site web
│   ├── ArtworkRowView.swift → ligne d’œuvre
│   ├── ArtworkPreviewCardView.swift → aperçu sur la carte
│   ├── ArtworkMapMarkerView.swift → marqueur de carte
│   ├── ArtworkTopBarView.swift → barre Liste / Carte + filtre
│   ├── FilterPopupView.swift → popup des filtres
│   ├── FilterOptionButtonView.swift → bouton de filtre
│   └── FloatingTabBarView.swift → navigation Œuvres / Auteurs

├── Data
│   └── MockData.swift → données statiques : œuvres + artistes

├── Models
│   ├── Artist.swift → modèle auteur
│   ├── Artwork.swift → modèle œuvre
│   ├── ArtType.swift → type d’art
│   ├── DisplayMode.swift → mode Liste / Carte
│   └── MainTab.swift → onglet principal

├── Views
│   ├── MainView.swift → écran racine avec FloatingTabBar
│   ├── ArtworkListView.swift → liste + filtre + carte
│   ├── ArtworkDetailView.swift → détail d’une œuvre
│   ├── ArtworkMapScreenView.swift → carte interactive
│   └── ArtistListView.swift → grille des auteurs

└── urban_canvasTests
    ├── Components → tests des composants
    ├── Data → tests MockData / filtres
    ├── Models → tests des modèles
    └── Views → tests des écrans